class CoralModel {
  String id;
  String species;
  String percentage;
  String latitude;
  String longitude;
  String imageUrl;
  String createdAt;
  String? markColor;

  CoralModel({
    this.markColor,
    required this.id,
    required this.percentage,
    required this.createdAt,
    required this.imageUrl,
    required this.latitude,
    required this.longitude,
    required this.species,
  });

  factory CoralModel.fromJson(Map<String, dynamic> json) {
    return CoralModel(
      id: json["_id"],
      createdAt: json["createdAt"],
      imageUrl: json["imageUrl"],
      species: json["species"],
      latitude: json["latitude"].toString(),
      longitude: json["longitude"].toString(),
      percentage: json["percentage"].toString(),
    );
  }

  factory CoralModel.fromJsonCorals(Map<String, dynamic> json) {
    return CoralModel(
      id: json["_id"],
      createdAt: json["createdAt"],
      imageUrl: json["imageUrl"],
      species: json["species"],
      latitude: json["latitude"].toString(),
      longitude: json["longitude"].toString(),
      percentage: json["percentage"].toString(),
      markColor: json["areaId"]["markColor"],
    );
  }

  DateTime parsingDateTime() {
    return DateTime.fromMillisecondsSinceEpoch(int.parse(createdAt)).toLocal();
  }
}
