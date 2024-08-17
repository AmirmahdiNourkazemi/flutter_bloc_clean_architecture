class Nld {
  String? official;
  String? common;

  Nld({this.official, this.common});

  factory Nld.fromJson(Map<String, dynamic> json) => Nld(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
