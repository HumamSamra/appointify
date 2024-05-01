// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_setter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StateSetterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic value) started,
    required TResult Function(dynamic newValue) setState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic value)? started,
    TResult? Function(dynamic newValue)? setState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic value)? started,
    TResult Function(dynamic newValue)? setState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetState value) setState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetState value)? setState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetState value)? setState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateSetterEventCopyWith<$Res> {
  factory $StateSetterEventCopyWith(
          StateSetterEvent value, $Res Function(StateSetterEvent) then) =
      _$StateSetterEventCopyWithImpl<$Res, StateSetterEvent>;
}

/// @nodoc
class _$StateSetterEventCopyWithImpl<$Res, $Val extends StateSetterEvent>
    implements $StateSetterEventCopyWith<$Res> {
  _$StateSetterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic value});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$StateSetterEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$StartedImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({this.value});

  @override
  final dynamic value;

  @override
  String toString() {
    return 'StateSetterEvent.started(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic value) started,
    required TResult Function(dynamic newValue) setState,
  }) {
    return started(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic value)? started,
    TResult? Function(dynamic newValue)? setState,
  }) {
    return started?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic value)? started,
    TResult Function(dynamic newValue)? setState,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetState value) setState,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetState value)? setState,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetState value)? setState,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements StateSetterEvent {
  const factory _Started({final dynamic value}) = _$StartedImpl;

  dynamic get value;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetStateImplCopyWith<$Res> {
  factory _$$SetStateImplCopyWith(
          _$SetStateImpl value, $Res Function(_$SetStateImpl) then) =
      __$$SetStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic newValue});
}

/// @nodoc
class __$$SetStateImplCopyWithImpl<$Res>
    extends _$StateSetterEventCopyWithImpl<$Res, _$SetStateImpl>
    implements _$$SetStateImplCopyWith<$Res> {
  __$$SetStateImplCopyWithImpl(
      _$SetStateImpl _value, $Res Function(_$SetStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newValue = freezed,
  }) {
    return _then(_$SetStateImpl(
      newValue: freezed == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$SetStateImpl implements _SetState {
  const _$SetStateImpl({this.newValue});

  @override
  final dynamic newValue;

  @override
  String toString() {
    return 'StateSetterEvent.setState(newValue: $newValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetStateImpl &&
            const DeepCollectionEquality().equals(other.newValue, newValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetStateImplCopyWith<_$SetStateImpl> get copyWith =>
      __$$SetStateImplCopyWithImpl<_$SetStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic value) started,
    required TResult Function(dynamic newValue) setState,
  }) {
    return setState(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic value)? started,
    TResult? Function(dynamic newValue)? setState,
  }) {
    return setState?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic value)? started,
    TResult Function(dynamic newValue)? setState,
    required TResult orElse(),
  }) {
    if (setState != null) {
      return setState(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetState value) setState,
  }) {
    return setState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetState value)? setState,
  }) {
    return setState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetState value)? setState,
    required TResult orElse(),
  }) {
    if (setState != null) {
      return setState(this);
    }
    return orElse();
  }
}

abstract class _SetState implements StateSetterEvent {
  const factory _SetState({final dynamic newValue}) = _$SetStateImpl;

  dynamic get newValue;
  @JsonKey(ignore: true)
  _$$SetStateImplCopyWith<_$SetStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StateSetterState {
  dynamic get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateSetterStateCopyWith<StateSetterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateSetterStateCopyWith<$Res> {
  factory $StateSetterStateCopyWith(
          StateSetterState value, $Res Function(StateSetterState) then) =
      _$StateSetterStateCopyWithImpl<$Res, StateSetterState>;
  @useResult
  $Res call({dynamic value});
}

/// @nodoc
class _$StateSetterStateCopyWithImpl<$Res, $Val extends StateSetterState>
    implements $StateSetterStateCopyWith<$Res> {
  _$StateSetterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateSetterStateImplCopyWith<$Res>
    implements $StateSetterStateCopyWith<$Res> {
  factory _$$StateSetterStateImplCopyWith(_$StateSetterStateImpl value,
          $Res Function(_$StateSetterStateImpl) then) =
      __$$StateSetterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic value});
}

/// @nodoc
class __$$StateSetterStateImplCopyWithImpl<$Res>
    extends _$StateSetterStateCopyWithImpl<$Res, _$StateSetterStateImpl>
    implements _$$StateSetterStateImplCopyWith<$Res> {
  __$$StateSetterStateImplCopyWithImpl(_$StateSetterStateImpl _value,
      $Res Function(_$StateSetterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$StateSetterStateImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$StateSetterStateImpl implements _StateSetterState {
  const _$StateSetterStateImpl({this.value});

  @override
  final dynamic value;

  @override
  String toString() {
    return 'StateSetterState(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateSetterStateImpl &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateSetterStateImplCopyWith<_$StateSetterStateImpl> get copyWith =>
      __$$StateSetterStateImplCopyWithImpl<_$StateSetterStateImpl>(
          this, _$identity);
}

abstract class _StateSetterState implements StateSetterState {
  const factory _StateSetterState({final dynamic value}) =
      _$StateSetterStateImpl;

  @override
  dynamic get value;
  @override
  @JsonKey(ignore: true)
  _$$StateSetterStateImplCopyWith<_$StateSetterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
