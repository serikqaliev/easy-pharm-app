// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symptoms_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SymptomsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(SymptomDto symptom) create,
    required TResult Function(List<Symptom> symptoms) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(SymptomDto symptom)? create,
    TResult? Function(List<Symptom> symptoms)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(SymptomDto symptom)? create,
    TResult Function(List<Symptom> symptoms)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SymptomsEvent$Init value) init,
    required TResult Function(SymptomsEvent$Create value) create,
    required TResult Function(SymptomsEvent$Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SymptomsEvent$Init value)? init,
    TResult? Function(SymptomsEvent$Create value)? create,
    TResult? Function(SymptomsEvent$Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SymptomsEvent$Init value)? init,
    TResult Function(SymptomsEvent$Create value)? create,
    TResult Function(SymptomsEvent$Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomsEventCopyWith<$Res> {
  factory $SymptomsEventCopyWith(
          SymptomsEvent value, $Res Function(SymptomsEvent) then) =
      _$SymptomsEventCopyWithImpl<$Res, SymptomsEvent>;
}

/// @nodoc
class _$SymptomsEventCopyWithImpl<$Res, $Val extends SymptomsEvent>
    implements $SymptomsEventCopyWith<$Res> {
  _$SymptomsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SymptomsEvent$InitImplCopyWith<$Res> {
  factory _$$SymptomsEvent$InitImplCopyWith(_$SymptomsEvent$InitImpl value,
          $Res Function(_$SymptomsEvent$InitImpl) then) =
      __$$SymptomsEvent$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SymptomsEvent$InitImplCopyWithImpl<$Res>
    extends _$SymptomsEventCopyWithImpl<$Res, _$SymptomsEvent$InitImpl>
    implements _$$SymptomsEvent$InitImplCopyWith<$Res> {
  __$$SymptomsEvent$InitImplCopyWithImpl(_$SymptomsEvent$InitImpl _value,
      $Res Function(_$SymptomsEvent$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SymptomsEvent$InitImpl implements SymptomsEvent$Init {
  const _$SymptomsEvent$InitImpl();

  @override
  String toString() {
    return 'SymptomsEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SymptomsEvent$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(SymptomDto symptom) create,
    required TResult Function(List<Symptom> symptoms) delete,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(SymptomDto symptom)? create,
    TResult? Function(List<Symptom> symptoms)? delete,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(SymptomDto symptom)? create,
    TResult Function(List<Symptom> symptoms)? delete,
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
    required TResult Function(SymptomsEvent$Init value) init,
    required TResult Function(SymptomsEvent$Create value) create,
    required TResult Function(SymptomsEvent$Delete value) delete,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SymptomsEvent$Init value)? init,
    TResult? Function(SymptomsEvent$Create value)? create,
    TResult? Function(SymptomsEvent$Delete value)? delete,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SymptomsEvent$Init value)? init,
    TResult Function(SymptomsEvent$Create value)? create,
    TResult Function(SymptomsEvent$Delete value)? delete,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class SymptomsEvent$Init implements SymptomsEvent {
  const factory SymptomsEvent$Init() = _$SymptomsEvent$InitImpl;
}

/// @nodoc
abstract class _$$SymptomsEvent$CreateImplCopyWith<$Res> {
  factory _$$SymptomsEvent$CreateImplCopyWith(_$SymptomsEvent$CreateImpl value,
          $Res Function(_$SymptomsEvent$CreateImpl) then) =
      __$$SymptomsEvent$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SymptomDto symptom});
}

/// @nodoc
class __$$SymptomsEvent$CreateImplCopyWithImpl<$Res>
    extends _$SymptomsEventCopyWithImpl<$Res, _$SymptomsEvent$CreateImpl>
    implements _$$SymptomsEvent$CreateImplCopyWith<$Res> {
  __$$SymptomsEvent$CreateImplCopyWithImpl(_$SymptomsEvent$CreateImpl _value,
      $Res Function(_$SymptomsEvent$CreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptom = null,
  }) {
    return _then(_$SymptomsEvent$CreateImpl(
      symptom: null == symptom
          ? _value.symptom
          : symptom // ignore: cast_nullable_to_non_nullable
              as SymptomDto,
    ));
  }
}

/// @nodoc

class _$SymptomsEvent$CreateImpl implements SymptomsEvent$Create {
  const _$SymptomsEvent$CreateImpl({required this.symptom});

  @override
  final SymptomDto symptom;

  @override
  String toString() {
    return 'SymptomsEvent.create(symptom: $symptom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomsEvent$CreateImpl &&
            (identical(other.symptom, symptom) || other.symptom == symptom));
  }

  @override
  int get hashCode => Object.hash(runtimeType, symptom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomsEvent$CreateImplCopyWith<_$SymptomsEvent$CreateImpl>
      get copyWith =>
          __$$SymptomsEvent$CreateImplCopyWithImpl<_$SymptomsEvent$CreateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(SymptomDto symptom) create,
    required TResult Function(List<Symptom> symptoms) delete,
  }) {
    return create(symptom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(SymptomDto symptom)? create,
    TResult? Function(List<Symptom> symptoms)? delete,
  }) {
    return create?.call(symptom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(SymptomDto symptom)? create,
    TResult Function(List<Symptom> symptoms)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(symptom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SymptomsEvent$Init value) init,
    required TResult Function(SymptomsEvent$Create value) create,
    required TResult Function(SymptomsEvent$Delete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SymptomsEvent$Init value)? init,
    TResult? Function(SymptomsEvent$Create value)? create,
    TResult? Function(SymptomsEvent$Delete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SymptomsEvent$Init value)? init,
    TResult Function(SymptomsEvent$Create value)? create,
    TResult Function(SymptomsEvent$Delete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class SymptomsEvent$Create implements SymptomsEvent {
  const factory SymptomsEvent$Create({required final SymptomDto symptom}) =
      _$SymptomsEvent$CreateImpl;

  SymptomDto get symptom;
  @JsonKey(ignore: true)
  _$$SymptomsEvent$CreateImplCopyWith<_$SymptomsEvent$CreateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SymptomsEvent$DeleteImplCopyWith<$Res> {
  factory _$$SymptomsEvent$DeleteImplCopyWith(_$SymptomsEvent$DeleteImpl value,
          $Res Function(_$SymptomsEvent$DeleteImpl) then) =
      __$$SymptomsEvent$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Symptom> symptoms});
}

/// @nodoc
class __$$SymptomsEvent$DeleteImplCopyWithImpl<$Res>
    extends _$SymptomsEventCopyWithImpl<$Res, _$SymptomsEvent$DeleteImpl>
    implements _$$SymptomsEvent$DeleteImplCopyWith<$Res> {
  __$$SymptomsEvent$DeleteImplCopyWithImpl(_$SymptomsEvent$DeleteImpl _value,
      $Res Function(_$SymptomsEvent$DeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptoms = null,
  }) {
    return _then(_$SymptomsEvent$DeleteImpl(
      symptoms: null == symptoms
          ? _value._symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<Symptom>,
    ));
  }
}

/// @nodoc

class _$SymptomsEvent$DeleteImpl implements SymptomsEvent$Delete {
  const _$SymptomsEvent$DeleteImpl({required final List<Symptom> symptoms})
      : _symptoms = symptoms;

  final List<Symptom> _symptoms;
  @override
  List<Symptom> get symptoms {
    if (_symptoms is EqualUnmodifiableListView) return _symptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symptoms);
  }

  @override
  String toString() {
    return 'SymptomsEvent.delete(symptoms: $symptoms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomsEvent$DeleteImpl &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_symptoms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomsEvent$DeleteImplCopyWith<_$SymptomsEvent$DeleteImpl>
      get copyWith =>
          __$$SymptomsEvent$DeleteImplCopyWithImpl<_$SymptomsEvent$DeleteImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(SymptomDto symptom) create,
    required TResult Function(List<Symptom> symptoms) delete,
  }) {
    return delete(symptoms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(SymptomDto symptom)? create,
    TResult? Function(List<Symptom> symptoms)? delete,
  }) {
    return delete?.call(symptoms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(SymptomDto symptom)? create,
    TResult Function(List<Symptom> symptoms)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(symptoms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SymptomsEvent$Init value) init,
    required TResult Function(SymptomsEvent$Create value) create,
    required TResult Function(SymptomsEvent$Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SymptomsEvent$Init value)? init,
    TResult? Function(SymptomsEvent$Create value)? create,
    TResult? Function(SymptomsEvent$Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SymptomsEvent$Init value)? init,
    TResult Function(SymptomsEvent$Create value)? create,
    TResult Function(SymptomsEvent$Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class SymptomsEvent$Delete implements SymptomsEvent {
  const factory SymptomsEvent$Delete({required final List<Symptom> symptoms}) =
      _$SymptomsEvent$DeleteImpl;

  List<Symptom> get symptoms;
  @JsonKey(ignore: true)
  _$$SymptomsEvent$DeleteImplCopyWith<_$SymptomsEvent$DeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SymptomsState {
  List<Symptom> get symptoms => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Symptom> symptoms, String message, String? error)
        idle,
    required TResult Function(List<Symptom> symptoms, String message)
        processing,
    required TResult Function(List<Symptom> symptoms, String message) created,
    required TResult Function(List<Symptom> symptoms, String message) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Symptom> symptoms, String message, String? error)?
        idle,
    TResult? Function(List<Symptom> symptoms, String message)? processing,
    TResult? Function(List<Symptom> symptoms, String message)? created,
    TResult? Function(List<Symptom> symptoms, String message)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Symptom> symptoms, String message, String? error)?
        idle,
    TResult Function(List<Symptom> symptoms, String message)? processing,
    TResult Function(List<Symptom> symptoms, String message)? created,
    TResult Function(List<Symptom> symptoms, String message)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SymptomsState$Idle value) idle,
    required TResult Function(SymptomsState$Processing value) processing,
    required TResult Function(SymptomsState$Created value) created,
    required TResult Function(SymptomsState$Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SymptomsState$Idle value)? idle,
    TResult? Function(SymptomsState$Processing value)? processing,
    TResult? Function(SymptomsState$Created value)? created,
    TResult? Function(SymptomsState$Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SymptomsState$Idle value)? idle,
    TResult Function(SymptomsState$Processing value)? processing,
    TResult Function(SymptomsState$Created value)? created,
    TResult Function(SymptomsState$Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SymptomsStateCopyWith<SymptomsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomsStateCopyWith<$Res> {
  factory $SymptomsStateCopyWith(
          SymptomsState value, $Res Function(SymptomsState) then) =
      _$SymptomsStateCopyWithImpl<$Res, SymptomsState>;
  @useResult
  $Res call({List<Symptom> symptoms, String message});
}

/// @nodoc
class _$SymptomsStateCopyWithImpl<$Res, $Val extends SymptomsState>
    implements $SymptomsStateCopyWith<$Res> {
  _$SymptomsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptoms = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      symptoms: null == symptoms
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<Symptom>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SymptomsState$IdleImplCopyWith<$Res>
    implements $SymptomsStateCopyWith<$Res> {
  factory _$$SymptomsState$IdleImplCopyWith(_$SymptomsState$IdleImpl value,
          $Res Function(_$SymptomsState$IdleImpl) then) =
      __$$SymptomsState$IdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Symptom> symptoms, String message, String? error});
}

/// @nodoc
class __$$SymptomsState$IdleImplCopyWithImpl<$Res>
    extends _$SymptomsStateCopyWithImpl<$Res, _$SymptomsState$IdleImpl>
    implements _$$SymptomsState$IdleImplCopyWith<$Res> {
  __$$SymptomsState$IdleImplCopyWithImpl(_$SymptomsState$IdleImpl _value,
      $Res Function(_$SymptomsState$IdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptoms = null,
    Object? message = null,
    Object? error = freezed,
  }) {
    return _then(_$SymptomsState$IdleImpl(
      symptoms: null == symptoms
          ? _value._symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<Symptom>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SymptomsState$IdleImpl extends SymptomsState$Idle {
  const _$SymptomsState$IdleImpl(
      {required final List<Symptom> symptoms,
      this.message = 'Idle',
      this.error})
      : _symptoms = symptoms,
        super._();

  final List<Symptom> _symptoms;
  @override
  List<Symptom> get symptoms {
    if (_symptoms is EqualUnmodifiableListView) return _symptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symptoms);
  }

  @override
  @JsonKey()
  final String message;
  @override
  final String? error;

  @override
  String toString() {
    return 'SymptomsState.idle(symptoms: $symptoms, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomsState$IdleImpl &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_symptoms), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomsState$IdleImplCopyWith<_$SymptomsState$IdleImpl> get copyWith =>
      __$$SymptomsState$IdleImplCopyWithImpl<_$SymptomsState$IdleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Symptom> symptoms, String message, String? error)
        idle,
    required TResult Function(List<Symptom> symptoms, String message)
        processing,
    required TResult Function(List<Symptom> symptoms, String message) created,
    required TResult Function(List<Symptom> symptoms, String message) deleted,
  }) {
    return idle(symptoms, message, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Symptom> symptoms, String message, String? error)?
        idle,
    TResult? Function(List<Symptom> symptoms, String message)? processing,
    TResult? Function(List<Symptom> symptoms, String message)? created,
    TResult? Function(List<Symptom> symptoms, String message)? deleted,
  }) {
    return idle?.call(symptoms, message, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Symptom> symptoms, String message, String? error)?
        idle,
    TResult Function(List<Symptom> symptoms, String message)? processing,
    TResult Function(List<Symptom> symptoms, String message)? created,
    TResult Function(List<Symptom> symptoms, String message)? deleted,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(symptoms, message, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SymptomsState$Idle value) idle,
    required TResult Function(SymptomsState$Processing value) processing,
    required TResult Function(SymptomsState$Created value) created,
    required TResult Function(SymptomsState$Deleted value) deleted,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SymptomsState$Idle value)? idle,
    TResult? Function(SymptomsState$Processing value)? processing,
    TResult? Function(SymptomsState$Created value)? created,
    TResult? Function(SymptomsState$Deleted value)? deleted,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SymptomsState$Idle value)? idle,
    TResult Function(SymptomsState$Processing value)? processing,
    TResult Function(SymptomsState$Created value)? created,
    TResult Function(SymptomsState$Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class SymptomsState$Idle extends SymptomsState {
  const factory SymptomsState$Idle(
      {required final List<Symptom> symptoms,
      final String message,
      final String? error}) = _$SymptomsState$IdleImpl;
  const SymptomsState$Idle._() : super._();

  @override
  List<Symptom> get symptoms;
  @override
  String get message;
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$SymptomsState$IdleImplCopyWith<_$SymptomsState$IdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SymptomsState$ProcessingImplCopyWith<$Res>
    implements $SymptomsStateCopyWith<$Res> {
  factory _$$SymptomsState$ProcessingImplCopyWith(
          _$SymptomsState$ProcessingImpl value,
          $Res Function(_$SymptomsState$ProcessingImpl) then) =
      __$$SymptomsState$ProcessingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Symptom> symptoms, String message});
}

/// @nodoc
class __$$SymptomsState$ProcessingImplCopyWithImpl<$Res>
    extends _$SymptomsStateCopyWithImpl<$Res, _$SymptomsState$ProcessingImpl>
    implements _$$SymptomsState$ProcessingImplCopyWith<$Res> {
  __$$SymptomsState$ProcessingImplCopyWithImpl(
      _$SymptomsState$ProcessingImpl _value,
      $Res Function(_$SymptomsState$ProcessingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptoms = null,
    Object? message = null,
  }) {
    return _then(_$SymptomsState$ProcessingImpl(
      symptoms: null == symptoms
          ? _value._symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<Symptom>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SymptomsState$ProcessingImpl extends SymptomsState$Processing {
  const _$SymptomsState$ProcessingImpl(
      {required final List<Symptom> symptoms, this.message = 'Processing'})
      : _symptoms = symptoms,
        super._();

  final List<Symptom> _symptoms;
  @override
  List<Symptom> get symptoms {
    if (_symptoms is EqualUnmodifiableListView) return _symptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symptoms);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'SymptomsState.processing(symptoms: $symptoms, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomsState$ProcessingImpl &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_symptoms), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomsState$ProcessingImplCopyWith<_$SymptomsState$ProcessingImpl>
      get copyWith => __$$SymptomsState$ProcessingImplCopyWithImpl<
          _$SymptomsState$ProcessingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Symptom> symptoms, String message, String? error)
        idle,
    required TResult Function(List<Symptom> symptoms, String message)
        processing,
    required TResult Function(List<Symptom> symptoms, String message) created,
    required TResult Function(List<Symptom> symptoms, String message) deleted,
  }) {
    return processing(symptoms, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Symptom> symptoms, String message, String? error)?
        idle,
    TResult? Function(List<Symptom> symptoms, String message)? processing,
    TResult? Function(List<Symptom> symptoms, String message)? created,
    TResult? Function(List<Symptom> symptoms, String message)? deleted,
  }) {
    return processing?.call(symptoms, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Symptom> symptoms, String message, String? error)?
        idle,
    TResult Function(List<Symptom> symptoms, String message)? processing,
    TResult Function(List<Symptom> symptoms, String message)? created,
    TResult Function(List<Symptom> symptoms, String message)? deleted,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(symptoms, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SymptomsState$Idle value) idle,
    required TResult Function(SymptomsState$Processing value) processing,
    required TResult Function(SymptomsState$Created value) created,
    required TResult Function(SymptomsState$Deleted value) deleted,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SymptomsState$Idle value)? idle,
    TResult? Function(SymptomsState$Processing value)? processing,
    TResult? Function(SymptomsState$Created value)? created,
    TResult? Function(SymptomsState$Deleted value)? deleted,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SymptomsState$Idle value)? idle,
    TResult Function(SymptomsState$Processing value)? processing,
    TResult Function(SymptomsState$Created value)? created,
    TResult Function(SymptomsState$Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class SymptomsState$Processing extends SymptomsState {
  const factory SymptomsState$Processing(
      {required final List<Symptom> symptoms,
      final String message}) = _$SymptomsState$ProcessingImpl;
  const SymptomsState$Processing._() : super._();

  @override
  List<Symptom> get symptoms;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SymptomsState$ProcessingImplCopyWith<_$SymptomsState$ProcessingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SymptomsState$CreatedImplCopyWith<$Res>
    implements $SymptomsStateCopyWith<$Res> {
  factory _$$SymptomsState$CreatedImplCopyWith(
          _$SymptomsState$CreatedImpl value,
          $Res Function(_$SymptomsState$CreatedImpl) then) =
      __$$SymptomsState$CreatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Symptom> symptoms, String message});
}

/// @nodoc
class __$$SymptomsState$CreatedImplCopyWithImpl<$Res>
    extends _$SymptomsStateCopyWithImpl<$Res, _$SymptomsState$CreatedImpl>
    implements _$$SymptomsState$CreatedImplCopyWith<$Res> {
  __$$SymptomsState$CreatedImplCopyWithImpl(_$SymptomsState$CreatedImpl _value,
      $Res Function(_$SymptomsState$CreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptoms = null,
    Object? message = null,
  }) {
    return _then(_$SymptomsState$CreatedImpl(
      symptoms: null == symptoms
          ? _value._symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<Symptom>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SymptomsState$CreatedImpl extends SymptomsState$Created {
  const _$SymptomsState$CreatedImpl(
      {required final List<Symptom> symptoms, this.message = 'Processing'})
      : _symptoms = symptoms,
        super._();

  final List<Symptom> _symptoms;
  @override
  List<Symptom> get symptoms {
    if (_symptoms is EqualUnmodifiableListView) return _symptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symptoms);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'SymptomsState.created(symptoms: $symptoms, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomsState$CreatedImpl &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_symptoms), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomsState$CreatedImplCopyWith<_$SymptomsState$CreatedImpl>
      get copyWith => __$$SymptomsState$CreatedImplCopyWithImpl<
          _$SymptomsState$CreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Symptom> symptoms, String message, String? error)
        idle,
    required TResult Function(List<Symptom> symptoms, String message)
        processing,
    required TResult Function(List<Symptom> symptoms, String message) created,
    required TResult Function(List<Symptom> symptoms, String message) deleted,
  }) {
    return created(symptoms, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Symptom> symptoms, String message, String? error)?
        idle,
    TResult? Function(List<Symptom> symptoms, String message)? processing,
    TResult? Function(List<Symptom> symptoms, String message)? created,
    TResult? Function(List<Symptom> symptoms, String message)? deleted,
  }) {
    return created?.call(symptoms, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Symptom> symptoms, String message, String? error)?
        idle,
    TResult Function(List<Symptom> symptoms, String message)? processing,
    TResult Function(List<Symptom> symptoms, String message)? created,
    TResult Function(List<Symptom> symptoms, String message)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(symptoms, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SymptomsState$Idle value) idle,
    required TResult Function(SymptomsState$Processing value) processing,
    required TResult Function(SymptomsState$Created value) created,
    required TResult Function(SymptomsState$Deleted value) deleted,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SymptomsState$Idle value)? idle,
    TResult? Function(SymptomsState$Processing value)? processing,
    TResult? Function(SymptomsState$Created value)? created,
    TResult? Function(SymptomsState$Deleted value)? deleted,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SymptomsState$Idle value)? idle,
    TResult Function(SymptomsState$Processing value)? processing,
    TResult Function(SymptomsState$Created value)? created,
    TResult Function(SymptomsState$Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class SymptomsState$Created extends SymptomsState {
  const factory SymptomsState$Created(
      {required final List<Symptom> symptoms,
      final String message}) = _$SymptomsState$CreatedImpl;
  const SymptomsState$Created._() : super._();

  @override
  List<Symptom> get symptoms;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SymptomsState$CreatedImplCopyWith<_$SymptomsState$CreatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SymptomsState$DeletedImplCopyWith<$Res>
    implements $SymptomsStateCopyWith<$Res> {
  factory _$$SymptomsState$DeletedImplCopyWith(
          _$SymptomsState$DeletedImpl value,
          $Res Function(_$SymptomsState$DeletedImpl) then) =
      __$$SymptomsState$DeletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Symptom> symptoms, String message});
}

/// @nodoc
class __$$SymptomsState$DeletedImplCopyWithImpl<$Res>
    extends _$SymptomsStateCopyWithImpl<$Res, _$SymptomsState$DeletedImpl>
    implements _$$SymptomsState$DeletedImplCopyWith<$Res> {
  __$$SymptomsState$DeletedImplCopyWithImpl(_$SymptomsState$DeletedImpl _value,
      $Res Function(_$SymptomsState$DeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptoms = null,
    Object? message = null,
  }) {
    return _then(_$SymptomsState$DeletedImpl(
      symptoms: null == symptoms
          ? _value._symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<Symptom>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SymptomsState$DeletedImpl extends SymptomsState$Deleted {
  const _$SymptomsState$DeletedImpl(
      {required final List<Symptom> symptoms, this.message = 'Processing'})
      : _symptoms = symptoms,
        super._();

  final List<Symptom> _symptoms;
  @override
  List<Symptom> get symptoms {
    if (_symptoms is EqualUnmodifiableListView) return _symptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symptoms);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'SymptomsState.deleted(symptoms: $symptoms, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomsState$DeletedImpl &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_symptoms), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomsState$DeletedImplCopyWith<_$SymptomsState$DeletedImpl>
      get copyWith => __$$SymptomsState$DeletedImplCopyWithImpl<
          _$SymptomsState$DeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Symptom> symptoms, String message, String? error)
        idle,
    required TResult Function(List<Symptom> symptoms, String message)
        processing,
    required TResult Function(List<Symptom> symptoms, String message) created,
    required TResult Function(List<Symptom> symptoms, String message) deleted,
  }) {
    return deleted(symptoms, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Symptom> symptoms, String message, String? error)?
        idle,
    TResult? Function(List<Symptom> symptoms, String message)? processing,
    TResult? Function(List<Symptom> symptoms, String message)? created,
    TResult? Function(List<Symptom> symptoms, String message)? deleted,
  }) {
    return deleted?.call(symptoms, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Symptom> symptoms, String message, String? error)?
        idle,
    TResult Function(List<Symptom> symptoms, String message)? processing,
    TResult Function(List<Symptom> symptoms, String message)? created,
    TResult Function(List<Symptom> symptoms, String message)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(symptoms, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SymptomsState$Idle value) idle,
    required TResult Function(SymptomsState$Processing value) processing,
    required TResult Function(SymptomsState$Created value) created,
    required TResult Function(SymptomsState$Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SymptomsState$Idle value)? idle,
    TResult? Function(SymptomsState$Processing value)? processing,
    TResult? Function(SymptomsState$Created value)? created,
    TResult? Function(SymptomsState$Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SymptomsState$Idle value)? idle,
    TResult Function(SymptomsState$Processing value)? processing,
    TResult Function(SymptomsState$Created value)? created,
    TResult Function(SymptomsState$Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class SymptomsState$Deleted extends SymptomsState {
  const factory SymptomsState$Deleted(
      {required final List<Symptom> symptoms,
      final String message}) = _$SymptomsState$DeletedImpl;
  const SymptomsState$Deleted._() : super._();

  @override
  List<Symptom> get symptoms;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SymptomsState$DeletedImplCopyWith<_$SymptomsState$DeletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
