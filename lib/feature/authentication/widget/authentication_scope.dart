import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../dependencies/widget/dependencies_scope.dart';
import '../bloc/authentication/authentication_bloc.dart';
import '../model/user.dart';

/// {@template authentication_scope}
/// AuthenticationScope widget.
/// {@endtemplate}
class AuthenticationScope extends StatefulWidget {
  /// {@macro authentication_scope}
  const AuthenticationScope({
    required this.signInScreen,
    required this.child,
    super.key,
  });

  /// Sign In screen for unauthenticated users.
  final Widget signInScreen;

  /// The widget below this widget in the tree.
  final Widget child;

  /// User of the authentication scope.
  static User userOf(BuildContext context, {bool listen = true}) => _InheritedAuthenticationScope.of(context, listen: listen).user;

  /// Authentication controller of the authentication scope.
  static AuthenticationBloc blocOf(BuildContext context) => _InheritedAuthenticationScope.of(context, listen: false).bloc;

  @override
  State<AuthenticationScope> createState() => _AuthenticationScopeState();
}

/// State for widget AuthenticationScope.
class _AuthenticationScopeState extends State<AuthenticationScope> {
  late final AuthenticationBloc _authenticationBloc;
  User _user = const User.unauthenticated();

  @override
  void initState() {
    super.initState();
    _authenticationBloc = AuthenticationBloc(
      authenticationRepository: DependenciesScope.of(context).authenticationRepository,
    )
      ..add(const AuthenticationEvent.check())
      ..stream.listen((_) => _onAuthenticationBlocChanged());
  }

  @override
  void dispose() {
    _authenticationBloc.close();
    super.dispose();
  }

  void _onAuthenticationBlocChanged() {
    final user = _authenticationBloc.state.user;
    if (!identical(_user, user)) setState(() => _user = user);
  }

  @override
  Widget build(BuildContext context) => BlocProvider.value(
        value: _authenticationBloc,
        child: _InheritedAuthenticationScope(
          bloc: _authenticationBloc,
          user: _user,
          child: _user.map(
            authenticated: (user) => user.isRegistered ? widget.child : widget.signInScreen,
            unauthenticated: (_) => widget.signInScreen,
          ),
        ),
      );
}

/// Inherited widget for quick access in the element tree.
class _InheritedAuthenticationScope extends InheritedWidget {
  const _InheritedAuthenticationScope({
    required this.bloc,
    required this.user,
    required super.child,
  });

  final AuthenticationBloc bloc;
  final User user;

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  /// For example: `AuthenticationScope.maybeOf(context)`.
  static _InheritedAuthenticationScope? maybeOf(BuildContext context, {bool listen = true}) => listen
      ? context.dependOnInheritedWidgetOfExactType<_InheritedAuthenticationScope>()
      : context.getInheritedWidgetOfExactType<_InheritedAuthenticationScope>();

  static Never _notFoundInheritedWidgetOfExactType() => throw ArgumentError(
        'Out of scope, not found inherited widget '
            'a _InheritedAuthenticationScope of the exact type',
        'out_of_scope',
      );

  /// The state from the closest instance of this class
  /// that encloses the given context.
  /// For example: `AuthenticationScope.of(context)`.
  static _InheritedAuthenticationScope of(BuildContext context, {bool listen = true}) =>
      maybeOf(context, listen: listen) ?? _notFoundInheritedWidgetOfExactType();

  @override
  bool updateShouldNotify(covariant _InheritedAuthenticationScope oldWidget) => !identical(user, oldWidget.user);
}
