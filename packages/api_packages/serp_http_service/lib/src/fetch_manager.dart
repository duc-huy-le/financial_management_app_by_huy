import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'response_base.dart';
import 'response_error.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
import 'response_object.dart';

class FetchManager {
  Dio dio = Dio();
  FetchManager({Interceptor? interceptor}) {
    if (interceptor != null) dio.interceptors.add(interceptor);
  }

  @Deprecated('This method will be removed soon. Use get method instead.')
  Future<ResponseObject> getRequest({
    required String url,
    Map<String, dynamic>? params,
    Map<String, dynamic>? headers,
  }) async {
    var requestOption = Options(
      headers: headers,
      followRedirects: false,
      validateStatus: (status) {
        return status != null && status < 500;
      },
      //path: '',
    );

    Response response;
    if (params != null) {
      response =
          await dio.get(url, queryParameters: params, options: requestOption);
    } else {
      response = await dio.get(url, options: requestOption);
    }

    var jsonBody = response.data;

    int? code;
    if (jsonBody['code'] != null) {
      code = jsonBody['code'] as int;
    } else if (jsonBody['statusCode'] != null) {
      code = jsonBody['statusCode'] as int;
    }

    var message = jsonBody['message'];
    if (code != null && code >= 200 && code < 300) {
      var jsonData = jsonBody['data'] ?? "";
      return ResponseObject(data: jsonData, code: code, message: message);
    }

    return ResponseError(code: response.statusCode, message: message);
  }

  Future<ResponseObject> get({
    required String url,
    Map<String, dynamic>? params,
    Map<String, dynamic>? headers,
  }) async {
    await checkInternetConnection();

    var requestOption = Options(
        headers: headers,
        followRedirects: false,
        validateStatus: (status) {
          return status != null && status < 500;
        });

    Response response;
    if (params != null) {
      response =
          await dio.get(url, queryParameters: params, options: requestOption);
    } else {
      response = await dio.get(url, options: requestOption);
    }

    var jsonBody = response.data;

    int? code;
    if (jsonBody['code'] != null) {
      code = jsonBody['code'] as int;
    } else if (jsonBody['statusCode'] != null) {
      code = jsonBody['statusCode'] as int;
    }

    var message = jsonBody['message'];
    if (code != null && code >= 200 && code < 300) {
      var jsonData = jsonBody['data'] ?? "";
      return ResponseObject(data: jsonData, code: code, message: message);
    }

    return ResponseError(code: response.statusCode, message: message);
  }

  Future<ResponseBase> delete({
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
  }) async {
    await checkInternetConnection();

    var response =
        await doDeleteRequest(url: url, body: body, headers: headers);
    return _parseResponse(response: response);
  }

  Future<ResponseBase> post({
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
  }) async {
    await checkInternetConnection();

    var response = await doPostRequest(url: url, body: body, headers: headers);
    return _parseResponse(response: response);
  }

  Future<ResponseBase> put({
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
  }) async {
    await checkInternetConnection();

    var response = await doPutRequest(url: url, body: body, headers: headers);
    return _parseResponse(response: response);
  }

  Future<ResponseBase> patch({
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
  }) async {
    await checkInternetConnection();

    var response = await doPatchRequest(url: url, body: body, headers: headers);
    return _parseResponse(response: response);
  }

  Future<Response> doPutRequest({
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
  }) async {
    var requestOption = Options(
        method: "PUT",
        headers: headers,
        //followRedirects: false,
        validateStatus: (status) {
          return status != null && status < 500;
        });

    Response response =
        await dio.put(url, data: json.encode(body), options: requestOption);
    return response;
  }

  Future<Response> doPatchRequest({
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
  }) async {
    var requestOption = Options(
        method: "PATCH",
        headers: headers,
        //followRedirects: false,
        validateStatus: (status) {
          return status != null && status < 500;
        });

    Response response =
        await dio.patch(url, data: json.encode(body), options: requestOption);
    return response;
  }

  Future<Response> doDeleteRequest({
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
  }) async {
    var requestOptions = Options(
        contentType: Headers.jsonContentType,
        headers: headers,
        followRedirects: false,
        receiveTimeout: 5000,
        validateStatus: (status) {
          return status != null && status < 500;
        });

    Response response = await Dio()
        .delete(url, data: jsonEncode(body), options: requestOptions);
    return response;
  }

  Future<Response> doPostRequest({
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
  }) async {
    var requestOptions = Options(
        contentType: Headers.jsonContentType,
        headers: headers,
        followRedirects: false,
        receiveTimeout: 5000,
        validateStatus: (status) {
          return status != null && status < 500;
        });

    Response response =
        await dio.post(url, data: jsonEncode(body), options: requestOptions);
    return response;
  }

  Future<Response> doGetRequest({
    required String url,
    Map<String, dynamic>? headers,
  }) async {
    var requestOptions = Options(
        contentType: Headers.jsonContentType,
        headers: headers,
        followRedirects: false,
        receiveTimeout: 5000,
        validateStatus: (status) {
          return status != null && status < 500;
        });

    Response response = await dio.get(url, options: requestOptions);
    return response;
  }

  Future<ResponseBase> postForm({
    required String url,
    required FormData data,
    Map<String, String>? headers,
  }) async {
    await checkInternetConnection();

    var requestOptions = Options(
        contentType: Headers.jsonContentType,
        headers: headers,
        followRedirects: false,
        validateStatus: (status) {
          return status != null && status < 500;
        });

    final response = await dio.post(url, data: data, options: requestOptions);

    return _parseResponse(response: response);
  }

  Future<bool> checkInternetConnection() async {
    return true;
    // var connectivityResult = await (Connectivity().checkConnectivity());
    // if (connectivityResult == ConnectivityResult.mobile ||
    //     connectivityResult == ConnectivityResult.wifi) {
    //   return true;
    // }
    // throw Exception("NoInternetConnection");
  }

  Future<ResponseBase> uploadFile({
    required String url,
    required String fileUrl,
    required String fileName,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    String fileKey = 'File',
  }) async {
    await checkInternetConnection();

    var request = http.MultipartRequest('POST', Uri.parse(url));
    if (headers != null) request.headers.addAll(headers);

    if (body != null) {
      var keys = body.keys;
      for (var i = 0; i < body.length; i++) {
        var key = keys.elementAt(i);
        request.fields[key] = body[key] ?? "";
      }
    }

    var multiFile = await http.MultipartFile.fromPath(
      fileKey,
      fileUrl,
      filename: fileName,
    );
    request.files.add(multiFile);

    var response = await request.send();
    var responseData = await response.stream.toBytes();
    var responseString = String.fromCharCodes(responseData);

    return _parseJsonStringResponse(responseString);
  }

  ResponseBase _parseResponse({required Response<dynamic> response}) {
    var jsonBody = response.data;

    int? code = response.statusCode;
    var message = jsonBody['message'];

    if (code != null && code >= 200 && code < 300) {
      var jsonData = jsonBody['data'] ?? "";
      return ResponseObject(data: jsonData, code: code, message: message);
    }

    if (message is String) {
      return ResponseError(code: response.statusCode, message: message);
    }
    return ResponseError(
        code: response.statusCode,
        message: message.length > 0 ? message[0] : message);
  }

  ResponseBase _parseJsonStringResponse(String jsonString) {
    var jsonBody = jsonDecode(jsonString);
    var code = jsonBody['code'] as int;

    var message = jsonBody['message'];
    if (code >= 200 && code < 300) {
      var jsonData = jsonBody['data'] ?? "";
      return ResponseObject(data: jsonData, code: code, message: message);
    }

    return ResponseError(code: code, message: message);
  }
}
