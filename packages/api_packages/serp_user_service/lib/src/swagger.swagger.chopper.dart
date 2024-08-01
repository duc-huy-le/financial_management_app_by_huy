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
  Future<Response<Wso2ResultResponseObject>> _apiV1Wso2AuthenticationinfoGet(
      {String? authorizationCode}) {
    final $url = '/api/v1/wso2/authenticationinfo';
    final $params = <String, dynamic>{'authorizationCode': authorizationCode};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<Wso2ResultResponseObject, Wso2ResultResponseObject>($request);
  }

  @override
  Future<Response<Wso2ResultResponseObject>> _apiV1Wso2RefreshtokenGet(
      {String? token}) {
    final $url = '/api/v1/wso2/refreshtoken';
    final $params = <String, dynamic>{'token': token};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<Wso2ResultResponseObject, Wso2ResultResponseObject>($request);
  }

  @override
  Future<Response<Wso2UserInfoResponseObject>> _apiV1Wso2GetUserInfoGet(
      {String? token}) {
    final $url = '/api/v1/wso2/get-user-info';
    final $params = <String, dynamic>{'token': token};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<Wso2UserInfoResponseObject, Wso2UserInfoResponseObject>($request);
  }

  @override
  Future<Response<ApplicationModelResponseObject>> _v1ApplicationsSetupPost(
      {ApplicationCreateModel? body}) {
    final $url = '/v1/applications/setup';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApplicationModelResponseObject,
        ApplicationModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1ApplicationsResetAdminPassPost(
      {String? code}) {
    final $url = '/v1/applications/reset-admin-pass';
    final $params = <String, dynamic>{'code': code};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<ApplicationModelResponseObject>>
      _v1ApplicationsSetupNavigationPost({ApplicationCreateModel? body}) {
    final $url = '/v1/applications/setup-navigation';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApplicationModelResponseObject,
        ApplicationModelResponseObject>($request);
  }

  @override
  Future<Response<ApplicationModelResponseObject>>
      _v1ApplicationsSetupRolesPost({ApplicationCreateModel? body}) {
    final $url = '/v1/applications/setup-roles';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApplicationModelResponseObject,
        ApplicationModelResponseObject>($request);
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
  Future<Response<RightModelResponsePagination>> _v1RightsGet(
      {int? page, int? size, String? filter, String? sort}) {
    final $url = '/v1/rights';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'filter': filter,
      'sort': sort
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<RightModelResponsePagination,
        RightModelResponsePagination>($request);
  }

  @override
  Future<Response<ResponseDeleteMulti>> _v1RightsDelete(
      {List<String>? rightIds}) {
    final $url = '/v1/rights';
    final $params = <String, dynamic>{'rightIds': rightIds};
    final $request =
        Request('DELETE', $url, client.baseUrl, parameters: $params);
    return client.send<ResponseDeleteMulti, ResponseDeleteMulti>($request);
  }

  @override
  Future<Response<ResponseDelete>> _v1RightsIdDelete({required String? id}) {
    final $url = '/v1/rights/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ResponseDelete, ResponseDelete>($request);
  }

  @override
  Future<Response<RightModelResponseObject>> _v1RightsIdGet(
      {required String? id}) {
    final $url = '/v1/rights/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<RightModelResponseObject, RightModelResponseObject>($request);
  }

  @override
  Future<Response<RightModelResponseList>> _v1RightsAllGet() {
    final $url = '/v1/rights/all';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<RightModelResponseList, RightModelResponseList>($request);
  }

  @override
  Future<Response<RightGroupModelListResponseObject>> _v1RightsAllTreeGet(
      {String? filter}) {
    final $url = '/v1/rights/all-tree';
    final $params = <String, dynamic>{'filter': filter};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<RightGroupModelListResponseObject,
        RightGroupModelListResponseObject>($request);
  }

  @override
  Future<Response<RightDetailModelListResponseObject>>
      _v1RightsRightIdDetailGet(
          {required String? rightId, String? applicationId}) {
    final $url = '/v1/rights/${rightId}/detail';
    final $params = <String, dynamic>{'applicationId': applicationId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<RightDetailModelListResponseObject,
        RightDetailModelListResponseObject>($request);
  }

  @override
  Future<Response<RoleModelResponseList>> _v1RightsRightIdRolesGet(
      {required String? rightId}) {
    final $url = '/v1/rights/${rightId}/roles';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RoleModelResponseList, RoleModelResponseList>($request);
  }

  @override
  Future<Response<Response$>> _v1RightsRightIdRolesPost(
      {required String? rightId, List<String>? body}) {
    final $url = '/v1/rights/${rightId}/roles';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<Response$, Response$>($request);
  }

  @override
  Future<Response<Response$>> _v1RightsRightIdRolesDelete(
      {List<String>? roleIds, required String? rightId}) {
    final $url = '/v1/rights/${rightId}/roles';
    final $params = <String, dynamic>{'roleIds': roleIds};
    final $request =
        Request('DELETE', $url, client.baseUrl, parameters: $params);
    return client.send<Response$, Response$>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1RightsCacheDelete() {
    final $url = '/v1/rights/cache';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<NavigationModelResponsePagination>> _v1NavigationsGet(
      {int? page, int? size, String? filter, String? sort}) {
    final $url = '/v1/navigations';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'filter': filter,
      'sort': sort
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<NavigationModelResponsePagination,
        NavigationModelResponsePagination>($request);
  }

  @override
  Future<Response<NavigationModelResponseObject>> _v1NavigationsPost(
      {NavigationCreateRequestModel? body}) {
    final $url = '/v1/navigations';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<NavigationModelResponseObject,
        NavigationModelResponseObject>($request);
  }

  @override
  Future<Response<NavigationModelResponseObject>> _v1NavigationsIdGet(
      {required String? id}) {
    final $url = '/v1/navigations/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<NavigationModelResponseObject,
        NavigationModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1NavigationsIdPut(
      {required String? id, NavigationUpdateRequestModel? body}) {
    final $url = '/v1/navigations/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<ResponseDelete>> _v1NavigationsIdDelete(
      {required String? id}) {
    final $url = '/v1/navigations/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ResponseDelete, ResponseDelete>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1NavigationsCodeIsCodeExistGet(
      {required String? code, String? navigationId}) {
    final $url = '/v1/navigations/${code}/is-code-exist';
    final $params = <String, dynamic>{'navigationId': navigationId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>>
      _v1NavigationsUrlRewriteIsUrlRewriteExistGet(
          {required String? urlRewrite, String? navigationId}) {
    final $url = '/v1/navigations/${urlRewrite}/is-url-rewrite-exist';
    final $params = <String, dynamic>{'navigationId': navigationId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<NavigationModelResponseList>> _v1NavigationsCreateManyPost(
      {List<NavigationCreateRequestModel>? body}) {
    final $url = '/v1/navigations/create-many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<NavigationModelResponseList,
        NavigationModelResponseList>($request);
  }

  @override
  Future<Response<StringResponseList>> _v1NavigationsIdRightsGet(
      {required String? id}) {
    final $url = '/v1/navigations/${id}/rights';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<StringResponseList, StringResponseList>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1NavigationsIdRightsPost(
      {required String? id, List<String>? body}) {
    final $url = '/v1/navigations/${id}/rights';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1NavigationsIdRightsPut(
      {required String? id, List<String>? body}) {
    final $url = '/v1/navigations/${id}/rights';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<ResponseDelete>> _v1NavigationsBycodeCodeDelete(
      {required String? code}) {
    final $url = '/v1/navigations/bycode/${code}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ResponseDelete, ResponseDelete>($request);
  }

  @override
  Future<Response<ResponseDelete>> _v1NavigationsDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/navigations/delete-many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ResponseDelete, ResponseDelete>($request);
  }

  @override
  Future<Response<ResponseDelete>> _v1NavigationsDeleteManyBycodePost(
      {List<String>? body}) {
    final $url = '/v1/navigations/delete-many/bycode';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ResponseDelete, ResponseDelete>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1NavigationsCacheDelete() {
    final $url = '/v1/navigations/cache';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<RightMapRoleResponseModelResponseList>> _v1RightMapRoleGet() {
    final $url = '/v1/right-map-role';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RightMapRoleResponseModelResponseList,
        RightMapRoleResponseModelResponseList>($request);
  }

  @override
  Future<Response<RightMapRoleResponseModelResponseList>> _v1RightMapRolePost(
      {List<RightMapRoleRequestModel>? body}) {
    final $url = '/v1/right-map-role';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<RightMapRoleResponseModelResponseList,
        RightMapRoleResponseModelResponseList>($request);
  }

  @override
  Future<Response<RightMapRoleResponseModelResponseList>> _v1RightMapRolePut(
      {List<RightMapRoleRequestModel>? body}) {
    final $url = '/v1/right-map-role';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<RightMapRoleResponseModelResponseList,
        RightMapRoleResponseModelResponseList>($request);
  }

  @override
  Future<Response<RightMapRoleResponseModelResponseList>>
      _v1RightMapRoleDeleteManyPost({List<RightMapRoleRequestModel>? body}) {
    final $url = '/v1/right-map-role/delete-many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<RightMapRoleResponseModelResponseList,
        RightMapRoleResponseModelResponseList>($request);
  }

  @override
  Future<Response<RoleModelResponsePagination>> _v1RolesGet(
      {int? page, int? size, String? filter, String? sort}) {
    final $url = '/v1/roles';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'filter': filter,
      'sort': sort
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<RoleModelResponsePagination,
        RoleModelResponsePagination>($request);
  }

  @override
  Future<Response<RoleModelResponseObject>> _v1RolesPost(
      {RoleCreateModel? body}) {
    final $url = '/v1/roles';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<RoleModelResponseObject, RoleModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseDeleteMulti>> _v1RolesDelete({List<String>? body}) {
    final $url = '/v1/roles';
    final $body = body;
    final $request = Request('DELETE', $url, client.baseUrl, body: $body);
    return client.send<ResponseDeleteMulti, ResponseDeleteMulti>($request);
  }

  @override
  Future<Response<RoleModelResponseObject>> _v1RolesIdGet(
      {required String? id}) {
    final $url = '/v1/roles/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<RoleModelResponseObject, RoleModelResponseObject>($request);
  }

  @override
  Future<Response<RoleModelResponseObject>> _v1RolesIdPut(
      {required String? id, RoleUpdateModel? body}) {
    final $url = '/v1/roles/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client
        .send<RoleModelResponseObject, RoleModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseDelete>> _v1RolesIdDelete({required String? id}) {
    final $url = '/v1/roles/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ResponseDelete, ResponseDelete>($request);
  }

  @override
  Future<Response<RoleModelResponseList>> _v1RolesAllGet() {
    final $url = '/v1/roles/all';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RoleModelResponseList, RoleModelResponseList>($request);
  }

  @override
  Future<Response<RoleDetailModelListResponseObject>> _v1RolesIdDetailGet(
      {required String? id}) {
    final $url = '/v1/roles/${id}/detail';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RoleDetailModelListResponseObject,
        RoleDetailModelListResponseObject>($request);
  }

  @override
  Future<Response<BaseUserModelListResponseObject>> _v1RolesBycodeCodeGet(
      {required String? code}) {
    final $url = '/v1/roles/bycode/${code}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BaseUserModelListResponseObject,
        BaseUserModelListResponseObject>($request);
  }

  @override
  Future<Response<RoleDetailModelListResponseObject>>
      _v1RolesBycodeCodeDetailGet({required String? code}) {
    final $url = '/v1/roles/bycode/${code}/detail';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RoleDetailModelListResponseObject,
        RoleDetailModelListResponseObject>($request);
  }

  @override
  Future<Response<BaseUserModelListResponseObject>> _v1RolesBycodeCodeUsersGet(
      {required String? code}) {
    final $url = '/v1/roles/bycode/${code}/users';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BaseUserModelListResponseObject,
        BaseUserModelListResponseObject>($request);
  }

  @override
  Future<Response<SimpleRightModelListResponseObject>> _v1RolesIdRightsGet(
      {required String? id}) {
    final $url = '/v1/roles/${id}/rights';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SimpleRightModelListResponseObject,
        SimpleRightModelListResponseObject>($request);
  }

  @override
  Future<Response<RoleDetailModelResponseObject>> _v1RolesIdRightsPut(
      {required String? id, List<String>? body}) {
    final $url = '/v1/roles/${id}/rights';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<RoleDetailModelResponseObject,
        RoleDetailModelResponseObject>($request);
  }

  @override
  Future<Response<Response$>> _v1RolesRoleIdRightsPost(
      {required String? roleId, List<String>? body}) {
    final $url = '/v1/roles/${roleId}/rights';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<Response$, Response$>($request);
  }

  @override
  Future<Response<ResponseDelete>> _v1RolesRoleIdRightsDelete(
      {required String? roleId, List<String>? rightIds}) {
    final $url = '/v1/roles/${roleId}/rights';
    final $params = <String, dynamic>{'rightIds': rightIds};
    final $request =
        Request('DELETE', $url, client.baseUrl, parameters: $params);
    return client.send<ResponseDelete, ResponseDelete>($request);
  }

  @override
  Future<Response<UserBaseModelListResponseObject>> _v1RolesIdUsersGet(
      {required String? id}) {
    final $url = '/v1/roles/${id}/users';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<UserBaseModelListResponseObject,
        UserBaseModelListResponseObject>($request);
  }

  @override
  Future<Response<Response$>> _v1RolesIdUsersDelete(
      {required String? id, List<String>? body}) {
    final $url = '/v1/roles/${id}/users';
    final $body = body;
    final $request = Request('DELETE', $url, client.baseUrl, body: $body);
    return client.send<Response$, Response$>($request);
  }

  @override
  Future<Response<ResponseUpdateMulti>> _v1RolesRoleIdUsersPut(
      {required String? roleId, List<String>? body}) {
    final $url = '/v1/roles/${roleId}/users';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdateMulti, ResponseUpdateMulti>($request);
  }

  @override
  Future<Response<ResponseUpdateMulti>> _v1RolesRoleIdUsersPost(
      {required String? roleId, List<String>? body}) {
    final $url = '/v1/roles/${roleId}/users';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdateMulti, ResponseUpdateMulti>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1RolesRoleCodeIsAvailableGet(
      {required String? roleCode, String? roleId}) {
    final $url = '/v1/roles/${roleCode}/IsAvailable';
    final $params = <String, dynamic>{'roleId': roleId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1RolesCacheDelete() {
    final $url = '/v1/roles/cache';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<NavigationModelResponseList>> _v1RolesRoleIdNavigationsGet(
      {required String? roleId}) {
    final $url = '/v1/roles/${roleId}/navigations';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<NavigationModelResponseList,
        NavigationModelResponseList>($request);
  }

  @override
  Future<Response<RoleModelResponseList>> _v1NavigationsNavigationIdRolesGet(
      {required String? navigationId}) {
    final $url = '/v1/navigations/${navigationId}/roles';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RoleModelResponseList, RoleModelResponseList>($request);
  }

  @override
  Future<Response<RoleSimpleInfoResponseModelResponsePagination>>
      _v1RolesInfoGet(
          {String? name,
          String? code,
          int? page,
          int? size,
          String? filter,
          String? sort}) {
    final $url = '/v1/roles/info';
    final $params = <String, dynamic>{
      'name': name,
      'code': code,
      'page': page,
      'size': size,
      'filter': filter,
      'sort': sort
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<RoleSimpleInfoResponseModelResponsePagination,
        RoleSimpleInfoResponseModelResponsePagination>($request);
  }

  @override
  Future<Response<Response$>> _v1SeeddataRightsPost(
      {String? applicationId, String? module}) {
    final $url = '/v1/seeddata/rights';
    final $params = <String, dynamic>{
      'applicationId': applicationId,
      'module': module
    };
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<Response$, Response$>($request);
  }

  @override
  Future<Response<Response$>> _v1SeeddataRolesPost(
      {String? applicationId, String? module}) {
    final $url = '/v1/seeddata/roles';
    final $params = <String, dynamic>{
      'applicationId': applicationId,
      'module': module
    };
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<Response$, Response$>($request);
  }

  @override
  Future<Response<Response$>> _v1SeeddataNavigationsPost(
      {String? applicationId, String? module}) {
    final $url = '/v1/seeddata/navigations';
    final $params = <String, dynamic>{
      'applicationId': applicationId,
      'module': module
    };
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<Response$, Response$>($request);
  }

  @override
  Future<Response<Response$>> _v1SeeddataUsersPost({String? applicationId}) {
    final $url = '/v1/seeddata/users';
    final $params = <String, dynamic>{'applicationId': applicationId};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<Response$, Response$>($request);
  }

  @override
  Future<Response<ResponseUpdateMulti>> _v1SigningGet() {
    final $url = '/v1/signing';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ResponseUpdateMulti, ResponseUpdateMulti>($request);
  }

  @override
  Future<Response<dynamic>> _v1StatusEmailCheckPost() {
    final $url = '/v1/status/email/check';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ApplicationModelResponseObject>> _v1ApplicationsPost(
      {ApplicationCreateModel? body}) {
    final $url = '/v1/applications';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApplicationModelResponseObject,
        ApplicationModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseDelete>> _v1ApplicationsDelete({String? id}) {
    final $url = '/v1/applications';
    final $params = <String, dynamic>{'id': id};
    final $request =
        Request('DELETE', $url, client.baseUrl, parameters: $params);
    return client.send<ResponseDelete, ResponseDelete>($request);
  }

  @override
  Future<Response<ApplicationModelResponseList>> _v1ApplicationsGet(
      {int? page, int? size, String? sort, String? filter}) {
    final $url = '/v1/applications';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ApplicationModelResponseList,
        ApplicationModelResponseList>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1ApplicationsIdPut(
      {required String? id, ApplicationUpdateModel? body}) {
    final $url = '/v1/applications/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<ApplicationModelResponseObject>> _v1ApplicationsIdGet(
      {required String? id}) {
    final $url = '/v1/applications/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ApplicationModelResponseObject,
        ApplicationModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseDeleteMulti>> _v1ApplicationsDeleteManyPost(
      {List<String>? listId}) {
    final $url = '/v1/applications/delete-many';
    final $params = <String, dynamic>{'listId': listId};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<ResponseDeleteMulti, ResponseDeleteMulti>($request);
  }

  @override
  Future<Response<ApplicationModelResponsePagination>>
      _v1ApplicationsIdChildrenGet(
          {required String? id,
          int? page,
          int? size,
          String? filter,
          String? sort}) {
    final $url = '/v1/applications/${id}/children';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'filter': filter,
      'sort': sort
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ApplicationModelResponsePagination,
        ApplicationModelResponsePagination>($request);
  }

  @override
  Future<Response<ApplicationModelResponsePagination>> _v1ApplicationsFilterGet(
      {int? page, int? size, String? filter, String? sort}) {
    final $url = '/v1/applications/filter';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'filter': filter,
      'sort': sort
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ApplicationModelResponsePagination,
        ApplicationModelResponsePagination>($request);
  }

  @override
  Future<Response<ApplicationModelResponseList>>
      _v1ApplicationsCodeVerifyCodeGet({required String? code}) {
    final $url = '/v1/applications/${code}/verify-code';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ApplicationModelResponseList,
        ApplicationModelResponseList>($request);
  }

  @override
  Future<Response<ApplicationModelResponseList>> _v1ApplicationsIdVerifyCodeGet(
      {required String? id, required String? code}) {
    final $url = '/v1/applications/${id}/verify/${code}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ApplicationModelResponseList,
        ApplicationModelResponseList>($request);
  }

  @override
  Future<Response<UsersByApplicationResponseModelResponseList>>
      _v1UserAppGet() {
    final $url = '/v1/user-app';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<UsersByApplicationResponseModelResponseList,
        UsersByApplicationResponseModelResponseList>($request);
  }

  @override
  Future<Response<ApplicationModelResponseList>> _v1UsersUserIdApplicationsGet(
      {required String? userId}) {
    final $url = '/v1/users/${userId}/applications';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ApplicationModelResponseList,
        ApplicationModelResponseList>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1UsersUserIdApplicationsPut(
      {required String? userId, List<String>? body}) {
    final $url = '/v1/users/${userId}/applications';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<GuidListResponseObject>> _v1UsersUserIdApplicationsDelete(
      {required String? userId}) {
    final $url = '/v1/users/${userId}/applications';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client
        .send<GuidListResponseObject, GuidListResponseObject>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1ApplicationsAppIdUsersGet(
      {required String? appId}) {
    final $url = '/v1/applications/${appId}/users';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1ApplicationsAppIdUsersPut(
      {required String? appId, List<String>? body}) {
    final $url = '/v1/applications/${appId}/users';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<UsersByApplicationResponseModelResponseList>>
      _v1UserManageAppGet() {
    final $url = '/v1/user-manage-app';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<UsersByApplicationResponseModelResponseList,
        UsersByApplicationResponseModelResponseList>($request);
  }

  @override
  Future<Response<SystemApplicationResponseList>> _v1UserManageAppUserIdGet(
      {required String? userId}) {
    final $url = '/v1/user-manage-app/${userId}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SystemApplicationResponseList,
        SystemApplicationResponseList>($request);
  }

  @override
  Future<Response<SystemApplicationResponseList>> _v1UserManageAppUserIdPut(
      {required String? userId, List<String>? body}) {
    final $url = '/v1/user-manage-app/${userId}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<SystemApplicationResponseList,
        SystemApplicationResponseList>($request);
  }

  @override
  Future<Response<GuidListResponseObject>> _v1UserManageAppUserIdDelete(
      {required String? userId}) {
    final $url = '/v1/user-manage-app/${userId}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client
        .send<GuidListResponseObject, GuidListResponseObject>($request);
  }

  @override
  Future<Response<UserMapRoleResponseModelResponseList>> _v1UserMapRoleGet() {
    final $url = '/v1/user-map-role';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<UserMapRoleResponseModelResponseList,
        UserMapRoleResponseModelResponseList>($request);
  }

  @override
  Future<Response<UserMapRoleResponseModelResponseList>> _v1UserMapRolePost(
      {List<UserMapRoleRequestModel>? body}) {
    final $url = '/v1/user-map-role';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<UserMapRoleResponseModelResponseList,
        UserMapRoleResponseModelResponseList>($request);
  }

  @override
  Future<Response<UserMapRoleResponseModelResponseList>> _v1UserMapRolePut(
      {List<UserMapRoleRequestModel>? body}) {
    final $url = '/v1/user-map-role';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<UserMapRoleResponseModelResponseList,
        UserMapRoleResponseModelResponseList>($request);
  }

  @override
  Future<Response<UserMapRoleResponseModelResponseList>>
      _v1UserMapRoleDeleteManyPost({List<UserMapRoleRequestModel>? body}) {
    final $url = '/v1/user-map-role/delete-many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<UserMapRoleResponseModelResponseList,
        UserMapRoleResponseModelResponseList>($request);
  }

  @override
  Future<Response<RoleModelListResponseObject>> _v1UsersUserIdRolesGet(
      {required String? userId}) {
    final $url = '/v1/users/${userId}/roles';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RoleModelListResponseObject,
        RoleModelListResponseObject>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1UsersUserIdRolesPost(
      {required String? userId, List<String>? body}) {
    final $url = '/v1/users/${userId}/roles';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1UsersUserIdRolesPut(
      {required String? userId, List<String>? body}) {
    final $url = '/v1/users/${userId}/roles';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<RoleModelResponseList>>
      _v1UsersUserIdRolesIncludeByParentAppGet({required String? userId}) {
    final $url = '/v1/users/${userId}/roles/include-by-parent-app';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RoleModelResponseList, RoleModelResponseList>($request);
  }

  @override
  Future<Response<ResponseDeleteMulti>> _v1UsersUserIdRolesRoleIdDelete(
      {required String? userId, required String? roleId}) {
    final $url = '/v1/users/${userId}/roles/${roleId}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ResponseDeleteMulti, ResponseDeleteMulti>($request);
  }

  @override
  Future<Response<ResponseDeleteMulti>> _v1UsersUserIdRolesDeleteManyPost(
      {required String? userId, List<String>? body}) {
    final $url = '/v1/users/${userId}/roles/delete-many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ResponseDeleteMulti, ResponseDeleteMulti>($request);
  }

  @override
  Future<Response<RightModelListResponseObject>> _v1UsersUserIdRightsGet(
      {required String? userId}) {
    final $url = '/v1/users/${userId}/rights';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RightModelListResponseObject,
        RightModelListResponseObject>($request);
  }

  @override
  Future<Response<UserRoleDetailModelResponseObject>> _v1UsersUserIdDetailGet(
      {required String? userId}) {
    final $url = '/v1/users/${userId}/detail';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<UserRoleDetailModelResponseObject,
        UserRoleDetailModelResponseObject>($request);
  }

  @override
  Future<Response<UserSimpleInfoResponseModelResponsePagination>>
      _v1UsersInfoGet(
          {String? username,
          List<dynamic>? userTypes,
          int? page,
          int? size,
          String? filter,
          String? sort}) {
    final $url = '/v1/users/info';
    final $params = <String, dynamic>{
      'username': username,
      'userTypes': userTypes,
      'page': page,
      'size': size,
      'filter': filter,
      'sort': sort
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<UserSimpleInfoResponseModelResponsePagination,
        UserSimpleInfoResponseModelResponsePagination>($request);
  }

  @override
  Future<Response<UserSimpleInfoResponseModelResponseObject>> _v1UsersInfoIdGet(
      {required String? id}) {
    final $url = '/v1/users/info/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<UserSimpleInfoResponseModelResponseObject,
        UserSimpleInfoResponseModelResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1UsersInfoUsernameIsAvailableGet(
      {required String? username}) {
    final $url = '/v1/users/info/${username}/is-available';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1UsersInfoEmailEmailIsAvailableGet(
      {required String? email}) {
    final $url = '/v1/users/info/${email}/email-is-available';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<UserResponseModelResponsePagination>> _v1UsersGet(
      {List<dynamic>? userTypes,
      bool? isActive,
      int? page,
      int? size,
      String? filter,
      String? sort}) {
    final $url = '/v1/users';
    final $params = <String, dynamic>{
      'userTypes': userTypes,
      'isActive': isActive,
      'page': page,
      'size': size,
      'filter': filter,
      'sort': sort
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<UserResponseModelResponsePagination,
        UserResponseModelResponsePagination>($request);
  }

  @override
  Future<Response<BaseUserModelResponseObject>> _v1UsersPost(
      {bool? sendEmail, String? language, UserCreateModel? body}) {
    final $url = '/v1/users';
    final $params = <String, dynamic>{
      'sendEmail': sendEmail,
      'language': language
    };
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, parameters: $params);
    return client.send<BaseUserModelResponseObject,
        BaseUserModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseDeleteMulti>> _v1UsersDelete(
      {List<String>? listIds}) {
    final $url = '/v1/users';
    final $params = <String, dynamic>{'listIds': listIds};
    final $request =
        Request('DELETE', $url, client.baseUrl, parameters: $params);
    return client.send<ResponseDeleteMulti, ResponseDeleteMulti>($request);
  }

  @override
  Future<Response<UserResponseModelResponseList>> _v1UsersAllGet(
      {String? applicationId}) {
    final $url = '/v1/users/all';
    final $params = <String, dynamic>{'applicationId': applicationId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<UserResponseModelResponseList,
        UserResponseModelResponseList>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1UsersUserIdPasswordPut(
      {required String? userId, UserChangePasswordRequest? body}) {
    final $url = '/v1/users/${userId}/password';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1UsersUserIdPasswordPost(
      {required String? userId, String? language}) {
    final $url = '/v1/users/${userId}/password';
    final $params = <String, dynamic>{'language': language};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1UsersUserIdPasswordSendEmailRecoverPost(
      {required String? userId, String? language}) {
    final $url = '/v1/users/${userId}/password/send-email-recover';
    final $params = <String, dynamic>{'language': language};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1UsersUserIdPasswordSendEmailPost(
      {required String? userId, String? language}) {
    final $url = '/v1/users/${userId}/password/send-email';
    final $params = <String, dynamic>{'language': language};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1UsersUserIdChangepasswordPut(
      {required String? userId, String? oldPassword, String? password}) {
    final $url = '/v1/users/${userId}/changepassword';
    final $params = <String, dynamic>{
      'oldPassword': oldPassword,
      'password': password
    };
    final $request = Request('PUT', $url, client.baseUrl, parameters: $params);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1UsersIdPut(
      {required String? id, UserUpdateRequestModel? body}) {
    final $url = '/v1/users/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1UsersIdPatch(
      {required String? id, UserPatchUpdateRequestModel? body}) {
    final $url = '/v1/users/${id}';
    final $body = body;
    final $request = Request('PATCH', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<ResponseDelete>> _v1UsersIdDelete({required String? id}) {
    final $url = '/v1/users/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ResponseDelete, ResponseDelete>($request);
  }

  @override
  Future<Response<UserPasswordModelResponseObject>> _v1UsersIdGet(
      {required String? id}) {
    final $url = '/v1/users/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<UserPasswordModelResponseObject,
        UserPasswordModelResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1UsersUsernameIsAvailableGet(
      {required String? username, String? userId}) {
    final $url = '/v1/users/${username}/IsAvailable';
    final $params = <String, dynamic>{'userId': userId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1UsersEmailEmailIsAvailableGet(
      {required String? email, String? userId}) {
    final $url = '/v1/users/${email}/EmailIsAvailable';
    final $params = <String, dynamic>{'userId': userId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<UserPasswordModelListResponseObject>> _v1UsersAlluserGet() {
    final $url = '/v1/users/alluser';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<UserPasswordModelListResponseObject,
        UserPasswordModelListResponseObject>($request);
  }

  @override
  Future<Response<UserPasswordModelListResponseObject>>
      _v1UsersAlluserIncludeParentApplicationGet() {
    final $url = '/v1/users/alluser-include-parent-application';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<UserPasswordModelListResponseObject,
        UserPasswordModelListResponseObject>($request);
  }

  @override
  Future<Response<UserPasswordModelListResponseObject>> _v1UsersByidIdGet(
      {required String? id}) {
    final $url = '/v1/users/byid/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<UserPasswordModelListResponseObject,
        UserPasswordModelListResponseObject>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1UsersIdLockPut(
      {required String? id, bool? body}) {
    final $url = '/v1/users/${id}/lock';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<ResponseUpdate>> _v1UsersIdForcePasswordChangePut(
      {required String? id, bool? body}) {
    final $url = '/v1/users/${id}/force-password-change';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ResponseUpdate, ResponseUpdate>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1UsersCacheDelete() {
    final $url = '/v1/users/cache';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<NavigationModelIListResponseObject>>
      _v1UsersUserIdNavigationsGet({required String? userId}) {
    final $url = '/v1/users/${userId}/navigations';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<NavigationModelIListResponseObject,
        NavigationModelIListResponseObject>($request);
  }

  @override
  Future<Response<BaseUserModelResponseList>>
      _v1NavigationsNavigationIdUsersGet({required String? navigationId}) {
    final $url = '/v1/navigations/${navigationId}/users';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<BaseUserModelResponseList, BaseUserModelResponseList>($request);
  }
}
