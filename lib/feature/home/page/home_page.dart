import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../common/widget/secondary_button.dart';
import '../widget/widget.dart' show HomeAppBar, RecommendedMedicinesWidget;

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        top: false,
        child: _HomePageBody(),
      ),
    );
  }
}

class _HomePageBody extends StatefulWidget {
  const _HomePageBody();

  @override
  State<_HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<_HomePageBody> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      controller: _scrollController,
      slivers: [
        HomeAppBar(
          onTapSearch: () => _scrollController.animateTo(0, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomButton.secondary(
                        onPressed: () => context.tabsRouter.setActiveIndex(1),
                        icon: Icons.list_alt_outlined,
                        label: 'Каталог',
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: CustomButton.secondary(
                        onPressed: () {},
                        icon: Icons.local_hospital_outlined,
                        label: 'Симптомы',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton.secondary(
                        onPressed: () {},
                        icon: Icons.favorite,
                        label: 'Избранное',
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: CustomButton.secondary(
                        onPressed: () => context.tabsRouter.setActiveIndex(2),
                        icon: Icons.shopping_cart_outlined,
                        label: 'Заказы',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: RecommendedMedicinesWidget(),
        ),
      ],
    );
  }
}
