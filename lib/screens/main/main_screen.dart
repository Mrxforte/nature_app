import 'package:flutter/material.dart';
import 'package:nature_app/screens/favorite/favorite_screen.dart';
import 'package:nature_app/screens/home/home_screen.dart';
import 'package:nature_app/screens/profile/profile_screen.dart';
import 'package:nature_app/screens/settings/settings_screen.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final PageController pageController = PageController();
  List<Widget> screens = [
    HomeScreen(),
    FavoriteScreen(),
    SettingsScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller: pageController, children: screens),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (index) {
          pageController.jumpToPage(index);
        },
      ),
    );
  }
}
