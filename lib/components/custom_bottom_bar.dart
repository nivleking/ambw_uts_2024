import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCustomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;
  const MyCustomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      selectedItemColor: Colors.white,
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
            FontAwesomeIcons.mapLocationDot,
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
    );
  }
}
