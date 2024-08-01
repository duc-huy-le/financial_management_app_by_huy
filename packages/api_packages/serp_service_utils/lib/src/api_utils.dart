import 'dart:async';

import 'package:chopper/chopper.dart' as chopper;
import 'package:serp_service_utils/src/storage_service.dart';

class AppAuthenticator extends chopper.Authenticator {
  final StorageService storageService = new StorageService();
  Future<String?> Function(String accessToken)? refreshToken;
  AppAuthenticator(
      {Future<String?> Function(String accessToken)? refreshToken}) {
    this.refreshToken = refreshToken;
  }
  @override
  FutureOr<chopper.Request?> authenticate(
      chopper.Request request, chopper.Response response,
      [chopper.Request? originalRequest]) async {
    if (response.statusCode == 401) {
      if (refreshToken != null) {
        var tokenStore = await storageService.readDataEncrypt("access-token");
        String? newToken = await refreshToken!(tokenStore);
        if (newToken != null) {
          final Map<String, String> updatedHeaders =
              Map<String, String>.of(request.headers);

          newToken = 'Bearer $newToken';
          updatedHeaders.update('Authorization', (String _) => newToken!,
              ifAbsent: () => newToken!);
          return request.copyWith(headers: updatedHeaders);
        }
      }
      ;
    }
    return null;
  }
}

Iterable<dynamic> appInterceptors(
    {String? applicationId,
    String? token,
    bool hasToken = true,
    Function(int statusCode, String message)? onError}) {
  final StorageService storageService = new StorageService();
  return [
    chopper.CurlInterceptor(),
    chopper.HttpLoggingInterceptor(),
    (chopper.Request request) async {
      var tokenStore = await storageService.readDataEncrypt("access-token");
      var applicationIdStore =
          await storageService.readDataEncrypt("applicationId");
      var newHeader = {
        'Accept': "application/json",
        'Content-type': "application/json",
        'X-ApplicationId': applicationId ?? applicationIdStore,
      };
      if (hasToken) {
        newHeader["Authorization"] = "Bearer ${token ?? tokenStore}";
      }
      return request.copyWith(headers: newHeader);
    },
    (chopper.Response<dynamic> response) async {
      if (onError != null) {
        onError(response.statusCode, response.bodyString);
      }
      return response;
    },
  ];
}
