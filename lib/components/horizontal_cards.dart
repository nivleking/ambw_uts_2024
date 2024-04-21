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
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width = constraints.maxWidth;

        EdgeInsets padding;
        if (width > 1200) {
          padding = const EdgeInsets.symmetric(horizontal: 20);
        } else {
          padding = const EdgeInsets.symmetric(horizontal: 1);
        }

        return Padding(
          padding: padding,
          child: Container(
            height: 300, // Adjust this value as needed
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
          ),
        );
      },
    );
  }
}
