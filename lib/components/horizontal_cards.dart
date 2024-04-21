import 'package:ambw_uts_2024/components/restaurant_card.dart';
import 'package:ambw_uts_2024/models/restaurant_model.dart';
import 'package:flutter/material.dart';

class HorizontalCards extends StatelessWidget {
  final String mode;
  const HorizontalCards({
    super.key,
    required this.restaurant,
    required this.mode,
  });

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        itemCount: (mode == "restaurants")
            ? restaurant.getRestaurants().length
            : restaurant.getMeals().length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return MyRestaurantCard(
            restaurant: (mode == "restaurants")
                ? restaurant.getRestaurants()[index]
                : restaurant.getMeals()[index],
          );
        },
      ),
    );
  }
}
