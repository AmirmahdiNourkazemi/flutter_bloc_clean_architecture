abstract class UseCase<T , P>{
  Future<T> call(P params);
}


class NoParams {}

class InsertCountry {
  String countryName;
  String flag;
  String code;
InsertCountry(this.countryName,this.flag,this.code);
}