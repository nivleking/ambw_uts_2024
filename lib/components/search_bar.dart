import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
    );
  }
}
