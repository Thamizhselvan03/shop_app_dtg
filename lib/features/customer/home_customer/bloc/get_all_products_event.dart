part of 'get_all_products_bloc.dart';

@freezed
class GetAllProductsEvent with _$GetAllProductsEvent {
  const factory GetAllProductsEvent.started() = _Started;
  const factory GetAllProductsEvent.onTextChanged(String text,{required  bool fromVoice}) = _OnTextChanged;
  const factory GetAllProductsEvent.startListening() = _StartListening;
  const factory GetAllProductsEvent.stopListening() = _StopListening;
}