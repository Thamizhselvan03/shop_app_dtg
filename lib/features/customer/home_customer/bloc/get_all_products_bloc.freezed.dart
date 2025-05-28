// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetAllProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text, bool fromVoice) onTextChanged,
    required TResult Function() startListening,
    required TResult Function() stopListening,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text, bool fromVoice)? onTextChanged,
    TResult? Function()? startListening,
    TResult? Function()? stopListening,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text, bool fromVoice)? onTextChanged,
    TResult Function()? startListening,
    TResult Function()? stopListening,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnTextChanged value) onTextChanged,
    required TResult Function(_StartListening value) startListening,
    required TResult Function(_StopListening value) stopListening,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnTextChanged value)? onTextChanged,
    TResult? Function(_StartListening value)? startListening,
    TResult? Function(_StopListening value)? stopListening,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnTextChanged value)? onTextChanged,
    TResult Function(_StartListening value)? startListening,
    TResult Function(_StopListening value)? stopListening,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllProductsEventCopyWith<$Res> {
  factory $GetAllProductsEventCopyWith(
    GetAllProductsEvent value,
    $Res Function(GetAllProductsEvent) then,
  ) = _$GetAllProductsEventCopyWithImpl<$Res, GetAllProductsEvent>;
}

/// @nodoc
class _$GetAllProductsEventCopyWithImpl<$Res, $Val extends GetAllProductsEvent>
    implements $GetAllProductsEventCopyWith<$Res> {
  _$GetAllProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAllProductsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$GetAllProductsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAllProductsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'GetAllProductsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text, bool fromVoice) onTextChanged,
    required TResult Function() startListening,
    required TResult Function() stopListening,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text, bool fromVoice)? onTextChanged,
    TResult? Function()? startListening,
    TResult? Function()? stopListening,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text, bool fromVoice)? onTextChanged,
    TResult Function()? startListening,
    TResult Function()? stopListening,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnTextChanged value) onTextChanged,
    required TResult Function(_StartListening value) startListening,
    required TResult Function(_StopListening value) stopListening,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnTextChanged value)? onTextChanged,
    TResult? Function(_StartListening value)? startListening,
    TResult? Function(_StopListening value)? stopListening,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnTextChanged value)? onTextChanged,
    TResult Function(_StartListening value)? startListening,
    TResult Function(_StopListening value)? stopListening,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GetAllProductsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$OnTextChangedImplCopyWith<$Res> {
  factory _$$OnTextChangedImplCopyWith(
    _$OnTextChangedImpl value,
    $Res Function(_$OnTextChangedImpl) then,
  ) = __$$OnTextChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, bool fromVoice});
}

/// @nodoc
class __$$OnTextChangedImplCopyWithImpl<$Res>
    extends _$GetAllProductsEventCopyWithImpl<$Res, _$OnTextChangedImpl>
    implements _$$OnTextChangedImplCopyWith<$Res> {
  __$$OnTextChangedImplCopyWithImpl(
    _$OnTextChangedImpl _value,
    $Res Function(_$OnTextChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAllProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = null, Object? fromVoice = null}) {
    return _then(
      _$OnTextChangedImpl(
        null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        fromVoice: null == fromVoice
            ? _value.fromVoice
            : fromVoice // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$OnTextChangedImpl implements _OnTextChanged {
  const _$OnTextChangedImpl(this.text, {required this.fromVoice});

  @override
  final String text;
  @override
  final bool fromVoice;

  @override
  String toString() {
    return 'GetAllProductsEvent.onTextChanged(text: $text, fromVoice: $fromVoice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnTextChangedImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.fromVoice, fromVoice) ||
                other.fromVoice == fromVoice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, fromVoice);

  /// Create a copy of GetAllProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnTextChangedImplCopyWith<_$OnTextChangedImpl> get copyWith =>
      __$$OnTextChangedImplCopyWithImpl<_$OnTextChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text, bool fromVoice) onTextChanged,
    required TResult Function() startListening,
    required TResult Function() stopListening,
  }) {
    return onTextChanged(text, fromVoice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text, bool fromVoice)? onTextChanged,
    TResult? Function()? startListening,
    TResult? Function()? stopListening,
  }) {
    return onTextChanged?.call(text, fromVoice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text, bool fromVoice)? onTextChanged,
    TResult Function()? startListening,
    TResult Function()? stopListening,
    required TResult orElse(),
  }) {
    if (onTextChanged != null) {
      return onTextChanged(text, fromVoice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnTextChanged value) onTextChanged,
    required TResult Function(_StartListening value) startListening,
    required TResult Function(_StopListening value) stopListening,
  }) {
    return onTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnTextChanged value)? onTextChanged,
    TResult? Function(_StartListening value)? startListening,
    TResult? Function(_StopListening value)? stopListening,
  }) {
    return onTextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnTextChanged value)? onTextChanged,
    TResult Function(_StartListening value)? startListening,
    TResult Function(_StopListening value)? stopListening,
    required TResult orElse(),
  }) {
    if (onTextChanged != null) {
      return onTextChanged(this);
    }
    return orElse();
  }
}

abstract class _OnTextChanged implements GetAllProductsEvent {
  const factory _OnTextChanged(
    final String text, {
    required final bool fromVoice,
  }) = _$OnTextChangedImpl;

  String get text;
  bool get fromVoice;

  /// Create a copy of GetAllProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnTextChangedImplCopyWith<_$OnTextChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartListeningImplCopyWith<$Res> {
  factory _$$StartListeningImplCopyWith(
    _$StartListeningImpl value,
    $Res Function(_$StartListeningImpl) then,
  ) = __$$StartListeningImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartListeningImplCopyWithImpl<$Res>
    extends _$GetAllProductsEventCopyWithImpl<$Res, _$StartListeningImpl>
    implements _$$StartListeningImplCopyWith<$Res> {
  __$$StartListeningImplCopyWithImpl(
    _$StartListeningImpl _value,
    $Res Function(_$StartListeningImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAllProductsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartListeningImpl implements _StartListening {
  const _$StartListeningImpl();

  @override
  String toString() {
    return 'GetAllProductsEvent.startListening()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartListeningImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text, bool fromVoice) onTextChanged,
    required TResult Function() startListening,
    required TResult Function() stopListening,
  }) {
    return startListening();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text, bool fromVoice)? onTextChanged,
    TResult? Function()? startListening,
    TResult? Function()? stopListening,
  }) {
    return startListening?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text, bool fromVoice)? onTextChanged,
    TResult Function()? startListening,
    TResult Function()? stopListening,
    required TResult orElse(),
  }) {
    if (startListening != null) {
      return startListening();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnTextChanged value) onTextChanged,
    required TResult Function(_StartListening value) startListening,
    required TResult Function(_StopListening value) stopListening,
  }) {
    return startListening(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnTextChanged value)? onTextChanged,
    TResult? Function(_StartListening value)? startListening,
    TResult? Function(_StopListening value)? stopListening,
  }) {
    return startListening?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnTextChanged value)? onTextChanged,
    TResult Function(_StartListening value)? startListening,
    TResult Function(_StopListening value)? stopListening,
    required TResult orElse(),
  }) {
    if (startListening != null) {
      return startListening(this);
    }
    return orElse();
  }
}

abstract class _StartListening implements GetAllProductsEvent {
  const factory _StartListening() = _$StartListeningImpl;
}

/// @nodoc
abstract class _$$StopListeningImplCopyWith<$Res> {
  factory _$$StopListeningImplCopyWith(
    _$StopListeningImpl value,
    $Res Function(_$StopListeningImpl) then,
  ) = __$$StopListeningImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopListeningImplCopyWithImpl<$Res>
    extends _$GetAllProductsEventCopyWithImpl<$Res, _$StopListeningImpl>
    implements _$$StopListeningImplCopyWith<$Res> {
  __$$StopListeningImplCopyWithImpl(
    _$StopListeningImpl _value,
    $Res Function(_$StopListeningImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAllProductsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopListeningImpl implements _StopListening {
  const _$StopListeningImpl();

  @override
  String toString() {
    return 'GetAllProductsEvent.stopListening()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopListeningImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text, bool fromVoice) onTextChanged,
    required TResult Function() startListening,
    required TResult Function() stopListening,
  }) {
    return stopListening();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text, bool fromVoice)? onTextChanged,
    TResult? Function()? startListening,
    TResult? Function()? stopListening,
  }) {
    return stopListening?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text, bool fromVoice)? onTextChanged,
    TResult Function()? startListening,
    TResult Function()? stopListening,
    required TResult orElse(),
  }) {
    if (stopListening != null) {
      return stopListening();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnTextChanged value) onTextChanged,
    required TResult Function(_StartListening value) startListening,
    required TResult Function(_StopListening value) stopListening,
  }) {
    return stopListening(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnTextChanged value)? onTextChanged,
    TResult? Function(_StartListening value)? startListening,
    TResult? Function(_StopListening value)? stopListening,
  }) {
    return stopListening?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnTextChanged value)? onTextChanged,
    TResult Function(_StartListening value)? startListening,
    TResult Function(_StopListening value)? stopListening,
    required TResult orElse(),
  }) {
    if (stopListening != null) {
      return stopListening(this);
    }
    return orElse();
  }
}

abstract class _StopListening implements GetAllProductsEvent {
  const factory _StopListening() = _$StopListeningImpl;
}

/// @nodoc
mixin _$GetAllProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String currentText) listening,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String currentText)? listening,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String currentText)? listening,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Listening value) listening,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Listening value)? listening,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Listening value)? listening,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllProductsStateCopyWith<$Res> {
  factory $GetAllProductsStateCopyWith(
    GetAllProductsState value,
    $Res Function(GetAllProductsState) then,
  ) = _$GetAllProductsStateCopyWithImpl<$Res, GetAllProductsState>;
}

/// @nodoc
class _$GetAllProductsStateCopyWithImpl<$Res, $Val extends GetAllProductsState>
    implements $GetAllProductsStateCopyWith<$Res> {
  _$GetAllProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAllProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GetAllProductsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAllProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GetAllProductsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String currentText) listening,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String currentText)? listening,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String currentText)? listening,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Listening value) listening,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Listening value)? listening,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Listening value)? listening,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GetAllProductsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ListeningImplCopyWith<$Res> {
  factory _$$ListeningImplCopyWith(
    _$ListeningImpl value,
    $Res Function(_$ListeningImpl) then,
  ) = __$$ListeningImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String currentText});
}

/// @nodoc
class __$$ListeningImplCopyWithImpl<$Res>
    extends _$GetAllProductsStateCopyWithImpl<$Res, _$ListeningImpl>
    implements _$$ListeningImplCopyWith<$Res> {
  __$$ListeningImplCopyWithImpl(
    _$ListeningImpl _value,
    $Res Function(_$ListeningImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAllProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? currentText = null}) {
    return _then(
      _$ListeningImpl(
        null == currentText
            ? _value.currentText
            : currentText // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ListeningImpl implements _Listening {
  const _$ListeningImpl(this.currentText);

  @override
  final String currentText;

  @override
  String toString() {
    return 'GetAllProductsState.listening(currentText: $currentText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListeningImpl &&
            (identical(other.currentText, currentText) ||
                other.currentText == currentText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentText);

  /// Create a copy of GetAllProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListeningImplCopyWith<_$ListeningImpl> get copyWith =>
      __$$ListeningImplCopyWithImpl<_$ListeningImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String currentText) listening,
    required TResult Function(String message) error,
  }) {
    return listening(currentText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String currentText)? listening,
    TResult? Function(String message)? error,
  }) {
    return listening?.call(currentText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String currentText)? listening,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (listening != null) {
      return listening(currentText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Listening value) listening,
    required TResult Function(_Error value) error,
  }) {
    return listening(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Listening value)? listening,
    TResult? Function(_Error value)? error,
  }) {
    return listening?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Listening value)? listening,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (listening != null) {
      return listening(this);
    }
    return orElse();
  }
}

abstract class _Listening implements GetAllProductsState {
  const factory _Listening(final String currentText) = _$ListeningImpl;

  String get currentText;

  /// Create a copy of GetAllProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListeningImplCopyWith<_$ListeningImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$GetAllProductsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAllProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GetAllProductsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of GetAllProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String currentText) listening,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String currentText)? listening,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String currentText)? listening,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Listening value) listening,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Listening value)? listening,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Listening value)? listening,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements GetAllProductsState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of GetAllProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
