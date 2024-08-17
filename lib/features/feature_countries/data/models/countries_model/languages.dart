class Languages {
  String? eng;

  Languages({this.eng});

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        eng: json['eng'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'eng': eng,
      };
}
