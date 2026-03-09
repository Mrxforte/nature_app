import 'package:flutter/material.dart';
import 'package:nature_app/constants/app_strings.dart';
import 'package:nature_app/data/nature_data.dart';
import 'package:nature_app/screens/main/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => NatureData())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
