class Jpn {
  String? official;
  String? common;

  Jpn({this.official, this.common});

  factory Jpn.fromJson(Map<String, dynamic> json) => Jpn(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
