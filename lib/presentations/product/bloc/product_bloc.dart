import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technical_test_borwita/data/model/product/get_product_response.dart';
import 'package:technical_test_borwita/data/repository/product/product_repository.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository repository;

  List<GetProductResponse> _allProducts = [];

  ProductBloc(this.repository) : super(const ProductState.initial()) {
    on<_GetProducts>(_onGetProducts);
    on<_SearchProduct>(_onSearchProduct);
    on<_FilterCategory>(_onFilterCategory);
    on<_SortPriceLowHigh>(_onSortLowHigh);
    on<_SortPriceHighLow>(_onSortHighLow);
  }

  Future<void> _onGetProducts(
    _GetProducts event,
    Emitter<ProductState> emit,
  ) async {
    emit(const ProductState.loading());

    final result = await repository.getProduct();

    result.fold(
      (error) {
        emit(ProductState.error(error));
      },
      (products) {
        _allProducts = products;

        emit(
          ProductState.loaded(
            allProducts: products,
            filteredProducts: products,
          ),
        );
      },
    );
  }

  void _onSearchProduct(_SearchProduct event, Emitter<ProductState> emit) {
    final currentState = state;

    if (currentState is _Loaded) {
      final filtered = _allProducts.where((product) {
        return product.title.toLowerCase().contains(event.query.toLowerCase());
      }).toList();

      emit(currentState.copyWith(filteredProducts: filtered));
    }
  }

  void _onFilterCategory(_FilterCategory event, Emitter<ProductState> emit) {
    final currentState = state;

    if (currentState is _Loaded) {
      if (event.category == 'all') {
        emit(currentState.copyWith(filteredProducts: _allProducts));
      } else {
        final filtered = _allProducts.where((product) {
          return product.category.name == event.category;
        }).toList();

        emit(currentState.copyWith(filteredProducts: filtered));
      }
    }
  }

  void _onSortLowHigh(_SortPriceLowHigh event, Emitter<ProductState> emit) {
    final currentState = state;

    if (currentState is _Loaded) {
      final sorted = List<GetProductResponse>.from(
        currentState.filteredProducts,
      )..sort((a, b) => a.price.compareTo(b.price));

      emit(currentState.copyWith(filteredProducts: sorted));
    }
  }

  void _onSortHighLow(_SortPriceHighLow event, Emitter<ProductState> emit) {
    final currentState = state;

    if (currentState is _Loaded) {
      final sorted = List<GetProductResponse>.from(
        currentState.filteredProducts,
      )..sort((a, b) => b.price.compareTo(a.price));

      emit(currentState.copyWith(filteredProducts: sorted));
    }
  }
}
