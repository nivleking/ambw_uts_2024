import 'package:flutter/material.dart';
import 'package:ambw_uts_2024/components/carousel.dart';
import 'package:ambw_uts_2024/components/restaurant_card.dart';
import 'package:ambw_uts_2024/components/search_bar.dart';
import 'package:ambw_uts_2024/models/restaurant_model.dart';
import 'package:ambw_uts_2024/pages/most_popular_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            MySearchBar(),
            SizedBox(
              height: 16,
            ),
            MyCarousel(),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Most Popular",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const MostPopularPage(
                            titleAppBar: "Popular",
                          )),
                    ),
                  ),
                  child: Text(
                    "See all",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 250,
              child: ListView.builder(
                itemCount: restaurants.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MyRestaurantCard(
                    restaurant: restaurants[index],
                  );
                },
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Meal Deals",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const MostPopularPage(
                            titleAppBar: "Meal",
                          )),
                    ),
                  ),
                  child: Text(
                    "See all",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 250,
              child: ListView.builder(
                itemCount: restaurants.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MyRestaurantCard(
                    restaurant: restaurants[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
