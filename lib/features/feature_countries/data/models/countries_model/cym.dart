class Cym {
  String? official;
  String? common;

  Cym({this.official, this.common});

  factory Cym.fromJson(Map<String, dynamic> json) => Cym(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };
}
