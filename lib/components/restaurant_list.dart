import 'package:ambw_uts_2024/models/restaurant_model.dart';
import 'package:flutter/material.dart';

class MyRestaurantListTile extends StatelessWidget {
  final Restaurant restaurant;
  const MyRestaurantListTile({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print("Clicked");
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                restaurant.imagePath,
                height: 100,
                width: 140,
                fit: BoxFit.fitHeight,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  top: 8.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      restaurant.description,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),
          ],
        ),
      ),
    );
    // ListTile(
    //   tileColor: Colors.white,
    //   leading: ClipRRect(
    //     child: Image.asset(
    //       restaurant.imagePath,
    //       width: 100,
    //       fit: BoxFit.cover,
    //     ),
    //   ),
    //   title: Text(
    //     restaurant.name,
    //     style: TextStyle(
    //       fontSize: 18,
    //     ),
    //   ),
    //   subtitle: Text(
    //     restaurant.description,
    //     style: TextStyle(
    //       fontSize: 16,
    //       color: Colors.grey[700],
    //     ),
    //   ),
    //   trailing: Icon(
    //     Icons.arrow_forward_ios,
    //     color: Colors.grey,
    //     size: 16, // Increase the size of the icon
    //   ),
    // );
  }
}
