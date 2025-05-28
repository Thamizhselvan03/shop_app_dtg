import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
part 'get_all_products_event.dart';
part 'get_all_products_state.dart';
part 'get_all_products_bloc.freezed.dart';

class GetAllProductsBloc
    extends Bloc<GetAllProductsEvent, GetAllProductsState> {
  GetAllProductsBloc() : super(_Initial()) {
    on<GetAllProductsEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<_Started>((event, emit) {
      emit(const GetAllProductsState.initial());
    });
    on<_OnTextChanged>((event, emit) {
      searchController.text = event.text;
      searchController.selection = TextSelection.fromPosition(
        TextPosition(offset: searchController.text.length),
      );
      if (event.fromVoice == true) {
        emit(GetAllProductsState.listening(event.text));
      } else {
        emit(const GetAllProductsState.initial());
      }
    });

    on<_StartListening>((event, emit) async {
      final available = await _speech.initialize(
        onStatus: (status) {
          if (status == "done" || status == "notListening") {
            add(const GetAllProductsEvent.stopListening());
          }
        },
        onError: (error) {
          emit(GetAllProductsState.error(error.errorMsg));
        },
      );

      if (available) {
        _speech.listen(
          onResult: (result) {
            add(GetAllProductsEvent.onTextChanged(result.recognizedWords, fromVoice: true));
          },
        );
        emit(GetAllProductsState.listening(searchController.text));
      } else {
        emit(const GetAllProductsState.error("Speech recognition unavailable"));
      }
    });

    on<_StopListening>((event, emit) async {
      await _speech.stop();
      emit(GetAllProductsState.initial()); // 👈 Emit a new state
    });
  }

  final TextEditingController searchController = TextEditingController();
  final stt.SpeechToText _speech = stt.SpeechToText();
}
