import 'package:ambw_uts_2024/components/custom_app_bar.dart';
import 'package:ambw_uts_2024/components/custom_bottom_bar.dart';
import 'package:ambw_uts_2024/pages/bookmark_page.dart';
import 'package:ambw_uts_2024/pages/discovery_page.dart';
import 'package:ambw_uts_2024/pages/home_page.dart';
import 'package:ambw_uts_2024/pages/profile_page.dart';
import 'package:ambw_uts_2024/pages/top_foodie_page.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _HomePageState();
}

class _HomePageState extends State<StartPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    DiscoveryPage(),
    BookMarkPage(),
    TopFoodiePage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: _widgetOptions.elementAt(_selectedIndex),
      appBar: const MyCustomAppBar(
        leadingTitle: "Sydney CBD",
      ),
      bottomNavigationBar: MyCustomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
