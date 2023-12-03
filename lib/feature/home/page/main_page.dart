import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../common/router/app_router.gr.dart';
import '../../authentication/widget/authentication_scope.dart';
import '../widget/bottom_nav_bar.dart';

typedef BottomNavItem = (PageRouteInfo, BottomNavigationBarItem);

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool get isStaff => AuthenticationScope.userOf(context).isStaff;

  List<BottomNavItem> get items => [
        (
          HomeRoute(children: [FilterRoute()]),
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Главная'),
        ),
        (
          const CatalogRoute(),
          const BottomNavigationBarItem(icon: Icon(Icons.medication_rounded), label: 'Категории'),
        ),
        if (isStaff)
          (
            AllMedicinesRoute(),
            const BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Лекарства'),
          ),
        (
          const SymptomsRoute(),
          const BottomNavigationBarItem(icon: Icon(Icons.medical_information), label: 'Симптомы'),
        ),
        if (!isStaff)
          (
            const CartRoute(),
            const BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Корзина'),
          ),
      ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: items.map((e) => e.$1).toList(),
      bottomNavigationBuilder: (context, router) => BottomNavBar(
        index: router.activeIndex,
        onTap: router.setActiveIndex,
        items: items.map((e) => e.$2).toList(),
      ),
    );
  }
}
