import 'package:deliverrr/components/my_current_location.dart';
import 'package:deliverrr/components/my_description_box.dart';
import 'package:deliverrr/components/my_drawer.dart';
import 'package:deliverrr/components/my_food_tile.dart';
import 'package:deliverrr/components/my_sliver_app_bar.dart';
import 'package:deliverrr/components/my_tab_bar.dart';
import 'package:deliverrr/models/food.dart';
import 'package:deliverrr/models/resturant.dart';
import 'package:deliverrr/pages.dart/food_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // sort a list of food items that belong in a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // retturn list of foods in a given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map(
      (category) {
        List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
        return ListView.builder(
          itemCount: categoryMenu.length,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            // get the individual food
            final food = categoryMenu[index];
            return FoodTile(
              food: food,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodPage(food: food),
                  ),
                );
              },
            );
          },
        );
      },
    ).toList();
  }

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text("H O M E"),
      // ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.surface,

      ///
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                //current location
                const MyCurrentLocation(),

                // description box
                const MyDescriptionBox()
              ],
            ),
          ),
        ],

        ///body
        body: Consumer<Resturant>(builder: (context, resturant, child) {
          return TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(resturant.menu),
          );
        }),
      ),
    );
  }
}
