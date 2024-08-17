import 'shp.dart';

class Currencies {
  Shp? shp;

  Currencies({this.shp});

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
        shp: json['SHP'] == null
            ? null
            : Shp.fromJson(json['SHP'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'SHP': shp?.toJson(),
      };
}
