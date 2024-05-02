part of 'dio_rest_client.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    Log.i(
      'onRequest: ${options.method} ${options.path}',
      name: 'DioInterceptor',
    );
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    Log.s(
      'onResponse: ${response.statusCode} ${response.statusMessage}',
      name: 'DioInterceptor',
    );
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    Log.e(
      'onError: ${err.response?.statusCode} ${err.response?.statusMessage}',
      name: 'DioInterceptor',
    );
    super.onError(err, handler);
  }
}
