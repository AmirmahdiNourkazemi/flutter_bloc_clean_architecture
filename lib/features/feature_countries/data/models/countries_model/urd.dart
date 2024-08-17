class Urd {
  String? official;
  String? common;

  Urd({this.official, this.common});

  factory Urd.fromJson(Map<String, dynamic> json) => Urd(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
