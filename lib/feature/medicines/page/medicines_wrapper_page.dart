import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cart/bloc/cart_bloc.dart';
import '../../dependencies/widget/dependencies_scope.dart';
import '../bloc/medicines/medicines_bloc.dart';

@RoutePage()
class MainWrapperPage extends StatelessWidget implements AutoRouteWrapper {
  const MainWrapperPage({super.key});

  @override
  Widget build(BuildContext context) => const AutoRouter();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => MedicinesBloc(
            repository: DependenciesScope.of(context).medicinesRepository,
          )..add(const MedicinesEvent.init()),
        ),
        BlocProvider(
          create: (context) => CartBloc(
            cartRepository: DependenciesScope.of(context).cartRepository,
          )..add(const CartEvent.init()),
        ),
      ],
      child: this,
    );
  }
}
