class Zho {
  String? official;
  String? common;

  Zho({this.official, this.common});

  factory Zho.fromJson(Map<String, dynamic> json) => Zho(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
