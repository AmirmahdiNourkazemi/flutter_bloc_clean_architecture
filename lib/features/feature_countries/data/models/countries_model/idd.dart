class Idd {
  String? root;
  List<dynamic>? suffixes;

  Idd({this.root, this.suffixes});

  factory Idd.fromJson(Map<String, dynamic> json) => Idd(
        root: json['root'] as String?,
        suffixes: json['suffixes'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'root': root,
        'suffixes': suffixes,
      };
}
