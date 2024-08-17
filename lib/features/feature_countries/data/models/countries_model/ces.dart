class Ces {
  String? official;
  String? common;

  Ces({this.official, this.common});

  factory Ces.fromJson(Map<String, dynamic> json) => Ces(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
