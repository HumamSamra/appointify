// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppointmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? keyword) getAll,
    required TResult Function(String id) get,
    required TResult Function(AppointmentModel item) create,
    required TResult Function(AppointmentModel item) edit,
    required TResult Function(String id) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? keyword)? getAll,
    TResult? Function(String id)? get,
    TResult? Function(AppointmentModel item)? create,
    TResult? Function(AppointmentModel item)? edit,
    TResult? Function(String id)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? keyword)? getAll,
    TResult Function(String id)? get,
    TResult Function(AppointmentModel item)? create,
    TResult Function(AppointmentModel item)? edit,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Get value) get,
    required TResult Function(_Create value) create,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Get value)? get,
    TResult? Function(_Create value)? create,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Get value)? get,
    TResult Function(_Create value)? create,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentEventCopyWith<$Res> {
  factory $AppointmentEventCopyWith(
          AppointmentEvent value, $Res Function(AppointmentEvent) then) =
      _$AppointmentEventCopyWithImpl<$Res, AppointmentEvent>;
}

/// @nodoc
class _$AppointmentEventCopyWithImpl<$Res, $Val extends AppointmentEvent>
    implements $AppointmentEventCopyWith<$Res> {
  _$AppointmentEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AppointmentEvent.started()';
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
    required TResult Function(String? keyword) getAll,
    required TResult Function(String id) get,
    required TResult Function(AppointmentModel item) create,
    required TResult Function(AppointmentModel item) edit,
    required TResult Function(String id) delete,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? keyword)? getAll,
    TResult? Function(String id)? get,
    TResult? Function(AppointmentModel item)? create,
    TResult? Function(AppointmentModel item)? edit,
    TResult? Function(String id)? delete,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? keyword)? getAll,
    TResult Function(String id)? get,
    TResult Function(AppointmentModel item)? create,
    TResult Function(AppointmentModel item)? edit,
    TResult Function(String id)? delete,
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
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Get value) get,
    required TResult Function(_Create value) create,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Get value)? get,
    TResult? Function(_Create value)? create,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Get value)? get,
    TResult Function(_Create value)? create,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppointmentEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetAllImplCopyWith<$Res> {
  factory _$$GetAllImplCopyWith(
          _$GetAllImpl value, $Res Function(_$GetAllImpl) then) =
      __$$GetAllImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? keyword});
}

/// @nodoc
class __$$GetAllImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$GetAllImpl>
    implements _$$GetAllImplCopyWith<$Res> {
  __$$GetAllImplCopyWithImpl(
      _$GetAllImpl _value, $Res Function(_$GetAllImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = freezed,
  }) {
    return _then(_$GetAllImpl(
      freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetAllImpl implements _GetAll {
  const _$GetAllImpl([this.keyword]);

  @override
  final String? keyword;

  @override
  String toString() {
    return 'AppointmentEvent.getAll(keyword: $keyword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllImplCopyWith<_$GetAllImpl> get copyWith =>
      __$$GetAllImplCopyWithImpl<_$GetAllImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? keyword) getAll,
    required TResult Function(String id) get,
    required TResult Function(AppointmentModel item) create,
    required TResult Function(AppointmentModel item) edit,
    required TResult Function(String id) delete,
  }) {
    return getAll(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? keyword)? getAll,
    TResult? Function(String id)? get,
    TResult? Function(AppointmentModel item)? create,
    TResult? Function(AppointmentModel item)? edit,
    TResult? Function(String id)? delete,
  }) {
    return getAll?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? keyword)? getAll,
    TResult Function(String id)? get,
    TResult Function(AppointmentModel item)? create,
    TResult Function(AppointmentModel item)? edit,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Get value) get,
    required TResult Function(_Create value) create,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Get value)? get,
    TResult? Function(_Create value)? create,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Get value)? get,
    TResult Function(_Create value)? create,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class _GetAll implements AppointmentEvent {
  const factory _GetAll([final String? keyword]) = _$GetAllImpl;

  String? get keyword;
  @JsonKey(ignore: true)
  _$$GetAllImplCopyWith<_$GetAllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetImplCopyWith<$Res> {
  factory _$$GetImplCopyWith(_$GetImpl value, $Res Function(_$GetImpl) then) =
      __$$GetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$GetImpl>
    implements _$$GetImplCopyWith<$Res> {
  __$$GetImplCopyWithImpl(_$GetImpl _value, $Res Function(_$GetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetImpl implements _Get {
  const _$GetImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'AppointmentEvent.get(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetImplCopyWith<_$GetImpl> get copyWith =>
      __$$GetImplCopyWithImpl<_$GetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? keyword) getAll,
    required TResult Function(String id) get,
    required TResult Function(AppointmentModel item) create,
    required TResult Function(AppointmentModel item) edit,
    required TResult Function(String id) delete,
  }) {
    return get(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? keyword)? getAll,
    TResult? Function(String id)? get,
    TResult? Function(AppointmentModel item)? create,
    TResult? Function(AppointmentModel item)? edit,
    TResult? Function(String id)? delete,
  }) {
    return get?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? keyword)? getAll,
    TResult Function(String id)? get,
    TResult Function(AppointmentModel item)? create,
    TResult Function(AppointmentModel item)? edit,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Get value) get,
    required TResult Function(_Create value) create,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Get value)? get,
    TResult? Function(_Create value)? create,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Get value)? get,
    TResult Function(_Create value)? create,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _Get implements AppointmentEvent {
  const factory _Get(final String id) = _$GetImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$GetImplCopyWith<_$GetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppointmentModel item});

  $AppointmentModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$CreateImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as AppointmentModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppointmentModelCopyWith<$Res> get item {
    return $AppointmentModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$CreateImpl implements _Create {
  const _$CreateImpl(this.item);

  @override
  final AppointmentModel item;

  @override
  String toString() {
    return 'AppointmentEvent.create(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? keyword) getAll,
    required TResult Function(String id) get,
    required TResult Function(AppointmentModel item) create,
    required TResult Function(AppointmentModel item) edit,
    required TResult Function(String id) delete,
  }) {
    return create(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? keyword)? getAll,
    TResult? Function(String id)? get,
    TResult? Function(AppointmentModel item)? create,
    TResult? Function(AppointmentModel item)? edit,
    TResult? Function(String id)? delete,
  }) {
    return create?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? keyword)? getAll,
    TResult Function(String id)? get,
    TResult Function(AppointmentModel item)? create,
    TResult Function(AppointmentModel item)? edit,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Get value) get,
    required TResult Function(_Create value) create,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Get value)? get,
    TResult? Function(_Create value)? create,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Get value)? get,
    TResult Function(_Create value)? create,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements AppointmentEvent {
  const factory _Create(final AppointmentModel item) = _$CreateImpl;

  AppointmentModel get item;
  @JsonKey(ignore: true)
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditImplCopyWith<$Res> {
  factory _$$EditImplCopyWith(
          _$EditImpl value, $Res Function(_$EditImpl) then) =
      __$$EditImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppointmentModel item});

  $AppointmentModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$EditImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$EditImpl>
    implements _$$EditImplCopyWith<$Res> {
  __$$EditImplCopyWithImpl(_$EditImpl _value, $Res Function(_$EditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$EditImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as AppointmentModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppointmentModelCopyWith<$Res> get item {
    return $AppointmentModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$EditImpl implements _Edit {
  const _$EditImpl(this.item);

  @override
  final AppointmentModel item;

  @override
  String toString() {
    return 'AppointmentEvent.edit(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditImplCopyWith<_$EditImpl> get copyWith =>
      __$$EditImplCopyWithImpl<_$EditImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? keyword) getAll,
    required TResult Function(String id) get,
    required TResult Function(AppointmentModel item) create,
    required TResult Function(AppointmentModel item) edit,
    required TResult Function(String id) delete,
  }) {
    return edit(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? keyword)? getAll,
    TResult? Function(String id)? get,
    TResult? Function(AppointmentModel item)? create,
    TResult? Function(AppointmentModel item)? edit,
    TResult? Function(String id)? delete,
  }) {
    return edit?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? keyword)? getAll,
    TResult Function(String id)? get,
    TResult Function(AppointmentModel item)? create,
    TResult Function(AppointmentModel item)? edit,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Get value) get,
    required TResult Function(_Create value) create,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Get value)? get,
    TResult? Function(_Create value)? create,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Get value)? get,
    TResult Function(_Create value)? create,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class _Edit implements AppointmentEvent {
  const factory _Edit(final AppointmentModel item) = _$EditImpl;

  AppointmentModel get item;
  @JsonKey(ignore: true)
  _$$EditImplCopyWith<_$EditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'AppointmentEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? keyword) getAll,
    required TResult Function(String id) get,
    required TResult Function(AppointmentModel item) create,
    required TResult Function(AppointmentModel item) edit,
    required TResult Function(String id) delete,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? keyword)? getAll,
    TResult? Function(String id)? get,
    TResult? Function(AppointmentModel item)? create,
    TResult? Function(AppointmentModel item)? edit,
    TResult? Function(String id)? delete,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? keyword)? getAll,
    TResult Function(String id)? get,
    TResult Function(AppointmentModel item)? create,
    TResult Function(AppointmentModel item)? edit,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Get value) get,
    required TResult Function(_Create value) create,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Get value)? get,
    TResult? Function(_Create value)? create,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Get value)? get,
    TResult Function(_Create value)? create,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements AppointmentEvent {
  const factory _Delete(final String id) = _$DeleteImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppointmentState {
  BlocState get blocState => throw _privateConstructorUsedError;
  List<AppointmentModel> get appointments => throw _privateConstructorUsedError;
  AppointmentModel? get appointment => throw _privateConstructorUsedError;
  String get keyword => throw _privateConstructorUsedError;
  DateTime? get currentDate => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppointmentStateCopyWith<AppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentStateCopyWith<$Res> {
  factory $AppointmentStateCopyWith(
          AppointmentState value, $Res Function(AppointmentState) then) =
      _$AppointmentStateCopyWithImpl<$Res, AppointmentState>;
  @useResult
  $Res call(
      {BlocState blocState,
      List<AppointmentModel> appointments,
      AppointmentModel? appointment,
      String keyword,
      DateTime? currentDate,
      Failure? error});

  $AppointmentModelCopyWith<$Res>? get appointment;
}

/// @nodoc
class _$AppointmentStateCopyWithImpl<$Res, $Val extends AppointmentState>
    implements $AppointmentStateCopyWith<$Res> {
  _$AppointmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocState = null,
    Object? appointments = null,
    Object? appointment = freezed,
    Object? keyword = null,
    Object? currentDate = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      blocState: null == blocState
          ? _value.blocState
          : blocState // ignore: cast_nullable_to_non_nullable
              as BlocState,
      appointments: null == appointments
          ? _value.appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<AppointmentModel>,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as AppointmentModel?,
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      currentDate: freezed == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppointmentModelCopyWith<$Res>? get appointment {
    if (_value.appointment == null) {
      return null;
    }

    return $AppointmentModelCopyWith<$Res>(_value.appointment!, (value) {
      return _then(_value.copyWith(appointment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentStateImplCopyWith<$Res>
    implements $AppointmentStateCopyWith<$Res> {
  factory _$$AppointmentStateImplCopyWith(_$AppointmentStateImpl value,
          $Res Function(_$AppointmentStateImpl) then) =
      __$$AppointmentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocState blocState,
      List<AppointmentModel> appointments,
      AppointmentModel? appointment,
      String keyword,
      DateTime? currentDate,
      Failure? error});

  @override
  $AppointmentModelCopyWith<$Res>? get appointment;
}

/// @nodoc
class __$$AppointmentStateImplCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res, _$AppointmentStateImpl>
    implements _$$AppointmentStateImplCopyWith<$Res> {
  __$$AppointmentStateImplCopyWithImpl(_$AppointmentStateImpl _value,
      $Res Function(_$AppointmentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocState = null,
    Object? appointments = null,
    Object? appointment = freezed,
    Object? keyword = null,
    Object? currentDate = freezed,
    Object? error = freezed,
  }) {
    return _then(_$AppointmentStateImpl(
      blocState: null == blocState
          ? _value.blocState
          : blocState // ignore: cast_nullable_to_non_nullable
              as BlocState,
      appointments: null == appointments
          ? _value._appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<AppointmentModel>,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as AppointmentModel?,
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      currentDate: freezed == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$AppointmentStateImpl implements _AppointmentState {
  const _$AppointmentStateImpl(
      {this.blocState = BlocState.loading,
      final List<AppointmentModel> appointments = const [],
      this.appointment,
      this.keyword = '',
      this.currentDate,
      this.error})
      : _appointments = appointments;

  @override
  @JsonKey()
  final BlocState blocState;
  final List<AppointmentModel> _appointments;
  @override
  @JsonKey()
  List<AppointmentModel> get appointments {
    if (_appointments is EqualUnmodifiableListView) return _appointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appointments);
  }

  @override
  final AppointmentModel? appointment;
  @override
  @JsonKey()
  final String keyword;
  @override
  final DateTime? currentDate;
  @override
  final Failure? error;

  @override
  String toString() {
    return 'AppointmentState(blocState: $blocState, appointments: $appointments, appointment: $appointment, keyword: $keyword, currentDate: $currentDate, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentStateImpl &&
            (identical(other.blocState, blocState) ||
                other.blocState == blocState) &&
            const DeepCollectionEquality()
                .equals(other._appointments, _appointments) &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.currentDate, currentDate) ||
                other.currentDate == currentDate) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      blocState,
      const DeepCollectionEquality().hash(_appointments),
      appointment,
      keyword,
      currentDate,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentStateImplCopyWith<_$AppointmentStateImpl> get copyWith =>
      __$$AppointmentStateImplCopyWithImpl<_$AppointmentStateImpl>(
          this, _$identity);
}

abstract class _AppointmentState implements AppointmentState {
  const factory _AppointmentState(
      {final BlocState blocState,
      final List<AppointmentModel> appointments,
      final AppointmentModel? appointment,
      final String keyword,
      final DateTime? currentDate,
      final Failure? error}) = _$AppointmentStateImpl;

  @override
  BlocState get blocState;
  @override
  List<AppointmentModel> get appointments;
  @override
  AppointmentModel? get appointment;
  @override
  String get keyword;
  @override
  DateTime? get currentDate;
  @override
  Failure? get error;
  @override
  @JsonKey(ignore: true)
  _$$AppointmentStateImplCopyWith<_$AppointmentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
