class Por {
  String? official;
  String? common;

  Por({this.official, this.common});

  factory Por.fromJson(Map<String, dynamic> json) => Por(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
