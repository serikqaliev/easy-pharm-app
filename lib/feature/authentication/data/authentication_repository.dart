import 'dart:async';

import '../model/user.dart';
import 'authentication_local_provider.dart';
import 'authentication_network_provider.dart';

abstract interface class IAuthenticationRepository {
  FutureOr<User> getUser();
  Stream<User> userChanges();

  Future<int> sendPhone({required final String phone});
  Future<User> verifyPhone({required int userId, required String code});
  Future<User> activate({required final String username, final String? staffSecret});

  Future<void> logout();
  Future<void> delete();
}

class AuthenticationRepository implements IAuthenticationRepository {
  final AuthenticationNetworkProvider _networkProvider;
  final IAuthenticationLocalProvider _localProvider;

  AuthenticationRepository({
    required final AuthenticationNetworkProvider networkProvider,
    required final IAuthenticationLocalProvider localProvider,
  })  : _networkProvider = networkProvider,
        _localProvider = localProvider;

  final StreamController<User> _userController = StreamController<User>.broadcast();
  User _user = const User.unauthenticated();

  @override
  FutureOr<User> getUser() async {
    final user = await _networkProvider.me();
    if (user.isAuthenticated) _localProvider.saveToken(user.token!);
    _userController.add(_user = user);
    return _user;
  }

  @override
  Stream<User> userChanges() => () async* {
        yield _user;
        yield* _userController.stream;
      }()
          .distinct()
          .skip(1);

  @override
  Future<User> activate({required String username, final String? staffSecret}) async {
    final user = await _networkProvider.activate(username: username, staffSecret: staffSecret);
    if (user.isAuthenticated) _localProvider.saveToken(user.token!);
    _userController.add(_user = user);
    return user;
  }

  @override
  Future<int> sendPhone({required String phone}) async {
    final response = await _networkProvider.sendPhone(phone: phone);
    return response.userId;
  }

  @override
  Future<User> verifyPhone({required int userId, required String code}) async {
    final user = await _networkProvider.verifyPhone(userId: userId, code: code);
    if (user.isAuthenticated) _localProvider.saveToken(user.token!);
    _userController.add(_user = user);
    return user;
  }

  @override
  Future<void> logout() {
    _localProvider.deleteToken();
    _userController.add(_user = const User.unauthenticated());
    return Future<void>.value();
  }

  @override
  Future<void> delete() async {
    await _networkProvider.delete();
    _localProvider.deleteToken();
    _userController.add(_user = const User.unauthenticated());
  }
}
