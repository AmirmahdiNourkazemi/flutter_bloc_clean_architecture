class Fin {
  String? official;
  String? common;

  Fin({this.official, this.common});

  factory Fin.fromJson(Map<String, dynamic> json) => Fin(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
