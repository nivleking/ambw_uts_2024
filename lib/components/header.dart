import 'package:ambw_uts_2024/pages/most_popular_page.dart';
import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  final String titleHeader;

  const HeaderComponent({Key? key, required this.titleHeader})
      : super(key: key);

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                titleHeader,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
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
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
