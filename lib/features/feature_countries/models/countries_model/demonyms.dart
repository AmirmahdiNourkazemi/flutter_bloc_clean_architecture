import 'eng.dart';

class Demonyms {
  Eng? eng;

  Demonyms({this.eng});

  factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
        eng: json['eng'] == null
            ? null
            : Eng.fromJson(json['eng'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'eng': eng?.toJson(),
      };
}
