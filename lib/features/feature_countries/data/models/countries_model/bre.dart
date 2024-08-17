class Bre {
  String? official;
  String? common;

  Bre({this.official, this.common});

  factory Bre.fromJson(Map<String, dynamic> json) => Bre(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
