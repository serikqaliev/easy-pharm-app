import 'package:flutter/material.dart';

import '../../search/widget/widget.dart' show SearchField;
import 'widget.dart' show HelloWidget;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key, this.onTapSearch});

  final VoidCallback? onTapSearch;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 160.0,
      pinned: true,
      toolbarHeight: 70,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        expandedTitleScale: 1,
        title: SafeArea(
          top: true,
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SearchField(
              onTap: onTapSearch,
            ),
          ),
        ),
        background: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.0, 0.8],
              colors: [
                Theme.of(context).primaryColor,
                Theme.of(context).scaffoldBackgroundColor,
              ],
            ),
          ),
          child: const HelloWidget(),
        ),
      ),
    );
  }
}
