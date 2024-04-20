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
      backgroundColor: Colors.grey[300],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.yellow[700]!, Colors.orange[700]!],
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: const Text(
              "Sydney CBD",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black87,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.yellow.shade800,
            icon: Icon(
              Icons.home,
              size: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.yellow.shade800,
            icon: Icon(
              FontAwesomeIcons.mapMarked,
              size: 20,
            ),
            label: 'Discovery',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.yellow.shade800,
            icon: Icon(
              Icons.bookmark,
              size: 20,
            ),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.yellow.shade800,
            icon: Icon(
              FontAwesomeIcons.trophy,
              size: 20,
            ),
            label: 'Top Foodie',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.yellow.shade800,
            icon: Icon(
              Icons.person,
              size: 20,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
