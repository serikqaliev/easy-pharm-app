// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String username, String phone,
            String token, bool isRegistered, bool isStaff)
        authenticated,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String username, String phone, String token,
            bool isRegistered, bool isStaff)?
        authenticated,
    TResult? Function()? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String username, String phone, String token,
            bool isRegistered, bool isStaff)?
        authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedUser value) authenticated,
    required TResult Function(UnauthenticatedUser value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedUser value)? authenticated,
    TResult? Function(UnauthenticatedUser value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedUser value)? authenticated,
    TResult Function(UnauthenticatedUser value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticatedUserImplCopyWith<$Res> {
  factory _$$AuthenticatedUserImplCopyWith(_$AuthenticatedUserImpl value,
          $Res Function(_$AuthenticatedUserImpl) then) =
      __$$AuthenticatedUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String username,
      String phone,
      String token,
      bool isRegistered,
      bool isStaff});
}

/// @nodoc
class __$$AuthenticatedUserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$AuthenticatedUserImpl>
    implements _$$AuthenticatedUserImplCopyWith<$Res> {
  __$$AuthenticatedUserImplCopyWithImpl(_$AuthenticatedUserImpl _value,
      $Res Function(_$AuthenticatedUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? phone = null,
    Object? token = null,
    Object? isRegistered = null,
    Object? isStaff = null,
  }) {
    return _then(_$AuthenticatedUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isRegistered: null == isRegistered
          ? _value.isRegistered
          : isRegistered // ignore: cast_nullable_to_non_nullable
              as bool,
      isStaff: null == isStaff
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthenticatedUserImpl extends AuthenticatedUser {
  const _$AuthenticatedUserImpl(
      {required this.id,
      required this.username,
      required this.phone,
      required this.token,
      required this.isRegistered,
      required this.isStaff})
      : super._();

  @override
  final int id;
  @override
  final String username;
  @override
  final String phone;
  @override
  final String token;
  @override
  final bool isRegistered;
  @override
  final bool isStaff;

  @override
  String toString() {
    return 'User.authenticated(id: $id, username: $username, phone: $phone, token: $token, isRegistered: $isRegistered, isStaff: $isStaff)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isRegistered, isRegistered) ||
                other.isRegistered == isRegistered) &&
            (identical(other.isStaff, isStaff) || other.isStaff == isStaff));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, username, phone, token, isRegistered, isStaff);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedUserImplCopyWith<_$AuthenticatedUserImpl> get copyWith =>
      __$$AuthenticatedUserImplCopyWithImpl<_$AuthenticatedUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String username, String phone,
            String token, bool isRegistered, bool isStaff)
        authenticated,
    required TResult Function() unauthenticated,
  }) {
    return authenticated(id, username, phone, token, isRegistered, isStaff);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String username, String phone, String token,
            bool isRegistered, bool isStaff)?
        authenticated,
    TResult? Function()? unauthenticated,
  }) {
    return authenticated?.call(
        id, username, phone, token, isRegistered, isStaff);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String username, String phone, String token,
            bool isRegistered, bool isStaff)?
        authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(id, username, phone, token, isRegistered, isStaff);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedUser value) authenticated,
    required TResult Function(UnauthenticatedUser value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedUser value)? authenticated,
    TResult? Function(UnauthenticatedUser value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedUser value)? authenticated,
    TResult Function(UnauthenticatedUser value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedUser extends User {
  const factory AuthenticatedUser(
      {required final int id,
      required final String username,
      required final String phone,
      required final String token,
      required final bool isRegistered,
      required final bool isStaff}) = _$AuthenticatedUserImpl;
  const AuthenticatedUser._() : super._();

  int get id;
  String get username;
  String get phone;
  String get token;
  bool get isRegistered;
  bool get isStaff;
  @JsonKey(ignore: true)
  _$$AuthenticatedUserImplCopyWith<_$AuthenticatedUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedUserImplCopyWith<$Res> {
  factory _$$UnauthenticatedUserImplCopyWith(_$UnauthenticatedUserImpl value,
          $Res Function(_$UnauthenticatedUserImpl) then) =
      __$$UnauthenticatedUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedUserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UnauthenticatedUserImpl>
    implements _$$UnauthenticatedUserImplCopyWith<$Res> {
  __$$UnauthenticatedUserImplCopyWithImpl(_$UnauthenticatedUserImpl _value,
      $Res Function(_$UnauthenticatedUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthenticatedUserImpl extends UnauthenticatedUser {
  const _$UnauthenticatedUserImpl() : super._();

  @override
  String toString() {
    return 'User.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthenticatedUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String username, String phone,
            String token, bool isRegistered, bool isStaff)
        authenticated,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String username, String phone, String token,
            bool isRegistered, bool isStaff)?
        authenticated,
    TResult? Function()? unauthenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String username, String phone, String token,
            bool isRegistered, bool isStaff)?
        authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedUser value) authenticated,
    required TResult Function(UnauthenticatedUser value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedUser value)? authenticated,
    TResult? Function(UnauthenticatedUser value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedUser value)? authenticated,
    TResult Function(UnauthenticatedUser value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class UnauthenticatedUser extends User {
  const factory UnauthenticatedUser() = _$UnauthenticatedUserImpl;
  const UnauthenticatedUser._() : super._();
}
