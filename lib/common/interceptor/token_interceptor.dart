import 'dart:developer';

import 'package:dio/dio.dart';

typedef OnGetToken = String? Function();
typedef OnTokenRemove = Future<void> Function();

class TokenInterceptor extends Interceptor {
  final OnGetToken _onGetToken;

  TokenInterceptor({
    required OnGetToken onGetToken,
  }) : _onGetToken = onGetToken;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = _onGetToken();
    log('TokenInterceptor | onRequest | token: $token');
    if (token != null) options.headers['Authorization'] = 'Token $token';
    super.onRequest(options, handler);
  }
}
