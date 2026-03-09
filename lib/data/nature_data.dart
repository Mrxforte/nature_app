import 'package:flutter/material.dart';
import 'package:nature_app/models/nature_model.dart';

class NatureData with ChangeNotifier {
  final List<NatureModel> _natureData = [
    NatureModel(
      name: 'Forest',
      date: DateTime(2026, 1, 1),
      description:
          'A forest is a broad ecosystem filled with trees, shrubs, fungi, and countless small forms of life that depend on each other. It helps regulate climate by absorbing carbon dioxide, protecting soil, and maintaining humidity in surrounding regions. Forests are also home to rich biodiversity, from insects and birds to mammals and rare plant species. They protect watersheds, reduce flood risk, and provide natural resources that many communities rely on. Healthy forests are critical for long-term ecological balance and climate resilience.',
      smallImageUrl: 'https://loremflickr.com/400/300/forest',
      largeImageUrl: 'https://loremflickr.com/1200/800/forest',
      isFavorite: false,
    ),
    NatureModel(
      name: 'Mountain',
      date: DateTime(2026, 2, 1),
      description:
          'A mountain is a massive landform that rises steeply above nearby terrain and often creates dramatic weather patterns. Higher elevations usually have cooler temperatures, thinner air, and unique vegetation zones that change with altitude. Mountains are essential freshwater sources because snow and glaciers stored at their peaks feed rivers below. They also create natural barriers that influence wind, rainfall, and local climate. Many cultures view mountains as sacred landscapes and important symbols of endurance.',
      smallImageUrl: 'https://loremflickr.com/400/300/mountain',
      largeImageUrl: 'https://loremflickr.com/1200/800/mountain',
      isFavorite: false,
    ),
    NatureModel(
      name: 'River',
      date: DateTime(2026, 3, 1),
      description:
          'A river is a continuous natural stream of water that moves across land toward seas, lakes, or other rivers. Along its path, it shapes valleys, transports sediments, and nourishes floodplains that support farming and wildlife. Rivers are lifelines for human civilization, providing drinking water, transportation routes, and cultural identity. Their seasonal flow supports fisheries, wetlands, and fertile agricultural systems. Protecting river ecosystems helps maintain water quality and biodiversity across large regions.',
      smallImageUrl: 'https://loremflickr.com/400/300/river',
      largeImageUrl: 'https://loremflickr.com/1200/800/river',
      isFavorite: false,
    ),
    NatureModel(
      name: 'Beach',
      date: DateTime(2026, 4, 1),
      description:
          'A beach is a dynamic shoreline of sand, pebbles, or shells formed by waves, currents, and tides over long periods. It is constantly changing, with winds and water reshaping dunes and coastal edges from season to season. Beaches provide habitat for birds and marine life while also offering spaces for recreation and relaxation. Coastal vegetation and dunes can act as natural barriers against storms and erosion. Responsible tourism and cleanup efforts are important to keep beach ecosystems healthy.',
      smallImageUrl: 'https://loremflickr.com/400/300/beach',
      largeImageUrl: 'https://loremflickr.com/1200/800/beach',
      isFavorite: false,
    ),
    NatureModel(
      name: 'Desert',
      date: DateTime(2026, 5, 1),
      description:
          'A desert is a dry region that receives very little rainfall and experiences strong temperature swings between day and night. Despite harsh conditions, many specialized plants and animals thrive there by storing water and avoiding heat. Deserts feature striking landscapes such as dunes, rocky plateaus, and salt flats shaped by wind erosion. Some deserts bloom rapidly after rare rain, showing short but spectacular bursts of plant life. These regions are sensitive environments where small disturbances can have long-lasting effects.',
      smallImageUrl: 'https://loremflickr.com/400/300/desert',
      largeImageUrl: 'https://loremflickr.com/1200/800/desert',
      isFavorite: false,
    ),
    NatureModel(
      name: 'Lake',
      date: DateTime(2026, 6, 1),
      description:
          'A lake is a body of standing water enclosed by land and often fed by rainfall, rivers, or underground springs. Lakes can range from crystal-clear alpine basins to vast freshwater systems that influence local weather. They support fish, birds, and aquatic plants while serving as important water reserves for nearby communities. Lakes also moderate surrounding temperatures and create valuable habitats for migratory species. Sustainable management is important to prevent pollution, algal blooms, and loss of aquatic biodiversity.',
      smallImageUrl: 'https://loremflickr.com/400/300/lake',
      largeImageUrl: 'https://loremflickr.com/1200/800/lake',
      isFavorite: false,
    ),
    NatureModel(
      name: 'Waterfall',
      date: DateTime(2026, 7, 1),
      description:
          'A waterfall forms where flowing water suddenly drops over a steep cliff or layered rock formations. The constant force of water carves the landscape, creating pools, mist zones, and deep gorges over time. Waterfalls are powerful ecological microhabitats where moisture-loving plants and mosses flourish. The fine spray in surrounding areas can support unique ferns and insects that do not thrive elsewhere. Many waterfalls are also important cultural landmarks and ecotourism destinations.',
      smallImageUrl: 'https://loremflickr.com/400/300/waterfall',
      largeImageUrl: 'https://loremflickr.com/1200/800/waterfall',
      isFavorite: false,
    ),
    NatureModel(
      name: 'Canyon',
      date: DateTime(2026, 8, 1),
      description:
          'A canyon is a deep, narrow valley with steep walls, usually carved by a river over millions of years. Layered rock faces reveal geological history, preserving evidence of ancient climates and environments. Canyons often host unique ecosystems because sunlight, shade, and moisture vary dramatically from rim to floor. Their cliffs, ledges, and riverbanks provide habitats for specialized birds, reptiles, and plants. Canyon systems also attract scientific study because they expose long records of Earth history.',
      smallImageUrl: 'https://loremflickr.com/400/300/canyon',
      largeImageUrl: 'https://loremflickr.com/1200/800/canyon',
      isFavorite: false,
    ),
    NatureModel(
      name: 'Glacier',
      date: DateTime(2026, 9, 1),
      description:
          'A glacier is a long-lasting mass of compacted ice that slowly flows under gravity like a frozen river. As glaciers move, they grind rock, shape valleys, and leave behind moraines that record their past extent. They store enormous amounts of freshwater, making them vital indicators of climate change. Seasonal meltwater from glaciers supports rivers used by wildlife and people far downstream. Monitoring glacier retreat helps scientists understand the pace and impact of global warming.',
      smallImageUrl: 'https://loremflickr.com/400/300/glacier',
      largeImageUrl: 'https://loremflickr.com/1200/800/glacier',
      isFavorite: false,
    ),
    NatureModel(
      name: 'Volcano',
      date: DateTime(2026, 10, 1),
      description:
          'A volcano is an opening in Earths crust where magma, ash, and gases can erupt from below the surface. Volcanic activity can build mountains, create new land, and enrich soils with minerals after eruptions. Although hazardous, volcanoes also reveal how energy and materials circulate inside our planet. Different eruption styles, from gentle lava flows to explosive ash events, shape landscapes in unique ways. Volcanic regions are closely monitored to reduce risk for nearby communities.',
      smallImageUrl: 'https://loremflickr.com/400/300/volcano',
      largeImageUrl: 'https://loremflickr.com/1200/800/volcano',
      isFavorite: false,
    ),
    NatureModel(
      name: 'Savanna',
      date: DateTime(2026, 11, 1),
      description:
          'A savanna is a tropical or subtropical grassland with scattered trees and a seasonal cycle of rain and drought. Fire and grazing animals help maintain its open structure, preventing dense forests from taking over. These landscapes support iconic wildlife migrations and complex food webs across wide open plains. Predators and herbivores in savannas are tightly linked through seasonal water and food availability. Conservation in these regions often focuses on habitat connectivity and anti-poaching efforts.',
      smallImageUrl: 'https://loremflickr.com/400/300/savanna',
      largeImageUrl: 'https://loremflickr.com/1200/800/savanna',
      isFavorite: false,
    ),
    NatureModel(
      name: 'Tundra',
      date: DateTime(2026, 12, 1),
      description:
          'A tundra is a cold biome where low temperatures and short summers limit tree growth and keep vegetation low to the ground. Much of its soil is underlain by permafrost, which strongly shapes drainage and plant life. Even with extreme conditions, tundra ecosystems support hardy species adapted to wind, cold, and brief growing seasons. Migratory birds, arctic mammals, and specialized mosses depend on this fragile environment. Warming temperatures threaten tundra stability by thawing permafrost and altering habitats.',
      smallImageUrl: 'https://loremflickr.com/400/300/tundra',
      largeImageUrl: 'https://loremflickr.com/1200/800/tundra',
      isFavorite: false,
    ),
  ];

  NatureModel? _selectedNature;

  List<NatureModel> get natureData => List.unmodifiable(_natureData);

  NatureModel? get selectedNature => _selectedNature;

  void selectNature(NatureModel nature) {
    _selectedNature = nature;
    notifyListeners();
  }

  void selectNatureByIndex(int index) {
    if (index < 0 || index >= _natureData.length) {
      return;
    }
    _selectedNature = _natureData[index];
    notifyListeners();
  }

  void toggleFavoriteStatus(int index) {
    if (index < 0 || index >= _natureData.length) {
      return;
    }

    final current = _natureData[index];
    final updated = current.copyWith(isFavorite: !current.isFavorite);
    _natureData[index] = updated;

    if (_selectedNature == current) {
      _selectedNature = updated;
    }

    notifyListeners();
  }
}
