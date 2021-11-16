import 'package:flutter/material.dart';
import 'package:language/views/screens/bookmark_screen.dart';
import 'package:language/views/screens/profile_screen.dart';
import 'package:easy_localization/easy_localization.dart';

import 'screens/favorite_screen.dart';
import 'screens/home_screen.dart';

class MainScreen extends StatefulWidget {
   MainScreen({Key? key}) : super(key: key);

  List screens =  [
    HomeScreen(),
    FavoriteScreen(),
    BookMarkScreen(),
    ProfileScreen()
  ];

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
   int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home".tr()),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite".tr()),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: "Saved".tr()),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile".tr()),


        ],
        onTap: (e){
          setState(() {
            _selectedIndex = e;
          });
        },
      ),
      body: widget.screens[_selectedIndex],
    );
  }
}
