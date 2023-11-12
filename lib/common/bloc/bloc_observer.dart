import 'package:bloc/bloc.dart';
import 'package:l/l.dart';

extension on StringBuffer {
  void writeInfo(Object? object) {
    Type? type;

    assert(() {
      type = object.runtimeType;

      return true;
    }());

    write(type ?? object);
  }
}

class AppBlocObserver extends BlocObserver {
  static MainBlocObserver get instance => _singleton ??= createBlocObserver();

  static MainBlocObserver createBlocObserver() => MainBlocObserver();

  static MainBlocObserver? _singleton;
  AppBlocObserver._();
}

class MainBlocObserver extends BlocObserver {
  void _log(void Function(StringBuffer buffer) assemble) {
    final buffer = StringBuffer('AppBlocObserver | ');

    assemble(buffer);

    l.d(buffer.toString());
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);

    _log(
      (buffer) => buffer
        ..write('Created ')
        ..writeInfo(bloc),
    );
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);

    if (event != null) {
      _log(
        (buffer) => buffer
          ..write('Event ')
          ..writeInfo(event)
          ..write(' in ')
          ..write(bloc),
      );
    }
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);

    _log(
      (buffer) => buffer
        ..write('Error ')
        ..writeInfo(error)
        ..write(' in ')
        ..writeInfo(bloc),
    );

    l.e(error, stackTrace);
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);

    _log(
      (buffer) => buffer
        ..write('Closed ')
        ..writeInfo(bloc),
    );
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);

    final Object? currentState = change.currentState;
    final Object? nextState = change.nextState;

    if (currentState != nextState) {
      _log(
        (buffer) => buffer
          ..write('Change in ')
          ..writeInfo(bloc)
          ..write(': ')
          ..write(currentState)
          ..write(' -> ')
          ..write(nextState),
      );
    }
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);

    final Object? event = transition.event;

    if (event != null) {
      _log(
        (buffer) => buffer
          ..write('Transition in ')
          ..writeInfo(bloc)
          ..write(' with ')
          ..writeInfo(event)
          ..write(': ')
          ..write(transition.currentState)
          ..write(' -> ')
          ..write(transition.nextState),
      );
    }
  }
}
