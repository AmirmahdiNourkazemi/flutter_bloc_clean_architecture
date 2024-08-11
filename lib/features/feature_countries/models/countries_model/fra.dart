class Fra {
  String? official;
  String? common;

  Fra({this.official, this.common});

  factory Fra.fromJson(Map<String, dynamic> json) => Fra(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
