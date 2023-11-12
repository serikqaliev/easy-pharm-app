// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendPhone,
    required TResult Function(String code) verifyPhone,
    required TResult Function() logout,
    required TResult Function() check,
    required TResult Function(
            String username, String? staffSecret, File? avatar)
        activate,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? sendPhone,
    TResult? Function(String code)? verifyPhone,
    TResult? Function()? logout,
    TResult? Function()? check,
    TResult? Function(String username, String? staffSecret, File? avatar)?
        activate,
    TResult? Function()? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? verifyPhone,
    TResult Function()? logout,
    TResult Function()? check,
    TResult Function(String username, String? staffSecret, File? avatar)?
        activate,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationEvent$SendPhone value) sendPhone,
    required TResult Function(AuthenticationEvent$VerifyPhone value)
        verifyPhone,
    required TResult Function(AuthenticationEvent$Logout value) logout,
    required TResult Function(AuthenticationEvent$Check value) check,
    required TResult Function(AuthenticationEvent$Activate value) activate,
    required TResult Function(AuthenticationEvent$Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationEvent$SendPhone value)? sendPhone,
    TResult? Function(AuthenticationEvent$VerifyPhone value)? verifyPhone,
    TResult? Function(AuthenticationEvent$Logout value)? logout,
    TResult? Function(AuthenticationEvent$Check value)? check,
    TResult? Function(AuthenticationEvent$Activate value)? activate,
    TResult? Function(AuthenticationEvent$Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationEvent$SendPhone value)? sendPhone,
    TResult Function(AuthenticationEvent$VerifyPhone value)? verifyPhone,
    TResult Function(AuthenticationEvent$Logout value)? logout,
    TResult Function(AuthenticationEvent$Check value)? check,
    TResult Function(AuthenticationEvent$Activate value)? activate,
    TResult Function(AuthenticationEvent$Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticationEvent$SendPhoneImplCopyWith<$Res> {
  factory _$$AuthenticationEvent$SendPhoneImplCopyWith(
          _$AuthenticationEvent$SendPhoneImpl value,
          $Res Function(_$AuthenticationEvent$SendPhoneImpl) then) =
      __$$AuthenticationEvent$SendPhoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$AuthenticationEvent$SendPhoneImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$AuthenticationEvent$SendPhoneImpl>
    implements _$$AuthenticationEvent$SendPhoneImplCopyWith<$Res> {
  __$$AuthenticationEvent$SendPhoneImplCopyWithImpl(
      _$AuthenticationEvent$SendPhoneImpl _value,
      $Res Function(_$AuthenticationEvent$SendPhoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$AuthenticationEvent$SendPhoneImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationEvent$SendPhoneImpl
    implements AuthenticationEvent$SendPhone {
  const _$AuthenticationEvent$SendPhoneImpl({required this.phone});

  @override
  final String phone;

  @override
  String toString() {
    return 'AuthenticationEvent.sendPhone(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationEvent$SendPhoneImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationEvent$SendPhoneImplCopyWith<
          _$AuthenticationEvent$SendPhoneImpl>
      get copyWith => __$$AuthenticationEvent$SendPhoneImplCopyWithImpl<
          _$AuthenticationEvent$SendPhoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendPhone,
    required TResult Function(String code) verifyPhone,
    required TResult Function() logout,
    required TResult Function() check,
    required TResult Function(
            String username, String? staffSecret, File? avatar)
        activate,
    required TResult Function() delete,
  }) {
    return sendPhone(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? sendPhone,
    TResult? Function(String code)? verifyPhone,
    TResult? Function()? logout,
    TResult? Function()? check,
    TResult? Function(String username, String? staffSecret, File? avatar)?
        activate,
    TResult? Function()? delete,
  }) {
    return sendPhone?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? verifyPhone,
    TResult Function()? logout,
    TResult Function()? check,
    TResult Function(String username, String? staffSecret, File? avatar)?
        activate,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (sendPhone != null) {
      return sendPhone(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationEvent$SendPhone value) sendPhone,
    required TResult Function(AuthenticationEvent$VerifyPhone value)
        verifyPhone,
    required TResult Function(AuthenticationEvent$Logout value) logout,
    required TResult Function(AuthenticationEvent$Check value) check,
    required TResult Function(AuthenticationEvent$Activate value) activate,
    required TResult Function(AuthenticationEvent$Delete value) delete,
  }) {
    return sendPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationEvent$SendPhone value)? sendPhone,
    TResult? Function(AuthenticationEvent$VerifyPhone value)? verifyPhone,
    TResult? Function(AuthenticationEvent$Logout value)? logout,
    TResult? Function(AuthenticationEvent$Check value)? check,
    TResult? Function(AuthenticationEvent$Activate value)? activate,
    TResult? Function(AuthenticationEvent$Delete value)? delete,
  }) {
    return sendPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationEvent$SendPhone value)? sendPhone,
    TResult Function(AuthenticationEvent$VerifyPhone value)? verifyPhone,
    TResult Function(AuthenticationEvent$Logout value)? logout,
    TResult Function(AuthenticationEvent$Check value)? check,
    TResult Function(AuthenticationEvent$Activate value)? activate,
    TResult Function(AuthenticationEvent$Delete value)? delete,
    required TResult orElse(),
  }) {
    if (sendPhone != null) {
      return sendPhone(this);
    }
    return orElse();
  }
}

abstract class AuthenticationEvent$SendPhone implements AuthenticationEvent {
  const factory AuthenticationEvent$SendPhone({required final String phone}) =
      _$AuthenticationEvent$SendPhoneImpl;

  String get phone;
  @JsonKey(ignore: true)
  _$$AuthenticationEvent$SendPhoneImplCopyWith<
          _$AuthenticationEvent$SendPhoneImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationEvent$VerifyPhoneImplCopyWith<$Res> {
  factory _$$AuthenticationEvent$VerifyPhoneImplCopyWith(
          _$AuthenticationEvent$VerifyPhoneImpl value,
          $Res Function(_$AuthenticationEvent$VerifyPhoneImpl) then) =
      __$$AuthenticationEvent$VerifyPhoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$AuthenticationEvent$VerifyPhoneImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$AuthenticationEvent$VerifyPhoneImpl>
    implements _$$AuthenticationEvent$VerifyPhoneImplCopyWith<$Res> {
  __$$AuthenticationEvent$VerifyPhoneImplCopyWithImpl(
      _$AuthenticationEvent$VerifyPhoneImpl _value,
      $Res Function(_$AuthenticationEvent$VerifyPhoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$AuthenticationEvent$VerifyPhoneImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationEvent$VerifyPhoneImpl
    implements AuthenticationEvent$VerifyPhone {
  const _$AuthenticationEvent$VerifyPhoneImpl({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'AuthenticationEvent.verifyPhone(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationEvent$VerifyPhoneImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationEvent$VerifyPhoneImplCopyWith<
          _$AuthenticationEvent$VerifyPhoneImpl>
      get copyWith => __$$AuthenticationEvent$VerifyPhoneImplCopyWithImpl<
          _$AuthenticationEvent$VerifyPhoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendPhone,
    required TResult Function(String code) verifyPhone,
    required TResult Function() logout,
    required TResult Function() check,
    required TResult Function(
            String username, String? staffSecret, File? avatar)
        activate,
    required TResult Function() delete,
  }) {
    return verifyPhone(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? sendPhone,
    TResult? Function(String code)? verifyPhone,
    TResult? Function()? logout,
    TResult? Function()? check,
    TResult? Function(String username, String? staffSecret, File? avatar)?
        activate,
    TResult? Function()? delete,
  }) {
    return verifyPhone?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? verifyPhone,
    TResult Function()? logout,
    TResult Function()? check,
    TResult Function(String username, String? staffSecret, File? avatar)?
        activate,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (verifyPhone != null) {
      return verifyPhone(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationEvent$SendPhone value) sendPhone,
    required TResult Function(AuthenticationEvent$VerifyPhone value)
        verifyPhone,
    required TResult Function(AuthenticationEvent$Logout value) logout,
    required TResult Function(AuthenticationEvent$Check value) check,
    required TResult Function(AuthenticationEvent$Activate value) activate,
    required TResult Function(AuthenticationEvent$Delete value) delete,
  }) {
    return verifyPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationEvent$SendPhone value)? sendPhone,
    TResult? Function(AuthenticationEvent$VerifyPhone value)? verifyPhone,
    TResult? Function(AuthenticationEvent$Logout value)? logout,
    TResult? Function(AuthenticationEvent$Check value)? check,
    TResult? Function(AuthenticationEvent$Activate value)? activate,
    TResult? Function(AuthenticationEvent$Delete value)? delete,
  }) {
    return verifyPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationEvent$SendPhone value)? sendPhone,
    TResult Function(AuthenticationEvent$VerifyPhone value)? verifyPhone,
    TResult Function(AuthenticationEvent$Logout value)? logout,
    TResult Function(AuthenticationEvent$Check value)? check,
    TResult Function(AuthenticationEvent$Activate value)? activate,
    TResult Function(AuthenticationEvent$Delete value)? delete,
    required TResult orElse(),
  }) {
    if (verifyPhone != null) {
      return verifyPhone(this);
    }
    return orElse();
  }
}

abstract class AuthenticationEvent$VerifyPhone implements AuthenticationEvent {
  const factory AuthenticationEvent$VerifyPhone({required final String code}) =
      _$AuthenticationEvent$VerifyPhoneImpl;

  String get code;
  @JsonKey(ignore: true)
  _$$AuthenticationEvent$VerifyPhoneImplCopyWith<
          _$AuthenticationEvent$VerifyPhoneImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationEvent$LogoutImplCopyWith<$Res> {
  factory _$$AuthenticationEvent$LogoutImplCopyWith(
          _$AuthenticationEvent$LogoutImpl value,
          $Res Function(_$AuthenticationEvent$LogoutImpl) then) =
      __$$AuthenticationEvent$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationEvent$LogoutImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$AuthenticationEvent$LogoutImpl>
    implements _$$AuthenticationEvent$LogoutImplCopyWith<$Res> {
  __$$AuthenticationEvent$LogoutImplCopyWithImpl(
      _$AuthenticationEvent$LogoutImpl _value,
      $Res Function(_$AuthenticationEvent$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationEvent$LogoutImpl implements AuthenticationEvent$Logout {
  const _$AuthenticationEvent$LogoutImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationEvent$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendPhone,
    required TResult Function(String code) verifyPhone,
    required TResult Function() logout,
    required TResult Function() check,
    required TResult Function(
            String username, String? staffSecret, File? avatar)
        activate,
    required TResult Function() delete,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? sendPhone,
    TResult? Function(String code)? verifyPhone,
    TResult? Function()? logout,
    TResult? Function()? check,
    TResult? Function(String username, String? staffSecret, File? avatar)?
        activate,
    TResult? Function()? delete,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? verifyPhone,
    TResult Function()? logout,
    TResult Function()? check,
    TResult Function(String username, String? staffSecret, File? avatar)?
        activate,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationEvent$SendPhone value) sendPhone,
    required TResult Function(AuthenticationEvent$VerifyPhone value)
        verifyPhone,
    required TResult Function(AuthenticationEvent$Logout value) logout,
    required TResult Function(AuthenticationEvent$Check value) check,
    required TResult Function(AuthenticationEvent$Activate value) activate,
    required TResult Function(AuthenticationEvent$Delete value) delete,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationEvent$SendPhone value)? sendPhone,
    TResult? Function(AuthenticationEvent$VerifyPhone value)? verifyPhone,
    TResult? Function(AuthenticationEvent$Logout value)? logout,
    TResult? Function(AuthenticationEvent$Check value)? check,
    TResult? Function(AuthenticationEvent$Activate value)? activate,
    TResult? Function(AuthenticationEvent$Delete value)? delete,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationEvent$SendPhone value)? sendPhone,
    TResult Function(AuthenticationEvent$VerifyPhone value)? verifyPhone,
    TResult Function(AuthenticationEvent$Logout value)? logout,
    TResult Function(AuthenticationEvent$Check value)? check,
    TResult Function(AuthenticationEvent$Activate value)? activate,
    TResult Function(AuthenticationEvent$Delete value)? delete,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class AuthenticationEvent$Logout implements AuthenticationEvent {
  const factory AuthenticationEvent$Logout() = _$AuthenticationEvent$LogoutImpl;
}

/// @nodoc
abstract class _$$AuthenticationEvent$CheckImplCopyWith<$Res> {
  factory _$$AuthenticationEvent$CheckImplCopyWith(
          _$AuthenticationEvent$CheckImpl value,
          $Res Function(_$AuthenticationEvent$CheckImpl) then) =
      __$$AuthenticationEvent$CheckImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationEvent$CheckImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$AuthenticationEvent$CheckImpl>
    implements _$$AuthenticationEvent$CheckImplCopyWith<$Res> {
  __$$AuthenticationEvent$CheckImplCopyWithImpl(
      _$AuthenticationEvent$CheckImpl _value,
      $Res Function(_$AuthenticationEvent$CheckImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationEvent$CheckImpl implements AuthenticationEvent$Check {
  const _$AuthenticationEvent$CheckImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.check()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationEvent$CheckImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendPhone,
    required TResult Function(String code) verifyPhone,
    required TResult Function() logout,
    required TResult Function() check,
    required TResult Function(
            String username, String? staffSecret, File? avatar)
        activate,
    required TResult Function() delete,
  }) {
    return check();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? sendPhone,
    TResult? Function(String code)? verifyPhone,
    TResult? Function()? logout,
    TResult? Function()? check,
    TResult? Function(String username, String? staffSecret, File? avatar)?
        activate,
    TResult? Function()? delete,
  }) {
    return check?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? verifyPhone,
    TResult Function()? logout,
    TResult Function()? check,
    TResult Function(String username, String? staffSecret, File? avatar)?
        activate,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationEvent$SendPhone value) sendPhone,
    required TResult Function(AuthenticationEvent$VerifyPhone value)
        verifyPhone,
    required TResult Function(AuthenticationEvent$Logout value) logout,
    required TResult Function(AuthenticationEvent$Check value) check,
    required TResult Function(AuthenticationEvent$Activate value) activate,
    required TResult Function(AuthenticationEvent$Delete value) delete,
  }) {
    return check(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationEvent$SendPhone value)? sendPhone,
    TResult? Function(AuthenticationEvent$VerifyPhone value)? verifyPhone,
    TResult? Function(AuthenticationEvent$Logout value)? logout,
    TResult? Function(AuthenticationEvent$Check value)? check,
    TResult? Function(AuthenticationEvent$Activate value)? activate,
    TResult? Function(AuthenticationEvent$Delete value)? delete,
  }) {
    return check?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationEvent$SendPhone value)? sendPhone,
    TResult Function(AuthenticationEvent$VerifyPhone value)? verifyPhone,
    TResult Function(AuthenticationEvent$Logout value)? logout,
    TResult Function(AuthenticationEvent$Check value)? check,
    TResult Function(AuthenticationEvent$Activate value)? activate,
    TResult Function(AuthenticationEvent$Delete value)? delete,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(this);
    }
    return orElse();
  }
}

abstract class AuthenticationEvent$Check implements AuthenticationEvent {
  const factory AuthenticationEvent$Check() = _$AuthenticationEvent$CheckImpl;
}

/// @nodoc
abstract class _$$AuthenticationEvent$ActivateImplCopyWith<$Res> {
  factory _$$AuthenticationEvent$ActivateImplCopyWith(
          _$AuthenticationEvent$ActivateImpl value,
          $Res Function(_$AuthenticationEvent$ActivateImpl) then) =
      __$$AuthenticationEvent$ActivateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String? staffSecret, File? avatar});
}

/// @nodoc
class __$$AuthenticationEvent$ActivateImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$AuthenticationEvent$ActivateImpl>
    implements _$$AuthenticationEvent$ActivateImplCopyWith<$Res> {
  __$$AuthenticationEvent$ActivateImplCopyWithImpl(
      _$AuthenticationEvent$ActivateImpl _value,
      $Res Function(_$AuthenticationEvent$ActivateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? staffSecret = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$AuthenticationEvent$ActivateImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      staffSecret: freezed == staffSecret
          ? _value.staffSecret
          : staffSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$AuthenticationEvent$ActivateImpl
    implements AuthenticationEvent$Activate {
  const _$AuthenticationEvent$ActivateImpl(
      {required this.username, this.staffSecret, required this.avatar});

  @override
  final String username;
  @override
  final String? staffSecret;
  @override
  final File? avatar;

  @override
  String toString() {
    return 'AuthenticationEvent.activate(username: $username, staffSecret: $staffSecret, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationEvent$ActivateImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.staffSecret, staffSecret) ||
                other.staffSecret == staffSecret) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, staffSecret, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationEvent$ActivateImplCopyWith<
          _$AuthenticationEvent$ActivateImpl>
      get copyWith => __$$AuthenticationEvent$ActivateImplCopyWithImpl<
          _$AuthenticationEvent$ActivateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendPhone,
    required TResult Function(String code) verifyPhone,
    required TResult Function() logout,
    required TResult Function() check,
    required TResult Function(
            String username, String? staffSecret, File? avatar)
        activate,
    required TResult Function() delete,
  }) {
    return activate(username, staffSecret, avatar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? sendPhone,
    TResult? Function(String code)? verifyPhone,
    TResult? Function()? logout,
    TResult? Function()? check,
    TResult? Function(String username, String? staffSecret, File? avatar)?
        activate,
    TResult? Function()? delete,
  }) {
    return activate?.call(username, staffSecret, avatar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? verifyPhone,
    TResult Function()? logout,
    TResult Function()? check,
    TResult Function(String username, String? staffSecret, File? avatar)?
        activate,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (activate != null) {
      return activate(username, staffSecret, avatar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationEvent$SendPhone value) sendPhone,
    required TResult Function(AuthenticationEvent$VerifyPhone value)
        verifyPhone,
    required TResult Function(AuthenticationEvent$Logout value) logout,
    required TResult Function(AuthenticationEvent$Check value) check,
    required TResult Function(AuthenticationEvent$Activate value) activate,
    required TResult Function(AuthenticationEvent$Delete value) delete,
  }) {
    return activate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationEvent$SendPhone value)? sendPhone,
    TResult? Function(AuthenticationEvent$VerifyPhone value)? verifyPhone,
    TResult? Function(AuthenticationEvent$Logout value)? logout,
    TResult? Function(AuthenticationEvent$Check value)? check,
    TResult? Function(AuthenticationEvent$Activate value)? activate,
    TResult? Function(AuthenticationEvent$Delete value)? delete,
  }) {
    return activate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationEvent$SendPhone value)? sendPhone,
    TResult Function(AuthenticationEvent$VerifyPhone value)? verifyPhone,
    TResult Function(AuthenticationEvent$Logout value)? logout,
    TResult Function(AuthenticationEvent$Check value)? check,
    TResult Function(AuthenticationEvent$Activate value)? activate,
    TResult Function(AuthenticationEvent$Delete value)? delete,
    required TResult orElse(),
  }) {
    if (activate != null) {
      return activate(this);
    }
    return orElse();
  }
}

abstract class AuthenticationEvent$Activate implements AuthenticationEvent {
  const factory AuthenticationEvent$Activate(
      {required final String username,
      final String? staffSecret,
      required final File? avatar}) = _$AuthenticationEvent$ActivateImpl;

  String get username;
  String? get staffSecret;
  File? get avatar;
  @JsonKey(ignore: true)
  _$$AuthenticationEvent$ActivateImplCopyWith<
          _$AuthenticationEvent$ActivateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationEvent$DeleteImplCopyWith<$Res> {
  factory _$$AuthenticationEvent$DeleteImplCopyWith(
          _$AuthenticationEvent$DeleteImpl value,
          $Res Function(_$AuthenticationEvent$DeleteImpl) then) =
      __$$AuthenticationEvent$DeleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationEvent$DeleteImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$AuthenticationEvent$DeleteImpl>
    implements _$$AuthenticationEvent$DeleteImplCopyWith<$Res> {
  __$$AuthenticationEvent$DeleteImplCopyWithImpl(
      _$AuthenticationEvent$DeleteImpl _value,
      $Res Function(_$AuthenticationEvent$DeleteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationEvent$DeleteImpl implements AuthenticationEvent$Delete {
  const _$AuthenticationEvent$DeleteImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationEvent$DeleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendPhone,
    required TResult Function(String code) verifyPhone,
    required TResult Function() logout,
    required TResult Function() check,
    required TResult Function(
            String username, String? staffSecret, File? avatar)
        activate,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? sendPhone,
    TResult? Function(String code)? verifyPhone,
    TResult? Function()? logout,
    TResult? Function()? check,
    TResult? Function(String username, String? staffSecret, File? avatar)?
        activate,
    TResult? Function()? delete,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? verifyPhone,
    TResult Function()? logout,
    TResult Function()? check,
    TResult Function(String username, String? staffSecret, File? avatar)?
        activate,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationEvent$SendPhone value) sendPhone,
    required TResult Function(AuthenticationEvent$VerifyPhone value)
        verifyPhone,
    required TResult Function(AuthenticationEvent$Logout value) logout,
    required TResult Function(AuthenticationEvent$Check value) check,
    required TResult Function(AuthenticationEvent$Activate value) activate,
    required TResult Function(AuthenticationEvent$Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationEvent$SendPhone value)? sendPhone,
    TResult? Function(AuthenticationEvent$VerifyPhone value)? verifyPhone,
    TResult? Function(AuthenticationEvent$Logout value)? logout,
    TResult? Function(AuthenticationEvent$Check value)? check,
    TResult? Function(AuthenticationEvent$Activate value)? activate,
    TResult? Function(AuthenticationEvent$Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationEvent$SendPhone value)? sendPhone,
    TResult Function(AuthenticationEvent$VerifyPhone value)? verifyPhone,
    TResult Function(AuthenticationEvent$Logout value)? logout,
    TResult Function(AuthenticationEvent$Check value)? check,
    TResult Function(AuthenticationEvent$Activate value)? activate,
    TResult Function(AuthenticationEvent$Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class AuthenticationEvent$Delete implements AuthenticationEvent {
  const factory AuthenticationEvent$Delete() = _$AuthenticationEvent$DeleteImpl;
}

/// @nodoc
mixin _$AuthenticationState {
  User get user => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  AuthenticationFlow get flow => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, String? phone, int? userId,
            AuthenticationFlow flow, String message, String? error)
        idle,
    required TResult Function(User user, String? phone, int? userId,
            AuthenticationFlow flow, String message)
        processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, String? phone, int? userId,
            AuthenticationFlow flow, String message, String? error)?
        idle,
    TResult? Function(User user, String? phone, int? userId,
            AuthenticationFlow flow, String message)?
        processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, String? phone, int? userId,
            AuthenticationFlow flow, String message, String? error)?
        idle,
    TResult Function(User user, String? phone, int? userId,
            AuthenticationFlow flow, String message)?
        processing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationState$Idle value) idle,
    required TResult Function(AuthenticationState$Processing value) processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationState$Idle value)? idle,
    TResult? Function(AuthenticationState$Processing value)? processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationState$Idle value)? idle,
    TResult Function(AuthenticationState$Processing value)? processing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
  @useResult
  $Res call(
      {User user,
      String? phone,
      int? userId,
      AuthenticationFlow flow,
      String message});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? phone = freezed,
    Object? userId = freezed,
    Object? flow = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      flow: null == flow
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as AuthenticationFlow,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AuthenticationState$IdleImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$AuthenticationState$IdleImplCopyWith(
          _$AuthenticationState$IdleImpl value,
          $Res Function(_$AuthenticationState$IdleImpl) then) =
      __$$AuthenticationState$IdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User user,
      String? phone,
      int? userId,
      AuthenticationFlow flow,
      String message,
      String? error});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthenticationState$IdleImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationState$IdleImpl>
    implements _$$AuthenticationState$IdleImplCopyWith<$Res> {
  __$$AuthenticationState$IdleImplCopyWithImpl(
      _$AuthenticationState$IdleImpl _value,
      $Res Function(_$AuthenticationState$IdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? phone = freezed,
    Object? userId = freezed,
    Object? flow = null,
    Object? message = null,
    Object? error = freezed,
  }) {
    return _then(_$AuthenticationState$IdleImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      flow: null == flow
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as AuthenticationFlow,
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

class _$AuthenticationState$IdleImpl extends AuthenticationState$Idle {
  const _$AuthenticationState$IdleImpl(
      {required this.user,
      this.phone,
      this.userId,
      this.flow = AuthenticationFlow.initial,
      this.message = 'Idle',
      this.error})
      : super._();

  @override
  final User user;
  @override
  final String? phone;
  @override
  final int? userId;
  @override
  @JsonKey()
  final AuthenticationFlow flow;
  @override
  @JsonKey()
  final String message;
  @override
  final String? error;

  @override
  String toString() {
    return 'AuthenticationState.idle(user: $user, phone: $phone, userId: $userId, flow: $flow, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationState$IdleImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.flow, flow) || other.flow == flow) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, user, phone, userId, flow, message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationState$IdleImplCopyWith<_$AuthenticationState$IdleImpl>
      get copyWith => __$$AuthenticationState$IdleImplCopyWithImpl<
          _$AuthenticationState$IdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, String? phone, int? userId,
            AuthenticationFlow flow, String message, String? error)
        idle,
    required TResult Function(User user, String? phone, int? userId,
            AuthenticationFlow flow, String message)
        processing,
  }) {
    return idle(user, phone, userId, flow, message, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, String? phone, int? userId,
            AuthenticationFlow flow, String message, String? error)?
        idle,
    TResult? Function(User user, String? phone, int? userId,
            AuthenticationFlow flow, String message)?
        processing,
  }) {
    return idle?.call(user, phone, userId, flow, message, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, String? phone, int? userId,
            AuthenticationFlow flow, String message, String? error)?
        idle,
    TResult Function(User user, String? phone, int? userId,
            AuthenticationFlow flow, String message)?
        processing,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(user, phone, userId, flow, message, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationState$Idle value) idle,
    required TResult Function(AuthenticationState$Processing value) processing,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationState$Idle value)? idle,
    TResult? Function(AuthenticationState$Processing value)? processing,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationState$Idle value)? idle,
    TResult Function(AuthenticationState$Processing value)? processing,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class AuthenticationState$Idle extends AuthenticationState {
  const factory AuthenticationState$Idle(
      {required final User user,
      final String? phone,
      final int? userId,
      final AuthenticationFlow flow,
      final String message,
      final String? error}) = _$AuthenticationState$IdleImpl;
  const AuthenticationState$Idle._() : super._();

  @override
  User get user;
  @override
  String? get phone;
  @override
  int? get userId;
  @override
  AuthenticationFlow get flow;
  @override
  String get message;
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationState$IdleImplCopyWith<_$AuthenticationState$IdleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationState$ProcessingImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$AuthenticationState$ProcessingImplCopyWith(
          _$AuthenticationState$ProcessingImpl value,
          $Res Function(_$AuthenticationState$ProcessingImpl) then) =
      __$$AuthenticationState$ProcessingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User user,
      String? phone,
      int? userId,
      AuthenticationFlow flow,
      String message});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthenticationState$ProcessingImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationState$ProcessingImpl>
    implements _$$AuthenticationState$ProcessingImplCopyWith<$Res> {
  __$$AuthenticationState$ProcessingImplCopyWithImpl(
      _$AuthenticationState$ProcessingImpl _value,
      $Res Function(_$AuthenticationState$ProcessingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? phone = freezed,
    Object? userId = freezed,
    Object? flow = null,
    Object? message = null,
  }) {
    return _then(_$AuthenticationState$ProcessingImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      flow: null == flow
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as AuthenticationFlow,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationState$ProcessingImpl
    extends AuthenticationState$Processing {
  const _$AuthenticationState$ProcessingImpl(
      {required this.user,
      this.phone,
      this.userId,
      this.flow = AuthenticationFlow.initial,
      this.message = 'Processing'})
      : super._();

  @override
  final User user;
  @override
  final String? phone;
  @override
  final int? userId;
  @override
  @JsonKey()
  final AuthenticationFlow flow;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AuthenticationState.processing(user: $user, phone: $phone, userId: $userId, flow: $flow, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationState$ProcessingImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.flow, flow) || other.flow == flow) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, user, phone, userId, flow, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationState$ProcessingImplCopyWith<
          _$AuthenticationState$ProcessingImpl>
      get copyWith => __$$AuthenticationState$ProcessingImplCopyWithImpl<
          _$AuthenticationState$ProcessingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, String? phone, int? userId,
            AuthenticationFlow flow, String message, String? error)
        idle,
    required TResult Function(User user, String? phone, int? userId,
            AuthenticationFlow flow, String message)
        processing,
  }) {
    return processing(user, phone, userId, flow, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, String? phone, int? userId,
            AuthenticationFlow flow, String message, String? error)?
        idle,
    TResult? Function(User user, String? phone, int? userId,
            AuthenticationFlow flow, String message)?
        processing,
  }) {
    return processing?.call(user, phone, userId, flow, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, String? phone, int? userId,
            AuthenticationFlow flow, String message, String? error)?
        idle,
    TResult Function(User user, String? phone, int? userId,
            AuthenticationFlow flow, String message)?
        processing,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(user, phone, userId, flow, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationState$Idle value) idle,
    required TResult Function(AuthenticationState$Processing value) processing,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationState$Idle value)? idle,
    TResult? Function(AuthenticationState$Processing value)? processing,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationState$Idle value)? idle,
    TResult Function(AuthenticationState$Processing value)? processing,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class AuthenticationState$Processing extends AuthenticationState {
  const factory AuthenticationState$Processing(
      {required final User user,
      final String? phone,
      final int? userId,
      final AuthenticationFlow flow,
      final String message}) = _$AuthenticationState$ProcessingImpl;
  const AuthenticationState$Processing._() : super._();

  @override
  User get user;
  @override
  String? get phone;
  @override
  int? get userId;
  @override
  AuthenticationFlow get flow;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationState$ProcessingImplCopyWith<
          _$AuthenticationState$ProcessingImpl>
      get copyWith => throw _privateConstructorUsedError;
}
