class Deu {
  String? official;
  String? common;

  Deu({this.official, this.common});

  factory Deu.fromJson(Map<String, dynamic> json) => Deu(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
