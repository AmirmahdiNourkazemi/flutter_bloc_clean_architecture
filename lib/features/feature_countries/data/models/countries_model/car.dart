class Car {
  List<dynamic>? signs;
  String? side;

  Car({this.signs, this.side});

  factory Car.fromJson(Map<String, dynamic> json) => Car(
        signs: json['signs'] as List<dynamic>?,
        side: json['side'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'signs': signs,
        'side': side,
      };
}
