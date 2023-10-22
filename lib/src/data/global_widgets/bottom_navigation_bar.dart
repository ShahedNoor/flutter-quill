import 'package:flutter/material.dart';
import 'package:quill/src/data/utils/colors.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  String noteIcon = "assets/images/bottom_navigation_bar_icons/note_icon.png";
  String floatingIcon = "assets/images/bottom_navigation_bar_icons/floating_icon.png";
  String gridIcon = "assets/images/bottom_navigation_bar_icons/grid_icon.png";
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Image.asset(noteIcon), label: "Notes"),
        BottomNavigationBarItem(icon: Image.asset(gridIcon, color: _selectedIndex == 1? CustomColors.blueColor : Colors.grey,), label: "Groups"),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: CustomColors.blueColor,
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
    );
  }
}
