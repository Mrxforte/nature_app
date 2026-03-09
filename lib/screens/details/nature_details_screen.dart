import 'package:flutter/material.dart';
import 'package:nature_app/data/nature_data.dart';
import 'package:provider/provider.dart';

class NatureDetailsScreeen extends StatelessWidget {
  const NatureDetailsScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    final nature = context.watch<NatureData>().selectedNature;

    if (nature == null) {
      return const Scaffold(
        body: Center(child: Text('No nature item selected')),
      );
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            expandedHeight: MediaQuery.of(context).size.height * 0.4,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Nature Details'),
              background: Image.network(
                nature.largeImageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nature.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      nature.description,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
