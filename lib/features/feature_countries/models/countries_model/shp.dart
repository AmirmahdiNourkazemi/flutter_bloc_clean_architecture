class Shp {
  String? name;
  String? symbol;

  Shp({this.name, this.symbol});

  factory Shp.fromJson(Map<String, dynamic> json) => Shp(
        name: json['name'] as String?,
        symbol: json['symbol'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'symbol': symbol,
      };
}
