import 'package:flutter/material.dart';

class MyCarousel extends StatelessWidget {
  const MyCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          color: Colors.red,
        ),
        Container(
          width: 70,
          height: 20,
          color: Colors.blue,
        ),
      ],
    );
  }
}
