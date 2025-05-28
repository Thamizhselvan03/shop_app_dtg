part of 'get_all_products_bloc.dart';

@freezed
class GetAllProductsState with _$GetAllProductsState {
  const factory GetAllProductsState.initial() = _Initial;
  const factory GetAllProductsState.listening(String currentText) = _Listening;
  const factory GetAllProductsState.error(String message) = _Error;
}
