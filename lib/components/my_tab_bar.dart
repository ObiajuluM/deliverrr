import 'package:deliverrr/models/food.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({
    super.key,
    required this.tabController,
  });

  List<Tab> _buildCatergoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        height: 25,
        text: category.toString().split(".").last.toUpperCase(),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        tabAlignment: TabAlignment.center,
        isScrollable: true,
        controller: tabController,
        labelStyle: const TextStyle(
          fontSize: 8,
          fontWeight: FontWeight.w600,
        ),
        // dividerColor: Colors.transparent,
        tabs: _buildCatergoryTabs(),
      ),
    );
  }
}
