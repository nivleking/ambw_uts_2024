import 'package:ambw_uts_2024/components/custom_app_bar.dart';
import 'package:ambw_uts_2024/pages/bookmark_page.dart';
import 'package:ambw_uts_2024/pages/discovery_page.dart';
import 'package:ambw_uts_2024/pages/home_page.dart';
import 'package:ambw_uts_2024/pages/profile_page.dart';
import 'package:ambw_uts_2024/pages/top_foodie_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      appBar: const MyCustomAppBar(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.black87,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.mapMarked,
              size: 20,
            ),
            label: 'Discovery',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              size: 20,
            ),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.trophy,
              size: 20,
            ),
            label: 'Top Foodie',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 20,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
