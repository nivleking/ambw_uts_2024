import 'package:ambw_uts_2024/intro_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AMBW UTS 2024",
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: ThemeData(
        bottomAppBarTheme: BottomAppBarTheme(
          color: Colors.grey[800],
        ),
      ),
    );
  }
}
