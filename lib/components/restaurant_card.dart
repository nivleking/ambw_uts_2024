import 'package:ambw_uts_2024/models/restaurant_model.dart';
import 'package:flutter/material.dart';

class MyRestaurantCard extends StatelessWidget {
  // final void Function()? onTap;
  final Restaurant restaurant;
  const MyRestaurantCard({
    super.key,
    required this.restaurant,
    // required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print("123");
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        width: MediaQuery.of(context).size.width * 0.48,
        // height: MediaQuery.of(context).size.height * 0.2,
        child: Card(
          color: Colors.white,
          borderOnForeground: true,
          elevation: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                child: Image.asset(
                  restaurant.imagePath,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      maxLines: 1,
                    ),
                    Text(
                      restaurant.address,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      maxLines: 1,
                    ),
                    Text(
                      restaurant.category,
                      style: TextStyle(
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
