class Kor {
  String? official;
  String? common;

  Kor({this.official, this.common});

  factory Kor.fromJson(Map<String, dynamic> json) => Kor(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
