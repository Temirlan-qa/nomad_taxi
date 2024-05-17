part of 'dio_client.dart';

class DioInterceptor extends Interceptor {
  final StorageServiceImpl st = StorageServiceImpl();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final String? accessToken = st.getToken();
    if (accessToken != null) {
      options.headers['Authorization'] = accessToken;
    }

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
    if (response.statusCode == 401 || response.statusCode == 403) {
      st.deleteToken();
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    Log.e(
      'onError: ${err.response?.statusCode} ${err.response?.statusMessage}',
      name: 'DioInterceptor',
    );
    super.onError(err, handler);
  }
}
