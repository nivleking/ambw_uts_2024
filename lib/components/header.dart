import 'package:ambw_uts_2024/pages/most_popular_page.dart';
import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  final String titleHeader;

  const HeaderComponent({super.key, required this.titleHeader});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleHeader,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) {
                return MostPopularPage(
                  titleAppBar:
                      titleHeader == "Most Popular" ? "Popular" : "Meal",
                );
              }),
            ),
          ),
          child: const Text(
            "See all",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
