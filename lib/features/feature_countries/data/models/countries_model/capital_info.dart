class CapitalInfo {
  List<double>? latlng;

  CapitalInfo({this.latlng});

  factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
        latlng: json['latlng'] as List<double>?,
      );

  Map<String, dynamic> toJson() => {
        'latlng': latlng,
      };
}
