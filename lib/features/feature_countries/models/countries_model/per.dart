class Per {
  String? official;
  String? common;

  Per({this.official, this.common});

  factory Per.fromJson(Map<String, dynamic> json) => Per(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
