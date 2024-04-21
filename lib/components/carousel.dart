import 'dart:async';

import 'package:flutter/material.dart';

class MyCarousel extends StatefulWidget {
  const MyCarousel({Key? key}) : super(key: key);

  @override
  _MyCarouselState createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  final PageController _controller = PageController();
  int _currentPage = 0;
  Timer? _timer;

  List<Map<String, String>> images = [
    {
      "path": "assets/images/kfc.jpeg",
      "title": "KFC",
      "places": "10 Places",
    },
    {
      "path": "assets/images/mcd.jpg",
      "title": "McDonalds",
      "places": "34 Places",
    },
    {
      "path": "assets/images/tacobell.jpg",
      "title": "Taco Bell",
      "places": "12 Places"
    },
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _controller.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 700),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          width: MediaQuery.of(context).size.width,
          height: 180,
          child: PageView.builder(
            controller: _controller,
            itemCount: images.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      images[index]["path"]!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: const LinearGradient(
                        colors: [Colors.transparent, Colors.black54],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            bottom: 16.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                images[_currentPage]
                    ["title"]!, // Display the title of the current image
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                images[_currentPage]
                    ["places"]!, // Display the place count of the current image
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 8,
          right: 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: List.generate(images.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(
                  right: 12,
                  bottom: 12,
                ),
                child: Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index ? Colors.white : Colors.grey,
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
