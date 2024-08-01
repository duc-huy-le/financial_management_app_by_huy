//Generated code

part of 'swagger.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$Swagger extends Swagger {
  _$Swagger([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Swagger;

  @override
  Future<Response<AccountResponseModelResponseObject>> _v1AccountGet() {
    final $url = '/v1/account';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<AccountResponseModelResponseObject,
        AccountResponseModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1AccountPut(
      {UserUpdateRequestModel? body}) {
    final $url = '/v1/account';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1AccountPatch(
      {UserUpdateProfileRequestModel? body}) {
    final $url = '/v1/account';
    final $body = body;
    final $request = Request('PATCH', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1AccountPasswordPut(
      {UserChangePasswordModel? body}) {
    final $url = '/v1/account/password';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1AccountForgotpasswordPost(
      {String? email, String? language}) {
    final $url = '/v1/account/forgotpassword';
    final $params = <String, dynamic>{'email': email, 'language': language};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<Response$>> _v1AccountRecoverpasswordGet({String? token}) {
    final $url = '/v1/account/recoverpassword';
    final $params = <String, dynamic>{'token': token};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<Response$, Response$>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1AccountRecoverpasswordPut(
      {UserRecoverPasswordModel? body}) {
    final $url = '/v1/account/recoverpassword';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<AccountResponseModelResponseObject>> _v1AuthJwtInfoGet() {
    final $url = '/v1/auth/jwt/info';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<AccountResponseModelResponseObject,
        AccountResponseModelResponseObject>($request);
  }

  @override
  Future<Response<AccountResponseModelResponseObject>> _v1AuthInfoGet() {
    final $url = '/v1/auth/info';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<AccountResponseModelResponseObject,
        AccountResponseModelResponseObject>($request);
  }

  @override
  Future<Response<AccountResponseModelResponseObject>> _v1AuthJwtLoginPost(
      {LoginRequestModel? body}) {
    final $url = '/v1/auth/jwt/login';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AccountResponseModelResponseObject,
        AccountResponseModelResponseObject>($request);
  }

  @override
  Future<Response<AccountResponseModelResponseObject>> _v1AuthLoginPost(
      {LoginRequestModel? body}) {
    final $url = '/v1/auth/login';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AccountResponseModelResponseObject,
        AccountResponseModelResponseObject>($request);
  }

  @override
  Future<Response<AccountResponseModelResponseObject>>
      _v1AuthenticationJwtInfoPost() {
    final $url = '/v1/authentication/jwt/info';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<AccountResponseModelResponseObject,
        AccountResponseModelResponseObject>($request);
  }

  @override
  Future<Response<AccountResponseModelResponseObject>>
      _v1AuthenticationJwtLoginPost({LoginRequestModel? body}) {
    final $url = '/v1/authentication/jwt/login';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AccountResponseModelResponseObject,
        AccountResponseModelResponseObject>($request);
  }

  @override
  Future<Response<UserPasswordModelResponseObject>>
      _v1AuthenticationRegisterPost({RegisterModel? body}) {
    final $url = '/v1/authentication/register';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<UserPasswordModelResponseObject,
        UserPasswordModelResponseObject>($request);
  }

  @override
  Future<Response<UserInfoResponseModelResponseList>> _v1AuthenticationUsersGet(
      {String? filter}) {
    final $url = '/v1/authentication/users';
    final $params = <String, dynamic>{'filter': filter};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<UserInfoResponseModelResponseList,
        UserInfoResponseModelResponseList>($request);
  }

  @override
  Future<Response<AccountResponseModelResponseObject>>
      _v1AuthenticationUserGet() {
    final $url = '/v1/authentication/user';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<AccountResponseModelResponseObject,
        AccountResponseModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1AuthenticationUserPut(
      {UserUpdateRequestModel? body}) {
    final $url = '/v1/authentication/user';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1AuthenticationUserPasswordPut(
      {UserChangePasswordModel? body}) {
    final $url = '/v1/authentication/user/password';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1AuthenticationForgotpasswordPost(
      {String? email, String? language}) {
    final $url = '/v1/authentication/forgotpassword';
    final $params = <String, dynamic>{'email': email, 'language': language};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<Response$>> _v1AuthenticationRecoverpasswordGet(
      {String? token}) {
    final $url = '/v1/authentication/recoverpassword';
    final $params = <String, dynamic>{'token': token};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<Response$, Response$>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1AuthenticationRecoverpasswordPut(
      {UserRecoverPasswordModel? body}) {
    final $url = '/v1/authentication/recoverpassword';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<FirebaseSettingsResponseObject>> _v1FbConfigurationGet() {
    final $url = '/v1/fb/configuration';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<FirebaseSettingsResponseObject,
        FirebaseSettingsResponseObject>($request);
  }

  @override
  Future<Response<UserFirebaseTokenResponseList>> _v1FbMessagingTokensGet(
      {String? userId}) {
    final $url = '/v1/fb/messaging/tokens';
    final $params = <String, dynamic>{'userId': userId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<UserFirebaseTokenResponseList,
        UserFirebaseTokenResponseList>($request);
  }

  @override
  Future<Response<UserFirebaseTokenResponseObject>> _v1FbMessagingTokensPut(
      {UserTokenResquestModel? body}) {
    final $url = '/v1/fb/messaging/tokens';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<UserFirebaseTokenResponseObject,
        UserFirebaseTokenResponseObject>($request);
  }

  @override
  Future<Response<dynamic>> _v1AuthenticationGoogleGet(
      {String? applicationId, String? returnUrl}) {
    final $url = '/v1/authentication/google';
    final $params = <String, dynamic>{
      'applicationId': applicationId,
      'returnUrl': returnUrl
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<StringResponseObject>> _loginGoogleGet(
      {String? code, String? error, String? apiVersion}) {
    final $url = '/login-google';
    final $params = <String, dynamic>{
      'code': code,
      'error': error,
      'api-version': apiVersion
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<StringResponseObject, StringResponseObject>($request);
  }

  @override
  Future<Response<StringResponseObject>> _v1AuthenticationGoogleLinkGet(
      {String? returnUrl}) {
    final $url = '/v1/authentication/google/link';
    final $params = <String, dynamic>{'returnUrl': returnUrl};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<StringResponseObject, StringResponseObject>($request);
  }

  @override
  Future<Response<AccountResponseModelResponseObject>>
      _v1AuthenticationGoogleCodePost({GoogleLoginRequestModel? body}) {
    final $url = '/v1/authentication/google/code';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AccountResponseModelResponseObject,
        AccountResponseModelResponseObject>($request);
  }

  @override
  Future<Response<AccountResponseModelResponseObject>>
      _v1AuthenticationGoogleAccessTokenPost({GoogleLoginRequestModel? body}) {
    final $url = '/v1/authentication/google/access_token';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AccountResponseModelResponseObject,
        AccountResponseModelResponseObject>($request);
  }

  @override
  Future<Response<dynamic>> _v1HealthCheckGet() {
    final $url = '/v1/health/check';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1HealthDbcheckGet() {
    final $url = '/v1/health/dbcheck';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<RoleModelListResponseObject>> _v1AccountRolesGet(
      {String? parentAppId}) {
    final $url = '/v1/account/roles';
    final $params = <String, dynamic>{'parentAppId': parentAppId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<RoleModelListResponseObject,
        RoleModelListResponseObject>($request);
  }

  @override
  Future<Response<RightModelListResponseObject>> _v1AccountRightsGet(
      {String? parentAppId}) {
    final $url = '/v1/account/rights';
    final $params = <String, dynamic>{'parentAppId': parentAppId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<RightModelListResponseObject,
        RightModelListResponseObject>($request);
  }

  @override
  Future<Response<UserBaseModelResponseObject>> _v1RegisterRegisterPost(
      {RegisterModel? body}) {
    final $url = '/v1/register/register';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<UserBaseModelResponseObject,
        UserBaseModelResponseObject>($request);
  }

  @override
  Future<Response<RoleSimpleInfoResponseModelListResponseObject>>
      _v1RolesPublicGet() {
    final $url = '/v1/roles-public';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RoleSimpleInfoResponseModelListResponseObject,
        RoleSimpleInfoResponseModelListResponseObject>($request);
  }

  @override
  Future<Response<RoleSimpleInfoResponseModelResponseList>>
      _v1RolesPublicAllGet() {
    final $url = '/v1/roles-public/all';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RoleSimpleInfoResponseModelResponseList,
        RoleSimpleInfoResponseModelResponseList>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1RolesPublicCacheDelete() {
    final $url = '/v1/roles-public/cache';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<AccountResponseModelResponseObject>> _v1AuthSecureLoginPost(
      {LoginRequestModel? body}) {
    final $url = '/v1/auth/secure-login';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AccountResponseModelResponseObject,
        AccountResponseModelResponseObject>($request);
  }

  @override
  Future<Response<NavigationModelResponseList>> _v1UserNavigationsGet(
      {Object? position, String? parentAppId}) {
    final $url = '/v1/user-navigations';
    final $params = <String, dynamic>{
      'position': position,
      'parentAppId': parentAppId
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<NavigationModelResponseList,
        NavigationModelResponseList>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1UserNavigationsCacheDelete() {
    final $url = '/v1/user-navigations/cache';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<UserSimpleInfoResponseModelListResponseObject>>
      _v1UsersPublicAllGet() {
    final $url = '/v1/users-public/all';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<UserSimpleInfoResponseModelListResponseObject,
        UserSimpleInfoResponseModelListResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1UsersPublicCacheDelete() {
    final $url = '/v1/users-public/cache';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }
}
