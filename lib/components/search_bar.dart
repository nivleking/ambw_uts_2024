import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width = constraints.maxWidth;
        double searchBarWidth;
        if (width > 1200) {
          searchBarWidth = width - 40;
        } else {
          searchBarWidth = width - 1;
        }

        return SizedBox(
          width: searchBarWidth,
          child: TextFormField(
            decoration: InputDecoration(
              fillColor: Theme.of(context).colorScheme.surface,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(),
              ),
              hintText: "Search restaurants...",
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.amber,
              ),
              helperMaxLines: 1,
            ),
          ),
        );
      },
    );
  }
}
