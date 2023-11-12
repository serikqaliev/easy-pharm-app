import 'package:flutter/material.dart';

import '../model/category.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({super.key, required this.category, this.trailing, this.onTap});

  final Category category;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(category.name),
        trailing: trailing,
        onTap: onTap,
      ),
    );
  }
}
