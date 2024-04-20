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
  List<Restaurant> restaurants = [
    Restaurant(
      name: "KFC Broadway",
      address: "122 Queen Street",
      category: "Fried Chicken, American",
      imagePath: "lib/images/fried_chicken.jpg",
      description: "KFC Fried Chicken",
    ),
    Restaurant(
      name: "Greek House",
      address: "23 Queen Street",
      category: "Burritos, Greek",
      imagePath: "lib/images/baked_wings.jpg",
      description: "Greek House",
    ),
    Restaurant(
      name: "Rumah Padang",
      address: "Jl. Sudirman",
      category: "Rice, Indonesia",
      imagePath: "lib/images/rice.jpg",
      description: "Nasi Padang",
    ),
  ];

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
              style: TextStyle(
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
              height: 100, // Set the height of the ListTile
              child: MyRestaurantListTile(
                restaurant: restaurants[index % restaurants.length],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 6.0),
              // child: Divider(
              //   height: 1,
              //   color: Colors.white,
              // ),
            );
          },
        ),
      ),
    );
  }
}
