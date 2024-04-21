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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const MySearchBar(),
            const SizedBox(
              height: 16,
            ),
            const MyCarousel(),
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
    );
  }
}
