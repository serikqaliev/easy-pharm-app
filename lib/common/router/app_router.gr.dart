// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:easy_pharm_app/feature/cart/page/cart_page.dart' as _i2;
import 'package:easy_pharm_app/feature/categories/model/category.dart' as _i17;
import 'package:easy_pharm_app/feature/categories/page/catalog_page.dart'
    as _i3;
import 'package:easy_pharm_app/feature/home/page/home_page.dart' as _i8;
import 'package:easy_pharm_app/feature/home/page/main_page.dart' as _i9;
import 'package:easy_pharm_app/feature/medicines/model/filter.dart' as _i20;
import 'package:easy_pharm_app/feature/medicines/model/medicine.dart' as _i21;
import 'package:easy_pharm_app/feature/medicines/page/all_medicines_page.dart'
    as _i1;
import 'package:easy_pharm_app/feature/medicines/page/choose_category_page.dart'
    as _i4;
import 'package:easy_pharm_app/feature/medicines/page/choose_symptoms_page.dart'
    as _i5;
import 'package:easy_pharm_app/feature/medicines/page/create_medicine_page.dart'
    as _i6;
import 'package:easy_pharm_app/feature/medicines/page/filter_page.dart' as _i7;
import 'package:easy_pharm_app/feature/medicines/page/medicine_page.dart'
    as _i11;
import 'package:easy_pharm_app/feature/medicines/page/medicines_wrapper_page.dart'
    as _i10;
import 'package:easy_pharm_app/feature/medicines/page/result_page.dart' as _i14;
import 'package:easy_pharm_app/feature/medicines/router/medicines_router.dart'
    as _i12;
import 'package:easy_pharm_app/feature/profile/page/profile_page.dart' as _i13;
import 'package:easy_pharm_app/feature/symptoms/model/symptom.dart' as _i18;
import 'package:easy_pharm_app/feature/symptoms/page/symptoms_page.dart'
    as _i15;
import 'package:flutter/cupertino.dart' as _i22;
import 'package:flutter/material.dart' as _i19;

abstract class $AppRouter extends _i16.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    AllMedicinesRoute.name: (routeData) {
      final args = routeData.argsAs<AllMedicinesRouteArgs>(
          orElse: () => const AllMedicinesRouteArgs());
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AllMedicinesPage(
          key: args.key,
          filter: args.filter,
        ),
      );
    },
    CartRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CartPage(),
      );
    },
    CatalogRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CatalogPage(),
      );
    },
    ChooseCategoryRoute.name: (routeData) {
      final args = routeData.argsAs<ChooseCategoryRouteArgs>(
          orElse: () => const ChooseCategoryRouteArgs());
      return _i16.AutoRoutePage<_i17.Category?>(
        routeData: routeData,
        child: _i4.ChooseCategoryPage(
          key: args.key,
          category: args.category,
        ),
      );
    },
    ChooseSymptomsRoute.name: (routeData) {
      final args = routeData.argsAs<ChooseSymptomsRouteArgs>();
      return _i16.AutoRoutePage<List<_i18.Symptom>>(
        routeData: routeData,
        child: _i5.ChooseSymptomsPage(
          key: args.key,
          initialSymptoms: args.initialSymptoms,
        ),
      );
    },
    CreateMedicineRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.CreateMedicinePage(),
      );
    },
    FilterRoute.name: (routeData) {
      final args = routeData.argsAs<FilterRouteArgs>(
          orElse: () => const FilterRouteArgs());
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.FilterPage(
          key: args.key,
          initialFilter: args.initialFilter,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.HomePage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.MainPage(),
      );
    },
    MainWrapperRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.WrappedRoute(child: const _i10.MainWrapperPage()),
      );
    },
    MedicineRoute.name: (routeData) {
      final args = routeData.argsAs<MedicineRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.MedicinePage(
          key: args.key,
          medicine: args.medicine,
        ),
      );
    },
    MedicinesRouter.name: (routeData) {
      final args = routeData.argsAs<MedicinesRouterArgs>(
          orElse: () => const MedicinesRouterArgs());
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.MedicinesRouter(
          key: args.key,
          filter: args.filter,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.ProfilePage(),
      );
    },
    ResultRoute.name: (routeData) {
      final args = routeData.argsAs<ResultRouteArgs>(
          orElse: () => const ResultRouteArgs());
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.ResultPage(
          key: args.key,
          filter: args.filter,
        ),
      );
    },
    SymptomsRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.SymptomsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AllMedicinesPage]
class AllMedicinesRoute extends _i16.PageRouteInfo<AllMedicinesRouteArgs> {
  AllMedicinesRoute({
    _i19.Key? key,
    _i20.Filter? filter,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          AllMedicinesRoute.name,
          args: AllMedicinesRouteArgs(
            key: key,
            filter: filter,
          ),
          initialChildren: children,
        );

  static const String name = 'AllMedicinesRoute';

  static const _i16.PageInfo<AllMedicinesRouteArgs> page =
      _i16.PageInfo<AllMedicinesRouteArgs>(name);
}

class AllMedicinesRouteArgs {
  const AllMedicinesRouteArgs({
    this.key,
    this.filter,
  });

  final _i19.Key? key;

  final _i20.Filter? filter;

  @override
  String toString() {
    return 'AllMedicinesRouteArgs{key: $key, filter: $filter}';
  }
}

/// generated route for
/// [_i2.CartPage]
class CartRoute extends _i16.PageRouteInfo<void> {
  const CartRoute({List<_i16.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CatalogPage]
class CatalogRoute extends _i16.PageRouteInfo<void> {
  const CatalogRoute({List<_i16.PageRouteInfo>? children})
      : super(
          CatalogRoute.name,
          initialChildren: children,
        );

  static const String name = 'CatalogRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ChooseCategoryPage]
class ChooseCategoryRoute extends _i16.PageRouteInfo<ChooseCategoryRouteArgs> {
  ChooseCategoryRoute({
    _i19.Key? key,
    _i17.Category? category,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          ChooseCategoryRoute.name,
          args: ChooseCategoryRouteArgs(
            key: key,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'ChooseCategoryRoute';

  static const _i16.PageInfo<ChooseCategoryRouteArgs> page =
      _i16.PageInfo<ChooseCategoryRouteArgs>(name);
}

class ChooseCategoryRouteArgs {
  const ChooseCategoryRouteArgs({
    this.key,
    this.category,
  });

  final _i19.Key? key;

  final _i17.Category? category;

  @override
  String toString() {
    return 'ChooseCategoryRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i5.ChooseSymptomsPage]
class ChooseSymptomsRoute extends _i16.PageRouteInfo<ChooseSymptomsRouteArgs> {
  ChooseSymptomsRoute({
    _i19.Key? key,
    required List<_i18.Symptom> initialSymptoms,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          ChooseSymptomsRoute.name,
          args: ChooseSymptomsRouteArgs(
            key: key,
            initialSymptoms: initialSymptoms,
          ),
          initialChildren: children,
        );

  static const String name = 'ChooseSymptomsRoute';

  static const _i16.PageInfo<ChooseSymptomsRouteArgs> page =
      _i16.PageInfo<ChooseSymptomsRouteArgs>(name);
}

class ChooseSymptomsRouteArgs {
  const ChooseSymptomsRouteArgs({
    this.key,
    required this.initialSymptoms,
  });

  final _i19.Key? key;

  final List<_i18.Symptom> initialSymptoms;

  @override
  String toString() {
    return 'ChooseSymptomsRouteArgs{key: $key, initialSymptoms: $initialSymptoms}';
  }
}

/// generated route for
/// [_i6.CreateMedicinePage]
class CreateMedicineRoute extends _i16.PageRouteInfo<void> {
  const CreateMedicineRoute({List<_i16.PageRouteInfo>? children})
      : super(
          CreateMedicineRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateMedicineRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i7.FilterPage]
class FilterRoute extends _i16.PageRouteInfo<FilterRouteArgs> {
  FilterRoute({
    _i19.Key? key,
    _i20.Filter? initialFilter,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          FilterRoute.name,
          args: FilterRouteArgs(
            key: key,
            initialFilter: initialFilter,
          ),
          initialChildren: children,
        );

  static const String name = 'FilterRoute';

  static const _i16.PageInfo<FilterRouteArgs> page =
      _i16.PageInfo<FilterRouteArgs>(name);
}

class FilterRouteArgs {
  const FilterRouteArgs({
    this.key,
    this.initialFilter,
  });

  final _i19.Key? key;

  final _i20.Filter? initialFilter;

  @override
  String toString() {
    return 'FilterRouteArgs{key: $key, initialFilter: $initialFilter}';
  }
}

/// generated route for
/// [_i8.HomePage]
class HomeRoute extends _i16.PageRouteInfo<void> {
  const HomeRoute({List<_i16.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i9.MainPage]
class MainRoute extends _i16.PageRouteInfo<void> {
  const MainRoute({List<_i16.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i10.MainWrapperPage]
class MainWrapperRoute extends _i16.PageRouteInfo<void> {
  const MainWrapperRoute({List<_i16.PageRouteInfo>? children})
      : super(
          MainWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainWrapperRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i11.MedicinePage]
class MedicineRoute extends _i16.PageRouteInfo<MedicineRouteArgs> {
  MedicineRoute({
    _i19.Key? key,
    required _i21.Medicine medicine,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          MedicineRoute.name,
          args: MedicineRouteArgs(
            key: key,
            medicine: medicine,
          ),
          initialChildren: children,
        );

  static const String name = 'MedicineRoute';

  static const _i16.PageInfo<MedicineRouteArgs> page =
      _i16.PageInfo<MedicineRouteArgs>(name);
}

class MedicineRouteArgs {
  const MedicineRouteArgs({
    this.key,
    required this.medicine,
  });

  final _i19.Key? key;

  final _i21.Medicine medicine;

  @override
  String toString() {
    return 'MedicineRouteArgs{key: $key, medicine: $medicine}';
  }
}

/// generated route for
/// [_i12.MedicinesRouter]
class MedicinesRouter extends _i16.PageRouteInfo<MedicinesRouterArgs> {
  MedicinesRouter({
    _i22.Key? key,
    _i20.Filter? filter,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          MedicinesRouter.name,
          args: MedicinesRouterArgs(
            key: key,
            filter: filter,
          ),
          initialChildren: children,
        );

  static const String name = 'MedicinesRouter';

  static const _i16.PageInfo<MedicinesRouterArgs> page =
      _i16.PageInfo<MedicinesRouterArgs>(name);
}

class MedicinesRouterArgs {
  const MedicinesRouterArgs({
    this.key,
    this.filter,
  });

  final _i22.Key? key;

  final _i20.Filter? filter;

  @override
  String toString() {
    return 'MedicinesRouterArgs{key: $key, filter: $filter}';
  }
}

/// generated route for
/// [_i13.ProfilePage]
class ProfileRoute extends _i16.PageRouteInfo<void> {
  const ProfileRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i14.ResultPage]
class ResultRoute extends _i16.PageRouteInfo<ResultRouteArgs> {
  ResultRoute({
    _i19.Key? key,
    _i20.Filter? filter,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          ResultRoute.name,
          args: ResultRouteArgs(
            key: key,
            filter: filter,
          ),
          initialChildren: children,
        );

  static const String name = 'ResultRoute';

  static const _i16.PageInfo<ResultRouteArgs> page =
      _i16.PageInfo<ResultRouteArgs>(name);
}

class ResultRouteArgs {
  const ResultRouteArgs({
    this.key,
    this.filter,
  });

  final _i19.Key? key;

  final _i20.Filter? filter;

  @override
  String toString() {
    return 'ResultRouteArgs{key: $key, filter: $filter}';
  }
}

/// generated route for
/// [_i15.SymptomsPage]
class SymptomsRoute extends _i16.PageRouteInfo<void> {
  const SymptomsRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SymptomsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SymptomsRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}
