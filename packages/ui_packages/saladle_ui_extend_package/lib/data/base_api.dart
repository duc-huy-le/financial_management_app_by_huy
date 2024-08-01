import 'package:get/get.dart';
import './model/response_error.dart';

class BaseApiProvider extends GetConnect {
  String? getBaseUrl() => null;
  String? getToken() => null;
  String? getAppId() => null;
  @override
  void onInit() {
    var token = getToken();
    var baseUrl = getBaseUrl();
    var appId = getAppId();
    httpClient.baseUrl = baseUrl;
    httpClient.addRequestModifier<dynamic>((request) {
      if (appId != null) {
        request.headers['X-ApplicationId'] = appId;
      }
      if (token != null) {
        request.headers['Authorization'] = 'Bearer $token';
      }
      return request;
    });

    httpClient.addResponseModifier<dynamic>((request, response) {
      if (response.body is ResponseError) {
        // ignore: todo
        // TODO: handler error
      }
    });

    httpClient.addAuthenticator<dynamic>((request) async {
      // ignore: todo
      // TODO: impliment refresh token
      // final response = await get("http://yourapi/token");
      // final token = response.body['token'];
      // // Set the header
      // request.headers['Authorization'] = "$token";
      return request;
    });

    //Autenticator will be called 3 times if HttpStatus is
    //HttpStatus.unauthorized
    httpClient.maxAuthRetries = 3;
  }
}
