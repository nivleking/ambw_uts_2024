import 'package:ambw_uts_2024/models/restaurant_model.dart';
import 'package:flutter/material.dart';

class MyRestaurantCard extends StatelessWidget {
  final Restaurant restaurant;

  const MyRestaurantCard({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double containerWidth;
    double containerHeight;
    if (width > 1200) {
      containerWidth = 400;
      containerHeight = 200;
    } else if (width > 800) {
      containerWidth = 350;
      containerHeight = 150;
    } else {
      containerWidth = 200;
      containerHeight = 20;
    }

    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        width: containerWidth,
        height: containerHeight,
        child: Card(
          color: Theme.of(context).colorScheme.surface,
          borderOnForeground: true,
          elevation: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Image.asset(
                  restaurant.imagePath,
                  fit: BoxFit.cover,
                  height: 150,
                  width: containerWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      maxLines: 1,
                    ),
                    Text(
                      restaurant.address,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                      maxLines: 1,
                    ),
                    Text(
                      restaurant.category,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
