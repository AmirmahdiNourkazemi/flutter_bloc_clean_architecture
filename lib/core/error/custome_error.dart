import 'package:dio/dio.dart';

 String customError(dynamic error) {
  if (error is int) {
    switch (error) {
      case 404:
        return 'please sign in again';
      case 401:
        return 'your token is expired';
      case 500:
        return 'internal server error';
      default:
        return 'something went wrong';
    }
  } else if (error is DioException) {
    return 'Network error. Please check your connection.';
  } else {
    return error.toString();
  }
}
