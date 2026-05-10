import 'package:dio/dio.dart';
import 'package:dio_api_management/network/injection_container.dart';

class DioHelper {
  Dio dio = getDio();

  Options options = Options(
    receiveDataWhenStatusError: true,
    contentType: "application/json",
    sendTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 30),
  );

  Map<String, dynamic> headers = {"isAuthRequired": 'Barear token'};

  //Get api

  Future<dynamic> getApi({
    required String url,
    bool isAuthRequired = false,
  }) async {
    if (isAuthRequired) {
      options.headers = headers;
    }

    try {
      Response response = await dio.get(url, options: options);
      return response.data;
    } catch (error) {
      return null;
    }
  }

  //Post api

  Future<dynamic> postAPi({
    required String url,
    Object? requestBody,
    bool isAuthRequired = false,
  }) async {
    if (isAuthRequired) {
      options.headers = headers;
    }
    try {
      Response response;
      if (requestBody == null) {
        response = await dio.post(url, options: options);
      } else {
        response = await dio.post(url, data: requestBody, options: options);
      }

      return response.data;
    } catch (error) {
      return null;
    }
  }

  //put api

  Future<dynamic> putAPi({
    required String url,
    Object? requestBody,
    bool isAuthRequired = false,
  }) async {
    if (isAuthRequired) {
      options.headers = headers;
    }
    try {
      Response response;
      if (requestBody == null) {
        response = await dio.put(url, options: options);
      } else {
        response = await dio.put(url, data: requestBody, options: options);
      }
    } catch (error) {
      return null;
    }
  }

  //patch api

  Future<dynamic> patchAPi({
    required String url,
    Object? requestBody,
    bool isAuthRequired = false,
  }) async {
    if (isAuthRequired) {
      options.headers = headers;
    }
    try {
      Response response;
      if (requestBody == null) {
        response = await dio.patch(url, options: options);
      } else {
        response = await dio.patch(url, data: requestBody, options: options);
      }
    } catch (error) {
      return null;
    }
  }

  ///Delete api
  Future<dynamic> deleteAPi({
    required String url,
    Object? requestBody,
    bool isAuthRequired = false,
  }) async {
    if (isAuthRequired) {
      options.headers = headers;
    }
    try {
      Response response;
      if (requestBody == null) {
        response = await dio.delete(url, options: options);
      } else {
        response = await dio.delete(url, data: requestBody, options: options);
      }
    } catch (error) {
      return null;
    }
  }
}
