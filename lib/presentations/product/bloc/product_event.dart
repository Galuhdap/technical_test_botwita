part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.started() = _Started;

  const factory ProductEvent.getProducts() = _GetProducts;

  const factory ProductEvent.searchProduct(String query) = _SearchProduct;

  const factory ProductEvent.filterCategory(String category) = _FilterCategory;

  const factory ProductEvent.sortPriceLowHigh() = _SortPriceLowHigh;

  const factory ProductEvent.sortPriceHighLow() = _SortPriceHighLow;
}
