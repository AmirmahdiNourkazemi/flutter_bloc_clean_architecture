class Ara {
  String? official;
  String? common;

  Ara({this.official, this.common});

  factory Ara.fromJson(Map<String, dynamic> json) => Ara(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
