import 'package:ambw_uts_2024/components/custom_app_bar.dart';
import 'package:ambw_uts_2024/components/restaurant_list.dart';
import 'package:ambw_uts_2024/models/restaurant_model.dart';
import 'package:flutter/material.dart';

class MostPopularPage extends StatefulWidget {
  final String titleAppBar;
  const MostPopularPage({
    super.key,
    required this.titleAppBar,
  });

  @override
  State<MostPopularPage> createState() => _MostPopularPageState();
}

class _MostPopularPageState extends State<MostPopularPage> {
  late Restaurant restaurant;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    restaurant = Restaurant.empty();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppBar(
        leadingTitle: widget.titleAppBar,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              child: MyRestaurantListTile(
                restaurant: widget.titleAppBar == "Popular"
                    ? restaurant.getRestaurants()[
                        index % restaurant.getRestaurants().length]
                    : restaurant
                        .getMeals()[index % restaurant.getMeals().length],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 6.0),
            );
          },
        ),
      ),
    );
  }
}
