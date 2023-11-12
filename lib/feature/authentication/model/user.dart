// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

/// User id type.
typedef UserId = int;

/// User token type.
typedef UserToken = String;

/// User data class
@Freezed(fromJson: false, toJson: false)
class User with _$User {
  /// Authenticated user.
  const factory User.authenticated({
    required UserId id,
    required String username,
    required String phone,
    required UserToken token,
    required bool isRegistered,
    required bool isStaff,
  }) = AuthenticatedUser;

  /// Unauthenticated user.
  const factory User.unauthenticated() = UnauthenticatedUser;

  const User._();

  bool get isRegistered => maybeMap<bool>(orElse: () => false, authenticated: (user) => user.isRegistered);

  bool get isStaff => maybeMap<bool>(orElse: () => false, authenticated: (user) => user.isStaff);

  String? get username => maybeMap<String?>(orElse: () => null, authenticated: (user) => user.username);

  String? get token => maybeMap<String?>(orElse: () => null, authenticated: (user) => user.token);

  bool get isAuthenticated => maybeMap<bool>(orElse: () => false, authenticated: (_) => true);

  bool get isUnauthenticated => maybeMap<bool>(orElse: () => false, unauthenticated: (_) => true);

  /// Generate User class from Map<String, Object?>
  factory User.fromJson(Map<String, Object?> json) {
    if (json['token'] != null) {
      return AuthenticatedUser(
        id: json['id'] as UserId,
        username: json['username'] as String,
        phone: json['phone'] as String,
        token: json['token'] as UserToken,
        isRegistered: json['is_registered'] as bool,
        isStaff: json['is_staff'] as bool,
      );
    }

    return const UnauthenticatedUser();
  }
}
