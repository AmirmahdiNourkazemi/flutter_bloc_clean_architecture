class CapitalInfo {
  List<dynamic>? latlng;

  CapitalInfo({this.latlng});

  factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
        latlng: json['latlng'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'latlng': latlng,
      };
}
