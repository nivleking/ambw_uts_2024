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
      backgroundColor: Colors.grey[300],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.yellow[700]!, Colors.orange[700]!],
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              (widget.titleAppBar == "Popular") ? "Most Popular" : "Meal Deals",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
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
