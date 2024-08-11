class Maps {
  String? googleMaps;
  String? openStreetMaps;

  Maps({this.googleMaps, this.openStreetMaps});

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
        googleMaps: json['googleMaps'] as String?,
        openStreetMaps: json['openStreetMaps'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'googleMaps': googleMaps,
        'openStreetMaps': openStreetMaps,
      };
}
