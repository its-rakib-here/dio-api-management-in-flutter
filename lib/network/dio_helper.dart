import 'package:dio/dio.dart';
import 'package:dio_api_management/network/injection_container.dart';

class DioHelper {

  final Dio dio = getDio();

  // Common Options
  final Options options = Options(
    receiveDataWhenStatusError: true,
    contentType: "application/json",
    sendTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 30),
  );

  // Headers
  Map<String, dynamic> getHeaders({String? accessToken}) {

    Map<String, dynamic> headers = {
      "Content-Type": "application/json",
      "x-api-key": "free_user_3DXdM7so43fQhiULRWzT2T44ss5",
    };

    // Optional Authorization Token
    if (accessToken != null) {
      headers["Authorization"] = "Bearer $accessToken";
    }

    return headers;
  }

  /// GET API
  Future<dynamic> getApi({
    required String url,
    String? accessToken,
  }) async {

    try {

      options.headers = getHeaders(
        accessToken: accessToken,
      );

      Response response = await dio.get(
        url,
        options: options,
      );

      return response.data;

    } catch (error) {

      return null;
    }
  }

  /// POST API
  Future<dynamic> postAPi({
    required String url,
    Object? requestBody,
    String? accessToken,
  }) async {

    try {

      options.headers = getHeaders(
        accessToken: accessToken,
      );

      Response response;

      if (requestBody == null) {

        response = await dio.post(
          url,
          options: options,
        );

      } else {

        response = await dio.post(
          url,
          data: requestBody,
          options: options,
        );
      }

      return response.data;

    } catch (error) {

      return null;
    }
  }

  /// PUT API
  Future<dynamic> putAPi({
    required String url,
    Object? requestBody,
    String? accessToken,
  }) async {

    try {

      options.headers = getHeaders(
        accessToken: accessToken,
      );

      Response response;

      if (requestBody == null) {

        response = await dio.put(
          url,
          options: options,
        );

      } else {

        response = await dio.put(
          url,
          data: requestBody,
          options: options,
        );
      }

      return response.data;

    } catch (error) {

      return null;
    }
  }

  /// PATCH API
  Future<dynamic> patchAPi({
    required String url,
    Object? requestBody,
    String? accessToken,
  }) async {

    try {

      options.headers = getHeaders(
        accessToken: accessToken,
      );

      Response response;

      if (requestBody == null) {

        response = await dio.patch(
          url,
          options: options,
        );

      } else {

        response = await dio.patch(
          url,
          data: requestBody,
          options: options,
        );
      }

      return response.data;

    } catch (error) {

      return null;
    }
  }

  /// DELETE API
  Future<dynamic> deleteAPi({
    required String url,
    Object? requestBody,
    String? accessToken,
  }) async {

    try {

      options.headers = getHeaders(
        accessToken: accessToken,
      );

      Response response;

      if (requestBody == null) {

        response = await dio.delete(
          url,
          options: options,
        );

      } else {

        response = await dio.delete(
          url,
          data: requestBody,
          options: options,
        );
      }

      return response.data;

    } catch (error) {

      return null;
    }
  }
}