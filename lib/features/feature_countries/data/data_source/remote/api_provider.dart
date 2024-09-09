import 'package:dio/dio.dart';
import 'package:flutter_bloc_clean_architecture/core/network/api_provider_imp.dart';
import 'package:flutter_bloc_clean_architecture/locator/locator.dart';

import '../../../../../core/utils/constants.dart';

class ApiProvider {
  Dio _dio = Dio();

  Future<Response> getCountryList() async {
    final res = await locator<ApiProviderImp>().get('${Constants.BASE_URL}all');
    return res;
    // var response = await _dio.get(
    //   '${Constants.BASE_URL}all',
    // );
    // print(response.data);
    // return response;
  }

  Future<Response> getSearchNameCountry(String name) async {
    final res =
        await locator<ApiProviderImp>().get('${Constants.BASE_URL}name/$name');
    print(res);
    return res;
  }
}
