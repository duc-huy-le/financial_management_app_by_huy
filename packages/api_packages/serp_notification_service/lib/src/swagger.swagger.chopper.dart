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
  Future<Response<NotificationEntityResponsePagination>> _v1NotificationsGet(
      {List<String>? modules,
      int? pageSize,
      int? currentPage,
      String? filter}) {
    final $url = '/v1/notifications';
    final $params = <String, dynamic>{
      'modules': modules,
      'pageSize': pageSize,
      'currentPage': currentPage,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<NotificationEntityResponsePagination,
        NotificationEntityResponsePagination>($request);
  }

  @override
  Future<Response<NotificationEntityResponseObject>> _v1NotificationsPost(
      {NotificationRequestModel? body}) {
    final $url = '/v1/notifications';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<NotificationEntityResponseObject,
        NotificationEntityResponseObject>($request);
  }

  @override
  Future<Response<Int64ResponseObject>> _v1NotificationsUnreadCountGet(
      {List<String>? modules}) {
    final $url = '/v1/notifications/unread/count';
    final $params = <String, dynamic>{'modules': modules};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<Int64ResponseObject, Int64ResponseObject>($request);
  }

  @override
  Future<Response<NotificationEntityResponsePagination>>
      _v1NotificationsParentParentIdGet(
          {String? parentId,
          int? pageSize,
          int? currentPage,
          String? filter,
          required String? parentId$}) {
    final $url = '/v1/notifications/parent/${parentId$}';
    final $params = <String, dynamic>{
      'parentId': parentId,
      'pageSize': pageSize,
      'currentPage': currentPage,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<NotificationEntityResponsePagination,
        NotificationEntityResponsePagination>($request);
  }

  @override
  Future<Response<NotificationEntityResponsePagination>>
      _v1NotificationsOwnerOwnerIdGet(
          {required String? ownerId,
          int? pageSize,
          int? currentPage,
          String? filter}) {
    final $url = '/v1/notifications/owner/${ownerId}';
    final $params = <String, dynamic>{
      'pageSize': pageSize,
      'currentPage': currentPage,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<NotificationEntityResponsePagination,
        NotificationEntityResponsePagination>($request);
  }

  @override
  Future<Response<NotificationEntityResponsePagination>>
      _v1NotificationsFilterGet(
          {int? pageSize, int? currentPage, String? filter}) {
    final $url = '/v1/notifications/filter';
    final $params = <String, dynamic>{
      'pageSize': pageSize,
      'currentPage': currentPage,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<NotificationEntityResponsePagination,
        NotificationEntityResponsePagination>($request);
  }

  @override
  Future<Response<NotificationEntityResponsePagination>>
      _v1NotificationsFilterPost(
          {int? pageSize, int? currentPage, NotificationQueryModel? body}) {
    final $url = '/v1/notifications/filter';
    final $params = <String, dynamic>{
      'pageSize': pageSize,
      'currentPage': currentPage
    };
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, parameters: $params);
    return client.send<NotificationEntityResponsePagination,
        NotificationEntityResponsePagination>($request);
  }

  @override
  Future<Response<NotificationEntityResponseList>>
      _v1NotificationsManyUsersPost({NotificationsRequestModel? body}) {
    final $url = '/v1/notifications/many-users';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<NotificationEntityResponseList,
        NotificationEntityResponseList>($request);
  }

  @override
  Future<Response<NotificationEntityResponseObject>> _v1NotificationsIdPatch(
      {required String? id, NotificationPatchUpdateRequestModel? body}) {
    final $url = '/v1/notifications/${id}';
    final $body = body;
    final $request = Request('PATCH', $url, client.baseUrl, body: $body);
    return client.send<NotificationEntityResponseObject,
        NotificationEntityResponseObject>($request);
  }

  @override
  Future<Response<NotificationEntityResponseList>> _v1NotificationsManyPatch(
      {String? id, List<NotificationPatchUpdateRequestModel>? body}) {
    final $url = '/v1/notifications/many';
    final $params = <String, dynamic>{'id': id};
    final $body = body;
    final $request = Request('PATCH', $url, client.baseUrl,
        body: $body, parameters: $params);
    return client.send<NotificationEntityResponseList,
        NotificationEntityResponseList>($request);
  }
}
