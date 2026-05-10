import 'dart:convert';
import 'package:dio/dio.dart';

import '../utils/print_api_constranis.dart';

Dio getDio() {
  Dio dio = Dio();

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (RequestOptions options, handler) {
        printValue(tag: 'API URL:', '${options.uri}');
        printValue(tag: 'HEADER ', options.headers);
        printValue(tag: 'REQUEST BODY: ', jsonEncode(options.data));

        return handler.next(options);
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) {
        printValue(tag: 'API RESPONSE: ', response.data);
        return handler.next(response);
      },

      onError: (DioException e, handler) {
        printValue(tag: 'Status code : ', "${e.response?.statusCode ?? ""}");
        printValue(tag: 'ERROR DATA : ', e.response?.data ?? "");
      },
    ),
  );

  return dio;
}
