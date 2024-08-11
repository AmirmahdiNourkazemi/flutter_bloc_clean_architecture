class Rus {
  String? official;
  String? common;

  Rus({this.official, this.common});

  factory Rus.fromJson(Map<String, dynamic> json) => Rus(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
