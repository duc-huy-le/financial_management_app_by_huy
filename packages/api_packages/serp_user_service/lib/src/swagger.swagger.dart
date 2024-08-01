// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'package:chopper/chopper.dart' as chopper;
import 'swagger.enums.swagger.dart' as enums;
import 'swagger.enums.swagger.dart';
export 'swagger.enums.swagger.dart';

part 'swagger.swagger.chopper.dart';
part 'swagger.swagger.g.dart';

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

  ///API lấy về các thông tin xác thực lấy từ Identity Server theo Authentication Code
  ///@param authorizationCode
  Future<chopper.Response<Wso2ResultResponseObject>>
      apiV1Wso2AuthenticationinfoGet({String? authorizationCode}) {
    generatedMapping.putIfAbsent(Wso2ResultResponseObject,
        () => Wso2ResultResponseObject.fromJsonFactory);

    return _apiV1Wso2AuthenticationinfoGet(
        authorizationCode: authorizationCode);
  }

  ///API lấy về các thông tin xác thực lấy từ Identity Server theo Authentication Code
  ///@param authorizationCode
  @Get(path: '/api/v1/wso2/authenticationinfo')
  Future<chopper.Response<Wso2ResultResponseObject>>
      _apiV1Wso2AuthenticationinfoGet(
          {@Query('authorizationCode') String? authorizationCode});

  ///API làm mới access token dựa vào refresh token
  ///@param token
  Future<chopper.Response<Wso2ResultResponseObject>> apiV1Wso2RefreshtokenGet(
      {String? token}) {
    generatedMapping.putIfAbsent(Wso2ResultResponseObject,
        () => Wso2ResultResponseObject.fromJsonFactory);

    return _apiV1Wso2RefreshtokenGet(token: token);
  }

  ///API làm mới access token dựa vào refresh token
  ///@param token
  @Get(path: '/api/v1/wso2/refreshtoken')
  Future<chopper.Response<Wso2ResultResponseObject>> _apiV1Wso2RefreshtokenGet(
      {@Query('token') String? token});

  ///API lấy claim user dựa vào access token
  ///@param token
  Future<chopper.Response<Wso2UserInfoResponseObject>> apiV1Wso2GetUserInfoGet(
      {String? token}) {
    generatedMapping.putIfAbsent(Wso2UserInfoResponseObject,
        () => Wso2UserInfoResponseObject.fromJsonFactory);

    return _apiV1Wso2GetUserInfoGet(token: token);
  }

  ///API lấy claim user dựa vào access token
  ///@param token
  @Get(path: '/api/v1/wso2/get-user-info')
  Future<chopper.Response<Wso2UserInfoResponseObject>> _apiV1Wso2GetUserInfoGet(
      {@Query('token') String? token});

  ///
  ///@param body
  Future<chopper.Response<ApplicationModelResponseObject>>
      v1ApplicationsSetupPost({ApplicationCreateModel? body}) {
    generatedMapping.putIfAbsent(
        ApplicationCreateModel, () => ApplicationCreateModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ApplicationModelResponseObject,
        () => ApplicationModelResponseObject.fromJsonFactory);

    return _v1ApplicationsSetupPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/applications/setup')
  Future<chopper.Response<ApplicationModelResponseObject>>
      _v1ApplicationsSetupPost({@Body() ApplicationCreateModel? body});

  ///
  ///@param code
  Future<chopper.Response<ResponseUpdate>> v1ApplicationsResetAdminPassPost(
      {String? code}) {
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1ApplicationsResetAdminPassPost(code: code);
  }

  ///
  ///@param code
  @Post(path: '/v1/applications/reset-admin-pass', optionalBody: true)
  Future<chopper.Response<ResponseUpdate>> _v1ApplicationsResetAdminPassPost(
      {@Query('code') String? code});

  ///
  ///@param body
  Future<chopper.Response<ApplicationModelResponseObject>>
      v1ApplicationsSetupNavigationPost({ApplicationCreateModel? body}) {
    generatedMapping.putIfAbsent(
        ApplicationCreateModel, () => ApplicationCreateModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ApplicationModelResponseObject,
        () => ApplicationModelResponseObject.fromJsonFactory);

    return _v1ApplicationsSetupNavigationPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/applications/setup-navigation')
  Future<chopper.Response<ApplicationModelResponseObject>>
      _v1ApplicationsSetupNavigationPost(
          {@Body() ApplicationCreateModel? body});

  ///
  ///@param body
  Future<chopper.Response<ApplicationModelResponseObject>>
      v1ApplicationsSetupRolesPost({ApplicationCreateModel? body}) {
    generatedMapping.putIfAbsent(
        ApplicationCreateModel, () => ApplicationCreateModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ApplicationModelResponseObject,
        () => ApplicationModelResponseObject.fromJsonFactory);

    return _v1ApplicationsSetupRolesPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/applications/setup-roles')
  Future<chopper.Response<ApplicationModelResponseObject>>
      _v1ApplicationsSetupRolesPost({@Body() ApplicationCreateModel? body});

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
  ///@param page
  ///@param size
  ///@param filter
  ///@param sort
  Future<chopper.Response<RightModelResponsePagination>> v1RightsGet(
      {int? page, int? size, String? filter, String? sort}) {
    generatedMapping.putIfAbsent(RightModelResponsePagination,
        () => RightModelResponsePagination.fromJsonFactory);

    return _v1RightsGet(page: page, size: size, filter: filter, sort: sort);
  }

  ///
  ///@param page
  ///@param size
  ///@param filter
  ///@param sort
  @Get(path: '/v1/rights')
  Future<chopper.Response<RightModelResponsePagination>> _v1RightsGet(
      {@Query('page') int? page,
      @Query('size') int? size,
      @Query('filter') String? filter,
      @Query('sort') String? sort});

  ///
  ///@param rightIds
  Future<chopper.Response<ResponseDeleteMulti>> v1RightsDelete(
      {List<String>? rightIds}) {
    generatedMapping.putIfAbsent(
        ResponseDeleteMulti, () => ResponseDeleteMulti.fromJsonFactory);

    return _v1RightsDelete(rightIds: rightIds);
  }

  ///
  ///@param rightIds
  @Delete(path: '/v1/rights')
  Future<chopper.Response<ResponseDeleteMulti>> _v1RightsDelete(
      {@Query('rightIds') List<String>? rightIds});

  ///
  ///@param id
  Future<chopper.Response<ResponseDelete>> v1RightsIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ResponseDelete, () => ResponseDelete.fromJsonFactory);

    return _v1RightsIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/rights/{id}')
  Future<chopper.Response<ResponseDelete>> _v1RightsIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<RightModelResponseObject>> v1RightsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(RightModelResponseObject,
        () => RightModelResponseObject.fromJsonFactory);

    return _v1RightsIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/rights/{id}')
  Future<chopper.Response<RightModelResponseObject>> _v1RightsIdGet(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<RightModelResponseList>> v1RightsAllGet() {
    generatedMapping.putIfAbsent(
        RightModelResponseList, () => RightModelResponseList.fromJsonFactory);

    return _v1RightsAllGet();
  }

  ///
  @Get(path: '/v1/rights/all')
  Future<chopper.Response<RightModelResponseList>> _v1RightsAllGet();

  ///
  ///@param filter
  Future<chopper.Response<RightGroupModelListResponseObject>>
      v1RightsAllTreeGet({String? filter}) {
    generatedMapping.putIfAbsent(RightGroupModelListResponseObject,
        () => RightGroupModelListResponseObject.fromJsonFactory);

    return _v1RightsAllTreeGet(filter: filter);
  }

  ///
  ///@param filter
  @Get(path: '/v1/rights/all-tree')
  Future<chopper.Response<RightGroupModelListResponseObject>>
      _v1RightsAllTreeGet({@Query('filter') String? filter});

  ///
  ///@param rightId
  ///@param applicationId
  Future<chopper.Response<RightDetailModelListResponseObject>>
      v1RightsRightIdDetailGet(
          {required String? rightId, String? applicationId}) {
    generatedMapping.putIfAbsent(RightDetailModelListResponseObject,
        () => RightDetailModelListResponseObject.fromJsonFactory);

    return _v1RightsRightIdDetailGet(
        rightId: rightId, applicationId: applicationId);
  }

  ///
  ///@param rightId
  ///@param applicationId
  @Get(path: '/v1/rights/{rightId}/detail')
  Future<chopper.Response<RightDetailModelListResponseObject>>
      _v1RightsRightIdDetailGet(
          {@Path('rightId') required String? rightId,
          @Query('applicationId') String? applicationId});

  ///
  ///@param rightId
  Future<chopper.Response<RoleModelResponseList>> v1RightsRightIdRolesGet(
      {required String? rightId}) {
    generatedMapping.putIfAbsent(
        RoleModelResponseList, () => RoleModelResponseList.fromJsonFactory);

    return _v1RightsRightIdRolesGet(rightId: rightId);
  }

  ///
  ///@param rightId
  @Get(path: '/v1/rights/{rightId}/roles')
  Future<chopper.Response<RoleModelResponseList>> _v1RightsRightIdRolesGet(
      {@Path('rightId') required String? rightId});

  ///
  ///@param rightId
  ///@param body
  Future<chopper.Response<Response$>> v1RightsRightIdRolesPost(
      {required String? rightId, List<String>? body}) {
    generatedMapping.putIfAbsent(Response$, () => Response$.fromJsonFactory);

    return _v1RightsRightIdRolesPost(rightId: rightId, body: body);
  }

  ///
  ///@param rightId
  ///@param body
  @Post(path: '/v1/rights/{rightId}/roles')
  Future<chopper.Response<Response$>> _v1RightsRightIdRolesPost(
      {@Path('rightId') required String? rightId, @Body() List<String>? body});

  ///
  ///@param roleIds
  ///@param rightId
  Future<chopper.Response<Response$>> v1RightsRightIdRolesDelete(
      {List<String>? roleIds, required String? rightId}) {
    generatedMapping.putIfAbsent(Response$, () => Response$.fromJsonFactory);

    return _v1RightsRightIdRolesDelete(roleIds: roleIds, rightId: rightId);
  }

  ///
  ///@param roleIds
  ///@param rightId
  @Delete(path: '/v1/rights/{rightId}/roles')
  Future<chopper.Response<Response$>> _v1RightsRightIdRolesDelete(
      {@Query('roleIds') List<String>? roleIds,
      @Path('rightId') required String? rightId});

  ///
  Future<chopper.Response<BooleanResponseObject>> v1RightsCacheDelete() {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1RightsCacheDelete();
  }

  ///
  @Delete(path: '/v1/rights/cache')
  Future<chopper.Response<BooleanResponseObject>> _v1RightsCacheDelete();

  ///
  ///@param page
  ///@param size
  ///@param filter
  ///@param sort
  Future<chopper.Response<NavigationModelResponsePagination>> v1NavigationsGet(
      {int? page, int? size, String? filter, String? sort}) {
    generatedMapping.putIfAbsent(NavigationModelResponsePagination,
        () => NavigationModelResponsePagination.fromJsonFactory);

    return _v1NavigationsGet(
        page: page, size: size, filter: filter, sort: sort);
  }

  ///
  ///@param page
  ///@param size
  ///@param filter
  ///@param sort
  @Get(path: '/v1/navigations')
  Future<chopper.Response<NavigationModelResponsePagination>> _v1NavigationsGet(
      {@Query('page') int? page,
      @Query('size') int? size,
      @Query('filter') String? filter,
      @Query('sort') String? sort});

  ///
  ///@param body
  Future<chopper.Response<NavigationModelResponseObject>> v1NavigationsPost(
      {NavigationCreateRequestModel? body}) {
    generatedMapping.putIfAbsent(NavigationCreateRequestModel,
        () => NavigationCreateRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(NavigationModelResponseObject,
        () => NavigationModelResponseObject.fromJsonFactory);

    return _v1NavigationsPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/navigations')
  Future<chopper.Response<NavigationModelResponseObject>> _v1NavigationsPost(
      {@Body() NavigationCreateRequestModel? body});

  ///
  ///@param id
  Future<chopper.Response<NavigationModelResponseObject>> v1NavigationsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(NavigationModelResponseObject,
        () => NavigationModelResponseObject.fromJsonFactory);

    return _v1NavigationsIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/navigations/{id}')
  Future<chopper.Response<NavigationModelResponseObject>> _v1NavigationsIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ResponseUpdate>> v1NavigationsIdPut(
      {required String? id, NavigationUpdateRequestModel? body}) {
    generatedMapping.putIfAbsent(NavigationUpdateRequestModel,
        () => NavigationUpdateRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1NavigationsIdPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/navigations/{id}')
  Future<chopper.Response<ResponseUpdate>> _v1NavigationsIdPut(
      {@Path('id') required String? id,
      @Body() NavigationUpdateRequestModel? body});

  ///
  ///@param id
  Future<chopper.Response<ResponseDelete>> v1NavigationsIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ResponseDelete, () => ResponseDelete.fromJsonFactory);

    return _v1NavigationsIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/navigations/{id}')
  Future<chopper.Response<ResponseDelete>> _v1NavigationsIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param code
  ///@param navigationId
  Future<chopper.Response<BooleanResponseObject>>
      v1NavigationsCodeIsCodeExistGet(
          {required String? code, String? navigationId}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1NavigationsCodeIsCodeExistGet(
        code: code, navigationId: navigationId);
  }

  ///
  ///@param code
  ///@param navigationId
  @Get(path: '/v1/navigations/{code}/is-code-exist')
  Future<chopper.Response<BooleanResponseObject>>
      _v1NavigationsCodeIsCodeExistGet(
          {@Path('code') required String? code,
          @Query('navigationId') String? navigationId});

  ///
  ///@param urlRewrite
  ///@param navigationId
  Future<chopper.Response<BooleanResponseObject>>
      v1NavigationsUrlRewriteIsUrlRewriteExistGet(
          {required String? urlRewrite, String? navigationId}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1NavigationsUrlRewriteIsUrlRewriteExistGet(
        urlRewrite: urlRewrite, navigationId: navigationId);
  }

  ///
  ///@param urlRewrite
  ///@param navigationId
  @Get(path: '/v1/navigations/{urlRewrite}/is-url-rewrite-exist')
  Future<chopper.Response<BooleanResponseObject>>
      _v1NavigationsUrlRewriteIsUrlRewriteExistGet(
          {@Path('urlRewrite') required String? urlRewrite,
          @Query('navigationId') String? navigationId});

  ///
  ///@param body
  Future<chopper.Response<NavigationModelResponseList>>
      v1NavigationsCreateManyPost({List<NavigationCreateRequestModel>? body}) {
    generatedMapping.putIfAbsent(NavigationModelResponseList,
        () => NavigationModelResponseList.fromJsonFactory);

    return _v1NavigationsCreateManyPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/navigations/create-many')
  Future<chopper.Response<NavigationModelResponseList>>
      _v1NavigationsCreateManyPost(
          {@Body() List<NavigationCreateRequestModel>? body});

  ///
  ///@param id
  Future<chopper.Response<StringResponseList>> v1NavigationsIdRightsGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        StringResponseList, () => StringResponseList.fromJsonFactory);

    return _v1NavigationsIdRightsGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/navigations/{id}/rights')
  Future<chopper.Response<StringResponseList>> _v1NavigationsIdRightsGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ResponseUpdate>> v1NavigationsIdRightsPost(
      {required String? id, List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1NavigationsIdRightsPost(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Post(path: '/v1/navigations/{id}/rights')
  Future<chopper.Response<ResponseUpdate>> _v1NavigationsIdRightsPost(
      {@Path('id') required String? id, @Body() List<String>? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ResponseUpdate>> v1NavigationsIdRightsPut(
      {required String? id, List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1NavigationsIdRightsPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/navigations/{id}/rights')
  Future<chopper.Response<ResponseUpdate>> _v1NavigationsIdRightsPut(
      {@Path('id') required String? id, @Body() List<String>? body});

  ///
  ///@param code
  Future<chopper.Response<ResponseDelete>> v1NavigationsBycodeCodeDelete(
      {required String? code}) {
    generatedMapping.putIfAbsent(
        ResponseDelete, () => ResponseDelete.fromJsonFactory);

    return _v1NavigationsBycodeCodeDelete(code: code);
  }

  ///
  ///@param code
  @Delete(path: '/v1/navigations/bycode/{code}')
  Future<chopper.Response<ResponseDelete>> _v1NavigationsBycodeCodeDelete(
      {@Path('code') required String? code});

  ///
  ///@param body
  Future<chopper.Response<ResponseDelete>> v1NavigationsDeleteManyPost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseDelete, () => ResponseDelete.fromJsonFactory);

    return _v1NavigationsDeleteManyPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/navigations/delete-many')
  Future<chopper.Response<ResponseDelete>> _v1NavigationsDeleteManyPost(
      {@Body() List<String>? body});

  ///
  ///@param body
  Future<chopper.Response<ResponseDelete>> v1NavigationsDeleteManyBycodePost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseDelete, () => ResponseDelete.fromJsonFactory);

    return _v1NavigationsDeleteManyBycodePost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/navigations/delete-many/bycode')
  Future<chopper.Response<ResponseDelete>> _v1NavigationsDeleteManyBycodePost(
      {@Body() List<String>? body});

  ///
  Future<chopper.Response<BooleanResponseObject>> v1NavigationsCacheDelete() {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1NavigationsCacheDelete();
  }

  ///
  @Delete(path: '/v1/navigations/cache')
  Future<chopper.Response<BooleanResponseObject>> _v1NavigationsCacheDelete();

  ///
  Future<chopper.Response<RightMapRoleResponseModelResponseList>>
      v1RightMapRoleGet() {
    generatedMapping.putIfAbsent(RightMapRoleResponseModelResponseList,
        () => RightMapRoleResponseModelResponseList.fromJsonFactory);

    return _v1RightMapRoleGet();
  }

  ///
  @Get(path: '/v1/right-map-role')
  Future<chopper.Response<RightMapRoleResponseModelResponseList>>
      _v1RightMapRoleGet();

  ///
  ///@param body
  Future<chopper.Response<RightMapRoleResponseModelResponseList>>
      v1RightMapRolePost({List<RightMapRoleRequestModel>? body}) {
    generatedMapping.putIfAbsent(RightMapRoleResponseModelResponseList,
        () => RightMapRoleResponseModelResponseList.fromJsonFactory);

    return _v1RightMapRolePost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/right-map-role')
  Future<chopper.Response<RightMapRoleResponseModelResponseList>>
      _v1RightMapRolePost({@Body() List<RightMapRoleRequestModel>? body});

  ///
  ///@param body
  Future<chopper.Response<RightMapRoleResponseModelResponseList>>
      v1RightMapRolePut({List<RightMapRoleRequestModel>? body}) {
    generatedMapping.putIfAbsent(RightMapRoleResponseModelResponseList,
        () => RightMapRoleResponseModelResponseList.fromJsonFactory);

    return _v1RightMapRolePut(body: body);
  }

  ///
  ///@param body
  @Put(path: '/v1/right-map-role')
  Future<chopper.Response<RightMapRoleResponseModelResponseList>>
      _v1RightMapRolePut({@Body() List<RightMapRoleRequestModel>? body});

  ///
  ///@param body
  Future<chopper.Response<RightMapRoleResponseModelResponseList>>
      v1RightMapRoleDeleteManyPost({List<RightMapRoleRequestModel>? body}) {
    generatedMapping.putIfAbsent(RightMapRoleResponseModelResponseList,
        () => RightMapRoleResponseModelResponseList.fromJsonFactory);

    return _v1RightMapRoleDeleteManyPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/right-map-role/delete-many')
  Future<chopper.Response<RightMapRoleResponseModelResponseList>>
      _v1RightMapRoleDeleteManyPost(
          {@Body() List<RightMapRoleRequestModel>? body});

  ///
  ///@param page
  ///@param size
  ///@param filter
  ///@param sort
  Future<chopper.Response<RoleModelResponsePagination>> v1RolesGet(
      {int? page, int? size, String? filter, String? sort}) {
    generatedMapping.putIfAbsent(RoleModelResponsePagination,
        () => RoleModelResponsePagination.fromJsonFactory);

    return _v1RolesGet(page: page, size: size, filter: filter, sort: sort);
  }

  ///
  ///@param page
  ///@param size
  ///@param filter
  ///@param sort
  @Get(path: '/v1/roles')
  Future<chopper.Response<RoleModelResponsePagination>> _v1RolesGet(
      {@Query('page') int? page,
      @Query('size') int? size,
      @Query('filter') String? filter,
      @Query('sort') String? sort});

  ///
  ///@param body
  Future<chopper.Response<RoleModelResponseObject>> v1RolesPost(
      {RoleCreateModel? body}) {
    generatedMapping.putIfAbsent(
        RoleCreateModel, () => RoleCreateModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        RoleModelResponseObject, () => RoleModelResponseObject.fromJsonFactory);

    return _v1RolesPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/roles')
  Future<chopper.Response<RoleModelResponseObject>> _v1RolesPost(
      {@Body() RoleCreateModel? body});

  ///
  ///@param body
  Future<chopper.Response<ResponseDeleteMulti>> v1RolesDelete(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseDeleteMulti, () => ResponseDeleteMulti.fromJsonFactory);

    return _v1RolesDelete(body: body);
  }

  ///
  ///@param body
  @Delete(path: '/v1/roles')
  Future<chopper.Response<ResponseDeleteMulti>> _v1RolesDelete(
      {@Body() List<String>? body});

  ///
  ///@param id
  Future<chopper.Response<RoleModelResponseObject>> v1RolesIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        RoleModelResponseObject, () => RoleModelResponseObject.fromJsonFactory);

    return _v1RolesIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/roles/{id}')
  Future<chopper.Response<RoleModelResponseObject>> _v1RolesIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<RoleModelResponseObject>> v1RolesIdPut(
      {required String? id, RoleUpdateModel? body}) {
    generatedMapping.putIfAbsent(
        RoleUpdateModel, () => RoleUpdateModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        RoleModelResponseObject, () => RoleModelResponseObject.fromJsonFactory);

    return _v1RolesIdPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/roles/{id}')
  Future<chopper.Response<RoleModelResponseObject>> _v1RolesIdPut(
      {@Path('id') required String? id, @Body() RoleUpdateModel? body});

  ///
  ///@param id
  Future<chopper.Response<ResponseDelete>> v1RolesIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ResponseDelete, () => ResponseDelete.fromJsonFactory);

    return _v1RolesIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/roles/{id}')
  Future<chopper.Response<ResponseDelete>> _v1RolesIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<RoleModelResponseList>> v1RolesAllGet() {
    generatedMapping.putIfAbsent(
        RoleModelResponseList, () => RoleModelResponseList.fromJsonFactory);

    return _v1RolesAllGet();
  }

  ///
  @Get(path: '/v1/roles/all')
  Future<chopper.Response<RoleModelResponseList>> _v1RolesAllGet();

  ///
  ///@param id
  Future<chopper.Response<RoleDetailModelListResponseObject>>
      v1RolesIdDetailGet({required String? id}) {
    generatedMapping.putIfAbsent(RoleDetailModelListResponseObject,
        () => RoleDetailModelListResponseObject.fromJsonFactory);

    return _v1RolesIdDetailGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/roles/{id}/detail')
  Future<chopper.Response<RoleDetailModelListResponseObject>>
      _v1RolesIdDetailGet({@Path('id') required String? id});

  ///
  ///@param code
  Future<chopper.Response<BaseUserModelListResponseObject>>
      v1RolesBycodeCodeGet({required String? code}) {
    generatedMapping.putIfAbsent(BaseUserModelListResponseObject,
        () => BaseUserModelListResponseObject.fromJsonFactory);

    return _v1RolesBycodeCodeGet(code: code);
  }

  ///
  ///@param code
  @Get(path: '/v1/roles/bycode/{code}')
  Future<chopper.Response<BaseUserModelListResponseObject>>
      _v1RolesBycodeCodeGet({@Path('code') required String? code});

  ///
  ///@param code
  Future<chopper.Response<RoleDetailModelListResponseObject>>
      v1RolesBycodeCodeDetailGet({required String? code}) {
    generatedMapping.putIfAbsent(RoleDetailModelListResponseObject,
        () => RoleDetailModelListResponseObject.fromJsonFactory);

    return _v1RolesBycodeCodeDetailGet(code: code);
  }

  ///
  ///@param code
  @Get(path: '/v1/roles/bycode/{code}/detail')
  Future<chopper.Response<RoleDetailModelListResponseObject>>
      _v1RolesBycodeCodeDetailGet({@Path('code') required String? code});

  ///
  ///@param code
  Future<chopper.Response<BaseUserModelListResponseObject>>
      v1RolesBycodeCodeUsersGet({required String? code}) {
    generatedMapping.putIfAbsent(BaseUserModelListResponseObject,
        () => BaseUserModelListResponseObject.fromJsonFactory);

    return _v1RolesBycodeCodeUsersGet(code: code);
  }

  ///
  ///@param code
  @Get(path: '/v1/roles/bycode/{code}/users')
  Future<chopper.Response<BaseUserModelListResponseObject>>
      _v1RolesBycodeCodeUsersGet({@Path('code') required String? code});

  ///
  ///@param id
  Future<chopper.Response<SimpleRightModelListResponseObject>>
      v1RolesIdRightsGet({required String? id}) {
    generatedMapping.putIfAbsent(SimpleRightModelListResponseObject,
        () => SimpleRightModelListResponseObject.fromJsonFactory);

    return _v1RolesIdRightsGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/roles/{id}/rights')
  Future<chopper.Response<SimpleRightModelListResponseObject>>
      _v1RolesIdRightsGet({@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<RoleDetailModelResponseObject>> v1RolesIdRightsPut(
      {required String? id, List<String>? body}) {
    generatedMapping.putIfAbsent(RoleDetailModelResponseObject,
        () => RoleDetailModelResponseObject.fromJsonFactory);

    return _v1RolesIdRightsPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/roles/{id}/rights')
  Future<chopper.Response<RoleDetailModelResponseObject>> _v1RolesIdRightsPut(
      {@Path('id') required String? id, @Body() List<String>? body});

  ///
  ///@param roleId
  ///@param body
  Future<chopper.Response<Response$>> v1RolesRoleIdRightsPost(
      {required String? roleId, List<String>? body}) {
    generatedMapping.putIfAbsent(Response$, () => Response$.fromJsonFactory);

    return _v1RolesRoleIdRightsPost(roleId: roleId, body: body);
  }

  ///
  ///@param roleId
  ///@param body
  @Post(path: '/v1/roles/{roleId}/rights')
  Future<chopper.Response<Response$>> _v1RolesRoleIdRightsPost(
      {@Path('roleId') required String? roleId, @Body() List<String>? body});

  ///
  ///@param roleId
  ///@param rightIds
  Future<chopper.Response<ResponseDelete>> v1RolesRoleIdRightsDelete(
      {required String? roleId, List<String>? rightIds}) {
    generatedMapping.putIfAbsent(
        ResponseDelete, () => ResponseDelete.fromJsonFactory);

    return _v1RolesRoleIdRightsDelete(roleId: roleId, rightIds: rightIds);
  }

  ///
  ///@param roleId
  ///@param rightIds
  @Delete(path: '/v1/roles/{roleId}/rights')
  Future<chopper.Response<ResponseDelete>> _v1RolesRoleIdRightsDelete(
      {@Path('roleId') required String? roleId,
      @Query('rightIds') List<String>? rightIds});

  ///
  ///@param id
  Future<chopper.Response<UserBaseModelListResponseObject>> v1RolesIdUsersGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(UserBaseModelListResponseObject,
        () => UserBaseModelListResponseObject.fromJsonFactory);

    return _v1RolesIdUsersGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/roles/{id}/users')
  Future<chopper.Response<UserBaseModelListResponseObject>> _v1RolesIdUsersGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<Response$>> v1RolesIdUsersDelete(
      {required String? id, List<String>? body}) {
    generatedMapping.putIfAbsent(Response$, () => Response$.fromJsonFactory);

    return _v1RolesIdUsersDelete(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Delete(path: '/v1/roles/{id}/users')
  Future<chopper.Response<Response$>> _v1RolesIdUsersDelete(
      {@Path('id') required String? id, @Body() List<String>? body});

  ///
  ///@param roleId
  ///@param body
  Future<chopper.Response<ResponseUpdateMulti>> v1RolesRoleIdUsersPut(
      {required String? roleId, List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseUpdateMulti, () => ResponseUpdateMulti.fromJsonFactory);

    return _v1RolesRoleIdUsersPut(roleId: roleId, body: body);
  }

  ///
  ///@param roleId
  ///@param body
  @Put(path: '/v1/roles/{roleId}/users')
  Future<chopper.Response<ResponseUpdateMulti>> _v1RolesRoleIdUsersPut(
      {@Path('roleId') required String? roleId, @Body() List<String>? body});

  ///
  ///@param roleId
  ///@param body
  Future<chopper.Response<ResponseUpdateMulti>> v1RolesRoleIdUsersPost(
      {required String? roleId, List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseUpdateMulti, () => ResponseUpdateMulti.fromJsonFactory);

    return _v1RolesRoleIdUsersPost(roleId: roleId, body: body);
  }

  ///
  ///@param roleId
  ///@param body
  @Post(path: '/v1/roles/{roleId}/users')
  Future<chopper.Response<ResponseUpdateMulti>> _v1RolesRoleIdUsersPost(
      {@Path('roleId') required String? roleId, @Body() List<String>? body});

  ///
  ///@param roleCode
  ///@param roleId
  Future<chopper.Response<BooleanResponseObject>> v1RolesRoleCodeIsAvailableGet(
      {required String? roleCode, String? roleId}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1RolesRoleCodeIsAvailableGet(roleCode: roleCode, roleId: roleId);
  }

  ///
  ///@param roleCode
  ///@param roleId
  @Get(path: '/v1/roles/{roleCode}/IsAvailable')
  Future<chopper.Response<BooleanResponseObject>>
      _v1RolesRoleCodeIsAvailableGet(
          {@Path('roleCode') required String? roleCode,
          @Query('roleId') String? roleId});

  ///
  Future<chopper.Response<BooleanResponseObject>> v1RolesCacheDelete() {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1RolesCacheDelete();
  }

  ///
  @Delete(path: '/v1/roles/cache')
  Future<chopper.Response<BooleanResponseObject>> _v1RolesCacheDelete();

  ///
  ///@param roleId
  Future<chopper.Response<NavigationModelResponseList>>
      v1RolesRoleIdNavigationsGet({required String? roleId}) {
    generatedMapping.putIfAbsent(NavigationModelResponseList,
        () => NavigationModelResponseList.fromJsonFactory);

    return _v1RolesRoleIdNavigationsGet(roleId: roleId);
  }

  ///
  ///@param roleId
  @Get(path: '/v1/roles/{roleId}/navigations')
  Future<chopper.Response<NavigationModelResponseList>>
      _v1RolesRoleIdNavigationsGet({@Path('roleId') required String? roleId});

  ///
  ///@param navigationId
  Future<chopper.Response<RoleModelResponseList>>
      v1NavigationsNavigationIdRolesGet({required String? navigationId}) {
    generatedMapping.putIfAbsent(
        RoleModelResponseList, () => RoleModelResponseList.fromJsonFactory);

    return _v1NavigationsNavigationIdRolesGet(navigationId: navigationId);
  }

  ///
  ///@param navigationId
  @Get(path: '/v1/navigations/{navigationId}/roles')
  Future<chopper.Response<RoleModelResponseList>>
      _v1NavigationsNavigationIdRolesGet(
          {@Path('navigationId') required String? navigationId});

  ///
  ///@param name
  ///@param code
  ///@param page
  ///@param size
  ///@param filter
  ///@param sort
  Future<chopper.Response<RoleSimpleInfoResponseModelResponsePagination>>
      v1RolesInfoGet(
          {String? name,
          String? code,
          int? page,
          int? size,
          String? filter,
          String? sort}) {
    generatedMapping.putIfAbsent(RoleSimpleInfoResponseModelResponsePagination,
        () => RoleSimpleInfoResponseModelResponsePagination.fromJsonFactory);

    return _v1RolesInfoGet(
        name: name,
        code: code,
        page: page,
        size: size,
        filter: filter,
        sort: sort);
  }

  ///
  ///@param name
  ///@param code
  ///@param page
  ///@param size
  ///@param filter
  ///@param sort
  @Get(path: '/v1/roles/info')
  Future<chopper.Response<RoleSimpleInfoResponseModelResponsePagination>>
      _v1RolesInfoGet(
          {@Query('name') String? name,
          @Query('code') String? code,
          @Query('page') int? page,
          @Query('size') int? size,
          @Query('filter') String? filter,
          @Query('sort') String? sort});

  ///
  ///@param applicationId
  ///@param module
  Future<chopper.Response<Response$>> v1SeeddataRightsPost(
      {String? applicationId, String? module}) {
    generatedMapping.putIfAbsent(Response$, () => Response$.fromJsonFactory);

    return _v1SeeddataRightsPost(applicationId: applicationId, module: module);
  }

  ///
  ///@param applicationId
  ///@param module
  @Post(path: '/v1/seeddata/rights', optionalBody: true)
  Future<chopper.Response<Response$>> _v1SeeddataRightsPost(
      {@Query('applicationId') String? applicationId,
      @Query('module') String? module});

  ///
  ///@param applicationId
  ///@param module
  Future<chopper.Response<Response$>> v1SeeddataRolesPost(
      {String? applicationId, String? module}) {
    generatedMapping.putIfAbsent(Response$, () => Response$.fromJsonFactory);

    return _v1SeeddataRolesPost(applicationId: applicationId, module: module);
  }

  ///
  ///@param applicationId
  ///@param module
  @Post(path: '/v1/seeddata/roles', optionalBody: true)
  Future<chopper.Response<Response$>> _v1SeeddataRolesPost(
      {@Query('applicationId') String? applicationId,
      @Query('module') String? module});

  ///
  ///@param applicationId
  ///@param module
  Future<chopper.Response<Response$>> v1SeeddataNavigationsPost(
      {String? applicationId, String? module}) {
    generatedMapping.putIfAbsent(Response$, () => Response$.fromJsonFactory);

    return _v1SeeddataNavigationsPost(
        applicationId: applicationId, module: module);
  }

  ///
  ///@param applicationId
  ///@param module
  @Post(path: '/v1/seeddata/navigations', optionalBody: true)
  Future<chopper.Response<Response$>> _v1SeeddataNavigationsPost(
      {@Query('applicationId') String? applicationId,
      @Query('module') String? module});

  ///
  ///@param applicationId
  Future<chopper.Response<Response$>> v1SeeddataUsersPost(
      {String? applicationId}) {
    generatedMapping.putIfAbsent(Response$, () => Response$.fromJsonFactory);

    return _v1SeeddataUsersPost(applicationId: applicationId);
  }

  ///
  ///@param applicationId
  @Post(path: '/v1/seeddata/users', optionalBody: true)
  Future<chopper.Response<Response$>> _v1SeeddataUsersPost(
      {@Query('applicationId') String? applicationId});

  ///
  Future<chopper.Response<ResponseUpdateMulti>> v1SigningGet() {
    generatedMapping.putIfAbsent(
        ResponseUpdateMulti, () => ResponseUpdateMulti.fromJsonFactory);

    return _v1SigningGet();
  }

  ///
  @Get(path: '/v1/signing')
  Future<chopper.Response<ResponseUpdateMulti>> _v1SigningGet();

  ///The email sending check api.
  Future<chopper.Response> v1StatusEmailCheckPost() {
    return _v1StatusEmailCheckPost();
  }

  ///The email sending check api.
  @Post(path: '/v1/status/email/check', optionalBody: true)
  Future<chopper.Response> _v1StatusEmailCheckPost();

  ///
  ///@param body
  Future<chopper.Response<ApplicationModelResponseObject>> v1ApplicationsPost(
      {ApplicationCreateModel? body}) {
    generatedMapping.putIfAbsent(
        ApplicationCreateModel, () => ApplicationCreateModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ApplicationModelResponseObject,
        () => ApplicationModelResponseObject.fromJsonFactory);

    return _v1ApplicationsPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/applications')
  Future<chopper.Response<ApplicationModelResponseObject>> _v1ApplicationsPost(
      {@Body() ApplicationCreateModel? body});

  ///
  ///@param id
  Future<chopper.Response<ResponseDelete>> v1ApplicationsDelete({String? id}) {
    generatedMapping.putIfAbsent(
        ResponseDelete, () => ResponseDelete.fromJsonFactory);

    return _v1ApplicationsDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/applications')
  Future<chopper.Response<ResponseDelete>> _v1ApplicationsDelete(
      {@Query('id') String? id});

  ///
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  Future<chopper.Response<ApplicationModelResponseList>> v1ApplicationsGet(
      {int? page, int? size, String? sort, String? filter}) {
    generatedMapping.putIfAbsent(ApplicationModelResponseList,
        () => ApplicationModelResponseList.fromJsonFactory);

    return _v1ApplicationsGet(
        page: page, size: size, sort: sort, filter: filter);
  }

  ///
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  @Get(path: '/v1/applications')
  Future<chopper.Response<ApplicationModelResponseList>> _v1ApplicationsGet(
      {@Query('page') int? page,
      @Query('size') int? size,
      @Query('sort') String? sort,
      @Query('filter') String? filter});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ResponseUpdate>> v1ApplicationsIdPut(
      {required String? id, ApplicationUpdateModel? body}) {
    generatedMapping.putIfAbsent(
        ApplicationUpdateModel, () => ApplicationUpdateModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1ApplicationsIdPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/applications/{id}')
  Future<chopper.Response<ResponseUpdate>> _v1ApplicationsIdPut(
      {@Path('id') required String? id, @Body() ApplicationUpdateModel? body});

  ///
  ///@param id
  Future<chopper.Response<ApplicationModelResponseObject>> v1ApplicationsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(ApplicationModelResponseObject,
        () => ApplicationModelResponseObject.fromJsonFactory);

    return _v1ApplicationsIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/applications/{id}')
  Future<chopper.Response<ApplicationModelResponseObject>> _v1ApplicationsIdGet(
      {@Path('id') required String? id});

  ///
  ///@param listId
  Future<chopper.Response<ResponseDeleteMulti>> v1ApplicationsDeleteManyPost(
      {List<String>? listId}) {
    generatedMapping.putIfAbsent(
        ResponseDeleteMulti, () => ResponseDeleteMulti.fromJsonFactory);

    return _v1ApplicationsDeleteManyPost(listId: listId);
  }

  ///
  ///@param listId
  @Post(path: '/v1/applications/delete-many', optionalBody: true)
  Future<chopper.Response<ResponseDeleteMulti>> _v1ApplicationsDeleteManyPost(
      {@Query('listId') List<String>? listId});

  ///
  ///@param id
  ///@param page
  ///@param size
  ///@param filter
  ///@param sort
  Future<chopper.Response<ApplicationModelResponsePagination>>
      v1ApplicationsIdChildrenGet(
          {required String? id,
          int? page,
          int? size,
          String? filter,
          String? sort}) {
    generatedMapping.putIfAbsent(ApplicationModelResponsePagination,
        () => ApplicationModelResponsePagination.fromJsonFactory);

    return _v1ApplicationsIdChildrenGet(
        id: id, page: page, size: size, filter: filter, sort: sort);
  }

  ///
  ///@param id
  ///@param page
  ///@param size
  ///@param filter
  ///@param sort
  @Get(path: '/v1/applications/{id}/children')
  Future<chopper.Response<ApplicationModelResponsePagination>>
      _v1ApplicationsIdChildrenGet(
          {@Path('id') required String? id,
          @Query('page') int? page,
          @Query('size') int? size,
          @Query('filter') String? filter,
          @Query('sort') String? sort});

  ///
  ///@param page
  ///@param size
  ///@param filter
  ///@param sort
  Future<chopper.Response<ApplicationModelResponsePagination>>
      v1ApplicationsFilterGet(
          {int? page, int? size, String? filter, String? sort}) {
    generatedMapping.putIfAbsent(ApplicationModelResponsePagination,
        () => ApplicationModelResponsePagination.fromJsonFactory);

    return _v1ApplicationsFilterGet(
        page: page, size: size, filter: filter, sort: sort);
  }

  ///
  ///@param page
  ///@param size
  ///@param filter
  ///@param sort
  @Get(path: '/v1/applications/filter')
  Future<chopper.Response<ApplicationModelResponsePagination>>
      _v1ApplicationsFilterGet(
          {@Query('page') int? page,
          @Query('size') int? size,
          @Query('filter') String? filter,
          @Query('sort') String? sort});

  ///
  ///@param code
  Future<chopper.Response<ApplicationModelResponseList>>
      v1ApplicationsCodeVerifyCodeGet({required String? code}) {
    generatedMapping.putIfAbsent(ApplicationModelResponseList,
        () => ApplicationModelResponseList.fromJsonFactory);

    return _v1ApplicationsCodeVerifyCodeGet(code: code);
  }

  ///
  ///@param code
  @Get(path: '/v1/applications/{code}/verify-code')
  Future<chopper.Response<ApplicationModelResponseList>>
      _v1ApplicationsCodeVerifyCodeGet({@Path('code') required String? code});

  ///
  ///@param id
  ///@param code
  Future<chopper.Response<ApplicationModelResponseList>>
      v1ApplicationsIdVerifyCodeGet(
          {required String? id, required String? code}) {
    generatedMapping.putIfAbsent(ApplicationModelResponseList,
        () => ApplicationModelResponseList.fromJsonFactory);

    return _v1ApplicationsIdVerifyCodeGet(id: id, code: code);
  }

  ///
  ///@param id
  ///@param code
  @Get(path: '/v1/applications/{id}/verify/{code}')
  Future<chopper.Response<ApplicationModelResponseList>>
      _v1ApplicationsIdVerifyCodeGet(
          {@Path('id') required String? id,
          @Path('code') required String? code});

  ///
  Future<chopper.Response<UsersByApplicationResponseModelResponseList>>
      v1UserAppGet() {
    generatedMapping.putIfAbsent(UsersByApplicationResponseModelResponseList,
        () => UsersByApplicationResponseModelResponseList.fromJsonFactory);

    return _v1UserAppGet();
  }

  ///
  @Get(path: '/v1/user-app')
  Future<chopper.Response<UsersByApplicationResponseModelResponseList>>
      _v1UserAppGet();

  ///
  ///@param userId
  Future<chopper.Response<ApplicationModelResponseList>>
      v1UsersUserIdApplicationsGet({required String? userId}) {
    generatedMapping.putIfAbsent(ApplicationModelResponseList,
        () => ApplicationModelResponseList.fromJsonFactory);

    return _v1UsersUserIdApplicationsGet(userId: userId);
  }

  ///
  ///@param userId
  @Get(path: '/v1/users/{userId}/applications')
  Future<chopper.Response<ApplicationModelResponseList>>
      _v1UsersUserIdApplicationsGet({@Path('userId') required String? userId});

  ///
  ///@param userId
  ///@param body
  Future<chopper.Response<ResponseUpdate>> v1UsersUserIdApplicationsPut(
      {required String? userId, List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1UsersUserIdApplicationsPut(userId: userId, body: body);
  }

  ///
  ///@param userId
  ///@param body
  @Put(path: '/v1/users/{userId}/applications')
  Future<chopper.Response<ResponseUpdate>> _v1UsersUserIdApplicationsPut(
      {@Path('userId') required String? userId, @Body() List<String>? body});

  ///
  ///@param userId
  Future<chopper.Response<GuidListResponseObject>>
      v1UsersUserIdApplicationsDelete({required String? userId}) {
    generatedMapping.putIfAbsent(
        GuidListResponseObject, () => GuidListResponseObject.fromJsonFactory);

    return _v1UsersUserIdApplicationsDelete(userId: userId);
  }

  ///
  ///@param userId
  @Delete(path: '/v1/users/{userId}/applications')
  Future<chopper.Response<GuidListResponseObject>>
      _v1UsersUserIdApplicationsDelete(
          {@Path('userId') required String? userId});

  ///
  ///@param appId
  Future<chopper.Response<ResponseUpdate>> v1ApplicationsAppIdUsersGet(
      {required String? appId}) {
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1ApplicationsAppIdUsersGet(appId: appId);
  }

  ///
  ///@param appId
  @Get(path: '/v1/applications/{appId}/users')
  Future<chopper.Response<ResponseUpdate>> _v1ApplicationsAppIdUsersGet(
      {@Path('appId') required String? appId});

  ///
  ///@param appId
  ///@param body
  Future<chopper.Response<ResponseUpdate>> v1ApplicationsAppIdUsersPut(
      {required String? appId, List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1ApplicationsAppIdUsersPut(appId: appId, body: body);
  }

  ///
  ///@param appId
  ///@param body
  @Put(path: '/v1/applications/{appId}/users')
  Future<chopper.Response<ResponseUpdate>> _v1ApplicationsAppIdUsersPut(
      {@Path('appId') required String? appId, @Body() List<String>? body});

  ///
  Future<chopper.Response<UsersByApplicationResponseModelResponseList>>
      v1UserManageAppGet() {
    generatedMapping.putIfAbsent(UsersByApplicationResponseModelResponseList,
        () => UsersByApplicationResponseModelResponseList.fromJsonFactory);

    return _v1UserManageAppGet();
  }

  ///
  @Get(path: '/v1/user-manage-app')
  Future<chopper.Response<UsersByApplicationResponseModelResponseList>>
      _v1UserManageAppGet();

  ///
  ///@param userId
  Future<chopper.Response<SystemApplicationResponseList>>
      v1UserManageAppUserIdGet({required String? userId}) {
    generatedMapping.putIfAbsent(SystemApplicationResponseList,
        () => SystemApplicationResponseList.fromJsonFactory);

    return _v1UserManageAppUserIdGet(userId: userId);
  }

  ///
  ///@param userId
  @Get(path: '/v1/user-manage-app/{userId}')
  Future<chopper.Response<SystemApplicationResponseList>>
      _v1UserManageAppUserIdGet({@Path('userId') required String? userId});

  ///
  ///@param userId
  ///@param body
  Future<chopper.Response<SystemApplicationResponseList>>
      v1UserManageAppUserIdPut({required String? userId, List<String>? body}) {
    generatedMapping.putIfAbsent(SystemApplicationResponseList,
        () => SystemApplicationResponseList.fromJsonFactory);

    return _v1UserManageAppUserIdPut(userId: userId, body: body);
  }

  ///
  ///@param userId
  ///@param body
  @Put(path: '/v1/user-manage-app/{userId}')
  Future<chopper.Response<SystemApplicationResponseList>>
      _v1UserManageAppUserIdPut(
          {@Path('userId') required String? userId,
          @Body() List<String>? body});

  ///
  ///@param userId
  Future<chopper.Response<GuidListResponseObject>> v1UserManageAppUserIdDelete(
      {required String? userId}) {
    generatedMapping.putIfAbsent(
        GuidListResponseObject, () => GuidListResponseObject.fromJsonFactory);

    return _v1UserManageAppUserIdDelete(userId: userId);
  }

  ///
  ///@param userId
  @Delete(path: '/v1/user-manage-app/{userId}')
  Future<chopper.Response<GuidListResponseObject>> _v1UserManageAppUserIdDelete(
      {@Path('userId') required String? userId});

  ///
  Future<chopper.Response<UserMapRoleResponseModelResponseList>>
      v1UserMapRoleGet() {
    generatedMapping.putIfAbsent(UserMapRoleResponseModelResponseList,
        () => UserMapRoleResponseModelResponseList.fromJsonFactory);

    return _v1UserMapRoleGet();
  }

  ///
  @Get(path: '/v1/user-map-role')
  Future<chopper.Response<UserMapRoleResponseModelResponseList>>
      _v1UserMapRoleGet();

  ///
  ///@param body
  Future<chopper.Response<UserMapRoleResponseModelResponseList>>
      v1UserMapRolePost({List<UserMapRoleRequestModel>? body}) {
    generatedMapping.putIfAbsent(UserMapRoleResponseModelResponseList,
        () => UserMapRoleResponseModelResponseList.fromJsonFactory);

    return _v1UserMapRolePost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/user-map-role')
  Future<chopper.Response<UserMapRoleResponseModelResponseList>>
      _v1UserMapRolePost({@Body() List<UserMapRoleRequestModel>? body});

  ///
  ///@param body
  Future<chopper.Response<UserMapRoleResponseModelResponseList>>
      v1UserMapRolePut({List<UserMapRoleRequestModel>? body}) {
    generatedMapping.putIfAbsent(UserMapRoleResponseModelResponseList,
        () => UserMapRoleResponseModelResponseList.fromJsonFactory);

    return _v1UserMapRolePut(body: body);
  }

  ///
  ///@param body
  @Put(path: '/v1/user-map-role')
  Future<chopper.Response<UserMapRoleResponseModelResponseList>>
      _v1UserMapRolePut({@Body() List<UserMapRoleRequestModel>? body});

  ///
  ///@param body
  Future<chopper.Response<UserMapRoleResponseModelResponseList>>
      v1UserMapRoleDeleteManyPost({List<UserMapRoleRequestModel>? body}) {
    generatedMapping.putIfAbsent(UserMapRoleResponseModelResponseList,
        () => UserMapRoleResponseModelResponseList.fromJsonFactory);

    return _v1UserMapRoleDeleteManyPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/user-map-role/delete-many')
  Future<chopper.Response<UserMapRoleResponseModelResponseList>>
      _v1UserMapRoleDeleteManyPost(
          {@Body() List<UserMapRoleRequestModel>? body});

  ///
  ///@param userId
  Future<chopper.Response<RoleModelListResponseObject>> v1UsersUserIdRolesGet(
      {required String? userId}) {
    generatedMapping.putIfAbsent(RoleModelListResponseObject,
        () => RoleModelListResponseObject.fromJsonFactory);

    return _v1UsersUserIdRolesGet(userId: userId);
  }

  ///
  ///@param userId
  @Get(path: '/v1/users/{userId}/roles')
  Future<chopper.Response<RoleModelListResponseObject>> _v1UsersUserIdRolesGet(
      {@Path('userId') required String? userId});

  ///
  ///@param userId
  ///@param body
  Future<chopper.Response<ResponseUpdate>> v1UsersUserIdRolesPost(
      {required String? userId, List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1UsersUserIdRolesPost(userId: userId, body: body);
  }

  ///
  ///@param userId
  ///@param body
  @Post(path: '/v1/users/{userId}/roles')
  Future<chopper.Response<ResponseUpdate>> _v1UsersUserIdRolesPost(
      {@Path('userId') required String? userId, @Body() List<String>? body});

  ///
  ///@param userId
  ///@param body
  Future<chopper.Response<ResponseUpdate>> v1UsersUserIdRolesPut(
      {required String? userId, List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1UsersUserIdRolesPut(userId: userId, body: body);
  }

  ///
  ///@param userId
  ///@param body
  @Put(path: '/v1/users/{userId}/roles')
  Future<chopper.Response<ResponseUpdate>> _v1UsersUserIdRolesPut(
      {@Path('userId') required String? userId, @Body() List<String>? body});

  ///
  ///@param userId
  Future<chopper.Response<RoleModelResponseList>>
      v1UsersUserIdRolesIncludeByParentAppGet({required String? userId}) {
    generatedMapping.putIfAbsent(
        RoleModelResponseList, () => RoleModelResponseList.fromJsonFactory);

    return _v1UsersUserIdRolesIncludeByParentAppGet(userId: userId);
  }

  ///
  ///@param userId
  @Get(path: '/v1/users/{userId}/roles/include-by-parent-app')
  Future<chopper.Response<RoleModelResponseList>>
      _v1UsersUserIdRolesIncludeByParentAppGet(
          {@Path('userId') required String? userId});

  ///
  ///@param userId
  ///@param roleId
  Future<chopper.Response<ResponseDeleteMulti>> v1UsersUserIdRolesRoleIdDelete(
      {required String? userId, required String? roleId}) {
    generatedMapping.putIfAbsent(
        ResponseDeleteMulti, () => ResponseDeleteMulti.fromJsonFactory);

    return _v1UsersUserIdRolesRoleIdDelete(userId: userId, roleId: roleId);
  }

  ///
  ///@param userId
  ///@param roleId
  @Delete(path: '/v1/users/{userId}/roles/{roleId}')
  Future<chopper.Response<ResponseDeleteMulti>> _v1UsersUserIdRolesRoleIdDelete(
      {@Path('userId') required String? userId,
      @Path('roleId') required String? roleId});

  ///
  ///@param userId
  ///@param body
  Future<chopper.Response<ResponseDeleteMulti>>
      v1UsersUserIdRolesDeleteManyPost(
          {required String? userId, List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseDeleteMulti, () => ResponseDeleteMulti.fromJsonFactory);

    return _v1UsersUserIdRolesDeleteManyPost(userId: userId, body: body);
  }

  ///
  ///@param userId
  ///@param body
  @Post(path: '/v1/users/{userId}/roles/delete-many')
  Future<chopper.Response<ResponseDeleteMulti>>
      _v1UsersUserIdRolesDeleteManyPost(
          {@Path('userId') required String? userId,
          @Body() List<String>? body});

  ///
  ///@param userId
  Future<chopper.Response<RightModelListResponseObject>> v1UsersUserIdRightsGet(
      {required String? userId}) {
    generatedMapping.putIfAbsent(RightModelListResponseObject,
        () => RightModelListResponseObject.fromJsonFactory);

    return _v1UsersUserIdRightsGet(userId: userId);
  }

  ///
  ///@param userId
  @Get(path: '/v1/users/{userId}/rights')
  Future<chopper.Response<RightModelListResponseObject>>
      _v1UsersUserIdRightsGet({@Path('userId') required String? userId});

  ///
  ///@param userId
  Future<chopper.Response<UserRoleDetailModelResponseObject>>
      v1UsersUserIdDetailGet({required String? userId}) {
    generatedMapping.putIfAbsent(UserRoleDetailModelResponseObject,
        () => UserRoleDetailModelResponseObject.fromJsonFactory);

    return _v1UsersUserIdDetailGet(userId: userId);
  }

  ///
  ///@param userId
  @Get(path: '/v1/users/{userId}/detail')
  Future<chopper.Response<UserRoleDetailModelResponseObject>>
      _v1UsersUserIdDetailGet({@Path('userId') required String? userId});

  ///
  ///@param username
  ///@param userTypes
  ///@param page
  ///@param size
  ///@param filter
  ///@param sort
  Future<chopper.Response<UserSimpleInfoResponseModelResponsePagination>>
      v1UsersInfoGet(
          {String? username,
          List<UserTypeEnum>? userTypes,
          int? page,
          int? size,
          String? filter,
          String? sort}) {
    generatedMapping.putIfAbsent(UserSimpleInfoResponseModelResponsePagination,
        () => UserSimpleInfoResponseModelResponsePagination.fromJsonFactory);

    return _v1UsersInfoGet(
        username: username,
        userTypes: userTypes,
        page: page,
        size: size,
        filter: filter,
        sort: sort);
  }

  ///
  ///@param username
  ///@param userTypes
  ///@param page
  ///@param size
  ///@param filter
  ///@param sort
  @Get(path: '/v1/users/info')
  Future<chopper.Response<UserSimpleInfoResponseModelResponsePagination>>
      _v1UsersInfoGet(
          {@Query('username') String? username,
          @Query('userTypes') List<UserTypeEnum>? userTypes,
          @Query('page') int? page,
          @Query('size') int? size,
          @Query('filter') String? filter,
          @Query('sort') String? sort});

  ///
  ///@param id
  Future<chopper.Response<UserSimpleInfoResponseModelResponseObject>>
      v1UsersInfoIdGet({required String? id}) {
    generatedMapping.putIfAbsent(UserSimpleInfoResponseModelResponseObject,
        () => UserSimpleInfoResponseModelResponseObject.fromJsonFactory);

    return _v1UsersInfoIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/users/info/{id}')
  Future<chopper.Response<UserSimpleInfoResponseModelResponseObject>>
      _v1UsersInfoIdGet({@Path('id') required String? id});

  ///
  ///@param username
  Future<chopper.Response<BooleanResponseObject>>
      v1UsersInfoUsernameIsAvailableGet({required String? username}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1UsersInfoUsernameIsAvailableGet(username: username);
  }

  ///
  ///@param username
  @Get(path: '/v1/users/info/{username}/is-available')
  Future<chopper.Response<BooleanResponseObject>>
      _v1UsersInfoUsernameIsAvailableGet(
          {@Path('username') required String? username});

  ///
  ///@param email
  Future<chopper.Response<BooleanResponseObject>>
      v1UsersInfoEmailEmailIsAvailableGet({required String? email}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1UsersInfoEmailEmailIsAvailableGet(email: email);
  }

  ///
  ///@param email
  @Get(path: '/v1/users/info/{email}/email-is-available')
  Future<chopper.Response<BooleanResponseObject>>
      _v1UsersInfoEmailEmailIsAvailableGet(
          {@Path('email') required String? email});

  ///
  ///@param userTypes
  ///@param isActive
  ///@param page
  ///@param size
  ///@param filter
  ///@param sort
  Future<chopper.Response<UserResponseModelResponsePagination>> v1UsersGet(
      {List<UserTypeEnum>? userTypes,
      bool? isActive,
      int? page,
      int? size,
      String? filter,
      String? sort}) {
    generatedMapping.putIfAbsent(UserResponseModelResponsePagination,
        () => UserResponseModelResponsePagination.fromJsonFactory);

    return _v1UsersGet(
        userTypes: userTypes,
        isActive: isActive,
        page: page,
        size: size,
        filter: filter,
        sort: sort);
  }

  ///
  ///@param userTypes
  ///@param isActive
  ///@param page
  ///@param size
  ///@param filter
  ///@param sort
  @Get(path: '/v1/users')
  Future<chopper.Response<UserResponseModelResponsePagination>> _v1UsersGet(
      {@Query('userTypes') List<UserTypeEnum>? userTypes,
      @Query('isActive') bool? isActive,
      @Query('page') int? page,
      @Query('size') int? size,
      @Query('filter') String? filter,
      @Query('sort') String? sort});

  ///
  ///@param sendEmail
  ///@param language
  ///@param body
  Future<chopper.Response<BaseUserModelResponseObject>> v1UsersPost(
      {bool? sendEmail, String? language, UserCreateModel? body}) {
    generatedMapping.putIfAbsent(
        UserCreateModel, () => UserCreateModel.fromJsonFactory);
    generatedMapping.putIfAbsent(BaseUserModelResponseObject,
        () => BaseUserModelResponseObject.fromJsonFactory);

    return _v1UsersPost(sendEmail: sendEmail, language: language, body: body);
  }

  ///
  ///@param sendEmail
  ///@param language
  ///@param body
  @Post(path: '/v1/users')
  Future<chopper.Response<BaseUserModelResponseObject>> _v1UsersPost(
      {@Query('sendEmail') bool? sendEmail,
      @Query('language') String? language,
      @Body() UserCreateModel? body});

  ///
  ///@param listIds
  Future<chopper.Response<ResponseDeleteMulti>> v1UsersDelete(
      {List<String>? listIds}) {
    generatedMapping.putIfAbsent(
        ResponseDeleteMulti, () => ResponseDeleteMulti.fromJsonFactory);

    return _v1UsersDelete(listIds: listIds);
  }

  ///
  ///@param listIds
  @Delete(path: '/v1/users')
  Future<chopper.Response<ResponseDeleteMulti>> _v1UsersDelete(
      {@Query('listIds') List<String>? listIds});

  ///
  ///@param applicationId
  Future<chopper.Response<UserResponseModelResponseList>> v1UsersAllGet(
      {String? applicationId}) {
    generatedMapping.putIfAbsent(UserResponseModelResponseList,
        () => UserResponseModelResponseList.fromJsonFactory);

    return _v1UsersAllGet(applicationId: applicationId);
  }

  ///
  ///@param applicationId
  @Get(path: '/v1/users/all')
  Future<chopper.Response<UserResponseModelResponseList>> _v1UsersAllGet(
      {@Query('applicationId') String? applicationId});

  ///
  ///@param userId
  ///@param body
  Future<chopper.Response<ResponseUpdate>> v1UsersUserIdPasswordPut(
      {required String? userId, UserChangePasswordRequest? body}) {
    generatedMapping.putIfAbsent(UserChangePasswordRequest,
        () => UserChangePasswordRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1UsersUserIdPasswordPut(userId: userId, body: body);
  }

  ///
  ///@param userId
  ///@param body
  @Put(path: '/v1/users/{userId}/password')
  Future<chopper.Response<ResponseUpdate>> _v1UsersUserIdPasswordPut(
      {@Path('userId') required String? userId,
      @Body() UserChangePasswordRequest? body});

  ///
  ///@param userId
  ///@param language
  Future<chopper.Response<ResponseUpdate>> v1UsersUserIdPasswordPost(
      {required String? userId, String? language}) {
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1UsersUserIdPasswordPost(userId: userId, language: language);
  }

  ///
  ///@param userId
  ///@param language
  @Post(path: '/v1/users/{userId}/password', optionalBody: true)
  Future<chopper.Response<ResponseUpdate>> _v1UsersUserIdPasswordPost(
      {@Path('userId') required String? userId,
      @Query('language') String? language});

  ///
  ///@param userId
  ///@param language
  Future<chopper.Response<ResponseUpdate>>
      v1UsersUserIdPasswordSendEmailRecoverPost(
          {required String? userId, String? language}) {
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1UsersUserIdPasswordSendEmailRecoverPost(
        userId: userId, language: language);
  }

  ///
  ///@param userId
  ///@param language
  @Post(
      path: '/v1/users/{userId}/password/send-email-recover',
      optionalBody: true)
  Future<chopper.Response<ResponseUpdate>>
      _v1UsersUserIdPasswordSendEmailRecoverPost(
          {@Path('userId') required String? userId,
          @Query('language') String? language});

  ///
  ///@param userId
  ///@param language
  Future<chopper.Response<ResponseUpdate>> v1UsersUserIdPasswordSendEmailPost(
      {required String? userId, String? language}) {
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1UsersUserIdPasswordSendEmailPost(
        userId: userId, language: language);
  }

  ///
  ///@param userId
  ///@param language
  @Post(path: '/v1/users/{userId}/password/send-email', optionalBody: true)
  Future<chopper.Response<ResponseUpdate>> _v1UsersUserIdPasswordSendEmailPost(
      {@Path('userId') required String? userId,
      @Query('language') String? language});

  ///
  ///@param userId
  ///@param oldPassword
  ///@param password
  Future<chopper.Response<ResponseUpdate>> v1UsersUserIdChangepasswordPut(
      {required String? userId, String? oldPassword, String? password}) {
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1UsersUserIdChangepasswordPut(
        userId: userId, oldPassword: oldPassword, password: password);
  }

  ///
  ///@param userId
  ///@param oldPassword
  ///@param password
  @Put(path: '/v1/users/{userId}/changepassword', optionalBody: true)
  Future<chopper.Response<ResponseUpdate>> _v1UsersUserIdChangepasswordPut(
      {@Path('userId') required String? userId,
      @Query('oldPassword') String? oldPassword,
      @Query('password') String? password});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ResponseUpdate>> v1UsersIdPut(
      {required String? id, UserUpdateRequestModel? body}) {
    generatedMapping.putIfAbsent(
        UserUpdateRequestModel, () => UserUpdateRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1UsersIdPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/users/{id}')
  Future<chopper.Response<ResponseUpdate>> _v1UsersIdPut(
      {@Path('id') required String? id, @Body() UserUpdateRequestModel? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ResponseUpdate>> v1UsersIdPatch(
      {required String? id, UserPatchUpdateRequestModel? body}) {
    generatedMapping.putIfAbsent(UserPatchUpdateRequestModel,
        () => UserPatchUpdateRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1UsersIdPatch(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Patch(path: '/v1/users/{id}')
  Future<chopper.Response<ResponseUpdate>> _v1UsersIdPatch(
      {@Path('id') required String? id,
      @Body() UserPatchUpdateRequestModel? body});

  ///
  ///@param id
  Future<chopper.Response<ResponseDelete>> v1UsersIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ResponseDelete, () => ResponseDelete.fromJsonFactory);

    return _v1UsersIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/users/{id}')
  Future<chopper.Response<ResponseDelete>> _v1UsersIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<UserPasswordModelResponseObject>> v1UsersIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(UserPasswordModelResponseObject,
        () => UserPasswordModelResponseObject.fromJsonFactory);

    return _v1UsersIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/users/{id}')
  Future<chopper.Response<UserPasswordModelResponseObject>> _v1UsersIdGet(
      {@Path('id') required String? id});

  ///
  ///@param username
  ///@param userId
  Future<chopper.Response<BooleanResponseObject>> v1UsersUsernameIsAvailableGet(
      {required String? username, String? userId}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1UsersUsernameIsAvailableGet(username: username, userId: userId);
  }

  ///
  ///@param username
  ///@param userId
  @Get(path: '/v1/users/{username}/IsAvailable')
  Future<chopper.Response<BooleanResponseObject>>
      _v1UsersUsernameIsAvailableGet(
          {@Path('username') required String? username,
          @Query('userId') String? userId});

  ///
  ///@param email
  ///@param userId
  Future<chopper.Response<BooleanResponseObject>>
      v1UsersEmailEmailIsAvailableGet(
          {required String? email, String? userId}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1UsersEmailEmailIsAvailableGet(email: email, userId: userId);
  }

  ///
  ///@param email
  ///@param userId
  @Get(path: '/v1/users/{email}/EmailIsAvailable')
  Future<chopper.Response<BooleanResponseObject>>
      _v1UsersEmailEmailIsAvailableGet(
          {@Path('email') required String? email,
          @Query('userId') String? userId});

  ///
  Future<chopper.Response<UserPasswordModelListResponseObject>>
      v1UsersAlluserGet() {
    generatedMapping.putIfAbsent(UserPasswordModelListResponseObject,
        () => UserPasswordModelListResponseObject.fromJsonFactory);

    return _v1UsersAlluserGet();
  }

  ///
  @Get(path: '/v1/users/alluser')
  Future<chopper.Response<UserPasswordModelListResponseObject>>
      _v1UsersAlluserGet();

  ///
  Future<chopper.Response<UserPasswordModelListResponseObject>>
      v1UsersAlluserIncludeParentApplicationGet() {
    generatedMapping.putIfAbsent(UserPasswordModelListResponseObject,
        () => UserPasswordModelListResponseObject.fromJsonFactory);

    return _v1UsersAlluserIncludeParentApplicationGet();
  }

  ///
  @Get(path: '/v1/users/alluser-include-parent-application')
  Future<chopper.Response<UserPasswordModelListResponseObject>>
      _v1UsersAlluserIncludeParentApplicationGet();

  ///
  ///@param id
  Future<chopper.Response<UserPasswordModelListResponseObject>>
      v1UsersByidIdGet({required String? id}) {
    generatedMapping.putIfAbsent(UserPasswordModelListResponseObject,
        () => UserPasswordModelListResponseObject.fromJsonFactory);

    return _v1UsersByidIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/users/byid/{id}')
  Future<chopper.Response<UserPasswordModelListResponseObject>>
      _v1UsersByidIdGet({@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ResponseUpdate>> v1UsersIdLockPut(
      {required String? id, bool? body}) {
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1UsersIdLockPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/users/{id}/lock')
  Future<chopper.Response<ResponseUpdate>> _v1UsersIdLockPut(
      {@Path('id') required String? id, @Body() bool? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ResponseUpdate>> v1UsersIdForcePasswordChangePut(
      {required String? id, bool? body}) {
    generatedMapping.putIfAbsent(
        ResponseUpdate, () => ResponseUpdate.fromJsonFactory);

    return _v1UsersIdForcePasswordChangePut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/users/{id}/force-password-change')
  Future<chopper.Response<ResponseUpdate>> _v1UsersIdForcePasswordChangePut(
      {@Path('id') required String? id, @Body() bool? body});

  ///
  Future<chopper.Response<BooleanResponseObject>> v1UsersCacheDelete() {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1UsersCacheDelete();
  }

  ///
  @Delete(path: '/v1/users/cache')
  Future<chopper.Response<BooleanResponseObject>> _v1UsersCacheDelete();

  ///
  ///@param userId
  Future<chopper.Response<NavigationModelIListResponseObject>>
      v1UsersUserIdNavigationsGet({required String? userId}) {
    generatedMapping.putIfAbsent(NavigationModelIListResponseObject,
        () => NavigationModelIListResponseObject.fromJsonFactory);

    return _v1UsersUserIdNavigationsGet(userId: userId);
  }

  ///
  ///@param userId
  @Get(path: '/v1/users/{userId}/navigations')
  Future<chopper.Response<NavigationModelIListResponseObject>>
      _v1UsersUserIdNavigationsGet({@Path('userId') required String? userId});

  ///
  ///@param navigationId
  Future<chopper.Response<BaseUserModelResponseList>>
      v1NavigationsNavigationIdUsersGet({required String? navigationId}) {
    generatedMapping.putIfAbsent(BaseUserModelResponseList,
        () => BaseUserModelResponseList.fromJsonFactory);

    return _v1NavigationsNavigationIdUsersGet(navigationId: navigationId);
  }

  ///
  ///@param navigationId
  @Get(path: '/v1/navigations/{navigationId}/users')
  Future<chopper.Response<BaseUserModelResponseList>>
      _v1NavigationsNavigationIdUsersGet(
          {@Path('navigationId') required String? navigationId});
}

@JsonSerializable(explicitToJson: true)
class ApplicationCreateModel {
  ApplicationCreateModel({
    this.parentId,
    this.name,
    this.code,
    this.description,
    this.id,
    this.templateApp,
  });

  factory ApplicationCreateModel.fromJson(Map<String, dynamic> json) =>
      _$ApplicationCreateModelFromJson(json);

  @JsonKey(name: 'parentId', includeIfNull: true)
  final String? parentId;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'code', includeIfNull: true)
  final String? code;
  @JsonKey(name: 'description', includeIfNull: true)
  final String? description;
  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'templateApp', includeIfNull: true)
  final String? templateApp;
  static const fromJsonFactory = _$ApplicationCreateModelFromJson;
  static const toJsonFactory = _$ApplicationCreateModelToJson;
  Map<String, dynamic> toJson() => _$ApplicationCreateModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApplicationCreateModel &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.templateApp, templateApp) ||
                const DeepCollectionEquality()
                    .equals(other.templateApp, templateApp)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(templateApp) ^
      runtimeType.hashCode;
}

extension $ApplicationCreateModelExtension on ApplicationCreateModel {
  ApplicationCreateModel copyWith(
      {String? parentId,
      String? name,
      String? code,
      String? description,
      String? id,
      String? templateApp}) {
    return ApplicationCreateModel(
        parentId: parentId ?? this.parentId,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        id: id ?? this.id,
        templateApp: templateApp ?? this.templateApp);
  }
}

@JsonSerializable(explicitToJson: true)
class ApplicationModel {
  ApplicationModel({
    this.parentId,
    this.name,
    this.code,
    this.description,
    this.id,
    this.lastModifiedOnDate,
    this.createdOnDate,
  });

  factory ApplicationModel.fromJson(Map<String, dynamic> json) =>
      _$ApplicationModelFromJson(json);

  @JsonKey(name: 'parentId', includeIfNull: true)
  final String? parentId;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'code', includeIfNull: true)
  final String? code;
  @JsonKey(name: 'description', includeIfNull: true)
  final String? description;
  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'lastModifiedOnDate', includeIfNull: true)
  final DateTime? lastModifiedOnDate;
  @JsonKey(name: 'createdOnDate', includeIfNull: true)
  final DateTime? createdOnDate;
  static const fromJsonFactory = _$ApplicationModelFromJson;
  static const toJsonFactory = _$ApplicationModelToJson;
  Map<String, dynamic> toJson() => _$ApplicationModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApplicationModel &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lastModifiedOnDate, lastModifiedOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedOnDate, lastModifiedOnDate)) &&
            (identical(other.createdOnDate, createdOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdOnDate, createdOnDate)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(lastModifiedOnDate) ^
      const DeepCollectionEquality().hash(createdOnDate) ^
      runtimeType.hashCode;
}

extension $ApplicationModelExtension on ApplicationModel {
  ApplicationModel copyWith(
      {String? parentId,
      String? name,
      String? code,
      String? description,
      String? id,
      DateTime? lastModifiedOnDate,
      DateTime? createdOnDate}) {
    return ApplicationModel(
        parentId: parentId ?? this.parentId,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        id: id ?? this.id,
        lastModifiedOnDate: lastModifiedOnDate ?? this.lastModifiedOnDate,
        createdOnDate: createdOnDate ?? this.createdOnDate);
  }
}

@JsonSerializable(explicitToJson: true)
class ApplicationModelPagination {
  ApplicationModelPagination({
    this.currentPage,
    this.totalPages,
    this.pageSize,
    this.numberOfRecords,
    this.totalRecords,
    this.content,
  });

  factory ApplicationModelPagination.fromJson(Map<String, dynamic> json) =>
      _$ApplicationModelPaginationFromJson(json);

  @JsonKey(name: 'currentPage', includeIfNull: true)
  final int? currentPage;
  @JsonKey(name: 'totalPages', includeIfNull: true)
  final int? totalPages;
  @JsonKey(name: 'pageSize', includeIfNull: true)
  final int? pageSize;
  @JsonKey(name: 'numberOfRecords', includeIfNull: true)
  final int? numberOfRecords;
  @JsonKey(name: 'totalRecords', includeIfNull: true)
  final int? totalRecords;
  @JsonKey(
      name: 'content', includeIfNull: true, defaultValue: <ApplicationModel>[])
  final List<ApplicationModel>? content;
  static const fromJsonFactory = _$ApplicationModelPaginationFromJson;
  static const toJsonFactory = _$ApplicationModelPaginationToJson;
  Map<String, dynamic> toJson() => _$ApplicationModelPaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApplicationModelPagination &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)) &&
            (identical(other.numberOfRecords, numberOfRecords) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfRecords, numberOfRecords)) &&
            (identical(other.totalRecords, totalRecords) ||
                const DeepCollectionEquality()
                    .equals(other.totalRecords, totalRecords)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(numberOfRecords) ^
      const DeepCollectionEquality().hash(totalRecords) ^
      const DeepCollectionEquality().hash(content) ^
      runtimeType.hashCode;
}

extension $ApplicationModelPaginationExtension on ApplicationModelPagination {
  ApplicationModelPagination copyWith(
      {int? currentPage,
      int? totalPages,
      int? pageSize,
      int? numberOfRecords,
      int? totalRecords,
      List<ApplicationModel>? content}) {
    return ApplicationModelPagination(
        currentPage: currentPage ?? this.currentPage,
        totalPages: totalPages ?? this.totalPages,
        pageSize: pageSize ?? this.pageSize,
        numberOfRecords: numberOfRecords ?? this.numberOfRecords,
        totalRecords: totalRecords ?? this.totalRecords,
        content: content ?? this.content);
  }
}

@JsonSerializable(explicitToJson: true)
class ApplicationModelResponseList {
  ApplicationModelResponseList({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory ApplicationModelResponseList.fromJson(Map<String, dynamic> json) =>
      _$ApplicationModelResponseListFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(
      name: 'data', includeIfNull: true, defaultValue: <ApplicationModel>[])
  final List<ApplicationModel>? data;
  static const fromJsonFactory = _$ApplicationModelResponseListFromJson;
  static const toJsonFactory = _$ApplicationModelResponseListToJson;
  Map<String, dynamic> toJson() => _$ApplicationModelResponseListToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApplicationModelResponseList &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $ApplicationModelResponseListExtension
    on ApplicationModelResponseList {
  ApplicationModelResponseList copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<ApplicationModel>? data}) {
    return ApplicationModelResponseList(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ApplicationModelResponseObject {
  ApplicationModelResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory ApplicationModelResponseObject.fromJson(Map<String, dynamic> json) =>
      _$ApplicationModelResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final ApplicationModel? data;
  static const fromJsonFactory = _$ApplicationModelResponseObjectFromJson;
  static const toJsonFactory = _$ApplicationModelResponseObjectToJson;
  Map<String, dynamic> toJson() => _$ApplicationModelResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApplicationModelResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $ApplicationModelResponseObjectExtension
    on ApplicationModelResponseObject {
  ApplicationModelResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      ApplicationModel? data}) {
    return ApplicationModelResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ApplicationModelResponsePagination {
  ApplicationModelResponsePagination({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory ApplicationModelResponsePagination.fromJson(
          Map<String, dynamic> json) =>
      _$ApplicationModelResponsePaginationFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final ApplicationModelPagination? data;
  static const fromJsonFactory = _$ApplicationModelResponsePaginationFromJson;
  static const toJsonFactory = _$ApplicationModelResponsePaginationToJson;
  Map<String, dynamic> toJson() =>
      _$ApplicationModelResponsePaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApplicationModelResponsePagination &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $ApplicationModelResponsePaginationExtension
    on ApplicationModelResponsePagination {
  ApplicationModelResponsePagination copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      ApplicationModelPagination? data}) {
    return ApplicationModelResponsePagination(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ApplicationUpdateModel {
  ApplicationUpdateModel({
    this.parentId,
    this.name,
    this.code,
    this.description,
    this.id,
  });

  factory ApplicationUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$ApplicationUpdateModelFromJson(json);

  @JsonKey(name: 'parentId', includeIfNull: true)
  final String? parentId;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'code', includeIfNull: true)
  final String? code;
  @JsonKey(name: 'description', includeIfNull: true)
  final String? description;
  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  static const fromJsonFactory = _$ApplicationUpdateModelFromJson;
  static const toJsonFactory = _$ApplicationUpdateModelToJson;
  Map<String, dynamic> toJson() => _$ApplicationUpdateModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApplicationUpdateModel &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $ApplicationUpdateModelExtension on ApplicationUpdateModel {
  ApplicationUpdateModel copyWith(
      {String? parentId,
      String? name,
      String? code,
      String? description,
      String? id}) {
    return ApplicationUpdateModel(
        parentId: parentId ?? this.parentId,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        id: id ?? this.id);
  }
}

@JsonSerializable(explicitToJson: true)
class BaseNavigationModel {
  BaseNavigationModel({
    this.applicationId,
    this.id,
    this.createdByUserId,
    this.createdOnDate,
    this.lastModifiedByUserId,
    this.lastModifiedOnDate,
    this.code,
    this.name,
    this.idPath,
    this.path,
    this.level,
    this.order,
    this.isActive,
    this.status,
    this.positionObj,
  });

  factory BaseNavigationModel.fromJson(Map<String, dynamic> json) =>
      _$BaseNavigationModelFromJson(json);

  @JsonKey(name: 'applicationId', includeIfNull: true)
  final String? applicationId;
  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'createdByUserId', includeIfNull: true)
  final String? createdByUserId;
  @JsonKey(name: 'createdOnDate', includeIfNull: true)
  final DateTime? createdOnDate;
  @JsonKey(name: 'lastModifiedByUserId', includeIfNull: true)
  final String? lastModifiedByUserId;
  @JsonKey(name: 'lastModifiedOnDate', includeIfNull: true)
  final DateTime? lastModifiedOnDate;
  @JsonKey(name: 'code', includeIfNull: true)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'idPath', includeIfNull: true)
  final String? idPath;
  @JsonKey(name: 'path', includeIfNull: true)
  final String? path;
  @JsonKey(name: 'level', includeIfNull: true)
  final int? level;
  @JsonKey(name: 'order', includeIfNull: true)
  final int? order;
  @JsonKey(name: 'isActive', includeIfNull: true)
  final bool? isActive;
  @JsonKey(name: 'status', includeIfNull: true)
  final bool? status;
  @JsonKey(
      name: 'positionObj',
      includeIfNull: true,
      toJson: positionEnumToJson,
      fromJson: positionEnumFromJson)
  final enums.PositionEnum? positionObj;
  static const fromJsonFactory = _$BaseNavigationModelFromJson;
  static const toJsonFactory = _$BaseNavigationModelToJson;
  Map<String, dynamic> toJson() => _$BaseNavigationModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BaseNavigationModel &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdByUserId, createdByUserId) ||
                const DeepCollectionEquality()
                    .equals(other.createdByUserId, createdByUserId)) &&
            (identical(other.createdOnDate, createdOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdOnDate, createdOnDate)) &&
            (identical(other.lastModifiedByUserId, lastModifiedByUserId) ||
                const DeepCollectionEquality().equals(
                    other.lastModifiedByUserId, lastModifiedByUserId)) &&
            (identical(other.lastModifiedOnDate, lastModifiedOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedOnDate, lastModifiedOnDate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.idPath, idPath) ||
                const DeepCollectionEquality().equals(other.idPath, idPath)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.positionObj, positionObj) ||
                const DeepCollectionEquality()
                    .equals(other.positionObj, positionObj)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdByUserId) ^
      const DeepCollectionEquality().hash(createdOnDate) ^
      const DeepCollectionEquality().hash(lastModifiedByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedOnDate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(idPath) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(positionObj) ^
      runtimeType.hashCode;
}

extension $BaseNavigationModelExtension on BaseNavigationModel {
  BaseNavigationModel copyWith(
      {String? applicationId,
      String? id,
      String? createdByUserId,
      DateTime? createdOnDate,
      String? lastModifiedByUserId,
      DateTime? lastModifiedOnDate,
      String? code,
      String? name,
      String? idPath,
      String? path,
      int? level,
      int? order,
      bool? isActive,
      bool? status,
      enums.PositionEnum? positionObj}) {
    return BaseNavigationModel(
        applicationId: applicationId ?? this.applicationId,
        id: id ?? this.id,
        createdByUserId: createdByUserId ?? this.createdByUserId,
        createdOnDate: createdOnDate ?? this.createdOnDate,
        lastModifiedByUserId: lastModifiedByUserId ?? this.lastModifiedByUserId,
        lastModifiedOnDate: lastModifiedOnDate ?? this.lastModifiedOnDate,
        code: code ?? this.code,
        name: name ?? this.name,
        idPath: idPath ?? this.idPath,
        path: path ?? this.path,
        level: level ?? this.level,
        order: order ?? this.order,
        isActive: isActive ?? this.isActive,
        status: status ?? this.status,
        positionObj: positionObj ?? this.positionObj);
  }
}

@JsonSerializable(explicitToJson: true)
class BaseRightModelOfUser {
  BaseRightModelOfUser({
    this.applicationId,
    this.id,
    this.createdByUserId,
    this.createdOnDate,
    this.lastModifiedByUserId,
    this.lastModifiedOnDate,
    this.code,
    this.name,
    this.enable,
    this.inherited,
    this.inheritedFromRoles,
    this.listRole,
    this.listRoleId,
  });

  factory BaseRightModelOfUser.fromJson(Map<String, dynamic> json) =>
      _$BaseRightModelOfUserFromJson(json);

  @JsonKey(name: 'applicationId', includeIfNull: true)
  final String? applicationId;
  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'createdByUserId', includeIfNull: true)
  final String? createdByUserId;
  @JsonKey(name: 'createdOnDate', includeIfNull: true)
  final DateTime? createdOnDate;
  @JsonKey(name: 'lastModifiedByUserId', includeIfNull: true)
  final String? lastModifiedByUserId;
  @JsonKey(name: 'lastModifiedOnDate', includeIfNull: true)
  final DateTime? lastModifiedOnDate;
  @JsonKey(name: 'code', includeIfNull: true)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'enable', includeIfNull: true)
  final bool? enable;
  @JsonKey(name: 'inherited', includeIfNull: true)
  final bool? inherited;
  @JsonKey(name: 'inheritedFromRoles', includeIfNull: true)
  final String? inheritedFromRoles;
  @JsonKey(
      name: 'listRole', includeIfNull: true, defaultValue: <BaseRoleModel>[])
  final List<BaseRoleModel>? listRole;
  @JsonKey(name: 'listRoleId', includeIfNull: true, defaultValue: <String>[])
  final List<String>? listRoleId;
  static const fromJsonFactory = _$BaseRightModelOfUserFromJson;
  static const toJsonFactory = _$BaseRightModelOfUserToJson;
  Map<String, dynamic> toJson() => _$BaseRightModelOfUserToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BaseRightModelOfUser &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdByUserId, createdByUserId) ||
                const DeepCollectionEquality()
                    .equals(other.createdByUserId, createdByUserId)) &&
            (identical(other.createdOnDate, createdOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdOnDate, createdOnDate)) &&
            (identical(other.lastModifiedByUserId, lastModifiedByUserId) ||
                const DeepCollectionEquality().equals(
                    other.lastModifiedByUserId, lastModifiedByUserId)) &&
            (identical(other.lastModifiedOnDate, lastModifiedOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedOnDate, lastModifiedOnDate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.enable, enable) ||
                const DeepCollectionEquality().equals(other.enable, enable)) &&
            (identical(other.inherited, inherited) ||
                const DeepCollectionEquality()
                    .equals(other.inherited, inherited)) &&
            (identical(other.inheritedFromRoles, inheritedFromRoles) ||
                const DeepCollectionEquality()
                    .equals(other.inheritedFromRoles, inheritedFromRoles)) &&
            (identical(other.listRole, listRole) ||
                const DeepCollectionEquality()
                    .equals(other.listRole, listRole)) &&
            (identical(other.listRoleId, listRoleId) ||
                const DeepCollectionEquality()
                    .equals(other.listRoleId, listRoleId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdByUserId) ^
      const DeepCollectionEquality().hash(createdOnDate) ^
      const DeepCollectionEquality().hash(lastModifiedByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedOnDate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(enable) ^
      const DeepCollectionEquality().hash(inherited) ^
      const DeepCollectionEquality().hash(inheritedFromRoles) ^
      const DeepCollectionEquality().hash(listRole) ^
      const DeepCollectionEquality().hash(listRoleId) ^
      runtimeType.hashCode;
}

extension $BaseRightModelOfUserExtension on BaseRightModelOfUser {
  BaseRightModelOfUser copyWith(
      {String? applicationId,
      String? id,
      String? createdByUserId,
      DateTime? createdOnDate,
      String? lastModifiedByUserId,
      DateTime? lastModifiedOnDate,
      String? code,
      String? name,
      bool? enable,
      bool? inherited,
      String? inheritedFromRoles,
      List<BaseRoleModel>? listRole,
      List<String>? listRoleId}) {
    return BaseRightModelOfUser(
        applicationId: applicationId ?? this.applicationId,
        id: id ?? this.id,
        createdByUserId: createdByUserId ?? this.createdByUserId,
        createdOnDate: createdOnDate ?? this.createdOnDate,
        lastModifiedByUserId: lastModifiedByUserId ?? this.lastModifiedByUserId,
        lastModifiedOnDate: lastModifiedOnDate ?? this.lastModifiedOnDate,
        code: code ?? this.code,
        name: name ?? this.name,
        enable: enable ?? this.enable,
        inherited: inherited ?? this.inherited,
        inheritedFromRoles: inheritedFromRoles ?? this.inheritedFromRoles,
        listRole: listRole ?? this.listRole,
        listRoleId: listRoleId ?? this.listRoleId);
  }
}

@JsonSerializable(explicitToJson: true)
class BaseRoleModel {
  BaseRoleModel({
    this.id,
    this.parentId,
    this.code,
    this.name,
    this.imageUrl,
    this.isSystem,
    this.autoAssignment,
    this.order,
    this.applicationId,
  });

  factory BaseRoleModel.fromJson(Map<String, dynamic> json) =>
      _$BaseRoleModelFromJson(json);

  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'parentId', includeIfNull: true)
  final String? parentId;
  @JsonKey(name: 'code', includeIfNull: true)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'imageUrl', includeIfNull: true)
  final String? imageUrl;
  @JsonKey(name: 'isSystem', includeIfNull: true)
  final bool? isSystem;
  @JsonKey(name: 'autoAssignment', includeIfNull: true)
  final bool? autoAssignment;
  @JsonKey(name: 'order', includeIfNull: true)
  final int? order;
  @JsonKey(name: 'applicationId', includeIfNull: true)
  final String? applicationId;
  static const fromJsonFactory = _$BaseRoleModelFromJson;
  static const toJsonFactory = _$BaseRoleModelToJson;
  Map<String, dynamic> toJson() => _$BaseRoleModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BaseRoleModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.isSystem, isSystem) ||
                const DeepCollectionEquality()
                    .equals(other.isSystem, isSystem)) &&
            (identical(other.autoAssignment, autoAssignment) ||
                const DeepCollectionEquality()
                    .equals(other.autoAssignment, autoAssignment)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(isSystem) ^
      const DeepCollectionEquality().hash(autoAssignment) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(applicationId) ^
      runtimeType.hashCode;
}

extension $BaseRoleModelExtension on BaseRoleModel {
  BaseRoleModel copyWith(
      {String? id,
      String? parentId,
      String? code,
      String? name,
      String? imageUrl,
      bool? isSystem,
      bool? autoAssignment,
      int? order,
      String? applicationId}) {
    return BaseRoleModel(
        id: id ?? this.id,
        parentId: parentId ?? this.parentId,
        code: code ?? this.code,
        name: name ?? this.name,
        imageUrl: imageUrl ?? this.imageUrl,
        isSystem: isSystem ?? this.isSystem,
        autoAssignment: autoAssignment ?? this.autoAssignment,
        order: order ?? this.order,
        applicationId: applicationId ?? this.applicationId);
  }
}

@JsonSerializable(explicitToJson: true)
class BaseUserModel {
  BaseUserModel({
    this.id,
    this.userName,
    this.name,
    this.avatarUrl,
    this.applicationId,
    this.email,
    this.phoneNumber,
    this.typeObj,
    this.isActive,
    this.userDetail,
    this.isSuperUser,
    this.forceChangePassword,
    this.settingValues,
    this.lastActivityDate,
    this.groupType,
    this.groupId,
    this.groupName,
    this.userProfile,
    this.userProfile2,
  });

  factory BaseUserModel.fromJson(Map<String, dynamic> json) =>
      _$BaseUserModelFromJson(json);

  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'userName', includeIfNull: true)
  final String? userName;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'avatarUrl', includeIfNull: true)
  final String? avatarUrl;
  @JsonKey(name: 'applicationId', includeIfNull: true)
  final String? applicationId;
  @JsonKey(name: 'email', includeIfNull: true)
  final String? email;
  @JsonKey(name: 'phoneNumber', includeIfNull: true)
  final String? phoneNumber;
  @JsonKey(
      name: 'typeObj',
      includeIfNull: true,
      toJson: userTypeEnumToJson,
      fromJson: userTypeEnumFromJson)
  final enums.UserTypeEnum? typeObj;
  @JsonKey(name: 'isActive', includeIfNull: true)
  final bool? isActive;
  @JsonKey(name: 'userDetail', includeIfNull: true)
  final UserDetail? userDetail;
  @JsonKey(name: 'isSuperUser', includeIfNull: true)
  final bool? isSuperUser;
  @JsonKey(name: 'forceChangePassword', includeIfNull: true)
  final bool? forceChangePassword;
  @JsonKey(name: 'settingValues', includeIfNull: true)
  final Settings? settingValues;
  @JsonKey(name: 'lastActivityDate', includeIfNull: true)
  final DateTime? lastActivityDate;
  @JsonKey(name: 'groupType', includeIfNull: true)
  final String? groupType;
  @JsonKey(name: 'groupId', includeIfNull: true)
  final String? groupId;
  @JsonKey(name: 'groupName', includeIfNull: true)
  final String? groupName;
  @JsonKey(name: 'userProfile', includeIfNull: true)
  final String? userProfile;
  @JsonKey(name: 'userProfile2', includeIfNull: true)
  final String? userProfile2;
  static const fromJsonFactory = _$BaseUserModelFromJson;
  static const toJsonFactory = _$BaseUserModelToJson;
  Map<String, dynamic> toJson() => _$BaseUserModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BaseUserModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.typeObj, typeObj) ||
                const DeepCollectionEquality()
                    .equals(other.typeObj, typeObj)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.userDetail, userDetail) ||
                const DeepCollectionEquality()
                    .equals(other.userDetail, userDetail)) &&
            (identical(other.isSuperUser, isSuperUser) ||
                const DeepCollectionEquality()
                    .equals(other.isSuperUser, isSuperUser)) &&
            (identical(other.forceChangePassword, forceChangePassword) ||
                const DeepCollectionEquality()
                    .equals(other.forceChangePassword, forceChangePassword)) &&
            (identical(other.settingValues, settingValues) ||
                const DeepCollectionEquality()
                    .equals(other.settingValues, settingValues)) &&
            (identical(other.lastActivityDate, lastActivityDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastActivityDate, lastActivityDate)) &&
            (identical(other.groupType, groupType) ||
                const DeepCollectionEquality()
                    .equals(other.groupType, groupType)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.userProfile, userProfile) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile, userProfile)) &&
            (identical(other.userProfile2, userProfile2) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile2, userProfile2)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(typeObj) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(userDetail) ^
      const DeepCollectionEquality().hash(isSuperUser) ^
      const DeepCollectionEquality().hash(forceChangePassword) ^
      const DeepCollectionEquality().hash(settingValues) ^
      const DeepCollectionEquality().hash(lastActivityDate) ^
      const DeepCollectionEquality().hash(groupType) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(userProfile) ^
      const DeepCollectionEquality().hash(userProfile2) ^
      runtimeType.hashCode;
}

extension $BaseUserModelExtension on BaseUserModel {
  BaseUserModel copyWith(
      {String? id,
      String? userName,
      String? name,
      String? avatarUrl,
      String? applicationId,
      String? email,
      String? phoneNumber,
      enums.UserTypeEnum? typeObj,
      bool? isActive,
      UserDetail? userDetail,
      bool? isSuperUser,
      bool? forceChangePassword,
      Settings? settingValues,
      DateTime? lastActivityDate,
      String? groupType,
      String? groupId,
      String? groupName,
      String? userProfile,
      String? userProfile2}) {
    return BaseUserModel(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        name: name ?? this.name,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        applicationId: applicationId ?? this.applicationId,
        email: email ?? this.email,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        typeObj: typeObj ?? this.typeObj,
        isActive: isActive ?? this.isActive,
        userDetail: userDetail ?? this.userDetail,
        isSuperUser: isSuperUser ?? this.isSuperUser,
        forceChangePassword: forceChangePassword ?? this.forceChangePassword,
        settingValues: settingValues ?? this.settingValues,
        lastActivityDate: lastActivityDate ?? this.lastActivityDate,
        groupType: groupType ?? this.groupType,
        groupId: groupId ?? this.groupId,
        groupName: groupName ?? this.groupName,
        userProfile: userProfile ?? this.userProfile,
        userProfile2: userProfile2 ?? this.userProfile2);
  }
}

@JsonSerializable(explicitToJson: true)
class BaseUserModelListResponseObject {
  BaseUserModelListResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory BaseUserModelListResponseObject.fromJson(Map<String, dynamic> json) =>
      _$BaseUserModelListResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true, defaultValue: <BaseUserModel>[])
  final List<BaseUserModel>? data;
  static const fromJsonFactory = _$BaseUserModelListResponseObjectFromJson;
  static const toJsonFactory = _$BaseUserModelListResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$BaseUserModelListResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BaseUserModelListResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $BaseUserModelListResponseObjectExtension
    on BaseUserModelListResponseObject {
  BaseUserModelListResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<BaseUserModel>? data}) {
    return BaseUserModelListResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class BaseUserModelResponseList {
  BaseUserModelResponseList({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory BaseUserModelResponseList.fromJson(Map<String, dynamic> json) =>
      _$BaseUserModelResponseListFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true, defaultValue: <BaseUserModel>[])
  final List<BaseUserModel>? data;
  static const fromJsonFactory = _$BaseUserModelResponseListFromJson;
  static const toJsonFactory = _$BaseUserModelResponseListToJson;
  Map<String, dynamic> toJson() => _$BaseUserModelResponseListToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BaseUserModelResponseList &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $BaseUserModelResponseListExtension on BaseUserModelResponseList {
  BaseUserModelResponseList copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<BaseUserModel>? data}) {
    return BaseUserModelResponseList(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class BaseUserModelResponseObject {
  BaseUserModelResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory BaseUserModelResponseObject.fromJson(Map<String, dynamic> json) =>
      _$BaseUserModelResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final BaseUserModel? data;
  static const fromJsonFactory = _$BaseUserModelResponseObjectFromJson;
  static const toJsonFactory = _$BaseUserModelResponseObjectToJson;
  Map<String, dynamic> toJson() => _$BaseUserModelResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BaseUserModelResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $BaseUserModelResponseObjectExtension on BaseUserModelResponseObject {
  BaseUserModelResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      BaseUserModel? data}) {
    return BaseUserModelResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class BooleanResponseObject {
  BooleanResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory BooleanResponseObject.fromJson(Map<String, dynamic> json) =>
      _$BooleanResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final bool? data;
  static const fromJsonFactory = _$BooleanResponseObjectFromJson;
  static const toJsonFactory = _$BooleanResponseObjectToJson;
  Map<String, dynamic> toJson() => _$BooleanResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BooleanResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $BooleanResponseObjectExtension on BooleanResponseObject {
  BooleanResponseObject copyWith(
      {enums.Code? code, String? message, num? totalTime, bool? data}) {
    return BooleanResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class GuidListResponseObject {
  GuidListResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory GuidListResponseObject.fromJson(Map<String, dynamic> json) =>
      _$GuidListResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true, defaultValue: <String>[])
  final List<String>? data;
  static const fromJsonFactory = _$GuidListResponseObjectFromJson;
  static const toJsonFactory = _$GuidListResponseObjectToJson;
  Map<String, dynamic> toJson() => _$GuidListResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GuidListResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $GuidListResponseObjectExtension on GuidListResponseObject {
  GuidListResponseObject copyWith(
      {enums.Code? code, String? message, num? totalTime, List<String>? data}) {
    return GuidListResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class LabelsObj {
  LabelsObj({
    this.objectId,
    this.objectCode,
    this.objectName,
    this.color,
  });

  factory LabelsObj.fromJson(Map<String, dynamic> json) =>
      _$LabelsObjFromJson(json);

  @JsonKey(name: 'objectId', includeIfNull: true)
  final String? objectId;
  @JsonKey(name: 'objectCode', includeIfNull: true)
  final String? objectCode;
  @JsonKey(name: 'objectName', includeIfNull: true)
  final String? objectName;
  @JsonKey(name: 'color', includeIfNull: true)
  final String? color;
  static const fromJsonFactory = _$LabelsObjFromJson;
  static const toJsonFactory = _$LabelsObjToJson;
  Map<String, dynamic> toJson() => _$LabelsObjToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LabelsObj &&
            (identical(other.objectId, objectId) ||
                const DeepCollectionEquality()
                    .equals(other.objectId, objectId)) &&
            (identical(other.objectCode, objectCode) ||
                const DeepCollectionEquality()
                    .equals(other.objectCode, objectCode)) &&
            (identical(other.objectName, objectName) ||
                const DeepCollectionEquality()
                    .equals(other.objectName, objectName)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(objectId) ^
      const DeepCollectionEquality().hash(objectCode) ^
      const DeepCollectionEquality().hash(objectName) ^
      const DeepCollectionEquality().hash(color) ^
      runtimeType.hashCode;
}

extension $LabelsObjExtension on LabelsObj {
  LabelsObj copyWith(
      {String? objectId,
      String? objectCode,
      String? objectName,
      String? color}) {
    return LabelsObj(
        objectId: objectId ?? this.objectId,
        objectCode: objectCode ?? this.objectCode,
        objectName: objectName ?? this.objectName,
        color: color ?? this.color);
  }
}

@JsonSerializable(explicitToJson: true)
class MetaKeyValue {
  MetaKeyValue({
    this.key,
    this.value,
    this.order,
  });

  factory MetaKeyValue.fromJson(Map<String, dynamic> json) =>
      _$MetaKeyValueFromJson(json);

  @JsonKey(name: 'key', includeIfNull: true)
  final String? key;
  @JsonKey(name: 'value', includeIfNull: true)
  final String? value;
  @JsonKey(name: 'order', includeIfNull: true)
  final int? order;
  static const fromJsonFactory = _$MetaKeyValueFromJson;
  static const toJsonFactory = _$MetaKeyValueToJson;
  Map<String, dynamic> toJson() => _$MetaKeyValueToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MetaKeyValue &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(order) ^
      runtimeType.hashCode;
}

extension $MetaKeyValueExtension on MetaKeyValue {
  MetaKeyValue copyWith({String? key, String? value, int? order}) {
    return MetaKeyValue(
        key: key ?? this.key,
        value: value ?? this.value,
        order: order ?? this.order);
  }
}

@JsonSerializable(explicitToJson: true)
class MetadataValue {
  MetadataValue({
    this.id,
    this.fieldName,
    this.displayName,
    this.fieldType,
    this.defaultValue,
    this.fieldValues,
    this.fieldSelectionValues,
    this.allowNulls,
    this.sortOrder,
  });

  factory MetadataValue.fromJson(Map<String, dynamic> json) =>
      _$MetadataValueFromJson(json);

  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'fieldName', includeIfNull: true)
  final String? fieldName;
  @JsonKey(name: 'displayName', includeIfNull: true)
  final String? displayName;
  @JsonKey(
      name: 'fieldType',
      includeIfNull: true,
      toJson: metafieldTypeToJson,
      fromJson: metafieldTypeFromJson)
  final enums.MetafieldType? fieldType;
  @JsonKey(name: 'defaultValue', includeIfNull: true)
  final String? defaultValue;
  @JsonKey(name: 'fieldValues', includeIfNull: true)
  final String? fieldValues;
  @JsonKey(
      name: 'fieldSelectionValues',
      includeIfNull: true,
      defaultValue: <MetaKeyValue>[])
  final List<MetaKeyValue>? fieldSelectionValues;
  @JsonKey(name: 'allowNulls', includeIfNull: true)
  final bool? allowNulls;
  @JsonKey(name: 'sortOrder', includeIfNull: true)
  final int? sortOrder;
  static const fromJsonFactory = _$MetadataValueFromJson;
  static const toJsonFactory = _$MetadataValueToJson;
  Map<String, dynamic> toJson() => _$MetadataValueToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MetadataValue &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.fieldName, fieldName) ||
                const DeepCollectionEquality()
                    .equals(other.fieldName, fieldName)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.fieldType, fieldType) ||
                const DeepCollectionEquality()
                    .equals(other.fieldType, fieldType)) &&
            (identical(other.defaultValue, defaultValue) ||
                const DeepCollectionEquality()
                    .equals(other.defaultValue, defaultValue)) &&
            (identical(other.fieldValues, fieldValues) ||
                const DeepCollectionEquality()
                    .equals(other.fieldValues, fieldValues)) &&
            (identical(other.fieldSelectionValues, fieldSelectionValues) ||
                const DeepCollectionEquality().equals(
                    other.fieldSelectionValues, fieldSelectionValues)) &&
            (identical(other.allowNulls, allowNulls) ||
                const DeepCollectionEquality()
                    .equals(other.allowNulls, allowNulls)) &&
            (identical(other.sortOrder, sortOrder) ||
                const DeepCollectionEquality()
                    .equals(other.sortOrder, sortOrder)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(fieldName) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(fieldType) ^
      const DeepCollectionEquality().hash(defaultValue) ^
      const DeepCollectionEquality().hash(fieldValues) ^
      const DeepCollectionEquality().hash(fieldSelectionValues) ^
      const DeepCollectionEquality().hash(allowNulls) ^
      const DeepCollectionEquality().hash(sortOrder) ^
      runtimeType.hashCode;
}

extension $MetadataValueExtension on MetadataValue {
  MetadataValue copyWith(
      {String? id,
      String? fieldName,
      String? displayName,
      enums.MetafieldType? fieldType,
      String? defaultValue,
      String? fieldValues,
      List<MetaKeyValue>? fieldSelectionValues,
      bool? allowNulls,
      int? sortOrder}) {
    return MetadataValue(
        id: id ?? this.id,
        fieldName: fieldName ?? this.fieldName,
        displayName: displayName ?? this.displayName,
        fieldType: fieldType ?? this.fieldType,
        defaultValue: defaultValue ?? this.defaultValue,
        fieldValues: fieldValues ?? this.fieldValues,
        fieldSelectionValues: fieldSelectionValues ?? this.fieldSelectionValues,
        allowNulls: allowNulls ?? this.allowNulls,
        sortOrder: sortOrder ?? this.sortOrder);
  }
}

@JsonSerializable(explicitToJson: true)
class NavigationCreateRequestModel {
  NavigationCreateRequestModel({
    this.parentCode,
    this.code,
    this.name,
    this.status,
    this.order,
    this.urlRewrite,
    this.isActive,
    this.iconClass,
    this.positionObj,
    this.rightCodeObj,
    this.subUrl,
  });

  factory NavigationCreateRequestModel.fromJson(Map<String, dynamic> json) =>
      _$NavigationCreateRequestModelFromJson(json);

  @JsonKey(name: 'parentCode', includeIfNull: true)
  final String? parentCode;
  @JsonKey(name: 'code', includeIfNull: true)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'status', includeIfNull: true)
  final bool? status;
  @JsonKey(name: 'order', includeIfNull: true)
  final int? order;
  @JsonKey(name: 'urlRewrite', includeIfNull: true)
  final String? urlRewrite;
  @JsonKey(name: 'isActive', includeIfNull: true)
  final bool? isActive;
  @JsonKey(name: 'iconClass', includeIfNull: true)
  final String? iconClass;
  @JsonKey(
      name: 'positionObj',
      includeIfNull: true,
      toJson: positionEnumToJson,
      fromJson: positionEnumFromJson)
  final enums.PositionEnum? positionObj;
  @JsonKey(name: 'rightCodeObj', includeIfNull: true, defaultValue: <String>[])
  final List<String>? rightCodeObj;
  @JsonKey(name: 'subUrl', includeIfNull: true)
  final String? subUrl;
  static const fromJsonFactory = _$NavigationCreateRequestModelFromJson;
  static const toJsonFactory = _$NavigationCreateRequestModelToJson;
  Map<String, dynamic> toJson() => _$NavigationCreateRequestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationCreateRequestModel &&
            (identical(other.parentCode, parentCode) ||
                const DeepCollectionEquality()
                    .equals(other.parentCode, parentCode)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.urlRewrite, urlRewrite) ||
                const DeepCollectionEquality()
                    .equals(other.urlRewrite, urlRewrite)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.iconClass, iconClass) ||
                const DeepCollectionEquality()
                    .equals(other.iconClass, iconClass)) &&
            (identical(other.positionObj, positionObj) ||
                const DeepCollectionEquality()
                    .equals(other.positionObj, positionObj)) &&
            (identical(other.rightCodeObj, rightCodeObj) ||
                const DeepCollectionEquality()
                    .equals(other.rightCodeObj, rightCodeObj)) &&
            (identical(other.subUrl, subUrl) ||
                const DeepCollectionEquality().equals(other.subUrl, subUrl)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(parentCode) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(urlRewrite) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(iconClass) ^
      const DeepCollectionEquality().hash(positionObj) ^
      const DeepCollectionEquality().hash(rightCodeObj) ^
      const DeepCollectionEquality().hash(subUrl) ^
      runtimeType.hashCode;
}

extension $NavigationCreateRequestModelExtension
    on NavigationCreateRequestModel {
  NavigationCreateRequestModel copyWith(
      {String? parentCode,
      String? code,
      String? name,
      bool? status,
      int? order,
      String? urlRewrite,
      bool? isActive,
      String? iconClass,
      enums.PositionEnum? positionObj,
      List<String>? rightCodeObj,
      String? subUrl}) {
    return NavigationCreateRequestModel(
        parentCode: parentCode ?? this.parentCode,
        code: code ?? this.code,
        name: name ?? this.name,
        status: status ?? this.status,
        order: order ?? this.order,
        urlRewrite: urlRewrite ?? this.urlRewrite,
        isActive: isActive ?? this.isActive,
        iconClass: iconClass ?? this.iconClass,
        positionObj: positionObj ?? this.positionObj,
        rightCodeObj: rightCodeObj ?? this.rightCodeObj,
        subUrl: subUrl ?? this.subUrl);
  }
}

@JsonSerializable(explicitToJson: true)
class NavigationModel {
  NavigationModel({
    this.applicationId,
    this.id,
    this.createdByUserId,
    this.createdOnDate,
    this.lastModifiedByUserId,
    this.lastModifiedOnDate,
    this.code,
    this.name,
    this.idPath,
    this.path,
    this.level,
    this.order,
    this.isActive,
    this.status,
    this.positionObj,
    this.parentId,
    this.parentCode,
    this.urlRewrite,
    this.iconClass,
    this.subChild,
    this.rightCodeObj,
    this.subUrl,
  });

  factory NavigationModel.fromJson(Map<String, dynamic> json) =>
      _$NavigationModelFromJson(json);

  @JsonKey(name: 'applicationId', includeIfNull: true)
  final String? applicationId;
  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'createdByUserId', includeIfNull: true)
  final String? createdByUserId;
  @JsonKey(name: 'createdOnDate', includeIfNull: true)
  final DateTime? createdOnDate;
  @JsonKey(name: 'lastModifiedByUserId', includeIfNull: true)
  final String? lastModifiedByUserId;
  @JsonKey(name: 'lastModifiedOnDate', includeIfNull: true)
  final DateTime? lastModifiedOnDate;
  @JsonKey(name: 'code', includeIfNull: true)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'idPath', includeIfNull: true)
  final String? idPath;
  @JsonKey(name: 'path', includeIfNull: true)
  final String? path;
  @JsonKey(name: 'level', includeIfNull: true)
  final int? level;
  @JsonKey(name: 'order', includeIfNull: true)
  final int? order;
  @JsonKey(name: 'isActive', includeIfNull: true)
  final bool? isActive;
  @JsonKey(name: 'status', includeIfNull: true)
  final bool? status;
  @JsonKey(
      name: 'positionObj',
      includeIfNull: true,
      toJson: positionEnumToJson,
      fromJson: positionEnumFromJson)
  final enums.PositionEnum? positionObj;
  @JsonKey(name: 'parentId', includeIfNull: true)
  final String? parentId;
  @JsonKey(name: 'parentCode', includeIfNull: true)
  final String? parentCode;
  @JsonKey(name: 'urlRewrite', includeIfNull: true)
  final String? urlRewrite;
  @JsonKey(name: 'iconClass', includeIfNull: true)
  final String? iconClass;
  @JsonKey(
      name: 'subChild', includeIfNull: true, defaultValue: <NavigationModel>[])
  final List<NavigationModel>? subChild;
  @JsonKey(name: 'rightCodeObj', includeIfNull: true, defaultValue: <String>[])
  final List<String>? rightCodeObj;
  @JsonKey(name: 'subUrl', includeIfNull: true)
  final String? subUrl;
  static const fromJsonFactory = _$NavigationModelFromJson;
  static const toJsonFactory = _$NavigationModelToJson;
  Map<String, dynamic> toJson() => _$NavigationModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationModel &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdByUserId, createdByUserId) ||
                const DeepCollectionEquality()
                    .equals(other.createdByUserId, createdByUserId)) &&
            (identical(other.createdOnDate, createdOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdOnDate, createdOnDate)) &&
            (identical(other.lastModifiedByUserId, lastModifiedByUserId) ||
                const DeepCollectionEquality().equals(
                    other.lastModifiedByUserId, lastModifiedByUserId)) &&
            (identical(other.lastModifiedOnDate, lastModifiedOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedOnDate, lastModifiedOnDate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.idPath, idPath) ||
                const DeepCollectionEquality().equals(other.idPath, idPath)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.positionObj, positionObj) ||
                const DeepCollectionEquality()
                    .equals(other.positionObj, positionObj)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.parentCode, parentCode) ||
                const DeepCollectionEquality()
                    .equals(other.parentCode, parentCode)) &&
            (identical(other.urlRewrite, urlRewrite) ||
                const DeepCollectionEquality()
                    .equals(other.urlRewrite, urlRewrite)) &&
            (identical(other.iconClass, iconClass) ||
                const DeepCollectionEquality()
                    .equals(other.iconClass, iconClass)) &&
            (identical(other.subChild, subChild) ||
                const DeepCollectionEquality()
                    .equals(other.subChild, subChild)) &&
            (identical(other.rightCodeObj, rightCodeObj) ||
                const DeepCollectionEquality()
                    .equals(other.rightCodeObj, rightCodeObj)) &&
            (identical(other.subUrl, subUrl) ||
                const DeepCollectionEquality().equals(other.subUrl, subUrl)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdByUserId) ^
      const DeepCollectionEquality().hash(createdOnDate) ^
      const DeepCollectionEquality().hash(lastModifiedByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedOnDate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(idPath) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(positionObj) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(parentCode) ^
      const DeepCollectionEquality().hash(urlRewrite) ^
      const DeepCollectionEquality().hash(iconClass) ^
      const DeepCollectionEquality().hash(subChild) ^
      const DeepCollectionEquality().hash(rightCodeObj) ^
      const DeepCollectionEquality().hash(subUrl) ^
      runtimeType.hashCode;
}

extension $NavigationModelExtension on NavigationModel {
  NavigationModel copyWith(
      {String? applicationId,
      String? id,
      String? createdByUserId,
      DateTime? createdOnDate,
      String? lastModifiedByUserId,
      DateTime? lastModifiedOnDate,
      String? code,
      String? name,
      String? idPath,
      String? path,
      int? level,
      int? order,
      bool? isActive,
      bool? status,
      enums.PositionEnum? positionObj,
      String? parentId,
      String? parentCode,
      String? urlRewrite,
      String? iconClass,
      List<NavigationModel>? subChild,
      List<String>? rightCodeObj,
      String? subUrl}) {
    return NavigationModel(
        applicationId: applicationId ?? this.applicationId,
        id: id ?? this.id,
        createdByUserId: createdByUserId ?? this.createdByUserId,
        createdOnDate: createdOnDate ?? this.createdOnDate,
        lastModifiedByUserId: lastModifiedByUserId ?? this.lastModifiedByUserId,
        lastModifiedOnDate: lastModifiedOnDate ?? this.lastModifiedOnDate,
        code: code ?? this.code,
        name: name ?? this.name,
        idPath: idPath ?? this.idPath,
        path: path ?? this.path,
        level: level ?? this.level,
        order: order ?? this.order,
        isActive: isActive ?? this.isActive,
        status: status ?? this.status,
        positionObj: positionObj ?? this.positionObj,
        parentId: parentId ?? this.parentId,
        parentCode: parentCode ?? this.parentCode,
        urlRewrite: urlRewrite ?? this.urlRewrite,
        iconClass: iconClass ?? this.iconClass,
        subChild: subChild ?? this.subChild,
        rightCodeObj: rightCodeObj ?? this.rightCodeObj,
        subUrl: subUrl ?? this.subUrl);
  }
}

@JsonSerializable(explicitToJson: true)
class NavigationModelIListResponseObject {
  NavigationModelIListResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory NavigationModelIListResponseObject.fromJson(
          Map<String, dynamic> json) =>
      _$NavigationModelIListResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true, defaultValue: <NavigationModel>[])
  final List<NavigationModel>? data;
  static const fromJsonFactory = _$NavigationModelIListResponseObjectFromJson;
  static const toJsonFactory = _$NavigationModelIListResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$NavigationModelIListResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationModelIListResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $NavigationModelIListResponseObjectExtension
    on NavigationModelIListResponseObject {
  NavigationModelIListResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<NavigationModel>? data}) {
    return NavigationModelIListResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class NavigationModelPagination {
  NavigationModelPagination({
    this.currentPage,
    this.totalPages,
    this.pageSize,
    this.numberOfRecords,
    this.totalRecords,
    this.content,
  });

  factory NavigationModelPagination.fromJson(Map<String, dynamic> json) =>
      _$NavigationModelPaginationFromJson(json);

  @JsonKey(name: 'currentPage', includeIfNull: true)
  final int? currentPage;
  @JsonKey(name: 'totalPages', includeIfNull: true)
  final int? totalPages;
  @JsonKey(name: 'pageSize', includeIfNull: true)
  final int? pageSize;
  @JsonKey(name: 'numberOfRecords', includeIfNull: true)
  final int? numberOfRecords;
  @JsonKey(name: 'totalRecords', includeIfNull: true)
  final int? totalRecords;
  @JsonKey(
      name: 'content', includeIfNull: true, defaultValue: <NavigationModel>[])
  final List<NavigationModel>? content;
  static const fromJsonFactory = _$NavigationModelPaginationFromJson;
  static const toJsonFactory = _$NavigationModelPaginationToJson;
  Map<String, dynamic> toJson() => _$NavigationModelPaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationModelPagination &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)) &&
            (identical(other.numberOfRecords, numberOfRecords) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfRecords, numberOfRecords)) &&
            (identical(other.totalRecords, totalRecords) ||
                const DeepCollectionEquality()
                    .equals(other.totalRecords, totalRecords)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(numberOfRecords) ^
      const DeepCollectionEquality().hash(totalRecords) ^
      const DeepCollectionEquality().hash(content) ^
      runtimeType.hashCode;
}

extension $NavigationModelPaginationExtension on NavigationModelPagination {
  NavigationModelPagination copyWith(
      {int? currentPage,
      int? totalPages,
      int? pageSize,
      int? numberOfRecords,
      int? totalRecords,
      List<NavigationModel>? content}) {
    return NavigationModelPagination(
        currentPage: currentPage ?? this.currentPage,
        totalPages: totalPages ?? this.totalPages,
        pageSize: pageSize ?? this.pageSize,
        numberOfRecords: numberOfRecords ?? this.numberOfRecords,
        totalRecords: totalRecords ?? this.totalRecords,
        content: content ?? this.content);
  }
}

@JsonSerializable(explicitToJson: true)
class NavigationModelResponseList {
  NavigationModelResponseList({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory NavigationModelResponseList.fromJson(Map<String, dynamic> json) =>
      _$NavigationModelResponseListFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true, defaultValue: <NavigationModel>[])
  final List<NavigationModel>? data;
  static const fromJsonFactory = _$NavigationModelResponseListFromJson;
  static const toJsonFactory = _$NavigationModelResponseListToJson;
  Map<String, dynamic> toJson() => _$NavigationModelResponseListToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationModelResponseList &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $NavigationModelResponseListExtension on NavigationModelResponseList {
  NavigationModelResponseList copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<NavigationModel>? data}) {
    return NavigationModelResponseList(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class NavigationModelResponseObject {
  NavigationModelResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory NavigationModelResponseObject.fromJson(Map<String, dynamic> json) =>
      _$NavigationModelResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final NavigationModel? data;
  static const fromJsonFactory = _$NavigationModelResponseObjectFromJson;
  static const toJsonFactory = _$NavigationModelResponseObjectToJson;
  Map<String, dynamic> toJson() => _$NavigationModelResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationModelResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $NavigationModelResponseObjectExtension
    on NavigationModelResponseObject {
  NavigationModelResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      NavigationModel? data}) {
    return NavigationModelResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class NavigationModelResponsePagination {
  NavigationModelResponsePagination({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory NavigationModelResponsePagination.fromJson(
          Map<String, dynamic> json) =>
      _$NavigationModelResponsePaginationFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final NavigationModelPagination? data;
  static const fromJsonFactory = _$NavigationModelResponsePaginationFromJson;
  static const toJsonFactory = _$NavigationModelResponsePaginationToJson;
  Map<String, dynamic> toJson() =>
      _$NavigationModelResponsePaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationModelResponsePagination &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $NavigationModelResponsePaginationExtension
    on NavigationModelResponsePagination {
  NavigationModelResponsePagination copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      NavigationModelPagination? data}) {
    return NavigationModelResponsePagination(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class NavigationUpdateRequestModel {
  NavigationUpdateRequestModel({
    this.parentCode,
    this.code,
    this.name,
    this.status,
    this.order,
    this.urlRewrite,
    this.isActive,
    this.iconClass,
    this.positionObj,
    this.rightCodeObj,
    this.parentModel,
    this.fromSubNavigation,
    this.subUrl,
  });

  factory NavigationUpdateRequestModel.fromJson(Map<String, dynamic> json) =>
      _$NavigationUpdateRequestModelFromJson(json);

  @JsonKey(name: 'parentCode', includeIfNull: true)
  final String? parentCode;
  @JsonKey(name: 'code', includeIfNull: true)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'status', includeIfNull: true)
  final bool? status;
  @JsonKey(name: 'order', includeIfNull: true)
  final int? order;
  @JsonKey(name: 'urlRewrite', includeIfNull: true)
  final String? urlRewrite;
  @JsonKey(name: 'isActive', includeIfNull: true)
  final bool? isActive;
  @JsonKey(name: 'iconClass', includeIfNull: true)
  final String? iconClass;
  @JsonKey(
      name: 'positionObj',
      includeIfNull: true,
      toJson: positionEnumToJson,
      fromJson: positionEnumFromJson)
  final enums.PositionEnum? positionObj;
  @JsonKey(name: 'rightCodeObj', includeIfNull: true, defaultValue: <String>[])
  final List<String>? rightCodeObj;
  @JsonKey(name: 'parentModel', includeIfNull: true)
  final BaseNavigationModel? parentModel;
  @JsonKey(name: 'fromSubNavigation', includeIfNull: true)
  final String? fromSubNavigation;
  @JsonKey(name: 'subUrl', includeIfNull: true)
  final String? subUrl;
  static const fromJsonFactory = _$NavigationUpdateRequestModelFromJson;
  static const toJsonFactory = _$NavigationUpdateRequestModelToJson;
  Map<String, dynamic> toJson() => _$NavigationUpdateRequestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationUpdateRequestModel &&
            (identical(other.parentCode, parentCode) ||
                const DeepCollectionEquality()
                    .equals(other.parentCode, parentCode)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.urlRewrite, urlRewrite) ||
                const DeepCollectionEquality()
                    .equals(other.urlRewrite, urlRewrite)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.iconClass, iconClass) ||
                const DeepCollectionEquality()
                    .equals(other.iconClass, iconClass)) &&
            (identical(other.positionObj, positionObj) ||
                const DeepCollectionEquality()
                    .equals(other.positionObj, positionObj)) &&
            (identical(other.rightCodeObj, rightCodeObj) ||
                const DeepCollectionEquality()
                    .equals(other.rightCodeObj, rightCodeObj)) &&
            (identical(other.parentModel, parentModel) ||
                const DeepCollectionEquality()
                    .equals(other.parentModel, parentModel)) &&
            (identical(other.fromSubNavigation, fromSubNavigation) ||
                const DeepCollectionEquality()
                    .equals(other.fromSubNavigation, fromSubNavigation)) &&
            (identical(other.subUrl, subUrl) ||
                const DeepCollectionEquality().equals(other.subUrl, subUrl)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(parentCode) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(urlRewrite) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(iconClass) ^
      const DeepCollectionEquality().hash(positionObj) ^
      const DeepCollectionEquality().hash(rightCodeObj) ^
      const DeepCollectionEquality().hash(parentModel) ^
      const DeepCollectionEquality().hash(fromSubNavigation) ^
      const DeepCollectionEquality().hash(subUrl) ^
      runtimeType.hashCode;
}

extension $NavigationUpdateRequestModelExtension
    on NavigationUpdateRequestModel {
  NavigationUpdateRequestModel copyWith(
      {String? parentCode,
      String? code,
      String? name,
      bool? status,
      int? order,
      String? urlRewrite,
      bool? isActive,
      String? iconClass,
      enums.PositionEnum? positionObj,
      List<String>? rightCodeObj,
      BaseNavigationModel? parentModel,
      String? fromSubNavigation,
      String? subUrl}) {
    return NavigationUpdateRequestModel(
        parentCode: parentCode ?? this.parentCode,
        code: code ?? this.code,
        name: name ?? this.name,
        status: status ?? this.status,
        order: order ?? this.order,
        urlRewrite: urlRewrite ?? this.urlRewrite,
        isActive: isActive ?? this.isActive,
        iconClass: iconClass ?? this.iconClass,
        positionObj: positionObj ?? this.positionObj,
        rightCodeObj: rightCodeObj ?? this.rightCodeObj,
        parentModel: parentModel ?? this.parentModel,
        fromSubNavigation: fromSubNavigation ?? this.fromSubNavigation,
        subUrl: subUrl ?? this.subUrl);
  }
}

@JsonSerializable(explicitToJson: true)
class Response$ {
  Response$({
    this.code,
    this.message,
    this.totalTime,
  });

  factory Response$.fromJson(Map<String, dynamic> json) =>
      _$Response$FromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  static const fromJsonFactory = _$Response$FromJson;
  static const toJsonFactory = _$Response$ToJson;
  Map<String, dynamic> toJson() => _$Response$ToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Response$ &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      runtimeType.hashCode;
}

extension $Response$Extension on Response$ {
  Response$ copyWith({enums.Code? code, String? message, num? totalTime}) {
    return Response$(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime);
  }
}

@JsonSerializable(explicitToJson: true)
class ResponseDelete {
  ResponseDelete({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory ResponseDelete.fromJson(Map<String, dynamic> json) =>
      _$ResponseDeleteFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final ResponseDeleteModel? data;
  static const fromJsonFactory = _$ResponseDeleteFromJson;
  static const toJsonFactory = _$ResponseDeleteToJson;
  Map<String, dynamic> toJson() => _$ResponseDeleteToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResponseDelete &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $ResponseDeleteExtension on ResponseDelete {
  ResponseDelete copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      ResponseDeleteModel? data}) {
    return ResponseDelete(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ResponseDeleteModel {
  ResponseDeleteModel({
    this.id,
    this.name,
  });

  factory ResponseDeleteModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseDeleteModelFromJson(json);

  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  static const fromJsonFactory = _$ResponseDeleteModelFromJson;
  static const toJsonFactory = _$ResponseDeleteModelToJson;
  Map<String, dynamic> toJson() => _$ResponseDeleteModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResponseDeleteModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $ResponseDeleteModelExtension on ResponseDeleteModel {
  ResponseDeleteModel copyWith({String? id, String? name}) {
    return ResponseDeleteModel(id: id ?? this.id, name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class ResponseDeleteMulti {
  ResponseDeleteMulti({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory ResponseDeleteMulti.fromJson(Map<String, dynamic> json) =>
      _$ResponseDeleteMultiFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(
      name: 'data', includeIfNull: true, defaultValue: <ResponseDeleteModel>[])
  final List<ResponseDeleteModel>? data;
  static const fromJsonFactory = _$ResponseDeleteMultiFromJson;
  static const toJsonFactory = _$ResponseDeleteMultiToJson;
  Map<String, dynamic> toJson() => _$ResponseDeleteMultiToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResponseDeleteMulti &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $ResponseDeleteMultiExtension on ResponseDeleteMulti {
  ResponseDeleteMulti copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<ResponseDeleteModel>? data}) {
    return ResponseDeleteMulti(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ResponseUpdate {
  ResponseUpdate({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory ResponseUpdate.fromJson(Map<String, dynamic> json) =>
      _$ResponseUpdateFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final ResponseUpdateModel? data;
  static const fromJsonFactory = _$ResponseUpdateFromJson;
  static const toJsonFactory = _$ResponseUpdateToJson;
  Map<String, dynamic> toJson() => _$ResponseUpdateToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResponseUpdate &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $ResponseUpdateExtension on ResponseUpdate {
  ResponseUpdate copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      ResponseUpdateModel? data}) {
    return ResponseUpdate(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ResponseUpdateModel {
  ResponseUpdateModel({
    this.id,
    this.name,
  });

  factory ResponseUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseUpdateModelFromJson(json);

  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  static const fromJsonFactory = _$ResponseUpdateModelFromJson;
  static const toJsonFactory = _$ResponseUpdateModelToJson;
  Map<String, dynamic> toJson() => _$ResponseUpdateModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResponseUpdateModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $ResponseUpdateModelExtension on ResponseUpdateModel {
  ResponseUpdateModel copyWith({String? id, String? name}) {
    return ResponseUpdateModel(id: id ?? this.id, name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class ResponseUpdateMulti {
  ResponseUpdateMulti({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory ResponseUpdateMulti.fromJson(Map<String, dynamic> json) =>
      _$ResponseUpdateMultiFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(
      name: 'data', includeIfNull: true, defaultValue: <ResponseUpdateModel>[])
  final List<ResponseUpdateModel>? data;
  static const fromJsonFactory = _$ResponseUpdateMultiFromJson;
  static const toJsonFactory = _$ResponseUpdateMultiToJson;
  Map<String, dynamic> toJson() => _$ResponseUpdateMultiToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResponseUpdateMulti &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $ResponseUpdateMultiExtension on ResponseUpdateMulti {
  ResponseUpdateMulti copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<ResponseUpdateModel>? data}) {
    return ResponseUpdateMulti(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RightDetailModel {
  RightDetailModel({
    this.applicationId,
    this.id,
    this.createdByUserId,
    this.createdOnDate,
    this.lastModifiedByUserId,
    this.lastModifiedOnDate,
    this.code,
    this.name,
    this.description,
    this.groupCode,
    this.status,
    this.isSystem,
    this.order,
    this.listUser,
    this.listRole,
  });

  factory RightDetailModel.fromJson(Map<String, dynamic> json) =>
      _$RightDetailModelFromJson(json);

  @JsonKey(name: 'applicationId', includeIfNull: true)
  final String? applicationId;
  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'createdByUserId', includeIfNull: true)
  final String? createdByUserId;
  @JsonKey(name: 'createdOnDate', includeIfNull: true)
  final DateTime? createdOnDate;
  @JsonKey(name: 'lastModifiedByUserId', includeIfNull: true)
  final String? lastModifiedByUserId;
  @JsonKey(name: 'lastModifiedOnDate', includeIfNull: true)
  final DateTime? lastModifiedOnDate;
  @JsonKey(name: 'code', includeIfNull: true)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'description', includeIfNull: true)
  final String? description;
  @JsonKey(name: 'groupCode', includeIfNull: true)
  final String? groupCode;
  @JsonKey(name: 'status', includeIfNull: true)
  final bool? status;
  @JsonKey(name: 'isSystem', includeIfNull: true)
  final bool? isSystem;
  @JsonKey(name: 'order', includeIfNull: true)
  final int? order;
  @JsonKey(
      name: 'listUser', includeIfNull: true, defaultValue: <BaseUserModel>[])
  final List<BaseUserModel>? listUser;
  @JsonKey(
      name: 'listRole', includeIfNull: true, defaultValue: <BaseRoleModel>[])
  final List<BaseRoleModel>? listRole;
  static const fromJsonFactory = _$RightDetailModelFromJson;
  static const toJsonFactory = _$RightDetailModelToJson;
  Map<String, dynamic> toJson() => _$RightDetailModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RightDetailModel &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdByUserId, createdByUserId) ||
                const DeepCollectionEquality()
                    .equals(other.createdByUserId, createdByUserId)) &&
            (identical(other.createdOnDate, createdOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdOnDate, createdOnDate)) &&
            (identical(other.lastModifiedByUserId, lastModifiedByUserId) ||
                const DeepCollectionEquality().equals(
                    other.lastModifiedByUserId, lastModifiedByUserId)) &&
            (identical(other.lastModifiedOnDate, lastModifiedOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedOnDate, lastModifiedOnDate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.groupCode, groupCode) ||
                const DeepCollectionEquality()
                    .equals(other.groupCode, groupCode)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.isSystem, isSystem) ||
                const DeepCollectionEquality()
                    .equals(other.isSystem, isSystem)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.listUser, listUser) ||
                const DeepCollectionEquality()
                    .equals(other.listUser, listUser)) &&
            (identical(other.listRole, listRole) ||
                const DeepCollectionEquality()
                    .equals(other.listRole, listRole)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdByUserId) ^
      const DeepCollectionEquality().hash(createdOnDate) ^
      const DeepCollectionEquality().hash(lastModifiedByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedOnDate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(groupCode) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(isSystem) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(listUser) ^
      const DeepCollectionEquality().hash(listRole) ^
      runtimeType.hashCode;
}

extension $RightDetailModelExtension on RightDetailModel {
  RightDetailModel copyWith(
      {String? applicationId,
      String? id,
      String? createdByUserId,
      DateTime? createdOnDate,
      String? lastModifiedByUserId,
      DateTime? lastModifiedOnDate,
      String? code,
      String? name,
      String? description,
      String? groupCode,
      bool? status,
      bool? isSystem,
      int? order,
      List<BaseUserModel>? listUser,
      List<BaseRoleModel>? listRole}) {
    return RightDetailModel(
        applicationId: applicationId ?? this.applicationId,
        id: id ?? this.id,
        createdByUserId: createdByUserId ?? this.createdByUserId,
        createdOnDate: createdOnDate ?? this.createdOnDate,
        lastModifiedByUserId: lastModifiedByUserId ?? this.lastModifiedByUserId,
        lastModifiedOnDate: lastModifiedOnDate ?? this.lastModifiedOnDate,
        code: code ?? this.code,
        name: name ?? this.name,
        description: description ?? this.description,
        groupCode: groupCode ?? this.groupCode,
        status: status ?? this.status,
        isSystem: isSystem ?? this.isSystem,
        order: order ?? this.order,
        listUser: listUser ?? this.listUser,
        listRole: listRole ?? this.listRole);
  }
}

@JsonSerializable(explicitToJson: true)
class RightDetailModelListResponseObject {
  RightDetailModelListResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory RightDetailModelListResponseObject.fromJson(
          Map<String, dynamic> json) =>
      _$RightDetailModelListResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(
      name: 'data', includeIfNull: true, defaultValue: <RightDetailModel>[])
  final List<RightDetailModel>? data;
  static const fromJsonFactory = _$RightDetailModelListResponseObjectFromJson;
  static const toJsonFactory = _$RightDetailModelListResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$RightDetailModelListResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RightDetailModelListResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $RightDetailModelListResponseObjectExtension
    on RightDetailModelListResponseObject {
  RightDetailModelListResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<RightDetailModel>? data}) {
    return RightDetailModelListResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RightGroupModel {
  RightGroupModel({
    this.groupCode,
    this.rights,
  });

  factory RightGroupModel.fromJson(Map<String, dynamic> json) =>
      _$RightGroupModelFromJson(json);

  @JsonKey(name: 'groupCode', includeIfNull: true)
  final String? groupCode;
  @JsonKey(name: 'rights', includeIfNull: true, defaultValue: <RightModel>[])
  final List<RightModel>? rights;
  static const fromJsonFactory = _$RightGroupModelFromJson;
  static const toJsonFactory = _$RightGroupModelToJson;
  Map<String, dynamic> toJson() => _$RightGroupModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RightGroupModel &&
            (identical(other.groupCode, groupCode) ||
                const DeepCollectionEquality()
                    .equals(other.groupCode, groupCode)) &&
            (identical(other.rights, rights) ||
                const DeepCollectionEquality().equals(other.rights, rights)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groupCode) ^
      const DeepCollectionEquality().hash(rights) ^
      runtimeType.hashCode;
}

extension $RightGroupModelExtension on RightGroupModel {
  RightGroupModel copyWith({String? groupCode, List<RightModel>? rights}) {
    return RightGroupModel(
        groupCode: groupCode ?? this.groupCode, rights: rights ?? this.rights);
  }
}

@JsonSerializable(explicitToJson: true)
class RightGroupModelListResponseObject {
  RightGroupModelListResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory RightGroupModelListResponseObject.fromJson(
          Map<String, dynamic> json) =>
      _$RightGroupModelListResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true, defaultValue: <RightGroupModel>[])
  final List<RightGroupModel>? data;
  static const fromJsonFactory = _$RightGroupModelListResponseObjectFromJson;
  static const toJsonFactory = _$RightGroupModelListResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$RightGroupModelListResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RightGroupModelListResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $RightGroupModelListResponseObjectExtension
    on RightGroupModelListResponseObject {
  RightGroupModelListResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<RightGroupModel>? data}) {
    return RightGroupModelListResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RightMapRoleRequestModel {
  RightMapRoleRequestModel({
    this.roleId,
    this.rightId,
  });

  factory RightMapRoleRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RightMapRoleRequestModelFromJson(json);

  @JsonKey(name: 'roleId', includeIfNull: true)
  final String? roleId;
  @JsonKey(name: 'rightId', includeIfNull: true)
  final String? rightId;
  static const fromJsonFactory = _$RightMapRoleRequestModelFromJson;
  static const toJsonFactory = _$RightMapRoleRequestModelToJson;
  Map<String, dynamic> toJson() => _$RightMapRoleRequestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RightMapRoleRequestModel &&
            (identical(other.roleId, roleId) ||
                const DeepCollectionEquality().equals(other.roleId, roleId)) &&
            (identical(other.rightId, rightId) ||
                const DeepCollectionEquality().equals(other.rightId, rightId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(roleId) ^
      const DeepCollectionEquality().hash(rightId) ^
      runtimeType.hashCode;
}

extension $RightMapRoleRequestModelExtension on RightMapRoleRequestModel {
  RightMapRoleRequestModel copyWith({String? roleId, String? rightId}) {
    return RightMapRoleRequestModel(
        roleId: roleId ?? this.roleId, rightId: rightId ?? this.rightId);
  }
}

@JsonSerializable(explicitToJson: true)
class RightMapRoleResponseModel {
  RightMapRoleResponseModel({
    this.id,
    this.roleId,
    this.rightId,
  });

  factory RightMapRoleResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RightMapRoleResponseModelFromJson(json);

  @JsonKey(name: 'id', includeIfNull: true)
  final num? id;
  @JsonKey(name: 'roleId', includeIfNull: true)
  final String? roleId;
  @JsonKey(name: 'rightId', includeIfNull: true)
  final String? rightId;
  static const fromJsonFactory = _$RightMapRoleResponseModelFromJson;
  static const toJsonFactory = _$RightMapRoleResponseModelToJson;
  Map<String, dynamic> toJson() => _$RightMapRoleResponseModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RightMapRoleResponseModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.roleId, roleId) ||
                const DeepCollectionEquality().equals(other.roleId, roleId)) &&
            (identical(other.rightId, rightId) ||
                const DeepCollectionEquality().equals(other.rightId, rightId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(roleId) ^
      const DeepCollectionEquality().hash(rightId) ^
      runtimeType.hashCode;
}

extension $RightMapRoleResponseModelExtension on RightMapRoleResponseModel {
  RightMapRoleResponseModel copyWith(
      {num? id, String? roleId, String? rightId}) {
    return RightMapRoleResponseModel(
        id: id ?? this.id,
        roleId: roleId ?? this.roleId,
        rightId: rightId ?? this.rightId);
  }
}

@JsonSerializable(explicitToJson: true)
class RightMapRoleResponseModelResponseList {
  RightMapRoleResponseModelResponseList({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory RightMapRoleResponseModelResponseList.fromJson(
          Map<String, dynamic> json) =>
      _$RightMapRoleResponseModelResponseListFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(
      name: 'data',
      includeIfNull: true,
      defaultValue: <RightMapRoleResponseModel>[])
  final List<RightMapRoleResponseModel>? data;
  static const fromJsonFactory =
      _$RightMapRoleResponseModelResponseListFromJson;
  static const toJsonFactory = _$RightMapRoleResponseModelResponseListToJson;
  Map<String, dynamic> toJson() =>
      _$RightMapRoleResponseModelResponseListToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RightMapRoleResponseModelResponseList &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $RightMapRoleResponseModelResponseListExtension
    on RightMapRoleResponseModelResponseList {
  RightMapRoleResponseModelResponseList copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<RightMapRoleResponseModel>? data}) {
    return RightMapRoleResponseModelResponseList(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RightModel {
  RightModel({
    this.applicationId,
    this.id,
    this.createdByUserId,
    this.createdOnDate,
    this.lastModifiedByUserId,
    this.lastModifiedOnDate,
    this.code,
    this.name,
    this.description,
    this.groupCode,
    this.status,
    this.isSystem,
    this.order,
  });

  factory RightModel.fromJson(Map<String, dynamic> json) =>
      _$RightModelFromJson(json);

  @JsonKey(name: 'applicationId', includeIfNull: true)
  final String? applicationId;
  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'createdByUserId', includeIfNull: true)
  final String? createdByUserId;
  @JsonKey(name: 'createdOnDate', includeIfNull: true)
  final DateTime? createdOnDate;
  @JsonKey(name: 'lastModifiedByUserId', includeIfNull: true)
  final String? lastModifiedByUserId;
  @JsonKey(name: 'lastModifiedOnDate', includeIfNull: true)
  final DateTime? lastModifiedOnDate;
  @JsonKey(name: 'code', includeIfNull: true)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'description', includeIfNull: true)
  final String? description;
  @JsonKey(name: 'groupCode', includeIfNull: true)
  final String? groupCode;
  @JsonKey(name: 'status', includeIfNull: true)
  final bool? status;
  @JsonKey(name: 'isSystem', includeIfNull: true)
  final bool? isSystem;
  @JsonKey(name: 'order', includeIfNull: true)
  final int? order;
  static const fromJsonFactory = _$RightModelFromJson;
  static const toJsonFactory = _$RightModelToJson;
  Map<String, dynamic> toJson() => _$RightModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RightModel &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdByUserId, createdByUserId) ||
                const DeepCollectionEquality()
                    .equals(other.createdByUserId, createdByUserId)) &&
            (identical(other.createdOnDate, createdOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdOnDate, createdOnDate)) &&
            (identical(other.lastModifiedByUserId, lastModifiedByUserId) ||
                const DeepCollectionEquality().equals(
                    other.lastModifiedByUserId, lastModifiedByUserId)) &&
            (identical(other.lastModifiedOnDate, lastModifiedOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedOnDate, lastModifiedOnDate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.groupCode, groupCode) ||
                const DeepCollectionEquality()
                    .equals(other.groupCode, groupCode)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.isSystem, isSystem) ||
                const DeepCollectionEquality()
                    .equals(other.isSystem, isSystem)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdByUserId) ^
      const DeepCollectionEquality().hash(createdOnDate) ^
      const DeepCollectionEquality().hash(lastModifiedByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedOnDate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(groupCode) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(isSystem) ^
      const DeepCollectionEquality().hash(order) ^
      runtimeType.hashCode;
}

extension $RightModelExtension on RightModel {
  RightModel copyWith(
      {String? applicationId,
      String? id,
      String? createdByUserId,
      DateTime? createdOnDate,
      String? lastModifiedByUserId,
      DateTime? lastModifiedOnDate,
      String? code,
      String? name,
      String? description,
      String? groupCode,
      bool? status,
      bool? isSystem,
      int? order}) {
    return RightModel(
        applicationId: applicationId ?? this.applicationId,
        id: id ?? this.id,
        createdByUserId: createdByUserId ?? this.createdByUserId,
        createdOnDate: createdOnDate ?? this.createdOnDate,
        lastModifiedByUserId: lastModifiedByUserId ?? this.lastModifiedByUserId,
        lastModifiedOnDate: lastModifiedOnDate ?? this.lastModifiedOnDate,
        code: code ?? this.code,
        name: name ?? this.name,
        description: description ?? this.description,
        groupCode: groupCode ?? this.groupCode,
        status: status ?? this.status,
        isSystem: isSystem ?? this.isSystem,
        order: order ?? this.order);
  }
}

@JsonSerializable(explicitToJson: true)
class RightModelListResponseObject {
  RightModelListResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory RightModelListResponseObject.fromJson(Map<String, dynamic> json) =>
      _$RightModelListResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true, defaultValue: <RightModel>[])
  final List<RightModel>? data;
  static const fromJsonFactory = _$RightModelListResponseObjectFromJson;
  static const toJsonFactory = _$RightModelListResponseObjectToJson;
  Map<String, dynamic> toJson() => _$RightModelListResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RightModelListResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $RightModelListResponseObjectExtension
    on RightModelListResponseObject {
  RightModelListResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<RightModel>? data}) {
    return RightModelListResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RightModelPagination {
  RightModelPagination({
    this.currentPage,
    this.totalPages,
    this.pageSize,
    this.numberOfRecords,
    this.totalRecords,
    this.content,
  });

  factory RightModelPagination.fromJson(Map<String, dynamic> json) =>
      _$RightModelPaginationFromJson(json);

  @JsonKey(name: 'currentPage', includeIfNull: true)
  final int? currentPage;
  @JsonKey(name: 'totalPages', includeIfNull: true)
  final int? totalPages;
  @JsonKey(name: 'pageSize', includeIfNull: true)
  final int? pageSize;
  @JsonKey(name: 'numberOfRecords', includeIfNull: true)
  final int? numberOfRecords;
  @JsonKey(name: 'totalRecords', includeIfNull: true)
  final int? totalRecords;
  @JsonKey(name: 'content', includeIfNull: true, defaultValue: <RightModel>[])
  final List<RightModel>? content;
  static const fromJsonFactory = _$RightModelPaginationFromJson;
  static const toJsonFactory = _$RightModelPaginationToJson;
  Map<String, dynamic> toJson() => _$RightModelPaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RightModelPagination &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)) &&
            (identical(other.numberOfRecords, numberOfRecords) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfRecords, numberOfRecords)) &&
            (identical(other.totalRecords, totalRecords) ||
                const DeepCollectionEquality()
                    .equals(other.totalRecords, totalRecords)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(numberOfRecords) ^
      const DeepCollectionEquality().hash(totalRecords) ^
      const DeepCollectionEquality().hash(content) ^
      runtimeType.hashCode;
}

extension $RightModelPaginationExtension on RightModelPagination {
  RightModelPagination copyWith(
      {int? currentPage,
      int? totalPages,
      int? pageSize,
      int? numberOfRecords,
      int? totalRecords,
      List<RightModel>? content}) {
    return RightModelPagination(
        currentPage: currentPage ?? this.currentPage,
        totalPages: totalPages ?? this.totalPages,
        pageSize: pageSize ?? this.pageSize,
        numberOfRecords: numberOfRecords ?? this.numberOfRecords,
        totalRecords: totalRecords ?? this.totalRecords,
        content: content ?? this.content);
  }
}

@JsonSerializable(explicitToJson: true)
class RightModelResponseList {
  RightModelResponseList({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory RightModelResponseList.fromJson(Map<String, dynamic> json) =>
      _$RightModelResponseListFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true, defaultValue: <RightModel>[])
  final List<RightModel>? data;
  static const fromJsonFactory = _$RightModelResponseListFromJson;
  static const toJsonFactory = _$RightModelResponseListToJson;
  Map<String, dynamic> toJson() => _$RightModelResponseListToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RightModelResponseList &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $RightModelResponseListExtension on RightModelResponseList {
  RightModelResponseList copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<RightModel>? data}) {
    return RightModelResponseList(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RightModelResponseObject {
  RightModelResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory RightModelResponseObject.fromJson(Map<String, dynamic> json) =>
      _$RightModelResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final RightModel? data;
  static const fromJsonFactory = _$RightModelResponseObjectFromJson;
  static const toJsonFactory = _$RightModelResponseObjectToJson;
  Map<String, dynamic> toJson() => _$RightModelResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RightModelResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $RightModelResponseObjectExtension on RightModelResponseObject {
  RightModelResponseObject copyWith(
      {enums.Code? code, String? message, num? totalTime, RightModel? data}) {
    return RightModelResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RightModelResponsePagination {
  RightModelResponsePagination({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory RightModelResponsePagination.fromJson(Map<String, dynamic> json) =>
      _$RightModelResponsePaginationFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final RightModelPagination? data;
  static const fromJsonFactory = _$RightModelResponsePaginationFromJson;
  static const toJsonFactory = _$RightModelResponsePaginationToJson;
  Map<String, dynamic> toJson() => _$RightModelResponsePaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RightModelResponsePagination &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $RightModelResponsePaginationExtension
    on RightModelResponsePagination {
  RightModelResponsePagination copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      RightModelPagination? data}) {
    return RightModelResponsePagination(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleCreateModel {
  RoleCreateModel({
    this.id,
    this.parentId,
    this.code,
    this.name,
    this.imageUrl,
    this.isSystem,
    this.autoAssignment,
    this.order,
    this.applicationId,
    this.description,
    this.listAddRightId,
    this.listAddUserId,
  });

  factory RoleCreateModel.fromJson(Map<String, dynamic> json) =>
      _$RoleCreateModelFromJson(json);

  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'parentId', includeIfNull: true)
  final String? parentId;
  @JsonKey(name: 'code', includeIfNull: true)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'imageUrl', includeIfNull: true)
  final String? imageUrl;
  @JsonKey(name: 'isSystem', includeIfNull: true)
  final bool? isSystem;
  @JsonKey(name: 'autoAssignment', includeIfNull: true)
  final bool? autoAssignment;
  @JsonKey(name: 'order', includeIfNull: true)
  final int? order;
  @JsonKey(name: 'applicationId', includeIfNull: true)
  final String? applicationId;
  @JsonKey(name: 'description', includeIfNull: true)
  final String? description;
  @JsonKey(
      name: 'listAddRightId', includeIfNull: true, defaultValue: <String>[])
  final List<String>? listAddRightId;
  @JsonKey(name: 'listAddUserId', includeIfNull: true, defaultValue: <String>[])
  final List<String>? listAddUserId;
  static const fromJsonFactory = _$RoleCreateModelFromJson;
  static const toJsonFactory = _$RoleCreateModelToJson;
  Map<String, dynamic> toJson() => _$RoleCreateModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleCreateModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.isSystem, isSystem) ||
                const DeepCollectionEquality()
                    .equals(other.isSystem, isSystem)) &&
            (identical(other.autoAssignment, autoAssignment) ||
                const DeepCollectionEquality()
                    .equals(other.autoAssignment, autoAssignment)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.listAddRightId, listAddRightId) ||
                const DeepCollectionEquality()
                    .equals(other.listAddRightId, listAddRightId)) &&
            (identical(other.listAddUserId, listAddUserId) ||
                const DeepCollectionEquality()
                    .equals(other.listAddUserId, listAddUserId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(isSystem) ^
      const DeepCollectionEquality().hash(autoAssignment) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(listAddRightId) ^
      const DeepCollectionEquality().hash(listAddUserId) ^
      runtimeType.hashCode;
}

extension $RoleCreateModelExtension on RoleCreateModel {
  RoleCreateModel copyWith(
      {String? id,
      String? parentId,
      String? code,
      String? name,
      String? imageUrl,
      bool? isSystem,
      bool? autoAssignment,
      int? order,
      String? applicationId,
      String? description,
      List<String>? listAddRightId,
      List<String>? listAddUserId}) {
    return RoleCreateModel(
        id: id ?? this.id,
        parentId: parentId ?? this.parentId,
        code: code ?? this.code,
        name: name ?? this.name,
        imageUrl: imageUrl ?? this.imageUrl,
        isSystem: isSystem ?? this.isSystem,
        autoAssignment: autoAssignment ?? this.autoAssignment,
        order: order ?? this.order,
        applicationId: applicationId ?? this.applicationId,
        description: description ?? this.description,
        listAddRightId: listAddRightId ?? this.listAddRightId,
        listAddUserId: listAddUserId ?? this.listAddUserId);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleDetailModel {
  RoleDetailModel({
    this.id,
    this.parentId,
    this.code,
    this.name,
    this.imageUrl,
    this.isSystem,
    this.autoAssignment,
    this.order,
    this.applicationId,
    this.description,
    this.listRights,
    this.listUser,
  });

  factory RoleDetailModel.fromJson(Map<String, dynamic> json) =>
      _$RoleDetailModelFromJson(json);

  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'parentId', includeIfNull: true)
  final String? parentId;
  @JsonKey(name: 'code', includeIfNull: true)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'imageUrl', includeIfNull: true)
  final String? imageUrl;
  @JsonKey(name: 'isSystem', includeIfNull: true)
  final bool? isSystem;
  @JsonKey(name: 'autoAssignment', includeIfNull: true)
  final bool? autoAssignment;
  @JsonKey(name: 'order', includeIfNull: true)
  final int? order;
  @JsonKey(name: 'applicationId', includeIfNull: true)
  final String? applicationId;
  @JsonKey(name: 'description', includeIfNull: true)
  final String? description;
  @JsonKey(
      name: 'listRights', includeIfNull: true, defaultValue: <RightModel>[])
  final List<RightModel>? listRights;
  @JsonKey(
      name: 'listUser', includeIfNull: true, defaultValue: <BaseUserModel>[])
  final List<BaseUserModel>? listUser;
  static const fromJsonFactory = _$RoleDetailModelFromJson;
  static const toJsonFactory = _$RoleDetailModelToJson;
  Map<String, dynamic> toJson() => _$RoleDetailModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleDetailModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.isSystem, isSystem) ||
                const DeepCollectionEquality()
                    .equals(other.isSystem, isSystem)) &&
            (identical(other.autoAssignment, autoAssignment) ||
                const DeepCollectionEquality()
                    .equals(other.autoAssignment, autoAssignment)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.listRights, listRights) ||
                const DeepCollectionEquality()
                    .equals(other.listRights, listRights)) &&
            (identical(other.listUser, listUser) ||
                const DeepCollectionEquality()
                    .equals(other.listUser, listUser)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(isSystem) ^
      const DeepCollectionEquality().hash(autoAssignment) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(listRights) ^
      const DeepCollectionEquality().hash(listUser) ^
      runtimeType.hashCode;
}

extension $RoleDetailModelExtension on RoleDetailModel {
  RoleDetailModel copyWith(
      {String? id,
      String? parentId,
      String? code,
      String? name,
      String? imageUrl,
      bool? isSystem,
      bool? autoAssignment,
      int? order,
      String? applicationId,
      String? description,
      List<RightModel>? listRights,
      List<BaseUserModel>? listUser}) {
    return RoleDetailModel(
        id: id ?? this.id,
        parentId: parentId ?? this.parentId,
        code: code ?? this.code,
        name: name ?? this.name,
        imageUrl: imageUrl ?? this.imageUrl,
        isSystem: isSystem ?? this.isSystem,
        autoAssignment: autoAssignment ?? this.autoAssignment,
        order: order ?? this.order,
        applicationId: applicationId ?? this.applicationId,
        description: description ?? this.description,
        listRights: listRights ?? this.listRights,
        listUser: listUser ?? this.listUser);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleDetailModelListResponseObject {
  RoleDetailModelListResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory RoleDetailModelListResponseObject.fromJson(
          Map<String, dynamic> json) =>
      _$RoleDetailModelListResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true, defaultValue: <RoleDetailModel>[])
  final List<RoleDetailModel>? data;
  static const fromJsonFactory = _$RoleDetailModelListResponseObjectFromJson;
  static const toJsonFactory = _$RoleDetailModelListResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$RoleDetailModelListResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleDetailModelListResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $RoleDetailModelListResponseObjectExtension
    on RoleDetailModelListResponseObject {
  RoleDetailModelListResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<RoleDetailModel>? data}) {
    return RoleDetailModelListResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleDetailModelResponseObject {
  RoleDetailModelResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory RoleDetailModelResponseObject.fromJson(Map<String, dynamic> json) =>
      _$RoleDetailModelResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final RoleDetailModel? data;
  static const fromJsonFactory = _$RoleDetailModelResponseObjectFromJson;
  static const toJsonFactory = _$RoleDetailModelResponseObjectToJson;
  Map<String, dynamic> toJson() => _$RoleDetailModelResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleDetailModelResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $RoleDetailModelResponseObjectExtension
    on RoleDetailModelResponseObject {
  RoleDetailModelResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      RoleDetailModel? data}) {
    return RoleDetailModelResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleModel {
  RoleModel({
    this.id,
    this.parentId,
    this.code,
    this.name,
    this.imageUrl,
    this.isSystem,
    this.autoAssignment,
    this.order,
    this.applicationId,
    this.description,
  });

  factory RoleModel.fromJson(Map<String, dynamic> json) =>
      _$RoleModelFromJson(json);

  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'parentId', includeIfNull: true)
  final String? parentId;
  @JsonKey(name: 'code', includeIfNull: true)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'imageUrl', includeIfNull: true)
  final String? imageUrl;
  @JsonKey(name: 'isSystem', includeIfNull: true)
  final bool? isSystem;
  @JsonKey(name: 'autoAssignment', includeIfNull: true)
  final bool? autoAssignment;
  @JsonKey(name: 'order', includeIfNull: true)
  final int? order;
  @JsonKey(name: 'applicationId', includeIfNull: true)
  final String? applicationId;
  @JsonKey(name: 'description', includeIfNull: true)
  final String? description;
  static const fromJsonFactory = _$RoleModelFromJson;
  static const toJsonFactory = _$RoleModelToJson;
  Map<String, dynamic> toJson() => _$RoleModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.isSystem, isSystem) ||
                const DeepCollectionEquality()
                    .equals(other.isSystem, isSystem)) &&
            (identical(other.autoAssignment, autoAssignment) ||
                const DeepCollectionEquality()
                    .equals(other.autoAssignment, autoAssignment)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(isSystem) ^
      const DeepCollectionEquality().hash(autoAssignment) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $RoleModelExtension on RoleModel {
  RoleModel copyWith(
      {String? id,
      String? parentId,
      String? code,
      String? name,
      String? imageUrl,
      bool? isSystem,
      bool? autoAssignment,
      int? order,
      String? applicationId,
      String? description}) {
    return RoleModel(
        id: id ?? this.id,
        parentId: parentId ?? this.parentId,
        code: code ?? this.code,
        name: name ?? this.name,
        imageUrl: imageUrl ?? this.imageUrl,
        isSystem: isSystem ?? this.isSystem,
        autoAssignment: autoAssignment ?? this.autoAssignment,
        order: order ?? this.order,
        applicationId: applicationId ?? this.applicationId,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleModelListResponseObject {
  RoleModelListResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory RoleModelListResponseObject.fromJson(Map<String, dynamic> json) =>
      _$RoleModelListResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true, defaultValue: <RoleModel>[])
  final List<RoleModel>? data;
  static const fromJsonFactory = _$RoleModelListResponseObjectFromJson;
  static const toJsonFactory = _$RoleModelListResponseObjectToJson;
  Map<String, dynamic> toJson() => _$RoleModelListResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleModelListResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $RoleModelListResponseObjectExtension on RoleModelListResponseObject {
  RoleModelListResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<RoleModel>? data}) {
    return RoleModelListResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleModelPagination {
  RoleModelPagination({
    this.currentPage,
    this.totalPages,
    this.pageSize,
    this.numberOfRecords,
    this.totalRecords,
    this.content,
  });

  factory RoleModelPagination.fromJson(Map<String, dynamic> json) =>
      _$RoleModelPaginationFromJson(json);

  @JsonKey(name: 'currentPage', includeIfNull: true)
  final int? currentPage;
  @JsonKey(name: 'totalPages', includeIfNull: true)
  final int? totalPages;
  @JsonKey(name: 'pageSize', includeIfNull: true)
  final int? pageSize;
  @JsonKey(name: 'numberOfRecords', includeIfNull: true)
  final int? numberOfRecords;
  @JsonKey(name: 'totalRecords', includeIfNull: true)
  final int? totalRecords;
  @JsonKey(name: 'content', includeIfNull: true, defaultValue: <RoleModel>[])
  final List<RoleModel>? content;
  static const fromJsonFactory = _$RoleModelPaginationFromJson;
  static const toJsonFactory = _$RoleModelPaginationToJson;
  Map<String, dynamic> toJson() => _$RoleModelPaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleModelPagination &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)) &&
            (identical(other.numberOfRecords, numberOfRecords) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfRecords, numberOfRecords)) &&
            (identical(other.totalRecords, totalRecords) ||
                const DeepCollectionEquality()
                    .equals(other.totalRecords, totalRecords)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(numberOfRecords) ^
      const DeepCollectionEquality().hash(totalRecords) ^
      const DeepCollectionEquality().hash(content) ^
      runtimeType.hashCode;
}

extension $RoleModelPaginationExtension on RoleModelPagination {
  RoleModelPagination copyWith(
      {int? currentPage,
      int? totalPages,
      int? pageSize,
      int? numberOfRecords,
      int? totalRecords,
      List<RoleModel>? content}) {
    return RoleModelPagination(
        currentPage: currentPage ?? this.currentPage,
        totalPages: totalPages ?? this.totalPages,
        pageSize: pageSize ?? this.pageSize,
        numberOfRecords: numberOfRecords ?? this.numberOfRecords,
        totalRecords: totalRecords ?? this.totalRecords,
        content: content ?? this.content);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleModelResponseList {
  RoleModelResponseList({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory RoleModelResponseList.fromJson(Map<String, dynamic> json) =>
      _$RoleModelResponseListFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true, defaultValue: <RoleModel>[])
  final List<RoleModel>? data;
  static const fromJsonFactory = _$RoleModelResponseListFromJson;
  static const toJsonFactory = _$RoleModelResponseListToJson;
  Map<String, dynamic> toJson() => _$RoleModelResponseListToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleModelResponseList &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $RoleModelResponseListExtension on RoleModelResponseList {
  RoleModelResponseList copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<RoleModel>? data}) {
    return RoleModelResponseList(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleModelResponseObject {
  RoleModelResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory RoleModelResponseObject.fromJson(Map<String, dynamic> json) =>
      _$RoleModelResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final RoleModel? data;
  static const fromJsonFactory = _$RoleModelResponseObjectFromJson;
  static const toJsonFactory = _$RoleModelResponseObjectToJson;
  Map<String, dynamic> toJson() => _$RoleModelResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleModelResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $RoleModelResponseObjectExtension on RoleModelResponseObject {
  RoleModelResponseObject copyWith(
      {enums.Code? code, String? message, num? totalTime, RoleModel? data}) {
    return RoleModelResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleModelResponsePagination {
  RoleModelResponsePagination({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory RoleModelResponsePagination.fromJson(Map<String, dynamic> json) =>
      _$RoleModelResponsePaginationFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final RoleModelPagination? data;
  static const fromJsonFactory = _$RoleModelResponsePaginationFromJson;
  static const toJsonFactory = _$RoleModelResponsePaginationToJson;
  Map<String, dynamic> toJson() => _$RoleModelResponsePaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleModelResponsePagination &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $RoleModelResponsePaginationExtension on RoleModelResponsePagination {
  RoleModelResponsePagination copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      RoleModelPagination? data}) {
    return RoleModelResponsePagination(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleSimpleInfoResponseModel {
  RoleSimpleInfoResponseModel({
    this.id,
    this.code,
    this.name,
  });

  factory RoleSimpleInfoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RoleSimpleInfoResponseModelFromJson(json);

  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'code', includeIfNull: true)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  static const fromJsonFactory = _$RoleSimpleInfoResponseModelFromJson;
  static const toJsonFactory = _$RoleSimpleInfoResponseModelToJson;
  Map<String, dynamic> toJson() => _$RoleSimpleInfoResponseModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleSimpleInfoResponseModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $RoleSimpleInfoResponseModelExtension on RoleSimpleInfoResponseModel {
  RoleSimpleInfoResponseModel copyWith(
      {String? id, String? code, String? name}) {
    return RoleSimpleInfoResponseModel(
        id: id ?? this.id, code: code ?? this.code, name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleSimpleInfoResponseModelPagination {
  RoleSimpleInfoResponseModelPagination({
    this.currentPage,
    this.totalPages,
    this.pageSize,
    this.numberOfRecords,
    this.totalRecords,
    this.content,
  });

  factory RoleSimpleInfoResponseModelPagination.fromJson(
          Map<String, dynamic> json) =>
      _$RoleSimpleInfoResponseModelPaginationFromJson(json);

  @JsonKey(name: 'currentPage', includeIfNull: true)
  final int? currentPage;
  @JsonKey(name: 'totalPages', includeIfNull: true)
  final int? totalPages;
  @JsonKey(name: 'pageSize', includeIfNull: true)
  final int? pageSize;
  @JsonKey(name: 'numberOfRecords', includeIfNull: true)
  final int? numberOfRecords;
  @JsonKey(name: 'totalRecords', includeIfNull: true)
  final int? totalRecords;
  @JsonKey(
      name: 'content',
      includeIfNull: true,
      defaultValue: <RoleSimpleInfoResponseModel>[])
  final List<RoleSimpleInfoResponseModel>? content;
  static const fromJsonFactory =
      _$RoleSimpleInfoResponseModelPaginationFromJson;
  static const toJsonFactory = _$RoleSimpleInfoResponseModelPaginationToJson;
  Map<String, dynamic> toJson() =>
      _$RoleSimpleInfoResponseModelPaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleSimpleInfoResponseModelPagination &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)) &&
            (identical(other.numberOfRecords, numberOfRecords) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfRecords, numberOfRecords)) &&
            (identical(other.totalRecords, totalRecords) ||
                const DeepCollectionEquality()
                    .equals(other.totalRecords, totalRecords)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(numberOfRecords) ^
      const DeepCollectionEquality().hash(totalRecords) ^
      const DeepCollectionEquality().hash(content) ^
      runtimeType.hashCode;
}

extension $RoleSimpleInfoResponseModelPaginationExtension
    on RoleSimpleInfoResponseModelPagination {
  RoleSimpleInfoResponseModelPagination copyWith(
      {int? currentPage,
      int? totalPages,
      int? pageSize,
      int? numberOfRecords,
      int? totalRecords,
      List<RoleSimpleInfoResponseModel>? content}) {
    return RoleSimpleInfoResponseModelPagination(
        currentPage: currentPage ?? this.currentPage,
        totalPages: totalPages ?? this.totalPages,
        pageSize: pageSize ?? this.pageSize,
        numberOfRecords: numberOfRecords ?? this.numberOfRecords,
        totalRecords: totalRecords ?? this.totalRecords,
        content: content ?? this.content);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleSimpleInfoResponseModelResponsePagination {
  RoleSimpleInfoResponseModelResponsePagination({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory RoleSimpleInfoResponseModelResponsePagination.fromJson(
          Map<String, dynamic> json) =>
      _$RoleSimpleInfoResponseModelResponsePaginationFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final RoleSimpleInfoResponseModelPagination? data;
  static const fromJsonFactory =
      _$RoleSimpleInfoResponseModelResponsePaginationFromJson;
  static const toJsonFactory =
      _$RoleSimpleInfoResponseModelResponsePaginationToJson;
  Map<String, dynamic> toJson() =>
      _$RoleSimpleInfoResponseModelResponsePaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleSimpleInfoResponseModelResponsePagination &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $RoleSimpleInfoResponseModelResponsePaginationExtension
    on RoleSimpleInfoResponseModelResponsePagination {
  RoleSimpleInfoResponseModelResponsePagination copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      RoleSimpleInfoResponseModelPagination? data}) {
    return RoleSimpleInfoResponseModelResponsePagination(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleUpdateModel {
  RoleUpdateModel({
    this.id,
    this.parentId,
    this.code,
    this.name,
    this.imageUrl,
    this.isSystem,
    this.autoAssignment,
    this.order,
    this.applicationId,
    this.description,
    this.listAddRightId,
    this.listAddUserId,
    this.listDeleteRightId,
    this.listDeleteUserId,
  });

  factory RoleUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$RoleUpdateModelFromJson(json);

  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'parentId', includeIfNull: true)
  final String? parentId;
  @JsonKey(name: 'code', includeIfNull: true)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'imageUrl', includeIfNull: true)
  final String? imageUrl;
  @JsonKey(name: 'isSystem', includeIfNull: true)
  final bool? isSystem;
  @JsonKey(name: 'autoAssignment', includeIfNull: true)
  final bool? autoAssignment;
  @JsonKey(name: 'order', includeIfNull: true)
  final int? order;
  @JsonKey(name: 'applicationId', includeIfNull: true)
  final String? applicationId;
  @JsonKey(name: 'description', includeIfNull: true)
  final String? description;
  @JsonKey(
      name: 'listAddRightId', includeIfNull: true, defaultValue: <String>[])
  final List<String>? listAddRightId;
  @JsonKey(name: 'listAddUserId', includeIfNull: true, defaultValue: <String>[])
  final List<String>? listAddUserId;
  @JsonKey(
      name: 'listDeleteRightId', includeIfNull: true, defaultValue: <String>[])
  final List<String>? listDeleteRightId;
  @JsonKey(
      name: 'listDeleteUserId', includeIfNull: true, defaultValue: <String>[])
  final List<String>? listDeleteUserId;
  static const fromJsonFactory = _$RoleUpdateModelFromJson;
  static const toJsonFactory = _$RoleUpdateModelToJson;
  Map<String, dynamic> toJson() => _$RoleUpdateModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleUpdateModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.isSystem, isSystem) ||
                const DeepCollectionEquality()
                    .equals(other.isSystem, isSystem)) &&
            (identical(other.autoAssignment, autoAssignment) ||
                const DeepCollectionEquality()
                    .equals(other.autoAssignment, autoAssignment)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.listAddRightId, listAddRightId) ||
                const DeepCollectionEquality()
                    .equals(other.listAddRightId, listAddRightId)) &&
            (identical(other.listAddUserId, listAddUserId) ||
                const DeepCollectionEquality()
                    .equals(other.listAddUserId, listAddUserId)) &&
            (identical(other.listDeleteRightId, listDeleteRightId) ||
                const DeepCollectionEquality()
                    .equals(other.listDeleteRightId, listDeleteRightId)) &&
            (identical(other.listDeleteUserId, listDeleteUserId) ||
                const DeepCollectionEquality()
                    .equals(other.listDeleteUserId, listDeleteUserId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(isSystem) ^
      const DeepCollectionEquality().hash(autoAssignment) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(listAddRightId) ^
      const DeepCollectionEquality().hash(listAddUserId) ^
      const DeepCollectionEquality().hash(listDeleteRightId) ^
      const DeepCollectionEquality().hash(listDeleteUserId) ^
      runtimeType.hashCode;
}

extension $RoleUpdateModelExtension on RoleUpdateModel {
  RoleUpdateModel copyWith(
      {String? id,
      String? parentId,
      String? code,
      String? name,
      String? imageUrl,
      bool? isSystem,
      bool? autoAssignment,
      int? order,
      String? applicationId,
      String? description,
      List<String>? listAddRightId,
      List<String>? listAddUserId,
      List<String>? listDeleteRightId,
      List<String>? listDeleteUserId}) {
    return RoleUpdateModel(
        id: id ?? this.id,
        parentId: parentId ?? this.parentId,
        code: code ?? this.code,
        name: name ?? this.name,
        imageUrl: imageUrl ?? this.imageUrl,
        isSystem: isSystem ?? this.isSystem,
        autoAssignment: autoAssignment ?? this.autoAssignment,
        order: order ?? this.order,
        applicationId: applicationId ?? this.applicationId,
        description: description ?? this.description,
        listAddRightId: listAddRightId ?? this.listAddRightId,
        listAddUserId: listAddUserId ?? this.listAddUserId,
        listDeleteRightId: listDeleteRightId ?? this.listDeleteRightId,
        listDeleteUserId: listDeleteUserId ?? this.listDeleteUserId);
  }
}

@JsonSerializable(explicitToJson: true)
class Settings {
  Settings({
    this.language,
    this.sidebarColor,
    this.sidebarBackground,
  });

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);

  @JsonKey(name: 'language', includeIfNull: true)
  final String? language;
  @JsonKey(name: 'sidebarColor', includeIfNull: true)
  final String? sidebarColor;
  @JsonKey(name: 'sidebarBackground', includeIfNull: true)
  final String? sidebarBackground;
  static const fromJsonFactory = _$SettingsFromJson;
  static const toJsonFactory = _$SettingsToJson;
  Map<String, dynamic> toJson() => _$SettingsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Settings &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.sidebarColor, sidebarColor) ||
                const DeepCollectionEquality()
                    .equals(other.sidebarColor, sidebarColor)) &&
            (identical(other.sidebarBackground, sidebarBackground) ||
                const DeepCollectionEquality()
                    .equals(other.sidebarBackground, sidebarBackground)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(sidebarColor) ^
      const DeepCollectionEquality().hash(sidebarBackground) ^
      runtimeType.hashCode;
}

extension $SettingsExtension on Settings {
  Settings copyWith(
      {String? language, String? sidebarColor, String? sidebarBackground}) {
    return Settings(
        language: language ?? this.language,
        sidebarColor: sidebarColor ?? this.sidebarColor,
        sidebarBackground: sidebarBackground ?? this.sidebarBackground);
  }
}

@JsonSerializable(explicitToJson: true)
class SimpleRightModel {
  SimpleRightModel({
    this.id,
    this.code,
    this.name,
    this.description,
    this.groupCode,
    this.status,
    this.isSystem,
    this.order,
  });

  factory SimpleRightModel.fromJson(Map<String, dynamic> json) =>
      _$SimpleRightModelFromJson(json);

  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'code', includeIfNull: true)
  final String? code;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'description', includeIfNull: true)
  final String? description;
  @JsonKey(name: 'groupCode', includeIfNull: true)
  final String? groupCode;
  @JsonKey(name: 'status', includeIfNull: true)
  final bool? status;
  @JsonKey(name: 'isSystem', includeIfNull: true)
  final bool? isSystem;
  @JsonKey(name: 'order', includeIfNull: true)
  final int? order;
  static const fromJsonFactory = _$SimpleRightModelFromJson;
  static const toJsonFactory = _$SimpleRightModelToJson;
  Map<String, dynamic> toJson() => _$SimpleRightModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SimpleRightModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.groupCode, groupCode) ||
                const DeepCollectionEquality()
                    .equals(other.groupCode, groupCode)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.isSystem, isSystem) ||
                const DeepCollectionEquality()
                    .equals(other.isSystem, isSystem)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(groupCode) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(isSystem) ^
      const DeepCollectionEquality().hash(order) ^
      runtimeType.hashCode;
}

extension $SimpleRightModelExtension on SimpleRightModel {
  SimpleRightModel copyWith(
      {String? id,
      String? code,
      String? name,
      String? description,
      String? groupCode,
      bool? status,
      bool? isSystem,
      int? order}) {
    return SimpleRightModel(
        id: id ?? this.id,
        code: code ?? this.code,
        name: name ?? this.name,
        description: description ?? this.description,
        groupCode: groupCode ?? this.groupCode,
        status: status ?? this.status,
        isSystem: isSystem ?? this.isSystem,
        order: order ?? this.order);
  }
}

@JsonSerializable(explicitToJson: true)
class SimpleRightModelListResponseObject {
  SimpleRightModelListResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory SimpleRightModelListResponseObject.fromJson(
          Map<String, dynamic> json) =>
      _$SimpleRightModelListResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(
      name: 'data', includeIfNull: true, defaultValue: <SimpleRightModel>[])
  final List<SimpleRightModel>? data;
  static const fromJsonFactory = _$SimpleRightModelListResponseObjectFromJson;
  static const toJsonFactory = _$SimpleRightModelListResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$SimpleRightModelListResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SimpleRightModelListResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $SimpleRightModelListResponseObjectExtension
    on SimpleRightModelListResponseObject {
  SimpleRightModelListResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<SimpleRightModel>? data}) {
    return SimpleRightModelListResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class StringResponseList {
  StringResponseList({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory StringResponseList.fromJson(Map<String, dynamic> json) =>
      _$StringResponseListFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true, defaultValue: <String>[])
  final List<String>? data;
  static const fromJsonFactory = _$StringResponseListFromJson;
  static const toJsonFactory = _$StringResponseListToJson;
  Map<String, dynamic> toJson() => _$StringResponseListToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StringResponseList &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $StringResponseListExtension on StringResponseList {
  StringResponseList copyWith(
      {enums.Code? code, String? message, num? totalTime, List<String>? data}) {
    return StringResponseList(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class SystemApplication {
  SystemApplication({
    this.createdByUserId,
    this.lastModifiedByUserId,
    this.lastModifiedOnDate,
    this.createdOnDate,
    this.applicationId,
    this.id,
    required this.code,
    required this.name,
    this.description,
    this.demo,
    this.parentId,
    this.metadata,
    this.isDeleted,
    this.cLeft,
    this.cRight,
    this.cLevel,
  });

  factory SystemApplication.fromJson(Map<String, dynamic> json) =>
      _$SystemApplicationFromJson(json);

  @JsonKey(name: 'createdByUserId', includeIfNull: true)
  final String? createdByUserId;
  @JsonKey(name: 'lastModifiedByUserId', includeIfNull: true)
  final String? lastModifiedByUserId;
  @JsonKey(name: 'lastModifiedOnDate', includeIfNull: true)
  final DateTime? lastModifiedOnDate;
  @JsonKey(name: 'createdOnDate', includeIfNull: true)
  final DateTime? createdOnDate;
  @JsonKey(name: 'applicationId', includeIfNull: true)
  final String? applicationId;
  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'code', includeIfNull: true)
  final String code;
  @JsonKey(name: 'name', includeIfNull: true)
  final String name;
  @JsonKey(name: 'description', includeIfNull: true)
  final String? description;
  @JsonKey(name: 'demo', includeIfNull: true)
  final String? demo;
  @JsonKey(name: 'parentId', includeIfNull: true)
  final String? parentId;
  @JsonKey(name: 'metadata', includeIfNull: true)
  final String? metadata;
  @JsonKey(name: 'isDeleted', includeIfNull: true)
  final bool? isDeleted;
  @JsonKey(name: 'c_left', includeIfNull: true)
  final int? cLeft;
  @JsonKey(name: 'c_right', includeIfNull: true)
  final int? cRight;
  @JsonKey(name: 'c_level', includeIfNull: true)
  final int? cLevel;
  static const fromJsonFactory = _$SystemApplicationFromJson;
  static const toJsonFactory = _$SystemApplicationToJson;
  Map<String, dynamic> toJson() => _$SystemApplicationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemApplication &&
            (identical(other.createdByUserId, createdByUserId) ||
                const DeepCollectionEquality()
                    .equals(other.createdByUserId, createdByUserId)) &&
            (identical(other.lastModifiedByUserId, lastModifiedByUserId) ||
                const DeepCollectionEquality().equals(
                    other.lastModifiedByUserId, lastModifiedByUserId)) &&
            (identical(other.lastModifiedOnDate, lastModifiedOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedOnDate, lastModifiedOnDate)) &&
            (identical(other.createdOnDate, createdOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdOnDate, createdOnDate)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.demo, demo) ||
                const DeepCollectionEquality().equals(other.demo, demo)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)) &&
            (identical(other.isDeleted, isDeleted) ||
                const DeepCollectionEquality()
                    .equals(other.isDeleted, isDeleted)) &&
            (identical(other.cLeft, cLeft) ||
                const DeepCollectionEquality().equals(other.cLeft, cLeft)) &&
            (identical(other.cRight, cRight) ||
                const DeepCollectionEquality().equals(other.cRight, cRight)) &&
            (identical(other.cLevel, cLevel) ||
                const DeepCollectionEquality().equals(other.cLevel, cLevel)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedOnDate) ^
      const DeepCollectionEquality().hash(createdOnDate) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(demo) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(metadata) ^
      const DeepCollectionEquality().hash(isDeleted) ^
      const DeepCollectionEquality().hash(cLeft) ^
      const DeepCollectionEquality().hash(cRight) ^
      const DeepCollectionEquality().hash(cLevel) ^
      runtimeType.hashCode;
}

extension $SystemApplicationExtension on SystemApplication {
  SystemApplication copyWith(
      {String? createdByUserId,
      String? lastModifiedByUserId,
      DateTime? lastModifiedOnDate,
      DateTime? createdOnDate,
      String? applicationId,
      String? id,
      String? code,
      String? name,
      String? description,
      String? demo,
      String? parentId,
      String? metadata,
      bool? isDeleted,
      int? cLeft,
      int? cRight,
      int? cLevel}) {
    return SystemApplication(
        createdByUserId: createdByUserId ?? this.createdByUserId,
        lastModifiedByUserId: lastModifiedByUserId ?? this.lastModifiedByUserId,
        lastModifiedOnDate: lastModifiedOnDate ?? this.lastModifiedOnDate,
        createdOnDate: createdOnDate ?? this.createdOnDate,
        applicationId: applicationId ?? this.applicationId,
        id: id ?? this.id,
        code: code ?? this.code,
        name: name ?? this.name,
        description: description ?? this.description,
        demo: demo ?? this.demo,
        parentId: parentId ?? this.parentId,
        metadata: metadata ?? this.metadata,
        isDeleted: isDeleted ?? this.isDeleted,
        cLeft: cLeft ?? this.cLeft,
        cRight: cRight ?? this.cRight,
        cLevel: cLevel ?? this.cLevel);
  }
}

@JsonSerializable(explicitToJson: true)
class SystemApplicationResponseList {
  SystemApplicationResponseList({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory SystemApplicationResponseList.fromJson(Map<String, dynamic> json) =>
      _$SystemApplicationResponseListFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(
      name: 'data', includeIfNull: true, defaultValue: <SystemApplication>[])
  final List<SystemApplication>? data;
  static const fromJsonFactory = _$SystemApplicationResponseListFromJson;
  static const toJsonFactory = _$SystemApplicationResponseListToJson;
  Map<String, dynamic> toJson() => _$SystemApplicationResponseListToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemApplicationResponseList &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $SystemApplicationResponseListExtension
    on SystemApplicationResponseList {
  SystemApplicationResponseList copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<SystemApplication>? data}) {
    return SystemApplicationResponseList(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class UserBaseModel {
  UserBaseModel({
    this.id,
    this.userName,
    this.name,
    this.avatarUrl,
    this.applicationId,
  });

  factory UserBaseModel.fromJson(Map<String, dynamic> json) =>
      _$UserBaseModelFromJson(json);

  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'userName', includeIfNull: true)
  final String? userName;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'avatarUrl', includeIfNull: true)
  final String? avatarUrl;
  @JsonKey(name: 'applicationId', includeIfNull: true)
  final String? applicationId;
  static const fromJsonFactory = _$UserBaseModelFromJson;
  static const toJsonFactory = _$UserBaseModelToJson;
  Map<String, dynamic> toJson() => _$UserBaseModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserBaseModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(applicationId) ^
      runtimeType.hashCode;
}

extension $UserBaseModelExtension on UserBaseModel {
  UserBaseModel copyWith(
      {String? id,
      String? userName,
      String? name,
      String? avatarUrl,
      String? applicationId}) {
    return UserBaseModel(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        name: name ?? this.name,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        applicationId: applicationId ?? this.applicationId);
  }
}

@JsonSerializable(explicitToJson: true)
class UserBaseModelListResponseObject {
  UserBaseModelListResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory UserBaseModelListResponseObject.fromJson(Map<String, dynamic> json) =>
      _$UserBaseModelListResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true, defaultValue: <UserBaseModel>[])
  final List<UserBaseModel>? data;
  static const fromJsonFactory = _$UserBaseModelListResponseObjectFromJson;
  static const toJsonFactory = _$UserBaseModelListResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$UserBaseModelListResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserBaseModelListResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $UserBaseModelListResponseObjectExtension
    on UserBaseModelListResponseObject {
  UserBaseModelListResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<UserBaseModel>? data}) {
    return UserBaseModelListResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class UserChangePasswordRequest {
  UserChangePasswordRequest({
    this.newPassword,
    this.confirmPassword,
  });

  factory UserChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$UserChangePasswordRequestFromJson(json);

  @JsonKey(name: 'newPassword', includeIfNull: true)
  final String? newPassword;
  @JsonKey(name: 'confirmPassword', includeIfNull: true)
  final String? confirmPassword;
  static const fromJsonFactory = _$UserChangePasswordRequestFromJson;
  static const toJsonFactory = _$UserChangePasswordRequestToJson;
  Map<String, dynamic> toJson() => _$UserChangePasswordRequestToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserChangePasswordRequest &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(newPassword) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      runtimeType.hashCode;
}

extension $UserChangePasswordRequestExtension on UserChangePasswordRequest {
  UserChangePasswordRequest copyWith(
      {String? newPassword, String? confirmPassword}) {
    return UserChangePasswordRequest(
        newPassword: newPassword ?? this.newPassword,
        confirmPassword: confirmPassword ?? this.confirmPassword);
  }
}

@JsonSerializable(explicitToJson: true)
class UserCreateModel {
  UserCreateModel({
    this.id,
    this.userName,
    this.name,
    this.phoneNumber,
    this.email,
    this.avatarUrl,
    this.isActive,
    this.typeObj,
    this.password,
    this.userDetail,
    this.groupType,
    this.groupId,
    this.groupName,
    this.listRoleIds,
    this.applicationId,
    this.userProfile,
    this.userProfile2,
    this.labelsObjs,
  });

  factory UserCreateModel.fromJson(Map<String, dynamic> json) =>
      _$UserCreateModelFromJson(json);

  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'userName', includeIfNull: true)
  final String? userName;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'phoneNumber', includeIfNull: true)
  final String? phoneNumber;
  @JsonKey(name: 'email', includeIfNull: true)
  final String? email;
  @JsonKey(name: 'avatarUrl', includeIfNull: true)
  final String? avatarUrl;
  @JsonKey(name: 'isActive', includeIfNull: true)
  final bool? isActive;
  @JsonKey(
      name: 'typeObj',
      includeIfNull: true,
      toJson: userTypeEnumToJson,
      fromJson: userTypeEnumFromJson)
  final enums.UserTypeEnum? typeObj;
  @JsonKey(name: 'password', includeIfNull: true)
  final String? password;
  @JsonKey(name: 'userDetail', includeIfNull: true)
  final UserDetail? userDetail;
  @JsonKey(name: 'groupType', includeIfNull: true)
  final String? groupType;
  @JsonKey(name: 'groupId', includeIfNull: true)
  final String? groupId;
  @JsonKey(name: 'groupName', includeIfNull: true)
  final String? groupName;
  @JsonKey(name: 'listRoleIds', includeIfNull: true, defaultValue: <String>[])
  final List<String>? listRoleIds;
  @JsonKey(name: 'applicationId', includeIfNull: true)
  final String? applicationId;
  @JsonKey(name: 'userProfile', includeIfNull: true)
  final UserProfile? userProfile;
  @JsonKey(name: 'userProfile2', includeIfNull: true)
  final UserProfile2? userProfile2;
  @JsonKey(name: 'labelsObjs', includeIfNull: true, defaultValue: <LabelsObj>[])
  final List<LabelsObj>? labelsObjs;
  static const fromJsonFactory = _$UserCreateModelFromJson;
  static const toJsonFactory = _$UserCreateModelToJson;
  Map<String, dynamic> toJson() => _$UserCreateModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserCreateModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.typeObj, typeObj) ||
                const DeepCollectionEquality()
                    .equals(other.typeObj, typeObj)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.userDetail, userDetail) ||
                const DeepCollectionEquality()
                    .equals(other.userDetail, userDetail)) &&
            (identical(other.groupType, groupType) ||
                const DeepCollectionEquality()
                    .equals(other.groupType, groupType)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.listRoleIds, listRoleIds) ||
                const DeepCollectionEquality()
                    .equals(other.listRoleIds, listRoleIds)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.userProfile, userProfile) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile, userProfile)) &&
            (identical(other.userProfile2, userProfile2) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile2, userProfile2)) &&
            (identical(other.labelsObjs, labelsObjs) ||
                const DeepCollectionEquality()
                    .equals(other.labelsObjs, labelsObjs)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(typeObj) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(userDetail) ^
      const DeepCollectionEquality().hash(groupType) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(listRoleIds) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(userProfile) ^
      const DeepCollectionEquality().hash(userProfile2) ^
      const DeepCollectionEquality().hash(labelsObjs) ^
      runtimeType.hashCode;
}

extension $UserCreateModelExtension on UserCreateModel {
  UserCreateModel copyWith(
      {String? id,
      String? userName,
      String? name,
      String? phoneNumber,
      String? email,
      String? avatarUrl,
      bool? isActive,
      enums.UserTypeEnum? typeObj,
      String? password,
      UserDetail? userDetail,
      String? groupType,
      String? groupId,
      String? groupName,
      List<String>? listRoleIds,
      String? applicationId,
      UserProfile? userProfile,
      UserProfile2? userProfile2,
      List<LabelsObj>? labelsObjs}) {
    return UserCreateModel(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        name: name ?? this.name,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        email: email ?? this.email,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        isActive: isActive ?? this.isActive,
        typeObj: typeObj ?? this.typeObj,
        password: password ?? this.password,
        userDetail: userDetail ?? this.userDetail,
        groupType: groupType ?? this.groupType,
        groupId: groupId ?? this.groupId,
        groupName: groupName ?? this.groupName,
        listRoleIds: listRoleIds ?? this.listRoleIds,
        applicationId: applicationId ?? this.applicationId,
        userProfile: userProfile ?? this.userProfile,
        userProfile2: userProfile2 ?? this.userProfile2,
        labelsObjs: labelsObjs ?? this.labelsObjs);
  }
}

@JsonSerializable(explicitToJson: true)
class UserDetail {
  UserDetail({
    this.firstName,
    this.lastName,
    this.fullName,
    this.title,
    this.gender,
    this.birthdate,
    this.country,
    this.city,
    this.address,
    this.postalCode,
    this.aboutMe,
  });

  factory UserDetail.fromJson(Map<String, dynamic> json) =>
      _$UserDetailFromJson(json);

  @JsonKey(name: 'firstName', includeIfNull: true)
  final String? firstName;
  @JsonKey(name: 'lastName', includeIfNull: true)
  final String? lastName;
  @JsonKey(name: 'fullName', includeIfNull: true)
  final String? fullName;
  @JsonKey(name: 'title', includeIfNull: true)
  final String? title;
  @JsonKey(name: 'gender', includeIfNull: true)
  final int? gender;
  @JsonKey(name: 'birthdate', includeIfNull: true)
  final DateTime? birthdate;
  @JsonKey(name: 'country', includeIfNull: true)
  final String? country;
  @JsonKey(name: 'city', includeIfNull: true)
  final String? city;
  @JsonKey(name: 'address', includeIfNull: true)
  final String? address;
  @JsonKey(name: 'postalCode', includeIfNull: true)
  final String? postalCode;
  @JsonKey(name: 'aboutMe', includeIfNull: true)
  final String? aboutMe;
  static const fromJsonFactory = _$UserDetailFromJson;
  static const toJsonFactory = _$UserDetailToJson;
  Map<String, dynamic> toJson() => _$UserDetailToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserDetail &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.birthdate, birthdate) ||
                const DeepCollectionEquality()
                    .equals(other.birthdate, birthdate)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.aboutMe, aboutMe) ||
                const DeepCollectionEquality().equals(other.aboutMe, aboutMe)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(birthdate) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(aboutMe) ^
      runtimeType.hashCode;
}

extension $UserDetailExtension on UserDetail {
  UserDetail copyWith(
      {String? firstName,
      String? lastName,
      String? fullName,
      String? title,
      int? gender,
      DateTime? birthdate,
      String? country,
      String? city,
      String? address,
      String? postalCode,
      String? aboutMe}) {
    return UserDetail(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        fullName: fullName ?? this.fullName,
        title: title ?? this.title,
        gender: gender ?? this.gender,
        birthdate: birthdate ?? this.birthdate,
        country: country ?? this.country,
        city: city ?? this.city,
        address: address ?? this.address,
        postalCode: postalCode ?? this.postalCode,
        aboutMe: aboutMe ?? this.aboutMe);
  }
}

@JsonSerializable(explicitToJson: true)
class UserMapRoleRequestModel {
  UserMapRoleRequestModel({
    this.roleId,
    this.userId,
  });

  factory UserMapRoleRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UserMapRoleRequestModelFromJson(json);

  @JsonKey(name: 'roleId', includeIfNull: true)
  final String? roleId;
  @JsonKey(name: 'userId', includeIfNull: true)
  final String? userId;
  static const fromJsonFactory = _$UserMapRoleRequestModelFromJson;
  static const toJsonFactory = _$UserMapRoleRequestModelToJson;
  Map<String, dynamic> toJson() => _$UserMapRoleRequestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserMapRoleRequestModel &&
            (identical(other.roleId, roleId) ||
                const DeepCollectionEquality().equals(other.roleId, roleId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(roleId) ^
      const DeepCollectionEquality().hash(userId) ^
      runtimeType.hashCode;
}

extension $UserMapRoleRequestModelExtension on UserMapRoleRequestModel {
  UserMapRoleRequestModel copyWith({String? roleId, String? userId}) {
    return UserMapRoleRequestModel(
        roleId: roleId ?? this.roleId, userId: userId ?? this.userId);
  }
}

@JsonSerializable(explicitToJson: true)
class UserMapRoleResponseModel {
  UserMapRoleResponseModel({
    this.id,
    this.roleId,
    this.userId,
  });

  factory UserMapRoleResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserMapRoleResponseModelFromJson(json);

  @JsonKey(name: 'id', includeIfNull: true)
  final num? id;
  @JsonKey(name: 'roleId', includeIfNull: true)
  final String? roleId;
  @JsonKey(name: 'userId', includeIfNull: true)
  final String? userId;
  static const fromJsonFactory = _$UserMapRoleResponseModelFromJson;
  static const toJsonFactory = _$UserMapRoleResponseModelToJson;
  Map<String, dynamic> toJson() => _$UserMapRoleResponseModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserMapRoleResponseModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.roleId, roleId) ||
                const DeepCollectionEquality().equals(other.roleId, roleId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(roleId) ^
      const DeepCollectionEquality().hash(userId) ^
      runtimeType.hashCode;
}

extension $UserMapRoleResponseModelExtension on UserMapRoleResponseModel {
  UserMapRoleResponseModel copyWith({num? id, String? roleId, String? userId}) {
    return UserMapRoleResponseModel(
        id: id ?? this.id,
        roleId: roleId ?? this.roleId,
        userId: userId ?? this.userId);
  }
}

@JsonSerializable(explicitToJson: true)
class UserMapRoleResponseModelResponseList {
  UserMapRoleResponseModelResponseList({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory UserMapRoleResponseModelResponseList.fromJson(
          Map<String, dynamic> json) =>
      _$UserMapRoleResponseModelResponseListFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(
      name: 'data',
      includeIfNull: true,
      defaultValue: <UserMapRoleResponseModel>[])
  final List<UserMapRoleResponseModel>? data;
  static const fromJsonFactory = _$UserMapRoleResponseModelResponseListFromJson;
  static const toJsonFactory = _$UserMapRoleResponseModelResponseListToJson;
  Map<String, dynamic> toJson() =>
      _$UserMapRoleResponseModelResponseListToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserMapRoleResponseModelResponseList &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $UserMapRoleResponseModelResponseListExtension
    on UserMapRoleResponseModelResponseList {
  UserMapRoleResponseModelResponseList copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<UserMapRoleResponseModel>? data}) {
    return UserMapRoleResponseModelResponseList(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class UserModel {
  UserModel({
    this.userId,
    this.userName,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @JsonKey(name: 'userId', includeIfNull: true)
  final String? userId;
  @JsonKey(name: 'userName', includeIfNull: true)
  final String? userName;
  static const fromJsonFactory = _$UserModelFromJson;
  static const toJsonFactory = _$UserModelToJson;
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserModel &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      runtimeType.hashCode;
}

extension $UserModelExtension on UserModel {
  UserModel copyWith({String? userId, String? userName}) {
    return UserModel(
        userId: userId ?? this.userId, userName: userName ?? this.userName);
  }
}

@JsonSerializable(explicitToJson: true)
class UserPasswordModel {
  UserPasswordModel({
    this.id,
    this.userName,
    this.name,
    this.avatarUrl,
    this.applicationId,
    this.email,
    this.phoneNumber,
    this.typeObj,
    this.isActive,
    this.userDetail,
    this.isSuperUser,
    this.forceChangePassword,
    this.settingValues,
    this.lastActivityDate,
    this.groupType,
    this.groupId,
    this.groupName,
    this.userProfile,
    this.userProfile2,
    this.password,
    this.passwordSalt,
  });

  factory UserPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$UserPasswordModelFromJson(json);

  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'userName', includeIfNull: true)
  final String? userName;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'avatarUrl', includeIfNull: true)
  final String? avatarUrl;
  @JsonKey(name: 'applicationId', includeIfNull: true)
  final String? applicationId;
  @JsonKey(name: 'email', includeIfNull: true)
  final String? email;
  @JsonKey(name: 'phoneNumber', includeIfNull: true)
  final String? phoneNumber;
  @JsonKey(
      name: 'typeObj',
      includeIfNull: true,
      toJson: userTypeEnumToJson,
      fromJson: userTypeEnumFromJson)
  final enums.UserTypeEnum? typeObj;
  @JsonKey(name: 'isActive', includeIfNull: true)
  final bool? isActive;
  @JsonKey(name: 'userDetail', includeIfNull: true)
  final UserDetail? userDetail;
  @JsonKey(name: 'isSuperUser', includeIfNull: true)
  final bool? isSuperUser;
  @JsonKey(name: 'forceChangePassword', includeIfNull: true)
  final bool? forceChangePassword;
  @JsonKey(name: 'settingValues', includeIfNull: true)
  final Settings? settingValues;
  @JsonKey(name: 'lastActivityDate', includeIfNull: true)
  final DateTime? lastActivityDate;
  @JsonKey(name: 'groupType', includeIfNull: true)
  final String? groupType;
  @JsonKey(name: 'groupId', includeIfNull: true)
  final String? groupId;
  @JsonKey(name: 'groupName', includeIfNull: true)
  final String? groupName;
  @JsonKey(name: 'userProfile', includeIfNull: true)
  final String? userProfile;
  @JsonKey(name: 'userProfile2', includeIfNull: true)
  final String? userProfile2;
  @JsonKey(name: 'password', includeIfNull: true)
  final String? password;
  @JsonKey(name: 'passwordSalt', includeIfNull: true)
  final String? passwordSalt;
  static const fromJsonFactory = _$UserPasswordModelFromJson;
  static const toJsonFactory = _$UserPasswordModelToJson;
  Map<String, dynamic> toJson() => _$UserPasswordModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserPasswordModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.typeObj, typeObj) ||
                const DeepCollectionEquality()
                    .equals(other.typeObj, typeObj)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.userDetail, userDetail) ||
                const DeepCollectionEquality()
                    .equals(other.userDetail, userDetail)) &&
            (identical(other.isSuperUser, isSuperUser) ||
                const DeepCollectionEquality()
                    .equals(other.isSuperUser, isSuperUser)) &&
            (identical(other.forceChangePassword, forceChangePassword) ||
                const DeepCollectionEquality()
                    .equals(other.forceChangePassword, forceChangePassword)) &&
            (identical(other.settingValues, settingValues) ||
                const DeepCollectionEquality()
                    .equals(other.settingValues, settingValues)) &&
            (identical(other.lastActivityDate, lastActivityDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastActivityDate, lastActivityDate)) &&
            (identical(other.groupType, groupType) ||
                const DeepCollectionEquality()
                    .equals(other.groupType, groupType)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.userProfile, userProfile) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile, userProfile)) &&
            (identical(other.userProfile2, userProfile2) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile2, userProfile2)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.passwordSalt, passwordSalt) ||
                const DeepCollectionEquality()
                    .equals(other.passwordSalt, passwordSalt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(typeObj) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(userDetail) ^
      const DeepCollectionEquality().hash(isSuperUser) ^
      const DeepCollectionEquality().hash(forceChangePassword) ^
      const DeepCollectionEquality().hash(settingValues) ^
      const DeepCollectionEquality().hash(lastActivityDate) ^
      const DeepCollectionEquality().hash(groupType) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(userProfile) ^
      const DeepCollectionEquality().hash(userProfile2) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordSalt) ^
      runtimeType.hashCode;
}

extension $UserPasswordModelExtension on UserPasswordModel {
  UserPasswordModel copyWith(
      {String? id,
      String? userName,
      String? name,
      String? avatarUrl,
      String? applicationId,
      String? email,
      String? phoneNumber,
      enums.UserTypeEnum? typeObj,
      bool? isActive,
      UserDetail? userDetail,
      bool? isSuperUser,
      bool? forceChangePassword,
      Settings? settingValues,
      DateTime? lastActivityDate,
      String? groupType,
      String? groupId,
      String? groupName,
      String? userProfile,
      String? userProfile2,
      String? password,
      String? passwordSalt}) {
    return UserPasswordModel(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        name: name ?? this.name,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        applicationId: applicationId ?? this.applicationId,
        email: email ?? this.email,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        typeObj: typeObj ?? this.typeObj,
        isActive: isActive ?? this.isActive,
        userDetail: userDetail ?? this.userDetail,
        isSuperUser: isSuperUser ?? this.isSuperUser,
        forceChangePassword: forceChangePassword ?? this.forceChangePassword,
        settingValues: settingValues ?? this.settingValues,
        lastActivityDate: lastActivityDate ?? this.lastActivityDate,
        groupType: groupType ?? this.groupType,
        groupId: groupId ?? this.groupId,
        groupName: groupName ?? this.groupName,
        userProfile: userProfile ?? this.userProfile,
        userProfile2: userProfile2 ?? this.userProfile2,
        password: password ?? this.password,
        passwordSalt: passwordSalt ?? this.passwordSalt);
  }
}

@JsonSerializable(explicitToJson: true)
class UserPasswordModelListResponseObject {
  UserPasswordModelListResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory UserPasswordModelListResponseObject.fromJson(
          Map<String, dynamic> json) =>
      _$UserPasswordModelListResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(
      name: 'data', includeIfNull: true, defaultValue: <UserPasswordModel>[])
  final List<UserPasswordModel>? data;
  static const fromJsonFactory = _$UserPasswordModelListResponseObjectFromJson;
  static const toJsonFactory = _$UserPasswordModelListResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$UserPasswordModelListResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserPasswordModelListResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $UserPasswordModelListResponseObjectExtension
    on UserPasswordModelListResponseObject {
  UserPasswordModelListResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<UserPasswordModel>? data}) {
    return UserPasswordModelListResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class UserPasswordModelResponseObject {
  UserPasswordModelResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory UserPasswordModelResponseObject.fromJson(Map<String, dynamic> json) =>
      _$UserPasswordModelResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final UserPasswordModel? data;
  static const fromJsonFactory = _$UserPasswordModelResponseObjectFromJson;
  static const toJsonFactory = _$UserPasswordModelResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$UserPasswordModelResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserPasswordModelResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $UserPasswordModelResponseObjectExtension
    on UserPasswordModelResponseObject {
  UserPasswordModelResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      UserPasswordModel? data}) {
    return UserPasswordModelResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class UserPatchUpdateRequestModel {
  UserPatchUpdateRequestModel({
    this.typeObj,
    this.phoneNumber,
    this.email,
    this.name,
    this.avatarUrl,
    this.forceChangePassword,
    this.isActive,
    this.userDetail,
    this.settingValues,
    this.userProfile,
    this.labelsObjs,
  });

  factory UserPatchUpdateRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UserPatchUpdateRequestModelFromJson(json);

  @JsonKey(
      name: 'typeObj',
      includeIfNull: true,
      toJson: userTypeEnumToJson,
      fromJson: userTypeEnumFromJson)
  final enums.UserTypeEnum? typeObj;
  @JsonKey(name: 'phoneNumber', includeIfNull: true)
  final String? phoneNumber;
  @JsonKey(name: 'email', includeIfNull: true)
  final String? email;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'avatarUrl', includeIfNull: true)
  final String? avatarUrl;
  @JsonKey(name: 'forceChangePassword', includeIfNull: true)
  final bool? forceChangePassword;
  @JsonKey(name: 'isActive', includeIfNull: true)
  final bool? isActive;
  @JsonKey(name: 'userDetail', includeIfNull: true)
  final UserDetail? userDetail;
  @JsonKey(name: 'settingValues', includeIfNull: true)
  final Settings? settingValues;
  @JsonKey(name: 'userProfile', includeIfNull: true)
  final UserProfile? userProfile;
  @JsonKey(name: 'labelsObjs', includeIfNull: true, defaultValue: <LabelsObj>[])
  final List<LabelsObj>? labelsObjs;
  static const fromJsonFactory = _$UserPatchUpdateRequestModelFromJson;
  static const toJsonFactory = _$UserPatchUpdateRequestModelToJson;
  Map<String, dynamic> toJson() => _$UserPatchUpdateRequestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserPatchUpdateRequestModel &&
            (identical(other.typeObj, typeObj) ||
                const DeepCollectionEquality()
                    .equals(other.typeObj, typeObj)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.forceChangePassword, forceChangePassword) ||
                const DeepCollectionEquality()
                    .equals(other.forceChangePassword, forceChangePassword)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.userDetail, userDetail) ||
                const DeepCollectionEquality()
                    .equals(other.userDetail, userDetail)) &&
            (identical(other.settingValues, settingValues) ||
                const DeepCollectionEquality()
                    .equals(other.settingValues, settingValues)) &&
            (identical(other.userProfile, userProfile) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile, userProfile)) &&
            (identical(other.labelsObjs, labelsObjs) ||
                const DeepCollectionEquality()
                    .equals(other.labelsObjs, labelsObjs)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(typeObj) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(forceChangePassword) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(userDetail) ^
      const DeepCollectionEquality().hash(settingValues) ^
      const DeepCollectionEquality().hash(userProfile) ^
      const DeepCollectionEquality().hash(labelsObjs) ^
      runtimeType.hashCode;
}

extension $UserPatchUpdateRequestModelExtension on UserPatchUpdateRequestModel {
  UserPatchUpdateRequestModel copyWith(
      {enums.UserTypeEnum? typeObj,
      String? phoneNumber,
      String? email,
      String? name,
      String? avatarUrl,
      bool? forceChangePassword,
      bool? isActive,
      UserDetail? userDetail,
      Settings? settingValues,
      UserProfile? userProfile,
      List<LabelsObj>? labelsObjs}) {
    return UserPatchUpdateRequestModel(
        typeObj: typeObj ?? this.typeObj,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        email: email ?? this.email,
        name: name ?? this.name,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        forceChangePassword: forceChangePassword ?? this.forceChangePassword,
        isActive: isActive ?? this.isActive,
        userDetail: userDetail ?? this.userDetail,
        settingValues: settingValues ?? this.settingValues,
        userProfile: userProfile ?? this.userProfile,
        labelsObjs: labelsObjs ?? this.labelsObjs);
  }
}

@JsonSerializable(explicitToJson: true)
class UserProfile {
  UserProfile({
    this.customerType,
    this.companyName,
    this.taxNo,
    this.idNumber,
    this.address,
    this.headquarters,
    this.districts,
    this.wards,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  @JsonKey(name: 'customerType', includeIfNull: true)
  final String? customerType;
  @JsonKey(name: 'companyName', includeIfNull: true)
  final String? companyName;
  @JsonKey(name: 'taxNo', includeIfNull: true)
  final String? taxNo;
  @JsonKey(name: 'idNumber', includeIfNull: true)
  final String? idNumber;
  @JsonKey(name: 'address', includeIfNull: true)
  final String? address;
  @JsonKey(name: 'headquarters', includeIfNull: true)
  final String? headquarters;
  @JsonKey(name: 'districts', includeIfNull: true)
  final String? districts;
  @JsonKey(name: 'wards', includeIfNull: true)
  final String? wards;
  static const fromJsonFactory = _$UserProfileFromJson;
  static const toJsonFactory = _$UserProfileToJson;
  Map<String, dynamic> toJson() => _$UserProfileToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserProfile &&
            (identical(other.customerType, customerType) ||
                const DeepCollectionEquality()
                    .equals(other.customerType, customerType)) &&
            (identical(other.companyName, companyName) ||
                const DeepCollectionEquality()
                    .equals(other.companyName, companyName)) &&
            (identical(other.taxNo, taxNo) ||
                const DeepCollectionEquality().equals(other.taxNo, taxNo)) &&
            (identical(other.idNumber, idNumber) ||
                const DeepCollectionEquality()
                    .equals(other.idNumber, idNumber)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.headquarters, headquarters) ||
                const DeepCollectionEquality()
                    .equals(other.headquarters, headquarters)) &&
            (identical(other.districts, districts) ||
                const DeepCollectionEquality()
                    .equals(other.districts, districts)) &&
            (identical(other.wards, wards) ||
                const DeepCollectionEquality().equals(other.wards, wards)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customerType) ^
      const DeepCollectionEquality().hash(companyName) ^
      const DeepCollectionEquality().hash(taxNo) ^
      const DeepCollectionEquality().hash(idNumber) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(headquarters) ^
      const DeepCollectionEquality().hash(districts) ^
      const DeepCollectionEquality().hash(wards) ^
      runtimeType.hashCode;
}

extension $UserProfileExtension on UserProfile {
  UserProfile copyWith(
      {String? customerType,
      String? companyName,
      String? taxNo,
      String? idNumber,
      String? address,
      String? headquarters,
      String? districts,
      String? wards}) {
    return UserProfile(
        customerType: customerType ?? this.customerType,
        companyName: companyName ?? this.companyName,
        taxNo: taxNo ?? this.taxNo,
        idNumber: idNumber ?? this.idNumber,
        address: address ?? this.address,
        headquarters: headquarters ?? this.headquarters,
        districts: districts ?? this.districts,
        wards: wards ?? this.wards);
  }
}

@JsonSerializable(explicitToJson: true)
class UserProfile2 {
  UserProfile2({
    this.orgId,
    this.orgCode,
    this.orgName,
  });

  factory UserProfile2.fromJson(Map<String, dynamic> json) =>
      _$UserProfile2FromJson(json);

  @JsonKey(name: 'orgId', includeIfNull: true)
  final String? orgId;
  @JsonKey(name: 'orgCode', includeIfNull: true)
  final String? orgCode;
  @JsonKey(name: 'orgName', includeIfNull: true)
  final String? orgName;
  static const fromJsonFactory = _$UserProfile2FromJson;
  static const toJsonFactory = _$UserProfile2ToJson;
  Map<String, dynamic> toJson() => _$UserProfile2ToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserProfile2 &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.orgCode, orgCode) ||
                const DeepCollectionEquality()
                    .equals(other.orgCode, orgCode)) &&
            (identical(other.orgName, orgName) ||
                const DeepCollectionEquality().equals(other.orgName, orgName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(orgCode) ^
      const DeepCollectionEquality().hash(orgName) ^
      runtimeType.hashCode;
}

extension $UserProfile2Extension on UserProfile2 {
  UserProfile2 copyWith({String? orgId, String? orgCode, String? orgName}) {
    return UserProfile2(
        orgId: orgId ?? this.orgId,
        orgCode: orgCode ?? this.orgCode,
        orgName: orgName ?? this.orgName);
  }
}

@JsonSerializable(explicitToJson: true)
class UserResponseModel {
  UserResponseModel({
    this.id,
    this.userName,
    this.name,
    this.avatarUrl,
    this.applicationId,
    this.email,
    this.phoneNumber,
    this.typeObj,
    this.isActive,
    this.userDetail,
    this.settingValues,
    this.lastActivityDate,
    this.metadataContentObjs,
    this.forceChangePassword,
    this.groupName,
  });

  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);

  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'userName', includeIfNull: true)
  final String? userName;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'avatarUrl', includeIfNull: true)
  final String? avatarUrl;
  @JsonKey(name: 'applicationId', includeIfNull: true)
  final String? applicationId;
  @JsonKey(name: 'email', includeIfNull: true)
  final String? email;
  @JsonKey(name: 'phoneNumber', includeIfNull: true)
  final String? phoneNumber;
  @JsonKey(
      name: 'typeObj',
      includeIfNull: true,
      toJson: userTypeEnumToJson,
      fromJson: userTypeEnumFromJson)
  final enums.UserTypeEnum? typeObj;
  @JsonKey(name: 'isActive', includeIfNull: true)
  final bool? isActive;
  @JsonKey(name: 'userDetail', includeIfNull: true)
  final UserDetail? userDetail;
  @JsonKey(name: 'settingValues', includeIfNull: true)
  final Settings? settingValues;
  @JsonKey(name: 'lastActivityDate', includeIfNull: true)
  final DateTime? lastActivityDate;
  @JsonKey(
      name: 'metadataContentObjs',
      includeIfNull: true,
      defaultValue: <MetadataValue>[])
  final List<MetadataValue>? metadataContentObjs;
  @JsonKey(name: 'forceChangePassword', includeIfNull: true)
  final bool? forceChangePassword;
  @JsonKey(name: 'groupName', includeIfNull: true)
  final String? groupName;
  static const fromJsonFactory = _$UserResponseModelFromJson;
  static const toJsonFactory = _$UserResponseModelToJson;
  Map<String, dynamic> toJson() => _$UserResponseModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserResponseModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.typeObj, typeObj) ||
                const DeepCollectionEquality()
                    .equals(other.typeObj, typeObj)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.userDetail, userDetail) ||
                const DeepCollectionEquality()
                    .equals(other.userDetail, userDetail)) &&
            (identical(other.settingValues, settingValues) ||
                const DeepCollectionEquality()
                    .equals(other.settingValues, settingValues)) &&
            (identical(other.lastActivityDate, lastActivityDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastActivityDate, lastActivityDate)) &&
            (identical(other.metadataContentObjs, metadataContentObjs) ||
                const DeepCollectionEquality()
                    .equals(other.metadataContentObjs, metadataContentObjs)) &&
            (identical(other.forceChangePassword, forceChangePassword) ||
                const DeepCollectionEquality()
                    .equals(other.forceChangePassword, forceChangePassword)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(typeObj) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(userDetail) ^
      const DeepCollectionEquality().hash(settingValues) ^
      const DeepCollectionEquality().hash(lastActivityDate) ^
      const DeepCollectionEquality().hash(metadataContentObjs) ^
      const DeepCollectionEquality().hash(forceChangePassword) ^
      const DeepCollectionEquality().hash(groupName) ^
      runtimeType.hashCode;
}

extension $UserResponseModelExtension on UserResponseModel {
  UserResponseModel copyWith(
      {String? id,
      String? userName,
      String? name,
      String? avatarUrl,
      String? applicationId,
      String? email,
      String? phoneNumber,
      enums.UserTypeEnum? typeObj,
      bool? isActive,
      UserDetail? userDetail,
      Settings? settingValues,
      DateTime? lastActivityDate,
      List<MetadataValue>? metadataContentObjs,
      bool? forceChangePassword,
      String? groupName}) {
    return UserResponseModel(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        name: name ?? this.name,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        applicationId: applicationId ?? this.applicationId,
        email: email ?? this.email,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        typeObj: typeObj ?? this.typeObj,
        isActive: isActive ?? this.isActive,
        userDetail: userDetail ?? this.userDetail,
        settingValues: settingValues ?? this.settingValues,
        lastActivityDate: lastActivityDate ?? this.lastActivityDate,
        metadataContentObjs: metadataContentObjs ?? this.metadataContentObjs,
        forceChangePassword: forceChangePassword ?? this.forceChangePassword,
        groupName: groupName ?? this.groupName);
  }
}

@JsonSerializable(explicitToJson: true)
class UserResponseModelPagination {
  UserResponseModelPagination({
    this.currentPage,
    this.totalPages,
    this.pageSize,
    this.numberOfRecords,
    this.totalRecords,
    this.content,
  });

  factory UserResponseModelPagination.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelPaginationFromJson(json);

  @JsonKey(name: 'currentPage', includeIfNull: true)
  final int? currentPage;
  @JsonKey(name: 'totalPages', includeIfNull: true)
  final int? totalPages;
  @JsonKey(name: 'pageSize', includeIfNull: true)
  final int? pageSize;
  @JsonKey(name: 'numberOfRecords', includeIfNull: true)
  final int? numberOfRecords;
  @JsonKey(name: 'totalRecords', includeIfNull: true)
  final int? totalRecords;
  @JsonKey(
      name: 'content', includeIfNull: true, defaultValue: <UserResponseModel>[])
  final List<UserResponseModel>? content;
  static const fromJsonFactory = _$UserResponseModelPaginationFromJson;
  static const toJsonFactory = _$UserResponseModelPaginationToJson;
  Map<String, dynamic> toJson() => _$UserResponseModelPaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserResponseModelPagination &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)) &&
            (identical(other.numberOfRecords, numberOfRecords) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfRecords, numberOfRecords)) &&
            (identical(other.totalRecords, totalRecords) ||
                const DeepCollectionEquality()
                    .equals(other.totalRecords, totalRecords)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(numberOfRecords) ^
      const DeepCollectionEquality().hash(totalRecords) ^
      const DeepCollectionEquality().hash(content) ^
      runtimeType.hashCode;
}

extension $UserResponseModelPaginationExtension on UserResponseModelPagination {
  UserResponseModelPagination copyWith(
      {int? currentPage,
      int? totalPages,
      int? pageSize,
      int? numberOfRecords,
      int? totalRecords,
      List<UserResponseModel>? content}) {
    return UserResponseModelPagination(
        currentPage: currentPage ?? this.currentPage,
        totalPages: totalPages ?? this.totalPages,
        pageSize: pageSize ?? this.pageSize,
        numberOfRecords: numberOfRecords ?? this.numberOfRecords,
        totalRecords: totalRecords ?? this.totalRecords,
        content: content ?? this.content);
  }
}

@JsonSerializable(explicitToJson: true)
class UserResponseModelResponseList {
  UserResponseModelResponseList({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory UserResponseModelResponseList.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelResponseListFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(
      name: 'data', includeIfNull: true, defaultValue: <UserResponseModel>[])
  final List<UserResponseModel>? data;
  static const fromJsonFactory = _$UserResponseModelResponseListFromJson;
  static const toJsonFactory = _$UserResponseModelResponseListToJson;
  Map<String, dynamic> toJson() => _$UserResponseModelResponseListToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserResponseModelResponseList &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $UserResponseModelResponseListExtension
    on UserResponseModelResponseList {
  UserResponseModelResponseList copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<UserResponseModel>? data}) {
    return UserResponseModelResponseList(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class UserResponseModelResponsePagination {
  UserResponseModelResponsePagination({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory UserResponseModelResponsePagination.fromJson(
          Map<String, dynamic> json) =>
      _$UserResponseModelResponsePaginationFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final UserResponseModelPagination? data;
  static const fromJsonFactory = _$UserResponseModelResponsePaginationFromJson;
  static const toJsonFactory = _$UserResponseModelResponsePaginationToJson;
  Map<String, dynamic> toJson() =>
      _$UserResponseModelResponsePaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserResponseModelResponsePagination &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $UserResponseModelResponsePaginationExtension
    on UserResponseModelResponsePagination {
  UserResponseModelResponsePagination copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      UserResponseModelPagination? data}) {
    return UserResponseModelResponsePagination(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class UserRoleDetailModel {
  UserRoleDetailModel({
    this.id,
    this.userName,
    this.name,
    this.avatarUrl,
    this.applicationId,
    this.email,
    this.phoneNumber,
    this.typeObj,
    this.isActive,
    this.userDetail,
    this.isSuperUser,
    this.forceChangePassword,
    this.settingValues,
    this.lastActivityDate,
    this.groupType,
    this.groupId,
    this.groupName,
    this.userProfile,
    this.userProfile2,
    this.password,
    this.passwordSalt,
    this.rights,
    this.roles,
    this.listRight,
    this.listRole,
  });

  factory UserRoleDetailModel.fromJson(Map<String, dynamic> json) =>
      _$UserRoleDetailModelFromJson(json);

  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'userName', includeIfNull: true)
  final String? userName;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'avatarUrl', includeIfNull: true)
  final String? avatarUrl;
  @JsonKey(name: 'applicationId', includeIfNull: true)
  final String? applicationId;
  @JsonKey(name: 'email', includeIfNull: true)
  final String? email;
  @JsonKey(name: 'phoneNumber', includeIfNull: true)
  final String? phoneNumber;
  @JsonKey(
      name: 'typeObj',
      includeIfNull: true,
      toJson: userTypeEnumToJson,
      fromJson: userTypeEnumFromJson)
  final enums.UserTypeEnum? typeObj;
  @JsonKey(name: 'isActive', includeIfNull: true)
  final bool? isActive;
  @JsonKey(name: 'userDetail', includeIfNull: true)
  final UserDetail? userDetail;
  @JsonKey(name: 'isSuperUser', includeIfNull: true)
  final bool? isSuperUser;
  @JsonKey(name: 'forceChangePassword', includeIfNull: true)
  final bool? forceChangePassword;
  @JsonKey(name: 'settingValues', includeIfNull: true)
  final Settings? settingValues;
  @JsonKey(name: 'lastActivityDate', includeIfNull: true)
  final DateTime? lastActivityDate;
  @JsonKey(name: 'groupType', includeIfNull: true)
  final String? groupType;
  @JsonKey(name: 'groupId', includeIfNull: true)
  final String? groupId;
  @JsonKey(name: 'groupName', includeIfNull: true)
  final String? groupName;
  @JsonKey(name: 'userProfile', includeIfNull: true)
  final String? userProfile;
  @JsonKey(name: 'userProfile2', includeIfNull: true)
  final String? userProfile2;
  @JsonKey(name: 'password', includeIfNull: true)
  final String? password;
  @JsonKey(name: 'passwordSalt', includeIfNull: true)
  final String? passwordSalt;
  @JsonKey(name: 'rights', includeIfNull: true, defaultValue: <RightModel>[])
  final List<RightModel>? rights;
  @JsonKey(name: 'roles', includeIfNull: true, defaultValue: <RoleModel>[])
  final List<RoleModel>? roles;
  @JsonKey(
      name: 'listRight',
      includeIfNull: true,
      defaultValue: <BaseRightModelOfUser>[])
  final List<BaseRightModelOfUser>? listRight;
  @JsonKey(
      name: 'listRole', includeIfNull: true, defaultValue: <BaseRoleModel>[])
  final List<BaseRoleModel>? listRole;
  static const fromJsonFactory = _$UserRoleDetailModelFromJson;
  static const toJsonFactory = _$UserRoleDetailModelToJson;
  Map<String, dynamic> toJson() => _$UserRoleDetailModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserRoleDetailModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.typeObj, typeObj) ||
                const DeepCollectionEquality()
                    .equals(other.typeObj, typeObj)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.userDetail, userDetail) ||
                const DeepCollectionEquality()
                    .equals(other.userDetail, userDetail)) &&
            (identical(other.isSuperUser, isSuperUser) ||
                const DeepCollectionEquality()
                    .equals(other.isSuperUser, isSuperUser)) &&
            (identical(other.forceChangePassword, forceChangePassword) ||
                const DeepCollectionEquality()
                    .equals(other.forceChangePassword, forceChangePassword)) &&
            (identical(other.settingValues, settingValues) ||
                const DeepCollectionEquality()
                    .equals(other.settingValues, settingValues)) &&
            (identical(other.lastActivityDate, lastActivityDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastActivityDate, lastActivityDate)) &&
            (identical(other.groupType, groupType) ||
                const DeepCollectionEquality()
                    .equals(other.groupType, groupType)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.userProfile, userProfile) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile, userProfile)) &&
            (identical(other.userProfile2, userProfile2) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile2, userProfile2)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.passwordSalt, passwordSalt) ||
                const DeepCollectionEquality()
                    .equals(other.passwordSalt, passwordSalt)) &&
            (identical(other.rights, rights) ||
                const DeepCollectionEquality().equals(other.rights, rights)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)) &&
            (identical(other.listRight, listRight) ||
                const DeepCollectionEquality()
                    .equals(other.listRight, listRight)) &&
            (identical(other.listRole, listRole) || const DeepCollectionEquality().equals(other.listRole, listRole)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(typeObj) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(userDetail) ^
      const DeepCollectionEquality().hash(isSuperUser) ^
      const DeepCollectionEquality().hash(forceChangePassword) ^
      const DeepCollectionEquality().hash(settingValues) ^
      const DeepCollectionEquality().hash(lastActivityDate) ^
      const DeepCollectionEquality().hash(groupType) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(userProfile) ^
      const DeepCollectionEquality().hash(userProfile2) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordSalt) ^
      const DeepCollectionEquality().hash(rights) ^
      const DeepCollectionEquality().hash(roles) ^
      const DeepCollectionEquality().hash(listRight) ^
      const DeepCollectionEquality().hash(listRole) ^
      runtimeType.hashCode;
}

extension $UserRoleDetailModelExtension on UserRoleDetailModel {
  UserRoleDetailModel copyWith(
      {String? id,
      String? userName,
      String? name,
      String? avatarUrl,
      String? applicationId,
      String? email,
      String? phoneNumber,
      enums.UserTypeEnum? typeObj,
      bool? isActive,
      UserDetail? userDetail,
      bool? isSuperUser,
      bool? forceChangePassword,
      Settings? settingValues,
      DateTime? lastActivityDate,
      String? groupType,
      String? groupId,
      String? groupName,
      String? userProfile,
      String? userProfile2,
      String? password,
      String? passwordSalt,
      List<RightModel>? rights,
      List<RoleModel>? roles,
      List<BaseRightModelOfUser>? listRight,
      List<BaseRoleModel>? listRole}) {
    return UserRoleDetailModel(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        name: name ?? this.name,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        applicationId: applicationId ?? this.applicationId,
        email: email ?? this.email,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        typeObj: typeObj ?? this.typeObj,
        isActive: isActive ?? this.isActive,
        userDetail: userDetail ?? this.userDetail,
        isSuperUser: isSuperUser ?? this.isSuperUser,
        forceChangePassword: forceChangePassword ?? this.forceChangePassword,
        settingValues: settingValues ?? this.settingValues,
        lastActivityDate: lastActivityDate ?? this.lastActivityDate,
        groupType: groupType ?? this.groupType,
        groupId: groupId ?? this.groupId,
        groupName: groupName ?? this.groupName,
        userProfile: userProfile ?? this.userProfile,
        userProfile2: userProfile2 ?? this.userProfile2,
        password: password ?? this.password,
        passwordSalt: passwordSalt ?? this.passwordSalt,
        rights: rights ?? this.rights,
        roles: roles ?? this.roles,
        listRight: listRight ?? this.listRight,
        listRole: listRole ?? this.listRole);
  }
}

@JsonSerializable(explicitToJson: true)
class UserRoleDetailModelResponseObject {
  UserRoleDetailModelResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory UserRoleDetailModelResponseObject.fromJson(
          Map<String, dynamic> json) =>
      _$UserRoleDetailModelResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final UserRoleDetailModel? data;
  static const fromJsonFactory = _$UserRoleDetailModelResponseObjectFromJson;
  static const toJsonFactory = _$UserRoleDetailModelResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$UserRoleDetailModelResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserRoleDetailModelResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $UserRoleDetailModelResponseObjectExtension
    on UserRoleDetailModelResponseObject {
  UserRoleDetailModelResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      UserRoleDetailModel? data}) {
    return UserRoleDetailModelResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class UserSimpleInfoResponseModel {
  UserSimpleInfoResponseModel({
    this.id,
    this.userName,
    this.name,
    this.avatarUrl,
    this.applicationId,
  });

  factory UserSimpleInfoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserSimpleInfoResponseModelFromJson(json);

  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'userName', includeIfNull: true)
  final String? userName;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'avatarUrl', includeIfNull: true)
  final String? avatarUrl;
  @JsonKey(name: 'applicationId', includeIfNull: true)
  final String? applicationId;
  static const fromJsonFactory = _$UserSimpleInfoResponseModelFromJson;
  static const toJsonFactory = _$UserSimpleInfoResponseModelToJson;
  Map<String, dynamic> toJson() => _$UserSimpleInfoResponseModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserSimpleInfoResponseModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(applicationId) ^
      runtimeType.hashCode;
}

extension $UserSimpleInfoResponseModelExtension on UserSimpleInfoResponseModel {
  UserSimpleInfoResponseModel copyWith(
      {String? id,
      String? userName,
      String? name,
      String? avatarUrl,
      String? applicationId}) {
    return UserSimpleInfoResponseModel(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        name: name ?? this.name,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        applicationId: applicationId ?? this.applicationId);
  }
}

@JsonSerializable(explicitToJson: true)
class UserSimpleInfoResponseModelPagination {
  UserSimpleInfoResponseModelPagination({
    this.currentPage,
    this.totalPages,
    this.pageSize,
    this.numberOfRecords,
    this.totalRecords,
    this.content,
  });

  factory UserSimpleInfoResponseModelPagination.fromJson(
          Map<String, dynamic> json) =>
      _$UserSimpleInfoResponseModelPaginationFromJson(json);

  @JsonKey(name: 'currentPage', includeIfNull: true)
  final int? currentPage;
  @JsonKey(name: 'totalPages', includeIfNull: true)
  final int? totalPages;
  @JsonKey(name: 'pageSize', includeIfNull: true)
  final int? pageSize;
  @JsonKey(name: 'numberOfRecords', includeIfNull: true)
  final int? numberOfRecords;
  @JsonKey(name: 'totalRecords', includeIfNull: true)
  final int? totalRecords;
  @JsonKey(
      name: 'content',
      includeIfNull: true,
      defaultValue: <UserSimpleInfoResponseModel>[])
  final List<UserSimpleInfoResponseModel>? content;
  static const fromJsonFactory =
      _$UserSimpleInfoResponseModelPaginationFromJson;
  static const toJsonFactory = _$UserSimpleInfoResponseModelPaginationToJson;
  Map<String, dynamic> toJson() =>
      _$UserSimpleInfoResponseModelPaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserSimpleInfoResponseModelPagination &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)) &&
            (identical(other.numberOfRecords, numberOfRecords) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfRecords, numberOfRecords)) &&
            (identical(other.totalRecords, totalRecords) ||
                const DeepCollectionEquality()
                    .equals(other.totalRecords, totalRecords)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(numberOfRecords) ^
      const DeepCollectionEquality().hash(totalRecords) ^
      const DeepCollectionEquality().hash(content) ^
      runtimeType.hashCode;
}

extension $UserSimpleInfoResponseModelPaginationExtension
    on UserSimpleInfoResponseModelPagination {
  UserSimpleInfoResponseModelPagination copyWith(
      {int? currentPage,
      int? totalPages,
      int? pageSize,
      int? numberOfRecords,
      int? totalRecords,
      List<UserSimpleInfoResponseModel>? content}) {
    return UserSimpleInfoResponseModelPagination(
        currentPage: currentPage ?? this.currentPage,
        totalPages: totalPages ?? this.totalPages,
        pageSize: pageSize ?? this.pageSize,
        numberOfRecords: numberOfRecords ?? this.numberOfRecords,
        totalRecords: totalRecords ?? this.totalRecords,
        content: content ?? this.content);
  }
}

@JsonSerializable(explicitToJson: true)
class UserSimpleInfoResponseModelResponseObject {
  UserSimpleInfoResponseModelResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory UserSimpleInfoResponseModelResponseObject.fromJson(
          Map<String, dynamic> json) =>
      _$UserSimpleInfoResponseModelResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final UserSimpleInfoResponseModel? data;
  static const fromJsonFactory =
      _$UserSimpleInfoResponseModelResponseObjectFromJson;
  static const toJsonFactory =
      _$UserSimpleInfoResponseModelResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$UserSimpleInfoResponseModelResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserSimpleInfoResponseModelResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $UserSimpleInfoResponseModelResponseObjectExtension
    on UserSimpleInfoResponseModelResponseObject {
  UserSimpleInfoResponseModelResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      UserSimpleInfoResponseModel? data}) {
    return UserSimpleInfoResponseModelResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class UserSimpleInfoResponseModelResponsePagination {
  UserSimpleInfoResponseModelResponsePagination({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory UserSimpleInfoResponseModelResponsePagination.fromJson(
          Map<String, dynamic> json) =>
      _$UserSimpleInfoResponseModelResponsePaginationFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final UserSimpleInfoResponseModelPagination? data;
  static const fromJsonFactory =
      _$UserSimpleInfoResponseModelResponsePaginationFromJson;
  static const toJsonFactory =
      _$UserSimpleInfoResponseModelResponsePaginationToJson;
  Map<String, dynamic> toJson() =>
      _$UserSimpleInfoResponseModelResponsePaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserSimpleInfoResponseModelResponsePagination &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $UserSimpleInfoResponseModelResponsePaginationExtension
    on UserSimpleInfoResponseModelResponsePagination {
  UserSimpleInfoResponseModelResponsePagination copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      UserSimpleInfoResponseModelPagination? data}) {
    return UserSimpleInfoResponseModelResponsePagination(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class UserUpdateRequestModel {
  UserUpdateRequestModel({
    this.id,
    this.userName,
    this.name,
    this.phoneNumber,
    this.email,
    this.avatarUrl,
    this.isActive,
    this.typeObj,
    this.type,
    this.password,
    this.userDetail,
    this.settingValues,
    this.groupId,
    this.groupName,
    this.listAddRightId,
    this.listAddRoleId,
    this.listDeleteRightId,
    this.listDeleteRoleId,
    this.applicationId,
    this.userProfile,
    this.userProfile2,
    this.labelsObjs,
  });

  factory UserUpdateRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateRequestModelFromJson(json);

  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'userName', includeIfNull: true)
  final String? userName;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'phoneNumber', includeIfNull: true)
  final String? phoneNumber;
  @JsonKey(name: 'email', includeIfNull: true)
  final String? email;
  @JsonKey(name: 'avatarUrl', includeIfNull: true)
  final String? avatarUrl;
  @JsonKey(name: 'isActive', includeIfNull: true)
  final bool? isActive;
  @JsonKey(
      name: 'typeObj',
      includeIfNull: true,
      toJson: userTypeEnumToJson,
      fromJson: userTypeEnumFromJson)
  final enums.UserTypeEnum? typeObj;
  @JsonKey(name: 'type', includeIfNull: true)
  final int? type;
  @JsonKey(name: 'password', includeIfNull: true)
  final String? password;
  @JsonKey(name: 'userDetail', includeIfNull: true)
  final UserDetail? userDetail;
  @JsonKey(name: 'settingValues', includeIfNull: true)
  final Settings? settingValues;
  @JsonKey(name: 'groupId', includeIfNull: true)
  final String? groupId;
  @JsonKey(name: 'groupName', includeIfNull: true)
  final String? groupName;
  @JsonKey(
      name: 'listAddRightId', includeIfNull: true, defaultValue: <String>[])
  final List<String>? listAddRightId;
  @JsonKey(name: 'listAddRoleId', includeIfNull: true, defaultValue: <String>[])
  final List<String>? listAddRoleId;
  @JsonKey(
      name: 'listDeleteRightId', includeIfNull: true, defaultValue: <String>[])
  final List<String>? listDeleteRightId;
  @JsonKey(
      name: 'listDeleteRoleId', includeIfNull: true, defaultValue: <String>[])
  final List<String>? listDeleteRoleId;
  @JsonKey(name: 'applicationId', includeIfNull: true)
  final String? applicationId;
  @JsonKey(name: 'userProfile', includeIfNull: true)
  final UserProfile? userProfile;
  @JsonKey(name: 'userProfile2', includeIfNull: true)
  final UserProfile2? userProfile2;
  @JsonKey(name: 'labelsObjs', includeIfNull: true, defaultValue: <LabelsObj>[])
  final List<LabelsObj>? labelsObjs;
  static const fromJsonFactory = _$UserUpdateRequestModelFromJson;
  static const toJsonFactory = _$UserUpdateRequestModelToJson;
  Map<String, dynamic> toJson() => _$UserUpdateRequestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserUpdateRequestModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.typeObj, typeObj) ||
                const DeepCollectionEquality()
                    .equals(other.typeObj, typeObj)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.userDetail, userDetail) ||
                const DeepCollectionEquality()
                    .equals(other.userDetail, userDetail)) &&
            (identical(other.settingValues, settingValues) ||
                const DeepCollectionEquality()
                    .equals(other.settingValues, settingValues)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.listAddRightId, listAddRightId) ||
                const DeepCollectionEquality()
                    .equals(other.listAddRightId, listAddRightId)) &&
            (identical(other.listAddRoleId, listAddRoleId) ||
                const DeepCollectionEquality()
                    .equals(other.listAddRoleId, listAddRoleId)) &&
            (identical(other.listDeleteRightId, listDeleteRightId) ||
                const DeepCollectionEquality()
                    .equals(other.listDeleteRightId, listDeleteRightId)) &&
            (identical(other.listDeleteRoleId, listDeleteRoleId) ||
                const DeepCollectionEquality()
                    .equals(other.listDeleteRoleId, listDeleteRoleId)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.userProfile, userProfile) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile, userProfile)) &&
            (identical(other.userProfile2, userProfile2) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile2, userProfile2)) &&
            (identical(other.labelsObjs, labelsObjs) ||
                const DeepCollectionEquality()
                    .equals(other.labelsObjs, labelsObjs)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(typeObj) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(userDetail) ^
      const DeepCollectionEquality().hash(settingValues) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(listAddRightId) ^
      const DeepCollectionEquality().hash(listAddRoleId) ^
      const DeepCollectionEquality().hash(listDeleteRightId) ^
      const DeepCollectionEquality().hash(listDeleteRoleId) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(userProfile) ^
      const DeepCollectionEquality().hash(userProfile2) ^
      const DeepCollectionEquality().hash(labelsObjs) ^
      runtimeType.hashCode;
}

extension $UserUpdateRequestModelExtension on UserUpdateRequestModel {
  UserUpdateRequestModel copyWith(
      {String? id,
      String? userName,
      String? name,
      String? phoneNumber,
      String? email,
      String? avatarUrl,
      bool? isActive,
      enums.UserTypeEnum? typeObj,
      int? type,
      String? password,
      UserDetail? userDetail,
      Settings? settingValues,
      String? groupId,
      String? groupName,
      List<String>? listAddRightId,
      List<String>? listAddRoleId,
      List<String>? listDeleteRightId,
      List<String>? listDeleteRoleId,
      String? applicationId,
      UserProfile? userProfile,
      UserProfile2? userProfile2,
      List<LabelsObj>? labelsObjs}) {
    return UserUpdateRequestModel(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        name: name ?? this.name,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        email: email ?? this.email,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        isActive: isActive ?? this.isActive,
        typeObj: typeObj ?? this.typeObj,
        type: type ?? this.type,
        password: password ?? this.password,
        userDetail: userDetail ?? this.userDetail,
        settingValues: settingValues ?? this.settingValues,
        groupId: groupId ?? this.groupId,
        groupName: groupName ?? this.groupName,
        listAddRightId: listAddRightId ?? this.listAddRightId,
        listAddRoleId: listAddRoleId ?? this.listAddRoleId,
        listDeleteRightId: listDeleteRightId ?? this.listDeleteRightId,
        listDeleteRoleId: listDeleteRoleId ?? this.listDeleteRoleId,
        applicationId: applicationId ?? this.applicationId,
        userProfile: userProfile ?? this.userProfile,
        userProfile2: userProfile2 ?? this.userProfile2,
        labelsObjs: labelsObjs ?? this.labelsObjs);
  }
}

@JsonSerializable(explicitToJson: true)
class UsersByApplicationResponseModel {
  UsersByApplicationResponseModel({
    this.parentId,
    this.name,
    this.code,
    this.description,
    this.id,
    this.lastModifiedOnDate,
    this.createdOnDate,
    this.listUsers,
  });

  factory UsersByApplicationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UsersByApplicationResponseModelFromJson(json);

  @JsonKey(name: 'parentId', includeIfNull: true)
  final String? parentId;
  @JsonKey(name: 'name', includeIfNull: true)
  final String? name;
  @JsonKey(name: 'code', includeIfNull: true)
  final String? code;
  @JsonKey(name: 'description', includeIfNull: true)
  final String? description;
  @JsonKey(name: 'id', includeIfNull: true)
  final String? id;
  @JsonKey(name: 'lastModifiedOnDate', includeIfNull: true)
  final DateTime? lastModifiedOnDate;
  @JsonKey(name: 'createdOnDate', includeIfNull: true)
  final DateTime? createdOnDate;
  @JsonKey(name: 'listUsers', includeIfNull: true, defaultValue: <UserModel>[])
  final List<UserModel>? listUsers;
  static const fromJsonFactory = _$UsersByApplicationResponseModelFromJson;
  static const toJsonFactory = _$UsersByApplicationResponseModelToJson;
  Map<String, dynamic> toJson() =>
      _$UsersByApplicationResponseModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsersByApplicationResponseModel &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lastModifiedOnDate, lastModifiedOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedOnDate, lastModifiedOnDate)) &&
            (identical(other.createdOnDate, createdOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdOnDate, createdOnDate)) &&
            (identical(other.listUsers, listUsers) ||
                const DeepCollectionEquality()
                    .equals(other.listUsers, listUsers)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(lastModifiedOnDate) ^
      const DeepCollectionEquality().hash(createdOnDate) ^
      const DeepCollectionEquality().hash(listUsers) ^
      runtimeType.hashCode;
}

extension $UsersByApplicationResponseModelExtension
    on UsersByApplicationResponseModel {
  UsersByApplicationResponseModel copyWith(
      {String? parentId,
      String? name,
      String? code,
      String? description,
      String? id,
      DateTime? lastModifiedOnDate,
      DateTime? createdOnDate,
      List<UserModel>? listUsers}) {
    return UsersByApplicationResponseModel(
        parentId: parentId ?? this.parentId,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        id: id ?? this.id,
        lastModifiedOnDate: lastModifiedOnDate ?? this.lastModifiedOnDate,
        createdOnDate: createdOnDate ?? this.createdOnDate,
        listUsers: listUsers ?? this.listUsers);
  }
}

@JsonSerializable(explicitToJson: true)
class UsersByApplicationResponseModelResponseList {
  UsersByApplicationResponseModelResponseList({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory UsersByApplicationResponseModelResponseList.fromJson(
          Map<String, dynamic> json) =>
      _$UsersByApplicationResponseModelResponseListFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(
      name: 'data',
      includeIfNull: true,
      defaultValue: <UsersByApplicationResponseModel>[])
  final List<UsersByApplicationResponseModel>? data;
  static const fromJsonFactory =
      _$UsersByApplicationResponseModelResponseListFromJson;
  static const toJsonFactory =
      _$UsersByApplicationResponseModelResponseListToJson;
  Map<String, dynamic> toJson() =>
      _$UsersByApplicationResponseModelResponseListToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsersByApplicationResponseModelResponseList &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $UsersByApplicationResponseModelResponseListExtension
    on UsersByApplicationResponseModelResponseList {
  UsersByApplicationResponseModelResponseList copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<UsersByApplicationResponseModel>? data}) {
    return UsersByApplicationResponseModelResponseList(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class Wso2Result {
  Wso2Result({
    this.accessToken,
    this.refreshToken,
    this.idToken,
    this.expiresIn,
    this.startTime,
    this.expiresTime,
    this.tokenType,
    this.userInfo,
  });

  factory Wso2Result.fromJson(Map<String, dynamic> json) =>
      _$Wso2ResultFromJson(json);

  @JsonKey(name: 'access_token', includeIfNull: true)
  final String? accessToken;
  @JsonKey(name: 'refresh_token', includeIfNull: true)
  final String? refreshToken;
  @JsonKey(name: 'id_token', includeIfNull: true)
  final String? idToken;
  @JsonKey(name: 'expires_in', includeIfNull: true)
  final int? expiresIn;
  @JsonKey(name: 'start_time', includeIfNull: true)
  final String? startTime;
  @JsonKey(name: 'expires_time', includeIfNull: true)
  final String? expiresTime;
  @JsonKey(name: 'token_type', includeIfNull: true)
  final String? tokenType;
  @JsonKey(name: 'userInfo', includeIfNull: true)
  final Wso2UserInfo? userInfo;
  static const fromJsonFactory = _$Wso2ResultFromJson;
  static const toJsonFactory = _$Wso2ResultToJson;
  Map<String, dynamic> toJson() => _$Wso2ResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Wso2Result &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.idToken, idToken) ||
                const DeepCollectionEquality()
                    .equals(other.idToken, idToken)) &&
            (identical(other.expiresIn, expiresIn) ||
                const DeepCollectionEquality()
                    .equals(other.expiresIn, expiresIn)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.expiresTime, expiresTime) ||
                const DeepCollectionEquality()
                    .equals(other.expiresTime, expiresTime)) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality()
                    .equals(other.tokenType, tokenType)) &&
            (identical(other.userInfo, userInfo) ||
                const DeepCollectionEquality()
                    .equals(other.userInfo, userInfo)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(idToken) ^
      const DeepCollectionEquality().hash(expiresIn) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(expiresTime) ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(userInfo) ^
      runtimeType.hashCode;
}

extension $Wso2ResultExtension on Wso2Result {
  Wso2Result copyWith(
      {String? accessToken,
      String? refreshToken,
      String? idToken,
      int? expiresIn,
      String? startTime,
      String? expiresTime,
      String? tokenType,
      Wso2UserInfo? userInfo}) {
    return Wso2Result(
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken,
        idToken: idToken ?? this.idToken,
        expiresIn: expiresIn ?? this.expiresIn,
        startTime: startTime ?? this.startTime,
        expiresTime: expiresTime ?? this.expiresTime,
        tokenType: tokenType ?? this.tokenType,
        userInfo: userInfo ?? this.userInfo);
  }
}

@JsonSerializable(explicitToJson: true)
class Wso2ResultResponseObject {
  Wso2ResultResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory Wso2ResultResponseObject.fromJson(Map<String, dynamic> json) =>
      _$Wso2ResultResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final Wso2Result? data;
  static const fromJsonFactory = _$Wso2ResultResponseObjectFromJson;
  static const toJsonFactory = _$Wso2ResultResponseObjectToJson;
  Map<String, dynamic> toJson() => _$Wso2ResultResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Wso2ResultResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $Wso2ResultResponseObjectExtension on Wso2ResultResponseObject {
  Wso2ResultResponseObject copyWith(
      {enums.Code? code, String? message, num? totalTime, Wso2Result? data}) {
    return Wso2ResultResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class Wso2UserInfo {
  Wso2UserInfo({
    this.userId,
    this.userName,
    this.displayName,
    this.email,
  });

  factory Wso2UserInfo.fromJson(Map<String, dynamic> json) =>
      _$Wso2UserInfoFromJson(json);

  @JsonKey(name: 'user_id', includeIfNull: true)
  final String? userId;
  @JsonKey(name: 'user_name', includeIfNull: true)
  final String? userName;
  @JsonKey(name: 'display_name', includeIfNull: true)
  final String? displayName;
  @JsonKey(name: 'email', includeIfNull: true)
  final String? email;
  static const fromJsonFactory = _$Wso2UserInfoFromJson;
  static const toJsonFactory = _$Wso2UserInfoToJson;
  Map<String, dynamic> toJson() => _$Wso2UserInfoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Wso2UserInfo &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      runtimeType.hashCode;
}

extension $Wso2UserInfoExtension on Wso2UserInfo {
  Wso2UserInfo copyWith(
      {String? userId, String? userName, String? displayName, String? email}) {
    return Wso2UserInfo(
        userId: userId ?? this.userId,
        userName: userName ?? this.userName,
        displayName: displayName ?? this.displayName,
        email: email ?? this.email);
  }
}

@JsonSerializable(explicitToJson: true)
class Wso2UserInfoResponseObject {
  Wso2UserInfoResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory Wso2UserInfoResponseObject.fromJson(Map<String, dynamic> json) =>
      _$Wso2UserInfoResponseObjectFromJson(json);

  @JsonKey(
      name: 'code',
      includeIfNull: true,
      toJson: codeToJson,
      fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message', includeIfNull: true)
  final String? message;
  @JsonKey(name: 'totalTime', includeIfNull: true)
  final num? totalTime;
  @JsonKey(name: 'data', includeIfNull: true)
  final Wso2UserInfo? data;
  static const fromJsonFactory = _$Wso2UserInfoResponseObjectFromJson;
  static const toJsonFactory = _$Wso2UserInfoResponseObjectToJson;
  Map<String, dynamic> toJson() => _$Wso2UserInfoResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Wso2UserInfoResponseObject &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $Wso2UserInfoResponseObjectExtension on Wso2UserInfoResponseObject {
  Wso2UserInfoResponseObject copyWith(
      {enums.Code? code, String? message, num? totalTime, Wso2UserInfo? data}) {
    return Wso2UserInfoResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

int? codeToJson(enums.Code? code) {
  return enums.$CodeMap[code];
}

enums.Code codeFromJson(
  Object? code, [
  enums.Code? defaultValue,
]) {
  if (code is int) {
    return enums.$CodeMap.entries
        .firstWhere((element) => element.value == code,
            orElse: () => const MapEntry(enums.Code.swaggerGeneratedUnknown, 0))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$CodeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ?? defaultValue ?? enums.Code.swaggerGeneratedUnknown;
}

List<int> codeListToJson(List<enums.Code>? code) {
  if (code == null) {
    return [];
  }

  return code.map((e) => enums.$CodeMap[e]!).toList();
}

List<enums.Code> codeListFromJson(
  List? code, [
  List<enums.Code>? defaultValue,
]) {
  if (code == null) {
    return defaultValue ?? [];
  }

  return code.map((e) => codeFromJson(e.toString())).toList();
}

int? metafieldTypeToJson(enums.MetafieldType? metafieldType) {
  return enums.$MetafieldTypeMap[metafieldType];
}

enums.MetafieldType metafieldTypeFromJson(
  Object? metafieldType, [
  enums.MetafieldType? defaultValue,
]) {
  if (metafieldType is int) {
    return enums.$MetafieldTypeMap.entries
        .firstWhere((element) => element.value == metafieldType,
            orElse: () =>
                const MapEntry(enums.MetafieldType.swaggerGeneratedUnknown, 0))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$MetafieldTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.MetafieldType.swaggerGeneratedUnknown;
}

List<int> metafieldTypeListToJson(List<enums.MetafieldType>? metafieldType) {
  if (metafieldType == null) {
    return [];
  }

  return metafieldType.map((e) => enums.$MetafieldTypeMap[e]!).toList();
}

List<enums.MetafieldType> metafieldTypeListFromJson(
  List? metafieldType, [
  List<enums.MetafieldType>? defaultValue,
]) {
  if (metafieldType == null) {
    return defaultValue ?? [];
  }

  return metafieldType.map((e) => metafieldTypeFromJson(e.toString())).toList();
}

int? positionEnumToJson(enums.PositionEnum? positionEnum) {
  return enums.$PositionEnumMap[positionEnum];
}

enums.PositionEnum positionEnumFromJson(
  Object? positionEnum, [
  enums.PositionEnum? defaultValue,
]) {
  if (positionEnum is int) {
    return enums.$PositionEnumMap.entries
        .firstWhere((element) => element.value == positionEnum,
            orElse: () =>
                const MapEntry(enums.PositionEnum.swaggerGeneratedUnknown, 0))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$PositionEnumMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.PositionEnum.swaggerGeneratedUnknown;
}

List<int> positionEnumListToJson(List<enums.PositionEnum>? positionEnum) {
  if (positionEnum == null) {
    return [];
  }

  return positionEnum.map((e) => enums.$PositionEnumMap[e]!).toList();
}

List<enums.PositionEnum> positionEnumListFromJson(
  List? positionEnum, [
  List<enums.PositionEnum>? defaultValue,
]) {
  if (positionEnum == null) {
    return defaultValue ?? [];
  }

  return positionEnum.map((e) => positionEnumFromJson(e.toString())).toList();
}

int? userTypeEnumToJson(enums.UserTypeEnum? userTypeEnum) {
  return enums.$UserTypeEnumMap[userTypeEnum];
}

enums.UserTypeEnum userTypeEnumFromJson(
  Object? userTypeEnum, [
  enums.UserTypeEnum? defaultValue,
]) {
  if (userTypeEnum is int) {
    return enums.$UserTypeEnumMap.entries
        .firstWhere((element) => element.value == userTypeEnum,
            orElse: () =>
                const MapEntry(enums.UserTypeEnum.swaggerGeneratedUnknown, 0))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$UserTypeEnumMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.UserTypeEnum.swaggerGeneratedUnknown;
}

List<int> userTypeEnumListToJson(List<enums.UserTypeEnum>? userTypeEnum) {
  if (userTypeEnum == null) {
    return [];
  }

  return userTypeEnum.map((e) => enums.$UserTypeEnumMap[e]!).toList();
}

List<enums.UserTypeEnum> userTypeEnumListFromJson(
  List? userTypeEnum, [
  List<enums.UserTypeEnum>? defaultValue,
]) {
  if (userTypeEnum == null) {
    return defaultValue ?? [];
  }

  return userTypeEnum.map((e) => userTypeEnumFromJson(e.toString())).toList();
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

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}
