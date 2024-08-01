import 'swagger.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'package:chopper/chopper.dart' as chopper;
export 'swagger.enums.swagger.dart';
export 'swagger.models.swagger.dart';

part 'swagger.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Swagger extends ChopperService {
  static Swagger create(
      {ChopperClient? client,
      Authenticator? authenticator,
      String? baseUrl,
      Iterable<dynamic>? interceptors}) {
    if (client != null) {
      return _$Swagger(client);
    }

    final newClient = ChopperClient(
        services: [_$Swagger()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? 'http://');
    return _$Swagger(newClient);
  }

  ///
  Future<chopper.Response<AccountResponseModelResponseObject>> v1AccountGet() {
    generatedMapping.putIfAbsent(AccountResponseModelResponseObject,
        () => AccountResponseModelResponseObject.fromJsonFactory);

    return _v1AccountGet();
  }

  ///
  @Get(path: '/v1/account')
  Future<chopper.Response<AccountResponseModelResponseObject>> _v1AccountGet();

  ///
  ///@param body
  Future<chopper.Response<ResponseUpdate>> v1AccountPut(
      {UserUpdateRequestModel? body}) {
    generatedMapping.putIfAbsent(
        UserUpdateRequestModel, () => UserUpdateRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1AccountPut(body: body);
  }

  ///
  ///@param body
  @Put(path: '/v1/account')
  Future<chopper.Response<ResponseUpdate>> _v1AccountPut(
      {@Body() UserUpdateRequestModel? body});

  ///
  ///@param body
  Future<chopper.Response<ResponseUpdate>> v1AccountPatch(
      {UserUpdateProfileRequestModel? body}) {
    generatedMapping.putIfAbsent(UserUpdateProfileRequestModel,
        () => UserUpdateProfileRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1AccountPatch(body: body);
  }

  ///
  ///@param body
  @Patch(path: '/v1/account')
  Future<chopper.Response<ResponseUpdate>> _v1AccountPatch(
      {@Body() UserUpdateProfileRequestModel? body});

  ///
  ///@param body
  Future<chopper.Response<ResponseUpdate>> v1AccountPasswordPut(
      {UserChangePasswordModel? body}) {
    generatedMapping.putIfAbsent(
        UserChangePasswordModel, () => UserChangePasswordModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1AccountPasswordPut(body: body);
  }

  ///
  ///@param body
  @Put(path: '/v1/account/password')
  Future<chopper.Response<ResponseUpdate>> _v1AccountPasswordPut(
      {@Body() UserChangePasswordModel? body});

  ///
  ///@param email
  ///@param language
  Future<chopper.Response<ResponseUpdate>> v1AccountForgotpasswordPost(
      {String? email, String? language}) {
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1AccountForgotpasswordPost(email: email, language: language);
  }

  ///
  ///@param email
  ///@param language
  @Post(path: '/v1/account/forgotpassword', optionalBody: true)
  Future<chopper.Response<ResponseUpdate>> _v1AccountForgotpasswordPost(
      {@Query('email') String? email, @Query('language') String? language});

  ///
  ///@param token
  Future<chopper.Response<Response$>> v1AccountRecoverpasswordGet(
      {String? token}) {
    generatedMapping.putIfAbsent(Response$, () => Response$.fromJsonFactory);

    return _v1AccountRecoverpasswordGet(token: token);
  }

  ///
  ///@param token
  @Get(path: '/v1/account/recoverpassword')
  Future<chopper.Response<Response$>> _v1AccountRecoverpasswordGet(
      {@Query('token') String? token});

  ///
  ///@param body
  Future<chopper.Response<ResponseUpdate>> v1AccountRecoverpasswordPut(
      {UserRecoverPasswordModel? body}) {
    generatedMapping.putIfAbsent(UserRecoverPasswordModel,
        () => UserRecoverPasswordModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1AccountRecoverpasswordPut(body: body);
  }

  ///
  ///@param body
  @Put(path: '/v1/account/recoverpassword')
  Future<chopper.Response<ResponseUpdate>> _v1AccountRecoverpasswordPut(
      {@Body() UserRecoverPasswordModel? body});

  ///
  Future<chopper.Response<AccountResponseModelResponseObject>>
      v1AuthJwtInfoGet() {
    generatedMapping.putIfAbsent(AccountResponseModelResponseObject,
        () => AccountResponseModelResponseObject.fromJsonFactory);

    return _v1AuthJwtInfoGet();
  }

  ///
  @Get(path: '/v1/auth/jwt/info')
  Future<chopper.Response<AccountResponseModelResponseObject>>
      _v1AuthJwtInfoGet();

  ///
  Future<chopper.Response<AccountResponseModelResponseObject>> v1AuthInfoGet() {
    generatedMapping.putIfAbsent(AccountResponseModelResponseObject,
        () => AccountResponseModelResponseObject.fromJsonFactory);

    return _v1AuthInfoGet();
  }

  ///
  @Get(path: '/v1/auth/info')
  Future<chopper.Response<AccountResponseModelResponseObject>> _v1AuthInfoGet();

  ///
  ///@param body
  Future<chopper.Response<AccountResponseModelResponseObject>>
      v1AuthJwtLoginPost({LoginRequestModel? body}) {
    generatedMapping.putIfAbsent(
        LoginRequestModel, () => LoginRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(AccountResponseModelResponseObject,
        () => AccountResponseModelResponseObject.fromJsonFactory);

    return _v1AuthJwtLoginPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/auth/jwt/login')
  Future<chopper.Response<AccountResponseModelResponseObject>>
      _v1AuthJwtLoginPost({@Body() LoginRequestModel? body});

  ///
  ///@param body
  Future<chopper.Response<AccountResponseModelResponseObject>> v1AuthLoginPost(
      {LoginRequestModel? body}) {
    generatedMapping.putIfAbsent(
        LoginRequestModel, () => LoginRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(AccountResponseModelResponseObject,
        () => AccountResponseModelResponseObject.fromJsonFactory);

    return _v1AuthLoginPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/auth/login')
  Future<chopper.Response<AccountResponseModelResponseObject>> _v1AuthLoginPost(
      {@Body() LoginRequestModel? body});

  ///Gets login information.
  Future<chopper.Response<AccountResponseModelResponseObject>>
      v1AuthenticationJwtInfoPost() {
    generatedMapping.putIfAbsent(AccountResponseModelResponseObject,
        () => AccountResponseModelResponseObject.fromJsonFactory);

    return _v1AuthenticationJwtInfoPost();
  }

  ///Gets login information.
  @Post(path: '/v1/authentication/jwt/info', optionalBody: true)
  Future<chopper.Response<AccountResponseModelResponseObject>>
      _v1AuthenticationJwtInfoPost();

  ///The user login.
  ///@param body The login model.
  Future<chopper.Response<AccountResponseModelResponseObject>>
      v1AuthenticationJwtLoginPost({LoginRequestModel? body}) {
    generatedMapping.putIfAbsent(
        LoginRequestModel, () => LoginRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(AccountResponseModelResponseObject,
        () => AccountResponseModelResponseObject.fromJsonFactory);

    return _v1AuthenticationJwtLoginPost(body: body);
  }

  ///The user login.
  ///@param body The login model.
  @Post(path: '/v1/authentication/jwt/login')
  Future<chopper.Response<AccountResponseModelResponseObject>>
      _v1AuthenticationJwtLoginPost({@Body() LoginRequestModel? body});

  ///Registers an user.
  ///@param body The user register.
  Future<chopper.Response<UserPasswordModelResponseObject>>
      v1AuthenticationRegisterPost({RegisterModel? body}) {
    generatedMapping.putIfAbsent(
        RegisterModel, () => RegisterModel.fromJsonFactory);
    generatedMapping.putIfAbsent(UserPasswordModelResponseObject,
        () => UserPasswordModelResponseObject.fromJsonFactory);

    return _v1AuthenticationRegisterPost(body: body);
  }

  ///Registers an user.
  ///@param body The user register.
  @Post(path: '/v1/authentication/register')
  Future<chopper.Response<UserPasswordModelResponseObject>>
      _v1AuthenticationRegisterPost({@Body() RegisterModel? body});

  ///Gets all user in organization.
  ///@param filter
  Future<chopper.Response<UserInfoResponseModelResponseList>>
      v1AuthenticationUsersGet({String? filter}) {
    generatedMapping.putIfAbsent(UserInfoResponseModelResponseList,
        () => UserInfoResponseModelResponseList.fromJsonFactory);

    return _v1AuthenticationUsersGet(filter: filter);
  }

  ///Gets all user in organization.
  ///@param filter
  @Get(path: '/v1/authentication/users')
  Future<chopper.Response<UserInfoResponseModelResponseList>>
      _v1AuthenticationUsersGet({@Query('filter') String? filter});

  ///Gets login information.
  Future<chopper.Response<AccountResponseModelResponseObject>>
      v1AuthenticationUserGet() {
    generatedMapping.putIfAbsent(AccountResponseModelResponseObject,
        () => AccountResponseModelResponseObject.fromJsonFactory);

    return _v1AuthenticationUserGet();
  }

  ///Gets login information.
  @Get(path: '/v1/authentication/user')
  Future<chopper.Response<AccountResponseModelResponseObject>>
      _v1AuthenticationUserGet();

  ///Updates user information.
  ///@param body The user update model.
  Future<chopper.Response<ResponseUpdate>> v1AuthenticationUserPut(
      {UserUpdateRequestModel? body}) {
    generatedMapping.putIfAbsent(
        UserUpdateRequestModel, () => UserUpdateRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1AuthenticationUserPut(body: body);
  }

  ///Updates user information.
  ///@param body The user update model.
  @Put(path: '/v1/authentication/user')
  Future<chopper.Response<ResponseUpdate>> _v1AuthenticationUserPut(
      {@Body() UserUpdateRequestModel? body});

  ///Changes your password.
  ///@param body The change password model.
  Future<chopper.Response<ResponseUpdate>> v1AuthenticationUserPasswordPut(
      {UserChangePasswordModel? body}) {
    generatedMapping.putIfAbsent(
        UserChangePasswordModel, () => UserChangePasswordModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1AuthenticationUserPasswordPut(body: body);
  }

  ///Changes your password.
  ///@param body The change password model.
  @Put(path: '/v1/authentication/user/password')
  Future<chopper.Response<ResponseUpdate>> _v1AuthenticationUserPasswordPut(
      {@Body() UserChangePasswordModel? body});

  ///The forgot password api.
  ///@param email The user email.
  ///@param language The language.
  Future<chopper.Response<ResponseUpdate>> v1AuthenticationForgotpasswordPost(
      {String? email, String? language}) {
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1AuthenticationForgotpasswordPost(
        email: email, language: language);
  }

  ///The forgot password api.
  ///@param email The user email.
  ///@param language The language.
  @Post(path: '/v1/authentication/forgotpassword', optionalBody: true)
  Future<chopper.Response<ResponseUpdate>> _v1AuthenticationForgotpasswordPost(
      {@Query('email') String? email, @Query('language') String? language});

  ///Validates the recover password token.
  ///@param token The recover password token.
  Future<chopper.Response<Response$>> v1AuthenticationRecoverpasswordGet(
      {String? token}) {
    generatedMapping.putIfAbsent(Response$, () => Response$.fromJsonFactory);

    return _v1AuthenticationRecoverpasswordGet(token: token);
  }

  ///Validates the recover password token.
  ///@param token The recover password token.
  @Get(path: '/v1/authentication/recoverpassword')
  Future<chopper.Response<Response$>> _v1AuthenticationRecoverpasswordGet(
      {@Query('token') String? token});

  ///Changes password.
  ///@param body
  Future<chopper.Response<ResponseUpdate>> v1AuthenticationRecoverpasswordPut(
      {UserRecoverPasswordModel? body}) {
    generatedMapping.putIfAbsent(UserRecoverPasswordModel,
        () => UserRecoverPasswordModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1AuthenticationRecoverpasswordPut(body: body);
  }

  ///Changes password.
  ///@param body
  @Put(path: '/v1/authentication/recoverpassword')
  Future<chopper.Response<ResponseUpdate>> _v1AuthenticationRecoverpasswordPut(
      {@Body() UserRecoverPasswordModel? body});

  ///
  Future<chopper.Response<FirebaseSettingsResponseObject>>
      v1FbConfigurationGet() {
    generatedMapping.putIfAbsent(FirebaseSettingsResponseObject,
        () => FirebaseSettingsResponseObject.fromJsonFactory);

    return _v1FbConfigurationGet();
  }

  ///
  @Get(path: '/v1/fb/configuration')
  Future<chopper.Response<FirebaseSettingsResponseObject>>
      _v1FbConfigurationGet();

  ///
  ///@param userId
  Future<chopper.Response<UserFirebaseTokenResponseList>>
      v1FbMessagingTokensGet({String? userId}) {
    generatedMapping.putIfAbsent(UserFirebaseTokenResponseList,
        () => UserFirebaseTokenResponseList.fromJsonFactory);

    return _v1FbMessagingTokensGet(userId: userId);
  }

  ///
  ///@param userId
  @Get(path: '/v1/fb/messaging/tokens')
  Future<chopper.Response<UserFirebaseTokenResponseList>>
      _v1FbMessagingTokensGet({@Query('userId') String? userId});

  ///
  ///@param body
  Future<chopper.Response<UserFirebaseTokenResponseObject>>
      v1FbMessagingTokensPut({UserTokenResquestModel? body}) {
    generatedMapping.putIfAbsent(
        UserTokenResquestModel, () => UserTokenResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(UserFirebaseTokenResponseObject,
        () => UserFirebaseTokenResponseObject.fromJsonFactory);

    return _v1FbMessagingTokensPut(body: body);
  }

  ///
  ///@param body
  @Put(path: '/v1/fb/messaging/tokens')
  Future<chopper.Response<UserFirebaseTokenResponseObject>>
      _v1FbMessagingTokensPut({@Body() UserTokenResquestModel? body});

  ///
  ///@param applicationId
  ///@param returnUrl
  Future<chopper.Response> v1AuthenticationGoogleGet(
      {String? applicationId, String? returnUrl}) {
    return _v1AuthenticationGoogleGet(
        applicationId: applicationId, returnUrl: returnUrl);
  }

  ///
  ///@param applicationId
  ///@param returnUrl
  @Get(path: '/v1/authentication/google')
  Future<chopper.Response> _v1AuthenticationGoogleGet(
      {@Query('applicationId') String? applicationId,
      @Query('returnUrl') String? returnUrl});

  ///
  ///@param code
  ///@param error
  ///@param api-version
  Future<chopper.Response<StringResponseObject>> loginGoogleGet(
      {String? code, String? error, String? apiVersion}) {
    generatedMapping.putIfAbsent(
        StringResponseObject, () => StringResponseObject.fromJsonFactory);

    return _loginGoogleGet(code: code, error: error, apiVersion: apiVersion);
  }

  ///
  ///@param code
  ///@param error
  ///@param api-version
  @Get(path: '/login-google')
  Future<chopper.Response<StringResponseObject>> _loginGoogleGet(
      {@Query('code') String? code,
      @Query('error') String? error,
      @Query('api-version') String? apiVersion});

  ///
  ///@param returnUrl
  Future<chopper.Response<StringResponseObject>> v1AuthenticationGoogleLinkGet(
      {String? returnUrl}) {
    generatedMapping.putIfAbsent(
        StringResponseObject, () => StringResponseObject.fromJsonFactory);

    return _v1AuthenticationGoogleLinkGet(returnUrl: returnUrl);
  }

  ///
  ///@param returnUrl
  @Get(path: '/v1/authentication/google/link')
  Future<chopper.Response<StringResponseObject>> _v1AuthenticationGoogleLinkGet(
      {@Query('returnUrl') String? returnUrl});

  ///
  ///@param body
  Future<chopper.Response<AccountResponseModelResponseObject>>
      v1AuthenticationGoogleCodePost({GoogleLoginRequestModel? body}) {
    generatedMapping.putIfAbsent(
        GoogleLoginRequestModel, () => GoogleLoginRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(AccountResponseModelResponseObject,
        () => AccountResponseModelResponseObject.fromJsonFactory);

    return _v1AuthenticationGoogleCodePost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/authentication/google/code')
  Future<chopper.Response<AccountResponseModelResponseObject>>
      _v1AuthenticationGoogleCodePost({@Body() GoogleLoginRequestModel? body});

  ///
  ///@param body
  Future<chopper.Response<AccountResponseModelResponseObject>>
      v1AuthenticationGoogleAccessTokenPost({GoogleLoginRequestModel? body}) {
    generatedMapping.putIfAbsent(
        GoogleLoginRequestModel, () => GoogleLoginRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(AccountResponseModelResponseObject,
        () => AccountResponseModelResponseObject.fromJsonFactory);

    return _v1AuthenticationGoogleAccessTokenPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/authentication/google/access_token')
  Future<chopper.Response<AccountResponseModelResponseObject>>
      _v1AuthenticationGoogleAccessTokenPost(
          {@Body() GoogleLoginRequestModel? body});

  ///The health check api.
  Future<chopper.Response> v1HealthCheckGet() {
    return _v1HealthCheckGet();
  }

  ///The health check api.
  @Get(path: '/v1/health/check')
  Future<chopper.Response> _v1HealthCheckGet();

  ///The database health check api.
  Future<chopper.Response> v1HealthDbcheckGet() {
    return _v1HealthDbcheckGet();
  }

  ///The database health check api.
  @Get(path: '/v1/health/dbcheck')
  Future<chopper.Response> _v1HealthDbcheckGet();

  ///
  ///@param parentAppId
  Future<chopper.Response<RoleModelListResponseObject>> v1AccountRolesGet(
      {String? parentAppId}) {
    generatedMapping.putIfAbsent(RoleModelListResponseObject,
        () => RoleModelListResponseObject.fromJsonFactory);

    return _v1AccountRolesGet(parentAppId: parentAppId);
  }

  ///
  ///@param parentAppId
  @Get(path: '/v1/account/roles')
  Future<chopper.Response<RoleModelListResponseObject>> _v1AccountRolesGet(
      {@Query('parentAppId') String? parentAppId});

  ///
  ///@param parentAppId
  Future<chopper.Response<RightModelListResponseObject>> v1AccountRightsGet(
      {String? parentAppId}) {
    generatedMapping.putIfAbsent(RightModelListResponseObject,
        () => RightModelListResponseObject.fromJsonFactory);

    return _v1AccountRightsGet(parentAppId: parentAppId);
  }

  ///
  ///@param parentAppId
  @Get(path: '/v1/account/rights')
  Future<chopper.Response<RightModelListResponseObject>> _v1AccountRightsGet(
      {@Query('parentAppId') String? parentAppId});

  ///
  ///@param body
  Future<chopper.Response<UserBaseModelResponseObject>> v1RegisterRegisterPost(
      {RegisterModel? body}) {
    generatedMapping.putIfAbsent(
        RegisterModel, () => RegisterModel.fromJsonFactory);
    generatedMapping.putIfAbsent(UserBaseModelResponseObject,
        () => UserBaseModelResponseObject.fromJsonFactory);

    return _v1RegisterRegisterPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/register/register')
  Future<chopper.Response<UserBaseModelResponseObject>> _v1RegisterRegisterPost(
      {@Body() RegisterModel? body});

  ///
  Future<chopper.Response<RoleSimpleInfoResponseModelListResponseObject>>
      v1RolesPublicGet() {
    generatedMapping.putIfAbsent(RoleSimpleInfoResponseModelListResponseObject,
        () => RoleSimpleInfoResponseModelListResponseObject.fromJsonFactory);

    return _v1RolesPublicGet();
  }

  ///
  @Get(path: '/v1/roles-public')
  Future<chopper.Response<RoleSimpleInfoResponseModelListResponseObject>>
      _v1RolesPublicGet();

  ///
  Future<chopper.Response<RoleSimpleInfoResponseModelResponseList>>
      v1RolesPublicAllGet() {
    generatedMapping.putIfAbsent(RoleSimpleInfoResponseModelResponseList,
        () => RoleSimpleInfoResponseModelResponseList.fromJsonFactory);

    return _v1RolesPublicAllGet();
  }

  ///
  @Get(path: '/v1/roles-public/all')
  Future<chopper.Response<RoleSimpleInfoResponseModelResponseList>>
      _v1RolesPublicAllGet();

  ///
  Future<chopper.Response<BooleanResponseObject>> v1RolesPublicCacheDelete() {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1RolesPublicCacheDelete();
  }

  ///
  @Delete(path: '/v1/roles-public/cache')
  Future<chopper.Response<BooleanResponseObject>> _v1RolesPublicCacheDelete();

  ///
  ///@param body
  Future<chopper.Response<AccountResponseModelResponseObject>>
      v1AuthSecureLoginPost({LoginRequestModel? body}) {
    generatedMapping.putIfAbsent(
        LoginRequestModel, () => LoginRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(AccountResponseModelResponseObject,
        () => AccountResponseModelResponseObject.fromJsonFactory);

    return _v1AuthSecureLoginPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/auth/secure-login')
  Future<chopper.Response<AccountResponseModelResponseObject>>
      _v1AuthSecureLoginPost({@Body() LoginRequestModel? body});

  ///
  ///@param position
  ///@param parentAppId
  Future<chopper.Response<NavigationModelResponseList>> v1UserNavigationsGet(
      {Object? position, String? parentAppId}) {
    generatedMapping.putIfAbsent(NavigationModelResponseList,
        () => NavigationModelResponseList.fromJsonFactory);

    return _v1UserNavigationsGet(position: position, parentAppId: parentAppId);
  }

  ///
  ///@param position
  ///@param parentAppId
  @Get(path: '/v1/user-navigations')
  Future<chopper.Response<NavigationModelResponseList>> _v1UserNavigationsGet(
      {@Query('position') Object? position,
      @Query('parentAppId') String? parentAppId});

  ///
  Future<chopper.Response<BooleanResponseObject>>
      v1UserNavigationsCacheDelete() {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1UserNavigationsCacheDelete();
  }

  ///
  @Delete(path: '/v1/user-navigations/cache')
  Future<chopper.Response<BooleanResponseObject>>
      _v1UserNavigationsCacheDelete();

  ///
  Future<chopper.Response<UserSimpleInfoResponseModelListResponseObject>>
      v1UsersPublicAllGet() {
    generatedMapping.putIfAbsent(UserSimpleInfoResponseModelListResponseObject,
        () => UserSimpleInfoResponseModelListResponseObject.fromJsonFactory);

    return _v1UsersPublicAllGet();
  }

  ///
  @Get(path: '/v1/users-public/all')
  Future<chopper.Response<UserSimpleInfoResponseModelListResponseObject>>
      _v1UsersPublicAllGet();

  ///
  Future<chopper.Response<BooleanResponseObject>> v1UsersPublicCacheDelete() {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1UsersPublicCacheDelete();
  }

  ///
  @Delete(path: '/v1/users-public/cache')
  Future<chopper.Response<BooleanResponseObject>> _v1UsersPublicCacheDelete();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  chopper.Response<ResultType> convertResponse<ResultType, Item>(
      chopper.Response response) {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
