// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name) create,
    required TResult Function(int id, String name) update,
    required TResult Function(int id) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String name)? create,
    TResult? Function(int id, String name)? update,
    TResult? Function(int id)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name)? create,
    TResult Function(int id, String name)? update,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesEvent$Init value) init,
    required TResult Function(CategoriesEvent$Create value) create,
    required TResult Function(CategoriesEvent$Update value) update,
    required TResult Function(CategoriesEvent$Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesEvent$Init value)? init,
    TResult? Function(CategoriesEvent$Create value)? create,
    TResult? Function(CategoriesEvent$Update value)? update,
    TResult? Function(CategoriesEvent$Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesEvent$Init value)? init,
    TResult Function(CategoriesEvent$Create value)? create,
    TResult Function(CategoriesEvent$Update value)? update,
    TResult Function(CategoriesEvent$Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesEventCopyWith<$Res> {
  factory $CategoriesEventCopyWith(
          CategoriesEvent value, $Res Function(CategoriesEvent) then) =
      _$CategoriesEventCopyWithImpl<$Res, CategoriesEvent>;
}

/// @nodoc
class _$CategoriesEventCopyWithImpl<$Res, $Val extends CategoriesEvent>
    implements $CategoriesEventCopyWith<$Res> {
  _$CategoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CategoriesEvent$InitImplCopyWith<$Res> {
  factory _$$CategoriesEvent$InitImplCopyWith(_$CategoriesEvent$InitImpl value,
          $Res Function(_$CategoriesEvent$InitImpl) then) =
      __$$CategoriesEvent$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoriesEvent$InitImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$CategoriesEvent$InitImpl>
    implements _$$CategoriesEvent$InitImplCopyWith<$Res> {
  __$$CategoriesEvent$InitImplCopyWithImpl(_$CategoriesEvent$InitImpl _value,
      $Res Function(_$CategoriesEvent$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoriesEvent$InitImpl implements CategoriesEvent$Init {
  const _$CategoriesEvent$InitImpl();

  @override
  String toString() {
    return 'CategoriesEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesEvent$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name) create,
    required TResult Function(int id, String name) update,
    required TResult Function(int id) delete,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String name)? create,
    TResult? Function(int id, String name)? update,
    TResult? Function(int id)? delete,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name)? create,
    TResult Function(int id, String name)? update,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesEvent$Init value) init,
    required TResult Function(CategoriesEvent$Create value) create,
    required TResult Function(CategoriesEvent$Update value) update,
    required TResult Function(CategoriesEvent$Delete value) delete,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesEvent$Init value)? init,
    TResult? Function(CategoriesEvent$Create value)? create,
    TResult? Function(CategoriesEvent$Update value)? update,
    TResult? Function(CategoriesEvent$Delete value)? delete,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesEvent$Init value)? init,
    TResult Function(CategoriesEvent$Create value)? create,
    TResult Function(CategoriesEvent$Update value)? update,
    TResult Function(CategoriesEvent$Delete value)? delete,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class CategoriesEvent$Init implements CategoriesEvent {
  const factory CategoriesEvent$Init() = _$CategoriesEvent$InitImpl;
}

/// @nodoc
abstract class _$$CategoriesEvent$CreateImplCopyWith<$Res> {
  factory _$$CategoriesEvent$CreateImplCopyWith(
          _$CategoriesEvent$CreateImpl value,
          $Res Function(_$CategoriesEvent$CreateImpl) then) =
      __$$CategoriesEvent$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$CategoriesEvent$CreateImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$CategoriesEvent$CreateImpl>
    implements _$$CategoriesEvent$CreateImplCopyWith<$Res> {
  __$$CategoriesEvent$CreateImplCopyWithImpl(
      _$CategoriesEvent$CreateImpl _value,
      $Res Function(_$CategoriesEvent$CreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$CategoriesEvent$CreateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoriesEvent$CreateImpl implements CategoriesEvent$Create {
  const _$CategoriesEvent$CreateImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'CategoriesEvent.create(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesEvent$CreateImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesEvent$CreateImplCopyWith<_$CategoriesEvent$CreateImpl>
      get copyWith => __$$CategoriesEvent$CreateImplCopyWithImpl<
          _$CategoriesEvent$CreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name) create,
    required TResult Function(int id, String name) update,
    required TResult Function(int id) delete,
  }) {
    return create(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String name)? create,
    TResult? Function(int id, String name)? update,
    TResult? Function(int id)? delete,
  }) {
    return create?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name)? create,
    TResult Function(int id, String name)? update,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesEvent$Init value) init,
    required TResult Function(CategoriesEvent$Create value) create,
    required TResult Function(CategoriesEvent$Update value) update,
    required TResult Function(CategoriesEvent$Delete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesEvent$Init value)? init,
    TResult? Function(CategoriesEvent$Create value)? create,
    TResult? Function(CategoriesEvent$Update value)? update,
    TResult? Function(CategoriesEvent$Delete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesEvent$Init value)? init,
    TResult Function(CategoriesEvent$Create value)? create,
    TResult Function(CategoriesEvent$Update value)? update,
    TResult Function(CategoriesEvent$Delete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class CategoriesEvent$Create implements CategoriesEvent {
  const factory CategoriesEvent$Create({required final String name}) =
      _$CategoriesEvent$CreateImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$CategoriesEvent$CreateImplCopyWith<_$CategoriesEvent$CreateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesEvent$UpdateImplCopyWith<$Res> {
  factory _$$CategoriesEvent$UpdateImplCopyWith(
          _$CategoriesEvent$UpdateImpl value,
          $Res Function(_$CategoriesEvent$UpdateImpl) then) =
      __$$CategoriesEvent$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$CategoriesEvent$UpdateImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$CategoriesEvent$UpdateImpl>
    implements _$$CategoriesEvent$UpdateImplCopyWith<$Res> {
  __$$CategoriesEvent$UpdateImplCopyWithImpl(
      _$CategoriesEvent$UpdateImpl _value,
      $Res Function(_$CategoriesEvent$UpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CategoriesEvent$UpdateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoriesEvent$UpdateImpl implements CategoriesEvent$Update {
  const _$CategoriesEvent$UpdateImpl({required this.id, required this.name});

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'CategoriesEvent.update(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesEvent$UpdateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesEvent$UpdateImplCopyWith<_$CategoriesEvent$UpdateImpl>
      get copyWith => __$$CategoriesEvent$UpdateImplCopyWithImpl<
          _$CategoriesEvent$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name) create,
    required TResult Function(int id, String name) update,
    required TResult Function(int id) delete,
  }) {
    return update(id, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String name)? create,
    TResult? Function(int id, String name)? update,
    TResult? Function(int id)? delete,
  }) {
    return update?.call(id, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name)? create,
    TResult Function(int id, String name)? update,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(id, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesEvent$Init value) init,
    required TResult Function(CategoriesEvent$Create value) create,
    required TResult Function(CategoriesEvent$Update value) update,
    required TResult Function(CategoriesEvent$Delete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesEvent$Init value)? init,
    TResult? Function(CategoriesEvent$Create value)? create,
    TResult? Function(CategoriesEvent$Update value)? update,
    TResult? Function(CategoriesEvent$Delete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesEvent$Init value)? init,
    TResult Function(CategoriesEvent$Create value)? create,
    TResult Function(CategoriesEvent$Update value)? update,
    TResult Function(CategoriesEvent$Delete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class CategoriesEvent$Update implements CategoriesEvent {
  const factory CategoriesEvent$Update(
      {required final int id,
      required final String name}) = _$CategoriesEvent$UpdateImpl;

  int get id;
  String get name;
  @JsonKey(ignore: true)
  _$$CategoriesEvent$UpdateImplCopyWith<_$CategoriesEvent$UpdateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesEvent$DeleteImplCopyWith<$Res> {
  factory _$$CategoriesEvent$DeleteImplCopyWith(
          _$CategoriesEvent$DeleteImpl value,
          $Res Function(_$CategoriesEvent$DeleteImpl) then) =
      __$$CategoriesEvent$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$CategoriesEvent$DeleteImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$CategoriesEvent$DeleteImpl>
    implements _$$CategoriesEvent$DeleteImplCopyWith<$Res> {
  __$$CategoriesEvent$DeleteImplCopyWithImpl(
      _$CategoriesEvent$DeleteImpl _value,
      $Res Function(_$CategoriesEvent$DeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$CategoriesEvent$DeleteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CategoriesEvent$DeleteImpl implements CategoriesEvent$Delete {
  const _$CategoriesEvent$DeleteImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CategoriesEvent.delete(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesEvent$DeleteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesEvent$DeleteImplCopyWith<_$CategoriesEvent$DeleteImpl>
      get copyWith => __$$CategoriesEvent$DeleteImplCopyWithImpl<
          _$CategoriesEvent$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name) create,
    required TResult Function(int id, String name) update,
    required TResult Function(int id) delete,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String name)? create,
    TResult? Function(int id, String name)? update,
    TResult? Function(int id)? delete,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name)? create,
    TResult Function(int id, String name)? update,
    TResult Function(int id)? delete,
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
    required TResult Function(CategoriesEvent$Init value) init,
    required TResult Function(CategoriesEvent$Create value) create,
    required TResult Function(CategoriesEvent$Update value) update,
    required TResult Function(CategoriesEvent$Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesEvent$Init value)? init,
    TResult? Function(CategoriesEvent$Create value)? create,
    TResult? Function(CategoriesEvent$Update value)? update,
    TResult? Function(CategoriesEvent$Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesEvent$Init value)? init,
    TResult Function(CategoriesEvent$Create value)? create,
    TResult Function(CategoriesEvent$Update value)? update,
    TResult Function(CategoriesEvent$Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class CategoriesEvent$Delete implements CategoriesEvent {
  const factory CategoriesEvent$Delete({required final int id}) =
      _$CategoriesEvent$DeleteImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$CategoriesEvent$DeleteImplCopyWith<_$CategoriesEvent$DeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoriesState {
  List<Category> get categories => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Category> categories, String? error) idle,
    required TResult Function(List<Category> categories) processing,
    required TResult Function(List<Category> categories) added,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> categories, String? error)? idle,
    TResult? Function(List<Category> categories)? processing,
    TResult? Function(List<Category> categories)? added,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> categories, String? error)? idle,
    TResult Function(List<Category> categories)? processing,
    TResult Function(List<Category> categories)? added,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesState$Idle value) idle,
    required TResult Function(CategoriesState$Processing value) processing,
    required TResult Function(CategoriesState$Added value) added,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesState$Idle value)? idle,
    TResult? Function(CategoriesState$Processing value)? processing,
    TResult? Function(CategoriesState$Added value)? added,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesState$Idle value)? idle,
    TResult Function(CategoriesState$Processing value)? processing,
    TResult Function(CategoriesState$Added value)? added,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoriesStateCopyWith<CategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res, CategoriesState>;
  @useResult
  $Res call({List<Category> categories});
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res, $Val extends CategoriesState>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesState$IdleImplCopyWith<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  factory _$$CategoriesState$IdleImplCopyWith(_$CategoriesState$IdleImpl value,
          $Res Function(_$CategoriesState$IdleImpl) then) =
      __$$CategoriesState$IdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Category> categories, String? error});
}

/// @nodoc
class __$$CategoriesState$IdleImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$CategoriesState$IdleImpl>
    implements _$$CategoriesState$IdleImplCopyWith<$Res> {
  __$$CategoriesState$IdleImplCopyWithImpl(_$CategoriesState$IdleImpl _value,
      $Res Function(_$CategoriesState$IdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? error = freezed,
  }) {
    return _then(_$CategoriesState$IdleImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CategoriesState$IdleImpl extends CategoriesState$Idle {
  const _$CategoriesState$IdleImpl(
      {required final List<Category> categories, this.error})
      : _categories = categories,
        super._();

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'CategoriesState.idle(categories: $categories, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesState$IdleImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesState$IdleImplCopyWith<_$CategoriesState$IdleImpl>
      get copyWith =>
          __$$CategoriesState$IdleImplCopyWithImpl<_$CategoriesState$IdleImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Category> categories, String? error) idle,
    required TResult Function(List<Category> categories) processing,
    required TResult Function(List<Category> categories) added,
  }) {
    return idle(categories, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> categories, String? error)? idle,
    TResult? Function(List<Category> categories)? processing,
    TResult? Function(List<Category> categories)? added,
  }) {
    return idle?.call(categories, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> categories, String? error)? idle,
    TResult Function(List<Category> categories)? processing,
    TResult Function(List<Category> categories)? added,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(categories, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesState$Idle value) idle,
    required TResult Function(CategoriesState$Processing value) processing,
    required TResult Function(CategoriesState$Added value) added,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesState$Idle value)? idle,
    TResult? Function(CategoriesState$Processing value)? processing,
    TResult? Function(CategoriesState$Added value)? added,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesState$Idle value)? idle,
    TResult Function(CategoriesState$Processing value)? processing,
    TResult Function(CategoriesState$Added value)? added,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class CategoriesState$Idle extends CategoriesState {
  const factory CategoriesState$Idle(
      {required final List<Category> categories,
      final String? error}) = _$CategoriesState$IdleImpl;
  const CategoriesState$Idle._() : super._();

  @override
  List<Category> get categories;
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$CategoriesState$IdleImplCopyWith<_$CategoriesState$IdleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesState$ProcessingImplCopyWith<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  factory _$$CategoriesState$ProcessingImplCopyWith(
          _$CategoriesState$ProcessingImpl value,
          $Res Function(_$CategoriesState$ProcessingImpl) then) =
      __$$CategoriesState$ProcessingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Category> categories});
}

/// @nodoc
class __$$CategoriesState$ProcessingImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res,
        _$CategoriesState$ProcessingImpl>
    implements _$$CategoriesState$ProcessingImplCopyWith<$Res> {
  __$$CategoriesState$ProcessingImplCopyWithImpl(
      _$CategoriesState$ProcessingImpl _value,
      $Res Function(_$CategoriesState$ProcessingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$CategoriesState$ProcessingImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$CategoriesState$ProcessingImpl extends CategoriesState$Processing {
  const _$CategoriesState$ProcessingImpl(
      {required final List<Category> categories})
      : _categories = categories,
        super._();

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoriesState.processing(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesState$ProcessingImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesState$ProcessingImplCopyWith<_$CategoriesState$ProcessingImpl>
      get copyWith => __$$CategoriesState$ProcessingImplCopyWithImpl<
          _$CategoriesState$ProcessingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Category> categories, String? error) idle,
    required TResult Function(List<Category> categories) processing,
    required TResult Function(List<Category> categories) added,
  }) {
    return processing(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> categories, String? error)? idle,
    TResult? Function(List<Category> categories)? processing,
    TResult? Function(List<Category> categories)? added,
  }) {
    return processing?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> categories, String? error)? idle,
    TResult Function(List<Category> categories)? processing,
    TResult Function(List<Category> categories)? added,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesState$Idle value) idle,
    required TResult Function(CategoriesState$Processing value) processing,
    required TResult Function(CategoriesState$Added value) added,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesState$Idle value)? idle,
    TResult? Function(CategoriesState$Processing value)? processing,
    TResult? Function(CategoriesState$Added value)? added,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesState$Idle value)? idle,
    TResult Function(CategoriesState$Processing value)? processing,
    TResult Function(CategoriesState$Added value)? added,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class CategoriesState$Processing extends CategoriesState {
  const factory CategoriesState$Processing(
          {required final List<Category> categories}) =
      _$CategoriesState$ProcessingImpl;
  const CategoriesState$Processing._() : super._();

  @override
  List<Category> get categories;
  @override
  @JsonKey(ignore: true)
  _$$CategoriesState$ProcessingImplCopyWith<_$CategoriesState$ProcessingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesState$AddedImplCopyWith<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  factory _$$CategoriesState$AddedImplCopyWith(
          _$CategoriesState$AddedImpl value,
          $Res Function(_$CategoriesState$AddedImpl) then) =
      __$$CategoriesState$AddedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Category> categories});
}

/// @nodoc
class __$$CategoriesState$AddedImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$CategoriesState$AddedImpl>
    implements _$$CategoriesState$AddedImplCopyWith<$Res> {
  __$$CategoriesState$AddedImplCopyWithImpl(_$CategoriesState$AddedImpl _value,
      $Res Function(_$CategoriesState$AddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$CategoriesState$AddedImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$CategoriesState$AddedImpl extends CategoriesState$Added {
  const _$CategoriesState$AddedImpl({required final List<Category> categories})
      : _categories = categories,
        super._();

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoriesState.added(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesState$AddedImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesState$AddedImplCopyWith<_$CategoriesState$AddedImpl>
      get copyWith => __$$CategoriesState$AddedImplCopyWithImpl<
          _$CategoriesState$AddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Category> categories, String? error) idle,
    required TResult Function(List<Category> categories) processing,
    required TResult Function(List<Category> categories) added,
  }) {
    return added(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> categories, String? error)? idle,
    TResult? Function(List<Category> categories)? processing,
    TResult? Function(List<Category> categories)? added,
  }) {
    return added?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> categories, String? error)? idle,
    TResult Function(List<Category> categories)? processing,
    TResult Function(List<Category> categories)? added,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesState$Idle value) idle,
    required TResult Function(CategoriesState$Processing value) processing,
    required TResult Function(CategoriesState$Added value) added,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesState$Idle value)? idle,
    TResult? Function(CategoriesState$Processing value)? processing,
    TResult? Function(CategoriesState$Added value)? added,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesState$Idle value)? idle,
    TResult Function(CategoriesState$Processing value)? processing,
    TResult Function(CategoriesState$Added value)? added,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class CategoriesState$Added extends CategoriesState {
  const factory CategoriesState$Added(
      {required final List<Category> categories}) = _$CategoriesState$AddedImpl;
  const CategoriesState$Added._() : super._();

  @override
  List<Category> get categories;
  @override
  @JsonKey(ignore: true)
  _$$CategoriesState$AddedImplCopyWith<_$CategoriesState$AddedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
