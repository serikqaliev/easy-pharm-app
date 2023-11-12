import 'package:auto_route/auto_route.dart';
import '../model/filter.dart';

@RoutePage()
class MedicinesRouter extends AutoRouter {
  const MedicinesRouter({super.key, this.filter});

  final Filter? filter;
}
