// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent()';
}


}

/// @nodoc
class $ProductEventCopyWith<$Res>  {
$ProductEventCopyWith(ProductEvent _, $Res Function(ProductEvent) __);
}


/// Adds pattern-matching-related methods to [ProductEvent].
extension ProductEventPatterns on ProductEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GetProducts value)?  getProducts,TResult Function( _SearchProduct value)?  searchProduct,TResult Function( _FilterCategory value)?  filterCategory,TResult Function( _SortPriceLowHigh value)?  sortPriceLowHigh,TResult Function( _SortPriceHighLow value)?  sortPriceHighLow,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetProducts() when getProducts != null:
return getProducts(_that);case _SearchProduct() when searchProduct != null:
return searchProduct(_that);case _FilterCategory() when filterCategory != null:
return filterCategory(_that);case _SortPriceLowHigh() when sortPriceLowHigh != null:
return sortPriceLowHigh(_that);case _SortPriceHighLow() when sortPriceHighLow != null:
return sortPriceHighLow(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GetProducts value)  getProducts,required TResult Function( _SearchProduct value)  searchProduct,required TResult Function( _FilterCategory value)  filterCategory,required TResult Function( _SortPriceLowHigh value)  sortPriceLowHigh,required TResult Function( _SortPriceHighLow value)  sortPriceHighLow,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GetProducts():
return getProducts(_that);case _SearchProduct():
return searchProduct(_that);case _FilterCategory():
return filterCategory(_that);case _SortPriceLowHigh():
return sortPriceLowHigh(_that);case _SortPriceHighLow():
return sortPriceHighLow(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GetProducts value)?  getProducts,TResult? Function( _SearchProduct value)?  searchProduct,TResult? Function( _FilterCategory value)?  filterCategory,TResult? Function( _SortPriceLowHigh value)?  sortPriceLowHigh,TResult? Function( _SortPriceHighLow value)?  sortPriceHighLow,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetProducts() when getProducts != null:
return getProducts(_that);case _SearchProduct() when searchProduct != null:
return searchProduct(_that);case _FilterCategory() when filterCategory != null:
return filterCategory(_that);case _SortPriceLowHigh() when sortPriceLowHigh != null:
return sortPriceLowHigh(_that);case _SortPriceHighLow() when sortPriceHighLow != null:
return sortPriceHighLow(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  getProducts,TResult Function( String query)?  searchProduct,TResult Function( String category)?  filterCategory,TResult Function()?  sortPriceLowHigh,TResult Function()?  sortPriceHighLow,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetProducts() when getProducts != null:
return getProducts();case _SearchProduct() when searchProduct != null:
return searchProduct(_that.query);case _FilterCategory() when filterCategory != null:
return filterCategory(_that.category);case _SortPriceLowHigh() when sortPriceLowHigh != null:
return sortPriceLowHigh();case _SortPriceHighLow() when sortPriceHighLow != null:
return sortPriceHighLow();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  getProducts,required TResult Function( String query)  searchProduct,required TResult Function( String category)  filterCategory,required TResult Function()  sortPriceLowHigh,required TResult Function()  sortPriceHighLow,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GetProducts():
return getProducts();case _SearchProduct():
return searchProduct(_that.query);case _FilterCategory():
return filterCategory(_that.category);case _SortPriceLowHigh():
return sortPriceLowHigh();case _SortPriceHighLow():
return sortPriceHighLow();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  getProducts,TResult? Function( String query)?  searchProduct,TResult? Function( String category)?  filterCategory,TResult? Function()?  sortPriceLowHigh,TResult? Function()?  sortPriceHighLow,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetProducts() when getProducts != null:
return getProducts();case _SearchProduct() when searchProduct != null:
return searchProduct(_that.query);case _FilterCategory() when filterCategory != null:
return filterCategory(_that.category);case _SortPriceLowHigh() when sortPriceLowHigh != null:
return sortPriceLowHigh();case _SortPriceHighLow() when sortPriceHighLow != null:
return sortPriceHighLow();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ProductEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent.started()';
}


}




/// @nodoc


class _GetProducts implements ProductEvent {
  const _GetProducts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProducts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent.getProducts()';
}


}




/// @nodoc


class _SearchProduct implements ProductEvent {
  const _SearchProduct(this.query);
  

 final  String query;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchProductCopyWith<_SearchProduct> get copyWith => __$SearchProductCopyWithImpl<_SearchProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchProduct&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'ProductEvent.searchProduct(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchProductCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory _$SearchProductCopyWith(_SearchProduct value, $Res Function(_SearchProduct) _then) = __$SearchProductCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchProductCopyWithImpl<$Res>
    implements _$SearchProductCopyWith<$Res> {
  __$SearchProductCopyWithImpl(this._self, this._then);

  final _SearchProduct _self;
  final $Res Function(_SearchProduct) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchProduct(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _FilterCategory implements ProductEvent {
  const _FilterCategory(this.category);
  

 final  String category;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterCategoryCopyWith<_FilterCategory> get copyWith => __$FilterCategoryCopyWithImpl<_FilterCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterCategory&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'ProductEvent.filterCategory(category: $category)';
}


}

/// @nodoc
abstract mixin class _$FilterCategoryCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory _$FilterCategoryCopyWith(_FilterCategory value, $Res Function(_FilterCategory) _then) = __$FilterCategoryCopyWithImpl;
@useResult
$Res call({
 String category
});




}
/// @nodoc
class __$FilterCategoryCopyWithImpl<$Res>
    implements _$FilterCategoryCopyWith<$Res> {
  __$FilterCategoryCopyWithImpl(this._self, this._then);

  final _FilterCategory _self;
  final $Res Function(_FilterCategory) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(_FilterCategory(
null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SortPriceLowHigh implements ProductEvent {
  const _SortPriceLowHigh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SortPriceLowHigh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent.sortPriceLowHigh()';
}


}




/// @nodoc


class _SortPriceHighLow implements ProductEvent {
  const _SortPriceHighLow();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SortPriceHighLow);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent.sortPriceHighLow()';
}


}




/// @nodoc
mixin _$ProductState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductState()';
}


}

/// @nodoc
class $ProductStateCopyWith<$Res>  {
$ProductStateCopyWith(ProductState _, $Res Function(ProductState) __);
}


/// Adds pattern-matching-related methods to [ProductState].
extension ProductStatePatterns on ProductState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Error():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<GetProductResponse> allProducts,  List<GetProductResponse> filteredProducts)?  loaded,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.allProducts,_that.filteredProducts);case _Error() when error != null:
return error(_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<GetProductResponse> allProducts,  List<GetProductResponse> filteredProducts)  loaded,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.allProducts,_that.filteredProducts);case _Error():
return error(_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<GetProductResponse> allProducts,  List<GetProductResponse> filteredProducts)?  loaded,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.allProducts,_that.filteredProducts);case _Error() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ProductState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductState.initial()';
}


}




/// @nodoc


class _Loading implements ProductState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductState.loading()';
}


}




/// @nodoc


class _Loaded implements ProductState {
  const _Loaded({required final  List<GetProductResponse> allProducts, required final  List<GetProductResponse> filteredProducts}): _allProducts = allProducts,_filteredProducts = filteredProducts;
  

 final  List<GetProductResponse> _allProducts;
 List<GetProductResponse> get allProducts {
  if (_allProducts is EqualUnmodifiableListView) return _allProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allProducts);
}

 final  List<GetProductResponse> _filteredProducts;
 List<GetProductResponse> get filteredProducts {
  if (_filteredProducts is EqualUnmodifiableListView) return _filteredProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredProducts);
}


/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._allProducts, _allProducts)&&const DeepCollectionEquality().equals(other._filteredProducts, _filteredProducts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_allProducts),const DeepCollectionEquality().hash(_filteredProducts));

@override
String toString() {
  return 'ProductState.loaded(allProducts: $allProducts, filteredProducts: $filteredProducts)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<GetProductResponse> allProducts, List<GetProductResponse> filteredProducts
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? allProducts = null,Object? filteredProducts = null,}) {
  return _then(_Loaded(
allProducts: null == allProducts ? _self._allProducts : allProducts // ignore: cast_nullable_to_non_nullable
as List<GetProductResponse>,filteredProducts: null == filteredProducts ? _self._filteredProducts : filteredProducts // ignore: cast_nullable_to_non_nullable
as List<GetProductResponse>,
  ));
}


}

/// @nodoc


class _Error implements ProductState {
  const _Error(this.error);
  

 final  String error;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ProductState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
