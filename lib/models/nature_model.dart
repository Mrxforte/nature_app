class NatureModel {
  final String name;
  final DateTime date;
  final String description;
  final String smallImageUrl;
  final String largeImageUrl;
  final bool isFavorite;

  NatureModel({
    required this.name,
    required this.date,
    required this.description,
    required this.smallImageUrl,
    required this.largeImageUrl,
    required this.isFavorite,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'date': date.toIso8601String(),
      'description': description,
      'smallImageUrl': smallImageUrl,
      'largeImageUrl': largeImageUrl,
      'isFavorite': isFavorite,
    };
  }

  NatureModel.fromJson(Map<String, dynamic> json)
    : name = json['name'],
      date = DateTime.parse(json['date']),
      description = json['description'],
      smallImageUrl = json['smallImageUrl'],
      largeImageUrl = json['largeImageUrl'],
      isFavorite = json['isFavorite'] ?? false;

  NatureModel copyWith({
    String? name,
    DateTime? date,
    String? description,
    String? smallImageUrl,
    String? largeImageUrl,
    bool? isFavorite,
  }) {
    return NatureModel(
      name: name ?? this.name,
      date: date ?? this.date,
      description: description ?? this.description,
      smallImageUrl: smallImageUrl ?? this.smallImageUrl,
      largeImageUrl: largeImageUrl ?? this.largeImageUrl,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
