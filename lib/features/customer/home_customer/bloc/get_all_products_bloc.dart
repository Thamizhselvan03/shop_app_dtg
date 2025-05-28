import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_products_event.dart';
part 'get_all_products_state.dart';
part 'get_all_products_bloc.freezed.dart';

class GetAllProductsBloc
    extends Bloc<GetAllProductsEvent, GetAllProductsState> {
  GetAllProductsBloc() : super(_Initial()) {
    on<GetAllProductsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
  final TextEditingController searchController = TextEditingController();
}
