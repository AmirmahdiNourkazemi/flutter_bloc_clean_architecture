class Hun {
  String? official;
  String? common;

  Hun({this.official, this.common});

  factory Hun.fromJson(Map<String, dynamic> json) => Hun(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
