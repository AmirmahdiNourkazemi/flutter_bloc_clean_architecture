class Slk {
  String? official;
  String? common;

  Slk({this.official, this.common});

  factory Slk.fromJson(Map<String, dynamic> json) => Slk(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
