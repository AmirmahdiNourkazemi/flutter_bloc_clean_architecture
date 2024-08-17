class Est {
  String? official;
  String? common;

  Est({this.official, this.common});

  factory Est.fromJson(Map<String, dynamic> json) => Est(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
