class Spa {
  String? official;
  String? common;

  Spa({this.official, this.common});

  factory Spa.fromJson(Map<String, dynamic> json) => Spa(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
