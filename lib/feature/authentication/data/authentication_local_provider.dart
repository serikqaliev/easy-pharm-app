import 'package:shared_preferences/shared_preferences.dart';

// ignore: constant_identifier_names
const String TOKEN = 'token';

abstract interface class IAuthenticationLocalProvider {
  String? get token;

  Future<void> saveToken(String token);
  Future<void> deleteToken();
}

class AuthenticationLocalProvider implements IAuthenticationLocalProvider {
  final SharedPreferences _prefs;

  AuthenticationLocalProvider({
    required final SharedPreferences preferences,
  }) : _prefs = preferences;

  @override
  Future<void> deleteToken() => _prefs.remove(TOKEN);

  @override
  Future<void> saveToken(String token) => _prefs.setString(TOKEN, token);

  @override
  String? get token => _prefs.getString(TOKEN);
}
