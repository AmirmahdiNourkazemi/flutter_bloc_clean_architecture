import 'package:dio/dio.dart';

import '../../../../../core/utils/constants.dart';

class ApiProvider {
  Dio _dio = Dio();

  Future<dynamic> getCountryList() async {
    var response = await _dio.get(
      '${Constants.BASE_URL}all',
    );
    print(response.data);
    return response;
  }
    Future<dynamic> getSearchNameCountry(String name) async {
    var response = await _dio.get(
      '${Constants.BASE_URL}name/$name',
    );
    print(response.data);
    return response;
  }
}
