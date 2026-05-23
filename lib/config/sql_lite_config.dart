import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:technical_test_borwita/data/model/product/cart_item_model.dart';

const String createCartTable = '''
CREATE TABLE cart_items (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  product_id INTEGER NOT NULL,
  product_title TEXT NOT NULL,
  product_image TEXT NOT NULL,
  category TEXT NOT NULL,
  price REAL NOT NULL,
  quantity INTEGER NOT NULL,
  subtotal REAL NOT NULL,
  created_at TEXT NOT NULL
);
''';

class SqliteConfig {
  static Database? _db;

  static const String _dbName = 'app.db';
  static const int _dbVersion = 1;

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDB();
    return _db!;
  }

  Future<Database> _initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, _dbName);

    return await openDatabase(
      path,
      version: _dbVersion,
      onCreate: (db, version) async {
        await db.execute(createCartTable);
      },
    );
  }

  Future<int> insertCart(CartItem item) async {
    final db = await database;

    return await db.insert(
      'cart_items',
      item.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<CartItem>> getCartItems() async {
    final db = await database;

    final result = await db.query('cart_items');

    return result.map((e) => CartItem.fromMap(e)).toList();
  }

  Future<int> updateCartQuantity(int id, int quantity, double price) async {
    final db = await database;

    return await db.update(
      'cart_items',
      {'quantity': quantity, 'subtotal': price * quantity},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<int> deleteCart(int id) async {
    final db = await database;

    return await db.delete('cart_items', where: 'id = ?', whereArgs: [id]);
  }

  Future<int> clearCart() async {
    final db = await database;

    return await db.delete('cart_items');
  }
}
