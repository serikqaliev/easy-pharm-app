// ignore_for_file: invalid_internal_annotation, unnecessary_import, depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:easy_pharm_app/feature/cart/data/cart_repository.dart';
import 'package:easy_pharm_app/feature/medicines/data/medicines_repository.dart';
import 'package:easy_pharm_app/feature/symptoms/data/symptoms_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:l/l.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/bloc/bloc_observer.dart';
import '../../../common/interceptor/token_interceptor.dart';
import '../../authentication/data/authentication_local_provider.dart';
import '../../authentication/data/authentication_network_provider.dart';
import '../../authentication/data/authentication_repository.dart';
import '../../cart/data/cart_network_provider.dart';
import '../../categories/data/categories_network_provider.dart';
import '../../categories/data/categories_repository.dart';
import '../../medicines/data/medicines_network_provider.dart';
import '../../symptoms/data/symptoms_network_provider.dart';
import '../model/dependencies.dart';

typedef _InitializationStep = FutureOr<void> Function(_MutableDependencies dependencies);

class _MutableDependencies implements Dependencies {
  @override
  late IAuthenticationRepository authenticationRepository;
  @override
  late ICategroiesRepository categroiesRepository;
  @override
  late IMedicinesRepository medicinesRepository;
  @override
  late ISymptomsRepository symptomsRepository;
  @override
  late ICartRepository cartRepository;
}

@internal
mixin InitializeDependencies {
  /// Initializes the app and returns a [Dependencies] object
  @protected
  Future<Dependencies> $initializeDependencies({
    void Function(int progress, String message)? onProgress,
  }) async {
    final steps = _initializationSteps;
    final dependencies = _MutableDependencies();
    final totalSteps = steps.length;
    for (var currentStep = 0; currentStep < totalSteps; currentStep++) {
      final step = steps[currentStep];
      final percent = (currentStep * 100 ~/ totalSteps).clamp(0, 100);
      onProgress?.call(percent, step.$1);
      l.v6('Initialization | $currentStep/$totalSteps ($percent%) | "${step.$1}"');
      await step.$2(dependencies);
    }
    return dependencies;
  }

  List<(String, _InitializationStep)> get _initializationSteps {
    return <(String, _InitializationStep)>[
      (
        'Observer state managment',
        (_) => Bloc.observer = AppBlocObserver.instance,
      ),
      (
        'Initializing analytics',
        (_) {},
      ),
      (
        'Log app open',
        (_) {},
      ),
      (
        'Get remote config',
        (_) {},
      ),
      (
        'Authentication repository',
        (dependencies) async {
          final preferences = await SharedPreferences.getInstance();
          final localProvider = AuthenticationLocalProvider(preferences: preferences);

          final dio = Dio()..interceptors.addAll([TokenInterceptor(onGetToken: () => localProvider.token)]);
          final networkProvider = AuthenticationNetworkProvider(dio);

          dependencies.authenticationRepository = AuthenticationRepository(
            networkProvider: networkProvider,
            localProvider: localProvider,
          );
        },
      ),
      (
        'Categories repository',
        (dependencies) async {
          final preferences = await SharedPreferences.getInstance();
          final localProvider = AuthenticationLocalProvider(preferences: preferences);

          final dio = Dio()..interceptors.addAll([TokenInterceptor(onGetToken: () => localProvider.token)]);
          final networkProvider = CategoriesNetworkProvider(dio);

          dependencies.categroiesRepository = CategoriesRepository(networkProvider: networkProvider);
        },
      ),
      (
        'Medicines repository',
        (dependencies) async {
          final preferences = await SharedPreferences.getInstance();
          final localProvider = AuthenticationLocalProvider(preferences: preferences);

          final dio = Dio()..interceptors.addAll([TokenInterceptor(onGetToken: () => localProvider.token)]);
          final networkProvider = MedicinesNetworkProvider(dio);

          dependencies.medicinesRepository = MedicinesRepository(networkProvider: networkProvider);
        },
      ),
      (
        'Symptoms repository',
        (dependencies) async {
          final preferences = await SharedPreferences.getInstance();
          final localProvider = AuthenticationLocalProvider(preferences: preferences);

          final dio = Dio()..interceptors.addAll([TokenInterceptor(onGetToken: () => localProvider.token)]);
          final networkProvider = SymptomsNetworkProvider(dio);

          dependencies.symptomsRepository = SymptomsRepository(networkProvider: networkProvider);
        },
      ),
      (
        'Cart repository',
        (dependencies) async {
          final preferences = await SharedPreferences.getInstance();
          final localProvider = AuthenticationLocalProvider(preferences: preferences);

          final dio = Dio()..interceptors.addAll([TokenInterceptor(onGetToken: () => localProvider.token)]);
          final networkProvider = CartNetworkProvider(dio);

          dependencies.cartRepository = CartRepository(networkProvider: networkProvider);
        },
      )
    ];
  }
}
