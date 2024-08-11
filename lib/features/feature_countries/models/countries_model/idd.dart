class Idd {
  String? root;
  List<String>? suffixes;

  Idd({this.root, this.suffixes});

  factory Idd.fromJson(Map<String, dynamic> json) => Idd(
        root: json['root'] as String?,
        suffixes: json['suffixes'] as List<String>?,
      );

  Map<String, dynamic> toJson() => {
        'root': root,
        'suffixes': suffixes,
      };
}
