/// ==========================
/// MODEL
/// ==========================
class CartItem {
  final int? id;
  final int productId;
  final String productTitle;
  final String productImage;
  final String category;
  final double price;
  final int quantity;
  final double subtotal;
  final String createdAt;

  CartItem({
    this.id,
    required this.productId,
    required this.productTitle,
    required this.productImage,
    required this.category,
    required this.price,
    required this.quantity,
    required this.subtotal,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'product_id': productId,
      'product_title': productTitle,
      'product_image': productImage,
      'category': category,
      'price': price,
      'quantity': quantity,
      'subtotal': subtotal,
      'created_at': createdAt,
    };
  }

  factory CartItem.fromMap(Map<String, dynamic> map) {
    return CartItem(
      id: map['id'],
      productId: map['product_id'],
      productTitle: map['product_title'],
      productImage: map['product_image'],
      category: map['category'],
      price: map['price'],
      quantity: map['quantity'],
      subtotal: map['subtotal'],
      createdAt: map['created_at'],
    );
  }
}
