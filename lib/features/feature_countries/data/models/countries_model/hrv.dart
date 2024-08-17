class Hrv {
  String? official;
  String? common;

  Hrv({this.official, this.common});

  factory Hrv.fromJson(Map<String, dynamic> json) => Hrv(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
