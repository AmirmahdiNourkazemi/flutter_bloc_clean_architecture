import 'native_name.dart';

class Name {
  String? common;
  String? official;
  NativeName? nativeName;

  Name({this.common, this.official, this.nativeName});

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        common: json['common'] as String?,
        official: json['official'] as String?,
        nativeName: json['nativeName'] == null
            ? null
            : NativeName.fromJson(json['nativeName'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'common': common,
        'official': official,
        'nativeName': nativeName?.toJson(),
      };
}
