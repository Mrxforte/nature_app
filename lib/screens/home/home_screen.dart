import 'package:flutter/material.dart';
import 'package:nature_app/constants/app_strings.dart';
import 'package:nature_app/data/nature_data.dart';
import 'package:nature_app/widgets/nature_list_tile_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final natureItems = context.watch<NatureData>().natureData;

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.homeScreen),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            // Nature List Tile Widget
            return NatureListTileWidget(index: index);
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 4);
          },
          itemCount: natureItems.length,
        ),
      ),
    );
  }
}
