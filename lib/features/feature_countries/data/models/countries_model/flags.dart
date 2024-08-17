class Flags {
  String? png;
  String? svg;

  Flags({this.png, this.svg});

  factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        png: json['png'] as String?,
        svg: json['svg'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'png': png,
        'svg': svg,
      };
}
