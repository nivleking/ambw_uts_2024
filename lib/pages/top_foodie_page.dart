import 'package:flutter/material.dart';

class TopFoodiePage extends StatefulWidget {
  const TopFoodiePage({super.key});

  @override
  State<TopFoodiePage> createState() => _TopFoodiePageState();
}

class _TopFoodiePageState extends State<TopFoodiePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Coming Soon! Stay Tuned."),
    );
  }
}
