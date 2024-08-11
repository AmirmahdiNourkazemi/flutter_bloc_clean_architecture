class Pol {
  String? official;
  String? common;

  Pol({this.official, this.common});

  factory Pol.fromJson(Map<String, dynamic> json) => Pol(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
