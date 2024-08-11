class Tur {
  String? official;
  String? common;

  Tur({this.official, this.common});

  factory Tur.fromJson(Map<String, dynamic> json) => Tur(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
