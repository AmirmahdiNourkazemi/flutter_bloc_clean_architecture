class Srp {
  String? official;
  String? common;

  Srp({this.official, this.common});

  factory Srp.fromJson(Map<String, dynamic> json) => Srp(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
