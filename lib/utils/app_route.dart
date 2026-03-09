import 'package:flutter/material.dart';
import 'package:nature_app/screens/details/nature_details_screen.dart';
import 'package:nature_app/screens/favorite/favorite_screen.dart';
import 'package:nature_app/screens/main/main_screen.dart';
import 'package:nature_app/screens/profile/profile_screen.dart';
import 'package:nature_app/screens/settings/settings_screen.dart';

class AppRoute {
  static const String main = '/';
  static const String home = '/home';
  static const String favorites = '/favorites';
  static const String appSettings = '/settings';
  static const String profile = '/profile';
  static const String details = '/details';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case main:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case favorites:
        return MaterialPageRoute(builder: (_) => const FavoriteScreen());
      case appSettings:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case details:
        return MaterialPageRoute(builder: (_) => const NatureDetailsScreeen());
      default:
        return MaterialPageRoute(builder: (_) => const MainScreen());
    }
  }
}
