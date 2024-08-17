class Ita {
  String? official;
  String? common;

  Ita({this.official, this.common});

  factory Ita.fromJson(Map<String, dynamic> json) => Ita(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
