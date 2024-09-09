import 'package:dio/dio.dart';
import 'package:flutter_bloc_clean_architecture/locator/locator.dart';

import 'api_providers.dart';

class ApiProviderImp extends ApiProviders {
  @override
  Future<Response> delete(String path,
      {Map<String, dynamic>? headerParameter,
      Map<String, dynamic>? queryParameter,
      bodyParameter}) async {
    final dio = locator<Dio>();
    if (headerParameter?.isNotEmpty == true) {
      dio.options.headers.addAll(headerParameter!);
    }
    return await dio.delete(path,
        data: bodyParameter, queryParameters: queryParameter);
  }

  @override
  Future<Response> get(String path,
      {Map<String, dynamic>? headerParameter,
      Map<String, dynamic>? queryParameter}) async {
    final dio = locator<Dio>();
    if (headerParameter?.isNotEmpty == true) {
      dio.options.headers.addAll(headerParameter!);
    }
    return await dio.get(
      path,
      queryParameters: queryParameter,
    );
  }

  @override
  Future<Response> post(String path,
      {Map<String, dynamic>? headerParametr,
      Map<String, dynamic>? queryParameter,
      bodyParameter}) async {
    final dio = await locator<Dio>();
    if (headerParametr?.isNotEmpty == true) {
      dio.options.headers.addAll(headerParametr!);
    }
    return await dio.post(
      path,
      data: bodyParameter,
      queryParameters: queryParameter,
    );
  }

  @override
  Future<Response> put(String path,
      {Map<String, dynamic>? queryParameter,
      Map<String, dynamic>? headerParameters,
      dynamic bodyParameters}) async {
    final dio = locator<Dio>();

    if (headerParameters?.isNotEmpty == true) {
      dio.options.headers.addAll(headerParameters!);
    }
    return await dio.put(
      path,
      queryParameters: queryParameter,
      data: bodyParameters,
    );
  }
}