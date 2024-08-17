class Swe {
  String? official;
  String? common;

  Swe({this.official, this.common});

  factory Swe.fromJson(Map<String, dynamic> json) => Swe(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
