// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicines_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MedicinesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter? filter) init,
    required TResult Function(MedicineData medicine, File? medicineImage)
        create,
    required TResult Function(Medicine medicine) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter? filter)? init,
    TResult? Function(MedicineData medicine, File? medicineImage)? create,
    TResult? Function(Medicine medicine)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter? filter)? init,
    TResult Function(MedicineData medicine, File? medicineImage)? create,
    TResult Function(Medicine medicine)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MedicinesEvent$Init value) init,
    required TResult Function(MedicinesEvent$Create value) create,
    required TResult Function(MedicinesEvent$Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MedicinesEvent$Init value)? init,
    TResult? Function(MedicinesEvent$Create value)? create,
    TResult? Function(MedicinesEvent$Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MedicinesEvent$Init value)? init,
    TResult Function(MedicinesEvent$Create value)? create,
    TResult Function(MedicinesEvent$Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicinesEventCopyWith<$Res> {
  factory $MedicinesEventCopyWith(
          MedicinesEvent value, $Res Function(MedicinesEvent) then) =
      _$MedicinesEventCopyWithImpl<$Res, MedicinesEvent>;
}

/// @nodoc
class _$MedicinesEventCopyWithImpl<$Res, $Val extends MedicinesEvent>
    implements $MedicinesEventCopyWith<$Res> {
  _$MedicinesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MedicinesEvent$InitImplCopyWith<$Res> {
  factory _$$MedicinesEvent$InitImplCopyWith(_$MedicinesEvent$InitImpl value,
          $Res Function(_$MedicinesEvent$InitImpl) then) =
      __$$MedicinesEvent$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Filter? filter});
}

/// @nodoc
class __$$MedicinesEvent$InitImplCopyWithImpl<$Res>
    extends _$MedicinesEventCopyWithImpl<$Res, _$MedicinesEvent$InitImpl>
    implements _$$MedicinesEvent$InitImplCopyWith<$Res> {
  __$$MedicinesEvent$InitImplCopyWithImpl(_$MedicinesEvent$InitImpl _value,
      $Res Function(_$MedicinesEvent$InitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_$MedicinesEvent$InitImpl(
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter?,
    ));
  }
}

/// @nodoc

class _$MedicinesEvent$InitImpl implements MedicinesEvent$Init {
  const _$MedicinesEvent$InitImpl({this.filter = Filter.empty});

  @override
  @JsonKey()
  final Filter? filter;

  @override
  String toString() {
    return 'MedicinesEvent.init(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicinesEvent$InitImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicinesEvent$InitImplCopyWith<_$MedicinesEvent$InitImpl> get copyWith =>
      __$$MedicinesEvent$InitImplCopyWithImpl<_$MedicinesEvent$InitImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter? filter) init,
    required TResult Function(MedicineData medicine, File? medicineImage)
        create,
    required TResult Function(Medicine medicine) delete,
  }) {
    return init(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter? filter)? init,
    TResult? Function(MedicineData medicine, File? medicineImage)? create,
    TResult? Function(Medicine medicine)? delete,
  }) {
    return init?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter? filter)? init,
    TResult Function(MedicineData medicine, File? medicineImage)? create,
    TResult Function(Medicine medicine)? delete,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MedicinesEvent$Init value) init,
    required TResult Function(MedicinesEvent$Create value) create,
    required TResult Function(MedicinesEvent$Delete value) delete,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MedicinesEvent$Init value)? init,
    TResult? Function(MedicinesEvent$Create value)? create,
    TResult? Function(MedicinesEvent$Delete value)? delete,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MedicinesEvent$Init value)? init,
    TResult Function(MedicinesEvent$Create value)? create,
    TResult Function(MedicinesEvent$Delete value)? delete,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class MedicinesEvent$Init implements MedicinesEvent {
  const factory MedicinesEvent$Init({final Filter? filter}) =
      _$MedicinesEvent$InitImpl;

  Filter? get filter;
  @JsonKey(ignore: true)
  _$$MedicinesEvent$InitImplCopyWith<_$MedicinesEvent$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MedicinesEvent$CreateImplCopyWith<$Res> {
  factory _$$MedicinesEvent$CreateImplCopyWith(
          _$MedicinesEvent$CreateImpl value,
          $Res Function(_$MedicinesEvent$CreateImpl) then) =
      __$$MedicinesEvent$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MedicineData medicine, File? medicineImage});
}

/// @nodoc
class __$$MedicinesEvent$CreateImplCopyWithImpl<$Res>
    extends _$MedicinesEventCopyWithImpl<$Res, _$MedicinesEvent$CreateImpl>
    implements _$$MedicinesEvent$CreateImplCopyWith<$Res> {
  __$$MedicinesEvent$CreateImplCopyWithImpl(_$MedicinesEvent$CreateImpl _value,
      $Res Function(_$MedicinesEvent$CreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicine = null,
    Object? medicineImage = freezed,
  }) {
    return _then(_$MedicinesEvent$CreateImpl(
      medicine: null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as MedicineData,
      medicineImage: freezed == medicineImage
          ? _value.medicineImage
          : medicineImage // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$MedicinesEvent$CreateImpl implements MedicinesEvent$Create {
  const _$MedicinesEvent$CreateImpl(
      {required this.medicine, this.medicineImage});

  @override
  final MedicineData medicine;
  @override
  final File? medicineImage;

  @override
  String toString() {
    return 'MedicinesEvent.create(medicine: $medicine, medicineImage: $medicineImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicinesEvent$CreateImpl &&
            (identical(other.medicine, medicine) ||
                other.medicine == medicine) &&
            (identical(other.medicineImage, medicineImage) ||
                other.medicineImage == medicineImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, medicine, medicineImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicinesEvent$CreateImplCopyWith<_$MedicinesEvent$CreateImpl>
      get copyWith => __$$MedicinesEvent$CreateImplCopyWithImpl<
          _$MedicinesEvent$CreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter? filter) init,
    required TResult Function(MedicineData medicine, File? medicineImage)
        create,
    required TResult Function(Medicine medicine) delete,
  }) {
    return create(medicine, medicineImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter? filter)? init,
    TResult? Function(MedicineData medicine, File? medicineImage)? create,
    TResult? Function(Medicine medicine)? delete,
  }) {
    return create?.call(medicine, medicineImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter? filter)? init,
    TResult Function(MedicineData medicine, File? medicineImage)? create,
    TResult Function(Medicine medicine)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(medicine, medicineImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MedicinesEvent$Init value) init,
    required TResult Function(MedicinesEvent$Create value) create,
    required TResult Function(MedicinesEvent$Delete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MedicinesEvent$Init value)? init,
    TResult? Function(MedicinesEvent$Create value)? create,
    TResult? Function(MedicinesEvent$Delete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MedicinesEvent$Init value)? init,
    TResult Function(MedicinesEvent$Create value)? create,
    TResult Function(MedicinesEvent$Delete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class MedicinesEvent$Create implements MedicinesEvent {
  const factory MedicinesEvent$Create(
      {required final MedicineData medicine,
      final File? medicineImage}) = _$MedicinesEvent$CreateImpl;

  MedicineData get medicine;
  File? get medicineImage;
  @JsonKey(ignore: true)
  _$$MedicinesEvent$CreateImplCopyWith<_$MedicinesEvent$CreateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MedicinesEvent$DeleteImplCopyWith<$Res> {
  factory _$$MedicinesEvent$DeleteImplCopyWith(
          _$MedicinesEvent$DeleteImpl value,
          $Res Function(_$MedicinesEvent$DeleteImpl) then) =
      __$$MedicinesEvent$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Medicine medicine});
}

/// @nodoc
class __$$MedicinesEvent$DeleteImplCopyWithImpl<$Res>
    extends _$MedicinesEventCopyWithImpl<$Res, _$MedicinesEvent$DeleteImpl>
    implements _$$MedicinesEvent$DeleteImplCopyWith<$Res> {
  __$$MedicinesEvent$DeleteImplCopyWithImpl(_$MedicinesEvent$DeleteImpl _value,
      $Res Function(_$MedicinesEvent$DeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicine = null,
  }) {
    return _then(_$MedicinesEvent$DeleteImpl(
      medicine: null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as Medicine,
    ));
  }
}

/// @nodoc

class _$MedicinesEvent$DeleteImpl implements MedicinesEvent$Delete {
  const _$MedicinesEvent$DeleteImpl({required this.medicine});

  @override
  final Medicine medicine;

  @override
  String toString() {
    return 'MedicinesEvent.delete(medicine: $medicine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicinesEvent$DeleteImpl &&
            (identical(other.medicine, medicine) ||
                other.medicine == medicine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, medicine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicinesEvent$DeleteImplCopyWith<_$MedicinesEvent$DeleteImpl>
      get copyWith => __$$MedicinesEvent$DeleteImplCopyWithImpl<
          _$MedicinesEvent$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter? filter) init,
    required TResult Function(MedicineData medicine, File? medicineImage)
        create,
    required TResult Function(Medicine medicine) delete,
  }) {
    return delete(medicine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter? filter)? init,
    TResult? Function(MedicineData medicine, File? medicineImage)? create,
    TResult? Function(Medicine medicine)? delete,
  }) {
    return delete?.call(medicine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter? filter)? init,
    TResult Function(MedicineData medicine, File? medicineImage)? create,
    TResult Function(Medicine medicine)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(medicine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MedicinesEvent$Init value) init,
    required TResult Function(MedicinesEvent$Create value) create,
    required TResult Function(MedicinesEvent$Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MedicinesEvent$Init value)? init,
    TResult? Function(MedicinesEvent$Create value)? create,
    TResult? Function(MedicinesEvent$Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MedicinesEvent$Init value)? init,
    TResult Function(MedicinesEvent$Create value)? create,
    TResult Function(MedicinesEvent$Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class MedicinesEvent$Delete implements MedicinesEvent {
  const factory MedicinesEvent$Delete({required final Medicine medicine}) =
      _$MedicinesEvent$DeleteImpl;

  Medicine get medicine;
  @JsonKey(ignore: true)
  _$$MedicinesEvent$DeleteImplCopyWith<_$MedicinesEvent$DeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MedicinesState {
  List<Medicine> get medicines => throw _privateConstructorUsedError;
  Filter get filter => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Medicine> medicines, Filter filter,
            String message, String? error)
        idle,
    required TResult Function(
            List<Medicine> medicines, Filter filter, String message)
        processing,
    required TResult Function(
            List<Medicine> medicines, Filter filter, String message)
        created,
    required TResult Function(
            List<Medicine> medicines, Filter filter, String message)
        deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Medicine> medicines, Filter filter, String message,
            String? error)?
        idle,
    TResult? Function(List<Medicine> medicines, Filter filter, String message)?
        processing,
    TResult? Function(List<Medicine> medicines, Filter filter, String message)?
        created,
    TResult? Function(List<Medicine> medicines, Filter filter, String message)?
        deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Medicine> medicines, Filter filter, String message,
            String? error)?
        idle,
    TResult Function(List<Medicine> medicines, Filter filter, String message)?
        processing,
    TResult Function(List<Medicine> medicines, Filter filter, String message)?
        created,
    TResult Function(List<Medicine> medicines, Filter filter, String message)?
        deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MedicinesState$Idle value) idle,
    required TResult Function(MedicinesState$Processing value) processing,
    required TResult Function(MedicinesState$Created value) created,
    required TResult Function(MedicinesState$Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MedicinesState$Idle value)? idle,
    TResult? Function(MedicinesState$Processing value)? processing,
    TResult? Function(MedicinesState$Created value)? created,
    TResult? Function(MedicinesState$Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MedicinesState$Idle value)? idle,
    TResult Function(MedicinesState$Processing value)? processing,
    TResult Function(MedicinesState$Created value)? created,
    TResult Function(MedicinesState$Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MedicinesStateCopyWith<MedicinesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicinesStateCopyWith<$Res> {
  factory $MedicinesStateCopyWith(
          MedicinesState value, $Res Function(MedicinesState) then) =
      _$MedicinesStateCopyWithImpl<$Res, MedicinesState>;
  @useResult
  $Res call({List<Medicine> medicines, Filter filter, String message});
}

/// @nodoc
class _$MedicinesStateCopyWithImpl<$Res, $Val extends MedicinesState>
    implements $MedicinesStateCopyWith<$Res> {
  _$MedicinesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicines = null,
    Object? filter = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      medicines: null == medicines
          ? _value.medicines
          : medicines // ignore: cast_nullable_to_non_nullable
              as List<Medicine>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicinesState$IdleImplCopyWith<$Res>
    implements $MedicinesStateCopyWith<$Res> {
  factory _$$MedicinesState$IdleImplCopyWith(_$MedicinesState$IdleImpl value,
          $Res Function(_$MedicinesState$IdleImpl) then) =
      __$$MedicinesState$IdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Medicine> medicines, Filter filter, String message, String? error});
}

/// @nodoc
class __$$MedicinesState$IdleImplCopyWithImpl<$Res>
    extends _$MedicinesStateCopyWithImpl<$Res, _$MedicinesState$IdleImpl>
    implements _$$MedicinesState$IdleImplCopyWith<$Res> {
  __$$MedicinesState$IdleImplCopyWithImpl(_$MedicinesState$IdleImpl _value,
      $Res Function(_$MedicinesState$IdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicines = null,
    Object? filter = null,
    Object? message = null,
    Object? error = freezed,
  }) {
    return _then(_$MedicinesState$IdleImpl(
      medicines: null == medicines
          ? _value._medicines
          : medicines // ignore: cast_nullable_to_non_nullable
              as List<Medicine>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
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

class _$MedicinesState$IdleImpl extends MedicinesState$Idle {
  const _$MedicinesState$IdleImpl(
      {required final List<Medicine> medicines,
      this.filter = Filter.empty,
      required this.message,
      this.error})
      : _medicines = medicines,
        super._();

  final List<Medicine> _medicines;
  @override
  List<Medicine> get medicines {
    if (_medicines is EqualUnmodifiableListView) return _medicines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicines);
  }

  @override
  @JsonKey()
  final Filter filter;
  @override
  final String message;
  @override
  final String? error;

  @override
  String toString() {
    return 'MedicinesState.idle(medicines: $medicines, filter: $filter, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicinesState$IdleImpl &&
            const DeepCollectionEquality()
                .equals(other._medicines, _medicines) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_medicines), filter, message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicinesState$IdleImplCopyWith<_$MedicinesState$IdleImpl> get copyWith =>
      __$$MedicinesState$IdleImplCopyWithImpl<_$MedicinesState$IdleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Medicine> medicines, Filter filter,
            String message, String? error)
        idle,
    required TResult Function(
            List<Medicine> medicines, Filter filter, String message)
        processing,
    required TResult Function(
            List<Medicine> medicines, Filter filter, String message)
        created,
    required TResult Function(
            List<Medicine> medicines, Filter filter, String message)
        deleted,
  }) {
    return idle(medicines, filter, message, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Medicine> medicines, Filter filter, String message,
            String? error)?
        idle,
    TResult? Function(List<Medicine> medicines, Filter filter, String message)?
        processing,
    TResult? Function(List<Medicine> medicines, Filter filter, String message)?
        created,
    TResult? Function(List<Medicine> medicines, Filter filter, String message)?
        deleted,
  }) {
    return idle?.call(medicines, filter, message, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Medicine> medicines, Filter filter, String message,
            String? error)?
        idle,
    TResult Function(List<Medicine> medicines, Filter filter, String message)?
        processing,
    TResult Function(List<Medicine> medicines, Filter filter, String message)?
        created,
    TResult Function(List<Medicine> medicines, Filter filter, String message)?
        deleted,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(medicines, filter, message, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MedicinesState$Idle value) idle,
    required TResult Function(MedicinesState$Processing value) processing,
    required TResult Function(MedicinesState$Created value) created,
    required TResult Function(MedicinesState$Deleted value) deleted,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MedicinesState$Idle value)? idle,
    TResult? Function(MedicinesState$Processing value)? processing,
    TResult? Function(MedicinesState$Created value)? created,
    TResult? Function(MedicinesState$Deleted value)? deleted,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MedicinesState$Idle value)? idle,
    TResult Function(MedicinesState$Processing value)? processing,
    TResult Function(MedicinesState$Created value)? created,
    TResult Function(MedicinesState$Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class MedicinesState$Idle extends MedicinesState {
  const factory MedicinesState$Idle(
      {required final List<Medicine> medicines,
      final Filter filter,
      required final String message,
      final String? error}) = _$MedicinesState$IdleImpl;
  const MedicinesState$Idle._() : super._();

  @override
  List<Medicine> get medicines;
  @override
  Filter get filter;
  @override
  String get message;
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$MedicinesState$IdleImplCopyWith<_$MedicinesState$IdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MedicinesState$ProcessingImplCopyWith<$Res>
    implements $MedicinesStateCopyWith<$Res> {
  factory _$$MedicinesState$ProcessingImplCopyWith(
          _$MedicinesState$ProcessingImpl value,
          $Res Function(_$MedicinesState$ProcessingImpl) then) =
      __$$MedicinesState$ProcessingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Medicine> medicines, Filter filter, String message});
}

/// @nodoc
class __$$MedicinesState$ProcessingImplCopyWithImpl<$Res>
    extends _$MedicinesStateCopyWithImpl<$Res, _$MedicinesState$ProcessingImpl>
    implements _$$MedicinesState$ProcessingImplCopyWith<$Res> {
  __$$MedicinesState$ProcessingImplCopyWithImpl(
      _$MedicinesState$ProcessingImpl _value,
      $Res Function(_$MedicinesState$ProcessingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicines = null,
    Object? filter = null,
    Object? message = null,
  }) {
    return _then(_$MedicinesState$ProcessingImpl(
      medicines: null == medicines
          ? _value._medicines
          : medicines // ignore: cast_nullable_to_non_nullable
              as List<Medicine>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MedicinesState$ProcessingImpl extends MedicinesState$Processing {
  const _$MedicinesState$ProcessingImpl(
      {required final List<Medicine> medicines,
      this.filter = Filter.empty,
      required this.message})
      : _medicines = medicines,
        super._();

  final List<Medicine> _medicines;
  @override
  List<Medicine> get medicines {
    if (_medicines is EqualUnmodifiableListView) return _medicines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicines);
  }

  @override
  @JsonKey()
  final Filter filter;
  @override
  final String message;

  @override
  String toString() {
    return 'MedicinesState.processing(medicines: $medicines, filter: $filter, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicinesState$ProcessingImpl &&
            const DeepCollectionEquality()
                .equals(other._medicines, _medicines) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_medicines), filter, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicinesState$ProcessingImplCopyWith<_$MedicinesState$ProcessingImpl>
      get copyWith => __$$MedicinesState$ProcessingImplCopyWithImpl<
          _$MedicinesState$ProcessingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Medicine> medicines, Filter filter,
            String message, String? error)
        idle,
    required TResult Function(
            List<Medicine> medicines, Filter filter, String message)
        processing,
    required TResult Function(
            List<Medicine> medicines, Filter filter, String message)
        created,
    required TResult Function(
            List<Medicine> medicines, Filter filter, String message)
        deleted,
  }) {
    return processing(medicines, filter, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Medicine> medicines, Filter filter, String message,
            String? error)?
        idle,
    TResult? Function(List<Medicine> medicines, Filter filter, String message)?
        processing,
    TResult? Function(List<Medicine> medicines, Filter filter, String message)?
        created,
    TResult? Function(List<Medicine> medicines, Filter filter, String message)?
        deleted,
  }) {
    return processing?.call(medicines, filter, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Medicine> medicines, Filter filter, String message,
            String? error)?
        idle,
    TResult Function(List<Medicine> medicines, Filter filter, String message)?
        processing,
    TResult Function(List<Medicine> medicines, Filter filter, String message)?
        created,
    TResult Function(List<Medicine> medicines, Filter filter, String message)?
        deleted,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(medicines, filter, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MedicinesState$Idle value) idle,
    required TResult Function(MedicinesState$Processing value) processing,
    required TResult Function(MedicinesState$Created value) created,
    required TResult Function(MedicinesState$Deleted value) deleted,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MedicinesState$Idle value)? idle,
    TResult? Function(MedicinesState$Processing value)? processing,
    TResult? Function(MedicinesState$Created value)? created,
    TResult? Function(MedicinesState$Deleted value)? deleted,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MedicinesState$Idle value)? idle,
    TResult Function(MedicinesState$Processing value)? processing,
    TResult Function(MedicinesState$Created value)? created,
    TResult Function(MedicinesState$Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class MedicinesState$Processing extends MedicinesState {
  const factory MedicinesState$Processing(
      {required final List<Medicine> medicines,
      final Filter filter,
      required final String message}) = _$MedicinesState$ProcessingImpl;
  const MedicinesState$Processing._() : super._();

  @override
  List<Medicine> get medicines;
  @override
  Filter get filter;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$MedicinesState$ProcessingImplCopyWith<_$MedicinesState$ProcessingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MedicinesState$CreatedImplCopyWith<$Res>
    implements $MedicinesStateCopyWith<$Res> {
  factory _$$MedicinesState$CreatedImplCopyWith(
          _$MedicinesState$CreatedImpl value,
          $Res Function(_$MedicinesState$CreatedImpl) then) =
      __$$MedicinesState$CreatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Medicine> medicines, Filter filter, String message});
}

/// @nodoc
class __$$MedicinesState$CreatedImplCopyWithImpl<$Res>
    extends _$MedicinesStateCopyWithImpl<$Res, _$MedicinesState$CreatedImpl>
    implements _$$MedicinesState$CreatedImplCopyWith<$Res> {
  __$$MedicinesState$CreatedImplCopyWithImpl(
      _$MedicinesState$CreatedImpl _value,
      $Res Function(_$MedicinesState$CreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicines = null,
    Object? filter = null,
    Object? message = null,
  }) {
    return _then(_$MedicinesState$CreatedImpl(
      medicines: null == medicines
          ? _value._medicines
          : medicines // ignore: cast_nullable_to_non_nullable
              as List<Medicine>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MedicinesState$CreatedImpl extends MedicinesState$Created {
  const _$MedicinesState$CreatedImpl(
      {required final List<Medicine> medicines,
      this.filter = Filter.empty,
      required this.message})
      : _medicines = medicines,
        super._();

  final List<Medicine> _medicines;
  @override
  List<Medicine> get medicines {
    if (_medicines is EqualUnmodifiableListView) return _medicines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicines);
  }

  @override
  @JsonKey()
  final Filter filter;
  @override
  final String message;

  @override
  String toString() {
    return 'MedicinesState.created(medicines: $medicines, filter: $filter, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicinesState$CreatedImpl &&
            const DeepCollectionEquality()
                .equals(other._medicines, _medicines) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_medicines), filter, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicinesState$CreatedImplCopyWith<_$MedicinesState$CreatedImpl>
      get copyWith => __$$MedicinesState$CreatedImplCopyWithImpl<
          _$MedicinesState$CreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Medicine> medicines, Filter filter,
            String message, String? error)
        idle,
    required TResult Function(
            List<Medicine> medicines, Filter filter, String message)
        processing,
    required TResult Function(
            List<Medicine> medicines, Filter filter, String message)
        created,
    required TResult Function(
            List<Medicine> medicines, Filter filter, String message)
        deleted,
  }) {
    return created(medicines, filter, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Medicine> medicines, Filter filter, String message,
            String? error)?
        idle,
    TResult? Function(List<Medicine> medicines, Filter filter, String message)?
        processing,
    TResult? Function(List<Medicine> medicines, Filter filter, String message)?
        created,
    TResult? Function(List<Medicine> medicines, Filter filter, String message)?
        deleted,
  }) {
    return created?.call(medicines, filter, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Medicine> medicines, Filter filter, String message,
            String? error)?
        idle,
    TResult Function(List<Medicine> medicines, Filter filter, String message)?
        processing,
    TResult Function(List<Medicine> medicines, Filter filter, String message)?
        created,
    TResult Function(List<Medicine> medicines, Filter filter, String message)?
        deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(medicines, filter, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MedicinesState$Idle value) idle,
    required TResult Function(MedicinesState$Processing value) processing,
    required TResult Function(MedicinesState$Created value) created,
    required TResult Function(MedicinesState$Deleted value) deleted,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MedicinesState$Idle value)? idle,
    TResult? Function(MedicinesState$Processing value)? processing,
    TResult? Function(MedicinesState$Created value)? created,
    TResult? Function(MedicinesState$Deleted value)? deleted,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MedicinesState$Idle value)? idle,
    TResult Function(MedicinesState$Processing value)? processing,
    TResult Function(MedicinesState$Created value)? created,
    TResult Function(MedicinesState$Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class MedicinesState$Created extends MedicinesState {
  const factory MedicinesState$Created(
      {required final List<Medicine> medicines,
      final Filter filter,
      required final String message}) = _$MedicinesState$CreatedImpl;
  const MedicinesState$Created._() : super._();

  @override
  List<Medicine> get medicines;
  @override
  Filter get filter;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$MedicinesState$CreatedImplCopyWith<_$MedicinesState$CreatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MedicinesState$DeletedImplCopyWith<$Res>
    implements $MedicinesStateCopyWith<$Res> {
  factory _$$MedicinesState$DeletedImplCopyWith(
          _$MedicinesState$DeletedImpl value,
          $Res Function(_$MedicinesState$DeletedImpl) then) =
      __$$MedicinesState$DeletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Medicine> medicines, Filter filter, String message});
}

/// @nodoc
class __$$MedicinesState$DeletedImplCopyWithImpl<$Res>
    extends _$MedicinesStateCopyWithImpl<$Res, _$MedicinesState$DeletedImpl>
    implements _$$MedicinesState$DeletedImplCopyWith<$Res> {
  __$$MedicinesState$DeletedImplCopyWithImpl(
      _$MedicinesState$DeletedImpl _value,
      $Res Function(_$MedicinesState$DeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicines = null,
    Object? filter = null,
    Object? message = null,
  }) {
    return _then(_$MedicinesState$DeletedImpl(
      medicines: null == medicines
          ? _value._medicines
          : medicines // ignore: cast_nullable_to_non_nullable
              as List<Medicine>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MedicinesState$DeletedImpl extends MedicinesState$Deleted {
  const _$MedicinesState$DeletedImpl(
      {required final List<Medicine> medicines,
      this.filter = Filter.empty,
      required this.message})
      : _medicines = medicines,
        super._();

  final List<Medicine> _medicines;
  @override
  List<Medicine> get medicines {
    if (_medicines is EqualUnmodifiableListView) return _medicines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicines);
  }

  @override
  @JsonKey()
  final Filter filter;
  @override
  final String message;

  @override
  String toString() {
    return 'MedicinesState.deleted(medicines: $medicines, filter: $filter, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicinesState$DeletedImpl &&
            const DeepCollectionEquality()
                .equals(other._medicines, _medicines) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_medicines), filter, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicinesState$DeletedImplCopyWith<_$MedicinesState$DeletedImpl>
      get copyWith => __$$MedicinesState$DeletedImplCopyWithImpl<
          _$MedicinesState$DeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Medicine> medicines, Filter filter,
            String message, String? error)
        idle,
    required TResult Function(
            List<Medicine> medicines, Filter filter, String message)
        processing,
    required TResult Function(
            List<Medicine> medicines, Filter filter, String message)
        created,
    required TResult Function(
            List<Medicine> medicines, Filter filter, String message)
        deleted,
  }) {
    return deleted(medicines, filter, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Medicine> medicines, Filter filter, String message,
            String? error)?
        idle,
    TResult? Function(List<Medicine> medicines, Filter filter, String message)?
        processing,
    TResult? Function(List<Medicine> medicines, Filter filter, String message)?
        created,
    TResult? Function(List<Medicine> medicines, Filter filter, String message)?
        deleted,
  }) {
    return deleted?.call(medicines, filter, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Medicine> medicines, Filter filter, String message,
            String? error)?
        idle,
    TResult Function(List<Medicine> medicines, Filter filter, String message)?
        processing,
    TResult Function(List<Medicine> medicines, Filter filter, String message)?
        created,
    TResult Function(List<Medicine> medicines, Filter filter, String message)?
        deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(medicines, filter, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MedicinesState$Idle value) idle,
    required TResult Function(MedicinesState$Processing value) processing,
    required TResult Function(MedicinesState$Created value) created,
    required TResult Function(MedicinesState$Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MedicinesState$Idle value)? idle,
    TResult? Function(MedicinesState$Processing value)? processing,
    TResult? Function(MedicinesState$Created value)? created,
    TResult? Function(MedicinesState$Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MedicinesState$Idle value)? idle,
    TResult Function(MedicinesState$Processing value)? processing,
    TResult Function(MedicinesState$Created value)? created,
    TResult Function(MedicinesState$Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class MedicinesState$Deleted extends MedicinesState {
  const factory MedicinesState$Deleted(
      {required final List<Medicine> medicines,
      final Filter filter,
      required final String message}) = _$MedicinesState$DeletedImpl;
  const MedicinesState$Deleted._() : super._();

  @override
  List<Medicine> get medicines;
  @override
  Filter get filter;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$MedicinesState$DeletedImplCopyWith<_$MedicinesState$DeletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
