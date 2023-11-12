// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicine_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MedicineEvent {
  Medicine get medicine => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Medicine medicine) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Medicine medicine)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Medicine medicine)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MedicineEvent$Init value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MedicineEvent$Init value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MedicineEvent$Init value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MedicineEventCopyWith<MedicineEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineEventCopyWith<$Res> {
  factory $MedicineEventCopyWith(
          MedicineEvent value, $Res Function(MedicineEvent) then) =
      _$MedicineEventCopyWithImpl<$Res, MedicineEvent>;
  @useResult
  $Res call({Medicine medicine});
}

/// @nodoc
class _$MedicineEventCopyWithImpl<$Res, $Val extends MedicineEvent>
    implements $MedicineEventCopyWith<$Res> {
  _$MedicineEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicine = null,
  }) {
    return _then(_value.copyWith(
      medicine: null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as Medicine,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicineEvent$InitImplCopyWith<$Res>
    implements $MedicineEventCopyWith<$Res> {
  factory _$$MedicineEvent$InitImplCopyWith(_$MedicineEvent$InitImpl value,
          $Res Function(_$MedicineEvent$InitImpl) then) =
      __$$MedicineEvent$InitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Medicine medicine});
}

/// @nodoc
class __$$MedicineEvent$InitImplCopyWithImpl<$Res>
    extends _$MedicineEventCopyWithImpl<$Res, _$MedicineEvent$InitImpl>
    implements _$$MedicineEvent$InitImplCopyWith<$Res> {
  __$$MedicineEvent$InitImplCopyWithImpl(_$MedicineEvent$InitImpl _value,
      $Res Function(_$MedicineEvent$InitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicine = null,
  }) {
    return _then(_$MedicineEvent$InitImpl(
      medicine: null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as Medicine,
    ));
  }
}

/// @nodoc

class _$MedicineEvent$InitImpl implements MedicineEvent$Init {
  const _$MedicineEvent$InitImpl({required this.medicine});

  @override
  final Medicine medicine;

  @override
  String toString() {
    return 'MedicineEvent.init(medicine: $medicine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicineEvent$InitImpl &&
            (identical(other.medicine, medicine) ||
                other.medicine == medicine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, medicine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicineEvent$InitImplCopyWith<_$MedicineEvent$InitImpl> get copyWith =>
      __$$MedicineEvent$InitImplCopyWithImpl<_$MedicineEvent$InitImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Medicine medicine) init,
  }) {
    return init(medicine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Medicine medicine)? init,
  }) {
    return init?.call(medicine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Medicine medicine)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(medicine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MedicineEvent$Init value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MedicineEvent$Init value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MedicineEvent$Init value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class MedicineEvent$Init implements MedicineEvent {
  const factory MedicineEvent$Init({required final Medicine medicine}) =
      _$MedicineEvent$InitImpl;

  @override
  Medicine get medicine;
  @override
  @JsonKey(ignore: true)
  _$$MedicineEvent$InitImplCopyWith<_$MedicineEvent$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MedicineState {
  Medicine get medicine => throw _privateConstructorUsedError;
  List<Symptom> get symptoms => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Medicine medicine, List<Symptom> symptoms,
            String message, String? error)
        idle,
    required TResult Function(
            Medicine medicine, List<Symptom> symptoms, String message)
        processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Medicine medicine, List<Symptom> symptoms, String message,
            String? error)?
        idle,
    TResult? Function(
            Medicine medicine, List<Symptom> symptoms, String message)?
        processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Medicine medicine, List<Symptom> symptoms, String message,
            String? error)?
        idle,
    TResult Function(Medicine medicine, List<Symptom> symptoms, String message)?
        processing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MedicineState$Idle value) idle,
    required TResult Function(MedicineState$Processing value) processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MedicineState$Idle value)? idle,
    TResult? Function(MedicineState$Processing value)? processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MedicineState$Idle value)? idle,
    TResult Function(MedicineState$Processing value)? processing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MedicineStateCopyWith<MedicineState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineStateCopyWith<$Res> {
  factory $MedicineStateCopyWith(
          MedicineState value, $Res Function(MedicineState) then) =
      _$MedicineStateCopyWithImpl<$Res, MedicineState>;
  @useResult
  $Res call({Medicine medicine, List<Symptom> symptoms, String message});
}

/// @nodoc
class _$MedicineStateCopyWithImpl<$Res, $Val extends MedicineState>
    implements $MedicineStateCopyWith<$Res> {
  _$MedicineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicine = null,
    Object? symptoms = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      medicine: null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as Medicine,
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
abstract class _$$MedicineState$IdleImplCopyWith<$Res>
    implements $MedicineStateCopyWith<$Res> {
  factory _$$MedicineState$IdleImplCopyWith(_$MedicineState$IdleImpl value,
          $Res Function(_$MedicineState$IdleImpl) then) =
      __$$MedicineState$IdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Medicine medicine,
      List<Symptom> symptoms,
      String message,
      String? error});
}

/// @nodoc
class __$$MedicineState$IdleImplCopyWithImpl<$Res>
    extends _$MedicineStateCopyWithImpl<$Res, _$MedicineState$IdleImpl>
    implements _$$MedicineState$IdleImplCopyWith<$Res> {
  __$$MedicineState$IdleImplCopyWithImpl(_$MedicineState$IdleImpl _value,
      $Res Function(_$MedicineState$IdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicine = null,
    Object? symptoms = null,
    Object? message = null,
    Object? error = freezed,
  }) {
    return _then(_$MedicineState$IdleImpl(
      medicine: null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as Medicine,
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

class _$MedicineState$IdleImpl extends MedicineState$Idle {
  const _$MedicineState$IdleImpl(
      {required this.medicine,
      final List<Symptom> symptoms = const [],
      this.message = 'Idle',
      this.error})
      : _symptoms = symptoms,
        super._();

  @override
  final Medicine medicine;
  final List<Symptom> _symptoms;
  @override
  @JsonKey()
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
    return 'MedicineState.idle(medicine: $medicine, symptoms: $symptoms, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicineState$IdleImpl &&
            (identical(other.medicine, medicine) ||
                other.medicine == medicine) &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, medicine,
      const DeepCollectionEquality().hash(_symptoms), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicineState$IdleImplCopyWith<_$MedicineState$IdleImpl> get copyWith =>
      __$$MedicineState$IdleImplCopyWithImpl<_$MedicineState$IdleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Medicine medicine, List<Symptom> symptoms,
            String message, String? error)
        idle,
    required TResult Function(
            Medicine medicine, List<Symptom> symptoms, String message)
        processing,
  }) {
    return idle(medicine, symptoms, message, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Medicine medicine, List<Symptom> symptoms, String message,
            String? error)?
        idle,
    TResult? Function(
            Medicine medicine, List<Symptom> symptoms, String message)?
        processing,
  }) {
    return idle?.call(medicine, symptoms, message, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Medicine medicine, List<Symptom> symptoms, String message,
            String? error)?
        idle,
    TResult Function(Medicine medicine, List<Symptom> symptoms, String message)?
        processing,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(medicine, symptoms, message, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MedicineState$Idle value) idle,
    required TResult Function(MedicineState$Processing value) processing,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MedicineState$Idle value)? idle,
    TResult? Function(MedicineState$Processing value)? processing,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MedicineState$Idle value)? idle,
    TResult Function(MedicineState$Processing value)? processing,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class MedicineState$Idle extends MedicineState {
  const factory MedicineState$Idle(
      {required final Medicine medicine,
      final List<Symptom> symptoms,
      final String message,
      final String? error}) = _$MedicineState$IdleImpl;
  const MedicineState$Idle._() : super._();

  @override
  Medicine get medicine;
  @override
  List<Symptom> get symptoms;
  @override
  String get message;
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$MedicineState$IdleImplCopyWith<_$MedicineState$IdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MedicineState$ProcessingImplCopyWith<$Res>
    implements $MedicineStateCopyWith<$Res> {
  factory _$$MedicineState$ProcessingImplCopyWith(
          _$MedicineState$ProcessingImpl value,
          $Res Function(_$MedicineState$ProcessingImpl) then) =
      __$$MedicineState$ProcessingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Medicine medicine, List<Symptom> symptoms, String message});
}

/// @nodoc
class __$$MedicineState$ProcessingImplCopyWithImpl<$Res>
    extends _$MedicineStateCopyWithImpl<$Res, _$MedicineState$ProcessingImpl>
    implements _$$MedicineState$ProcessingImplCopyWith<$Res> {
  __$$MedicineState$ProcessingImplCopyWithImpl(
      _$MedicineState$ProcessingImpl _value,
      $Res Function(_$MedicineState$ProcessingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicine = null,
    Object? symptoms = null,
    Object? message = null,
  }) {
    return _then(_$MedicineState$ProcessingImpl(
      medicine: null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as Medicine,
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

class _$MedicineState$ProcessingImpl extends MedicineState$Processing {
  const _$MedicineState$ProcessingImpl(
      {required this.medicine,
      final List<Symptom> symptoms = const [],
      this.message = 'Processing'})
      : _symptoms = symptoms,
        super._();

  @override
  final Medicine medicine;
  final List<Symptom> _symptoms;
  @override
  @JsonKey()
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
    return 'MedicineState.processing(medicine: $medicine, symptoms: $symptoms, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicineState$ProcessingImpl &&
            (identical(other.medicine, medicine) ||
                other.medicine == medicine) &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, medicine,
      const DeepCollectionEquality().hash(_symptoms), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicineState$ProcessingImplCopyWith<_$MedicineState$ProcessingImpl>
      get copyWith => __$$MedicineState$ProcessingImplCopyWithImpl<
          _$MedicineState$ProcessingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Medicine medicine, List<Symptom> symptoms,
            String message, String? error)
        idle,
    required TResult Function(
            Medicine medicine, List<Symptom> symptoms, String message)
        processing,
  }) {
    return processing(medicine, symptoms, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Medicine medicine, List<Symptom> symptoms, String message,
            String? error)?
        idle,
    TResult? Function(
            Medicine medicine, List<Symptom> symptoms, String message)?
        processing,
  }) {
    return processing?.call(medicine, symptoms, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Medicine medicine, List<Symptom> symptoms, String message,
            String? error)?
        idle,
    TResult Function(Medicine medicine, List<Symptom> symptoms, String message)?
        processing,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(medicine, symptoms, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MedicineState$Idle value) idle,
    required TResult Function(MedicineState$Processing value) processing,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MedicineState$Idle value)? idle,
    TResult? Function(MedicineState$Processing value)? processing,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MedicineState$Idle value)? idle,
    TResult Function(MedicineState$Processing value)? processing,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class MedicineState$Processing extends MedicineState {
  const factory MedicineState$Processing(
      {required final Medicine medicine,
      final List<Symptom> symptoms,
      final String message}) = _$MedicineState$ProcessingImpl;
  const MedicineState$Processing._() : super._();

  @override
  Medicine get medicine;
  @override
  List<Symptom> get symptoms;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$MedicineState$ProcessingImplCopyWith<_$MedicineState$ProcessingImpl>
      get copyWith => throw _privateConstructorUsedError;
}
