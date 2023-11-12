import '../../cart/data/cart_repository.dart';
import '../../categories/data/categories_repository.dart';
import '../../medicines/data/medicines_repository.dart';
import '../../symptoms/data/symptoms_repository.dart';

import '../../authentication/data/authentication_repository.dart';

abstract interface class Dependencies {
  /// Authentication repository
  abstract final IAuthenticationRepository authenticationRepository;
  abstract final ICategroiesRepository categroiesRepository;
  abstract final IMedicinesRepository medicinesRepository;
  abstract final ISymptomsRepository symptomsRepository;
  abstract final ICartRepository cartRepository;
}
