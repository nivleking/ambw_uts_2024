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
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
            ),
        colorScheme: ColorScheme(
          primary: Colors.yellow.shade700,
          primaryContainer: Colors.orange.shade700,
          secondary: Colors.blue,
          secondaryContainer: Colors.blue.shade700,
          surface: Colors.white,
          background: Colors.grey.shade100,
          error: Colors.red,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.black87,
          onBackground: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
      ),
    );
  }
}
