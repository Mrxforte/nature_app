import 'package:flutter/material.dart';
import 'package:nature_app/constants/app_sizes.dart';
import 'package:nature_app/constants/app_strings.dart';
import 'package:nature_app/screens/favorite/favorite_screen.dart';
import 'package:nature_app/screens/home/home_screen.dart';
import 'package:nature_app/screens/profile/profile_screen.dart';
import 'package:nature_app/screens/settings/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    FavoriteScreen(),
    SettingsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: AppSizes.bottomNavIcon),
            label: AppStrings.navHome,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, size: AppSizes.bottomNavIcon),
            label: AppStrings.navFavorites,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: AppSizes.bottomNavIcon),
            label: AppStrings.navSettings,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: AppSizes.bottomNavIcon),
            label: AppStrings.navProfile,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
