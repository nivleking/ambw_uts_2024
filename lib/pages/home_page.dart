import 'package:ambw_uts_2024/components/header.dart';
import 'package:ambw_uts_2024/components/horizontal_cards.dart';
import 'package:flutter/material.dart';
import 'package:ambw_uts_2024/components/carousel.dart';
import 'package:ambw_uts_2024/components/search_bar.dart';
import 'package:ambw_uts_2024/models/restaurant_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Restaurant restaurant;

  @override
  void initState() {
    super.initState();
    restaurant = Restaurant.empty();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 16.0,
              left: 16.0,
              right: 16.0,
            ),
            child: Column(
              children: [
                MySearchBar(),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          const MyCarousel(),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 16.0,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                const HeaderComponent(
                  titleHeader: "Most Popular",
                ),
                HorizontalCards(
                  restaurant: restaurant,
                  mode: "restaurants",
                ),
                const SizedBox(
                  height: 16,
                ),
                const HeaderComponent(
                  titleHeader: "Meal Deals",
                ),
                HorizontalCards(
                  restaurant: restaurant,
                  mode: "meals",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
