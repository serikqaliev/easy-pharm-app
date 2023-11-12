// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActivationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() activate,
    required TResult Function(String username) updateUsername,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? activate,
    TResult? Function(String username)? updateUsername,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? activate,
    TResult Function(String username)? updateUsername,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActivationEvent$Activate value) activate,
    required TResult Function(ActivationEvent$UpdateUsername value)
        updateUsername,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActivationEvent$Activate value)? activate,
    TResult? Function(ActivationEvent$UpdateUsername value)? updateUsername,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivationEvent$Activate value)? activate,
    TResult Function(ActivationEvent$UpdateUsername value)? updateUsername,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivationEventCopyWith<$Res> {
  factory $ActivationEventCopyWith(
          ActivationEvent value, $Res Function(ActivationEvent) then) =
      _$ActivationEventCopyWithImpl<$Res, ActivationEvent>;
}

/// @nodoc
class _$ActivationEventCopyWithImpl<$Res, $Val extends ActivationEvent>
    implements $ActivationEventCopyWith<$Res> {
  _$ActivationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ActivationEvent$ActivateImplCopyWith<$Res> {
  factory _$$ActivationEvent$ActivateImplCopyWith(
          _$ActivationEvent$ActivateImpl value,
          $Res Function(_$ActivationEvent$ActivateImpl) then) =
      __$$ActivationEvent$ActivateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActivationEvent$ActivateImplCopyWithImpl<$Res>
    extends _$ActivationEventCopyWithImpl<$Res, _$ActivationEvent$ActivateImpl>
    implements _$$ActivationEvent$ActivateImplCopyWith<$Res> {
  __$$ActivationEvent$ActivateImplCopyWithImpl(
      _$ActivationEvent$ActivateImpl _value,
      $Res Function(_$ActivationEvent$ActivateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActivationEvent$ActivateImpl implements ActivationEvent$Activate {
  const _$ActivationEvent$ActivateImpl();

  @override
  String toString() {
    return 'ActivationEvent.activate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivationEvent$ActivateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() activate,
    required TResult Function(String username) updateUsername,
  }) {
    return activate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? activate,
    TResult? Function(String username)? updateUsername,
  }) {
    return activate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? activate,
    TResult Function(String username)? updateUsername,
    required TResult orElse(),
  }) {
    if (activate != null) {
      return activate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActivationEvent$Activate value) activate,
    required TResult Function(ActivationEvent$UpdateUsername value)
        updateUsername,
  }) {
    return activate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActivationEvent$Activate value)? activate,
    TResult? Function(ActivationEvent$UpdateUsername value)? updateUsername,
  }) {
    return activate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivationEvent$Activate value)? activate,
    TResult Function(ActivationEvent$UpdateUsername value)? updateUsername,
    required TResult orElse(),
  }) {
    if (activate != null) {
      return activate(this);
    }
    return orElse();
  }
}

abstract class ActivationEvent$Activate implements ActivationEvent {
  const factory ActivationEvent$Activate() = _$ActivationEvent$ActivateImpl;
}

/// @nodoc
abstract class _$$ActivationEvent$UpdateUsernameImplCopyWith<$Res> {
  factory _$$ActivationEvent$UpdateUsernameImplCopyWith(
          _$ActivationEvent$UpdateUsernameImpl value,
          $Res Function(_$ActivationEvent$UpdateUsernameImpl) then) =
      __$$ActivationEvent$UpdateUsernameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$ActivationEvent$UpdateUsernameImplCopyWithImpl<$Res>
    extends _$ActivationEventCopyWithImpl<$Res,
        _$ActivationEvent$UpdateUsernameImpl>
    implements _$$ActivationEvent$UpdateUsernameImplCopyWith<$Res> {
  __$$ActivationEvent$UpdateUsernameImplCopyWithImpl(
      _$ActivationEvent$UpdateUsernameImpl _value,
      $Res Function(_$ActivationEvent$UpdateUsernameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$ActivationEvent$UpdateUsernameImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActivationEvent$UpdateUsernameImpl
    implements ActivationEvent$UpdateUsername {
  const _$ActivationEvent$UpdateUsernameImpl({required this.username});

  @override
  final String username;

  @override
  String toString() {
    return 'ActivationEvent.updateUsername(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivationEvent$UpdateUsernameImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivationEvent$UpdateUsernameImplCopyWith<
          _$ActivationEvent$UpdateUsernameImpl>
      get copyWith => __$$ActivationEvent$UpdateUsernameImplCopyWithImpl<
          _$ActivationEvent$UpdateUsernameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() activate,
    required TResult Function(String username) updateUsername,
  }) {
    return updateUsername(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? activate,
    TResult? Function(String username)? updateUsername,
  }) {
    return updateUsername?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? activate,
    TResult Function(String username)? updateUsername,
    required TResult orElse(),
  }) {
    if (updateUsername != null) {
      return updateUsername(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActivationEvent$Activate value) activate,
    required TResult Function(ActivationEvent$UpdateUsername value)
        updateUsername,
  }) {
    return updateUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActivationEvent$Activate value)? activate,
    TResult? Function(ActivationEvent$UpdateUsername value)? updateUsername,
  }) {
    return updateUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivationEvent$Activate value)? activate,
    TResult Function(ActivationEvent$UpdateUsername value)? updateUsername,
    required TResult orElse(),
  }) {
    if (updateUsername != null) {
      return updateUsername(this);
    }
    return orElse();
  }
}

abstract class ActivationEvent$UpdateUsername implements ActivationEvent {
  const factory ActivationEvent$UpdateUsername(
      {required final String username}) = _$ActivationEvent$UpdateUsernameImpl;

  String get username;
  @JsonKey(ignore: true)
  _$$ActivationEvent$UpdateUsernameImplCopyWith<
          _$ActivationEvent$UpdateUsernameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActivationState {
  User get user => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, String username, String? error) idle,
    required TResult Function(User user, String username) processing,
    required TResult Function(User user, String username) successfull,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, String username, String? error)? idle,
    TResult? Function(User user, String username)? processing,
    TResult? Function(User user, String username)? successfull,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, String username, String? error)? idle,
    TResult Function(User user, String username)? processing,
    TResult Function(User user, String username)? successfull,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActivationState$Idle value) idle,
    required TResult Function(ActivationState$Processing value) processing,
    required TResult Function(ActivationState$Successfull value) successfull,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActivationState$Idle value)? idle,
    TResult? Function(ActivationState$Processing value)? processing,
    TResult? Function(ActivationState$Successfull value)? successfull,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivationState$Idle value)? idle,
    TResult Function(ActivationState$Processing value)? processing,
    TResult Function(ActivationState$Successfull value)? successfull,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivationStateCopyWith<ActivationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivationStateCopyWith<$Res> {
  factory $ActivationStateCopyWith(
          ActivationState value, $Res Function(ActivationState) then) =
      _$ActivationStateCopyWithImpl<$Res, ActivationState>;
  @useResult
  $Res call({User user, String username});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ActivationStateCopyWithImpl<$Res, $Val extends ActivationState>
    implements $ActivationStateCopyWith<$Res> {
  _$ActivationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivationState$IdleImplCopyWith<$Res>
    implements $ActivationStateCopyWith<$Res> {
  factory _$$ActivationState$IdleImplCopyWith(_$ActivationState$IdleImpl value,
          $Res Function(_$ActivationState$IdleImpl) then) =
      __$$ActivationState$IdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, String username, String? error});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ActivationState$IdleImplCopyWithImpl<$Res>
    extends _$ActivationStateCopyWithImpl<$Res, _$ActivationState$IdleImpl>
    implements _$$ActivationState$IdleImplCopyWith<$Res> {
  __$$ActivationState$IdleImplCopyWithImpl(_$ActivationState$IdleImpl _value,
      $Res Function(_$ActivationState$IdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? username = null,
    Object? error = freezed,
  }) {
    return _then(_$ActivationState$IdleImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ActivationState$IdleImpl extends ActivationState$Idle {
  const _$ActivationState$IdleImpl(
      {required this.user, required this.username, this.error})
      : super._();

  @override
  final User user;
  @override
  final String username;
  @override
  final String? error;

  @override
  String toString() {
    return 'ActivationState.idle(user: $user, username: $username, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivationState$IdleImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, username, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivationState$IdleImplCopyWith<_$ActivationState$IdleImpl>
      get copyWith =>
          __$$ActivationState$IdleImplCopyWithImpl<_$ActivationState$IdleImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, String username, String? error) idle,
    required TResult Function(User user, String username) processing,
    required TResult Function(User user, String username) successfull,
  }) {
    return idle(user, username, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, String username, String? error)? idle,
    TResult? Function(User user, String username)? processing,
    TResult? Function(User user, String username)? successfull,
  }) {
    return idle?.call(user, username, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, String username, String? error)? idle,
    TResult Function(User user, String username)? processing,
    TResult Function(User user, String username)? successfull,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(user, username, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActivationState$Idle value) idle,
    required TResult Function(ActivationState$Processing value) processing,
    required TResult Function(ActivationState$Successfull value) successfull,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActivationState$Idle value)? idle,
    TResult? Function(ActivationState$Processing value)? processing,
    TResult? Function(ActivationState$Successfull value)? successfull,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivationState$Idle value)? idle,
    TResult Function(ActivationState$Processing value)? processing,
    TResult Function(ActivationState$Successfull value)? successfull,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class ActivationState$Idle extends ActivationState {
  const factory ActivationState$Idle(
      {required final User user,
      required final String username,
      final String? error}) = _$ActivationState$IdleImpl;
  const ActivationState$Idle._() : super._();

  @override
  User get user;
  @override
  String get username;
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$ActivationState$IdleImplCopyWith<_$ActivationState$IdleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActivationState$ProcessingImplCopyWith<$Res>
    implements $ActivationStateCopyWith<$Res> {
  factory _$$ActivationState$ProcessingImplCopyWith(
          _$ActivationState$ProcessingImpl value,
          $Res Function(_$ActivationState$ProcessingImpl) then) =
      __$$ActivationState$ProcessingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, String username});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ActivationState$ProcessingImplCopyWithImpl<$Res>
    extends _$ActivationStateCopyWithImpl<$Res,
        _$ActivationState$ProcessingImpl>
    implements _$$ActivationState$ProcessingImplCopyWith<$Res> {
  __$$ActivationState$ProcessingImplCopyWithImpl(
      _$ActivationState$ProcessingImpl _value,
      $Res Function(_$ActivationState$ProcessingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? username = null,
  }) {
    return _then(_$ActivationState$ProcessingImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActivationState$ProcessingImpl extends ActivationState$Processing {
  const _$ActivationState$ProcessingImpl(
      {required this.user, required this.username})
      : super._();

  @override
  final User user;
  @override
  final String username;

  @override
  String toString() {
    return 'ActivationState.processing(user: $user, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivationState$ProcessingImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivationState$ProcessingImplCopyWith<_$ActivationState$ProcessingImpl>
      get copyWith => __$$ActivationState$ProcessingImplCopyWithImpl<
          _$ActivationState$ProcessingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, String username, String? error) idle,
    required TResult Function(User user, String username) processing,
    required TResult Function(User user, String username) successfull,
  }) {
    return processing(user, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, String username, String? error)? idle,
    TResult? Function(User user, String username)? processing,
    TResult? Function(User user, String username)? successfull,
  }) {
    return processing?.call(user, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, String username, String? error)? idle,
    TResult Function(User user, String username)? processing,
    TResult Function(User user, String username)? successfull,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(user, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActivationState$Idle value) idle,
    required TResult Function(ActivationState$Processing value) processing,
    required TResult Function(ActivationState$Successfull value) successfull,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActivationState$Idle value)? idle,
    TResult? Function(ActivationState$Processing value)? processing,
    TResult? Function(ActivationState$Successfull value)? successfull,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivationState$Idle value)? idle,
    TResult Function(ActivationState$Processing value)? processing,
    TResult Function(ActivationState$Successfull value)? successfull,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class ActivationState$Processing extends ActivationState {
  const factory ActivationState$Processing(
      {required final User user,
      required final String username}) = _$ActivationState$ProcessingImpl;
  const ActivationState$Processing._() : super._();

  @override
  User get user;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$ActivationState$ProcessingImplCopyWith<_$ActivationState$ProcessingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActivationState$SuccessfullImplCopyWith<$Res>
    implements $ActivationStateCopyWith<$Res> {
  factory _$$ActivationState$SuccessfullImplCopyWith(
          _$ActivationState$SuccessfullImpl value,
          $Res Function(_$ActivationState$SuccessfullImpl) then) =
      __$$ActivationState$SuccessfullImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, String username});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ActivationState$SuccessfullImplCopyWithImpl<$Res>
    extends _$ActivationStateCopyWithImpl<$Res,
        _$ActivationState$SuccessfullImpl>
    implements _$$ActivationState$SuccessfullImplCopyWith<$Res> {
  __$$ActivationState$SuccessfullImplCopyWithImpl(
      _$ActivationState$SuccessfullImpl _value,
      $Res Function(_$ActivationState$SuccessfullImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? username = null,
  }) {
    return _then(_$ActivationState$SuccessfullImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActivationState$SuccessfullImpl extends ActivationState$Successfull {
  const _$ActivationState$SuccessfullImpl(
      {required this.user, required this.username})
      : super._();

  @override
  final User user;
  @override
  final String username;

  @override
  String toString() {
    return 'ActivationState.successfull(user: $user, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivationState$SuccessfullImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivationState$SuccessfullImplCopyWith<_$ActivationState$SuccessfullImpl>
      get copyWith => __$$ActivationState$SuccessfullImplCopyWithImpl<
          _$ActivationState$SuccessfullImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, String username, String? error) idle,
    required TResult Function(User user, String username) processing,
    required TResult Function(User user, String username) successfull,
  }) {
    return successfull(user, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, String username, String? error)? idle,
    TResult? Function(User user, String username)? processing,
    TResult? Function(User user, String username)? successfull,
  }) {
    return successfull?.call(user, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, String username, String? error)? idle,
    TResult Function(User user, String username)? processing,
    TResult Function(User user, String username)? successfull,
    required TResult orElse(),
  }) {
    if (successfull != null) {
      return successfull(user, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActivationState$Idle value) idle,
    required TResult Function(ActivationState$Processing value) processing,
    required TResult Function(ActivationState$Successfull value) successfull,
  }) {
    return successfull(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActivationState$Idle value)? idle,
    TResult? Function(ActivationState$Processing value)? processing,
    TResult? Function(ActivationState$Successfull value)? successfull,
  }) {
    return successfull?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivationState$Idle value)? idle,
    TResult Function(ActivationState$Processing value)? processing,
    TResult Function(ActivationState$Successfull value)? successfull,
    required TResult orElse(),
  }) {
    if (successfull != null) {
      return successfull(this);
    }
    return orElse();
  }
}

abstract class ActivationState$Successfull extends ActivationState {
  const factory ActivationState$Successfull(
      {required final User user,
      required final String username}) = _$ActivationState$SuccessfullImpl;
  const ActivationState$Successfull._() : super._();

  @override
  User get user;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$ActivationState$SuccessfullImplCopyWith<_$ActivationState$SuccessfullImpl>
      get copyWith => throw _privateConstructorUsedError;
}
