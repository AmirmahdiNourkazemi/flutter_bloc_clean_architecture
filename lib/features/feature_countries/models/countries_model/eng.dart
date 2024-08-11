class Eng {
  String? official;
  String? common;

  Eng({this.official, this.common});

  factory Eng.fromJson(Map<String, dynamic> json) => Eng(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
