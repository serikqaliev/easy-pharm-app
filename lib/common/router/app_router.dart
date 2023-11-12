import 'package:auto_route/auto_route.dart';
import '../../feature/medicines/page/choose_category_page.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainWrapperRoute.page,
          path: '/',
          children: [
            AutoRoute(
              page: MainRoute.page,
              path: '',
              children: [
                AutoRoute(page: HomeRoute.page, initial: true),
                AutoRoute(page: CatalogRoute.page),
                AutoRoute(page: SymptomsRoute.page),
                AutoRoute(page: CartRoute.page),
                AutoRoute(page: ProfileRoute.page),
                AutoRoute(page: AllMedicinesRoute.page),
              ],
            ),
            AutoRoute(page: CreateMedicineRoute.page),
            AutoRoute(page: MedicineRoute.page),
            AutoRoute(page: ChooseCategoryRoute.page),
            AutoRoute(page: ChooseSymptomsRoute.page),
            AutoRoute(page: ResultRoute.page),
            AutoRoute(page: FilterRoute.page, fullscreenDialog: true),
          ],
        ),
      ];
}
