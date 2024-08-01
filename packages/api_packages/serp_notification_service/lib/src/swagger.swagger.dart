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

  ///Gets notification by owner.
  ///@param modules The list of modules.
  ///@param pageSize The page size.
  ///@param currentPage The current page.
  ///@param filter The filter.
  Future<chopper.Response<NotificationEntityResponsePagination>>
      v1NotificationsGet(
          {List<String>? modules,
          int? pageSize,
          int? currentPage,
          String? filter}) {
    generatedMapping.putIfAbsent(NotificationEntityResponsePagination,
        () => NotificationEntityResponsePagination.fromJsonFactory);

    return _v1NotificationsGet(
        modules: modules,
        pageSize: pageSize,
        currentPage: currentPage,
        filter: filter);
  }

  ///Gets notification by owner.
  ///@param modules The list of modules.
  ///@param pageSize The page size.
  ///@param currentPage The current page.
  ///@param filter The filter.
  @Get(path: '/v1/notifications')
  Future<chopper.Response<NotificationEntityResponsePagination>>
      _v1NotificationsGet(
          {@Query('modules') List<String>? modules,
          @Query('pageSize') int? pageSize,
          @Query('currentPage') int? currentPage,
          @Query('filter') String? filter});

  ///Saves a notification.
  ///@param body The notification request model.
  Future<chopper.Response<NotificationEntityResponseObject>>
      v1NotificationsPost({NotificationRequestModel? body}) {
    generatedMapping.putIfAbsent(NotificationRequestModel,
        () => NotificationRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(NotificationEntityResponseObject,
        () => NotificationEntityResponseObject.fromJsonFactory);

    return _v1NotificationsPost(body: body);
  }

  ///Saves a notification.
  ///@param body The notification request model.
  @Post(path: '/v1/notifications')
  Future<chopper.Response<NotificationEntityResponseObject>>
      _v1NotificationsPost({@Body() NotificationRequestModel? body});

  ///Gets notification by owner.
  ///@param modules
  Future<chopper.Response<Int64ResponseObject>> v1NotificationsUnreadCountGet(
      {List<String>? modules}) {
    generatedMapping.putIfAbsent(
        Int64ResponseObject, () => Int64ResponseObject.fromJsonFactory);

    return _v1NotificationsUnreadCountGet(modules: modules);
  }

  ///Gets notification by owner.
  ///@param modules
  @Get(path: '/v1/notifications/unread/count')
  Future<chopper.Response<Int64ResponseObject>> _v1NotificationsUnreadCountGet(
      {@Query('modules') List<String>? modules});

  ///Gets notification by owner.
  ///@param parentId The parent id.
  ///@param pageSize The page size.
  ///@param currentPage The current page.
  ///@param filter The filter.
  ///@param parentId
  Future<chopper.Response<NotificationEntityResponsePagination>>
      v1NotificationsParentParentIdGet(
          {String? parentId,
          int? pageSize,
          int? currentPage,
          String? filter,
          required String? parentId$}) {
    generatedMapping.putIfAbsent(NotificationEntityResponsePagination,
        () => NotificationEntityResponsePagination.fromJsonFactory);

    return _v1NotificationsParentParentIdGet(
        parentId: parentId,
        pageSize: pageSize,
        currentPage: currentPage,
        filter: filter,
        parentId$: parentId$);
  }

  ///Gets notification by owner.
  ///@param parentId The parent id.
  ///@param pageSize The page size.
  ///@param currentPage The current page.
  ///@param filter The filter.
  ///@param parentId
  @Get(path: '/v1/notifications/parent/{parentId}')
  Future<chopper.Response<NotificationEntityResponsePagination>>
      _v1NotificationsParentParentIdGet(
          {@Query('parentId') String? parentId,
          @Query('pageSize') int? pageSize,
          @Query('currentPage') int? currentPage,
          @Query('filter') String? filter,
          @Path('parentId') required String? parentId$});

  ///Gets notification by owner.
  ///@param ownerId The owner id.
  ///@param pageSize The page size.
  ///@param currentPage The current page.
  ///@param filter The filter.
  Future<chopper.Response<NotificationEntityResponsePagination>>
      v1NotificationsOwnerOwnerIdGet(
          {required String? ownerId,
          int? pageSize,
          int? currentPage,
          String? filter}) {
    generatedMapping.putIfAbsent(NotificationEntityResponsePagination,
        () => NotificationEntityResponsePagination.fromJsonFactory);

    return _v1NotificationsOwnerOwnerIdGet(
        ownerId: ownerId,
        pageSize: pageSize,
        currentPage: currentPage,
        filter: filter);
  }

  ///Gets notification by owner.
  ///@param ownerId The owner id.
  ///@param pageSize The page size.
  ///@param currentPage The current page.
  ///@param filter The filter.
  @Get(path: '/v1/notifications/owner/{ownerId}')
  Future<chopper.Response<NotificationEntityResponsePagination>>
      _v1NotificationsOwnerOwnerIdGet(
          {@Path('ownerId') required String? ownerId,
          @Query('pageSize') int? pageSize,
          @Query('currentPage') int? currentPage,
          @Query('filter') String? filter});

  ///Filters the notification.
  ///@param pageSize The page size.
  ///@param currentPage The current page.
  ///@param filter The filter.
  Future<chopper.Response<NotificationEntityResponsePagination>>
      v1NotificationsFilterGet(
          {int? pageSize, int? currentPage, String? filter}) {
    generatedMapping.putIfAbsent(NotificationEntityResponsePagination,
        () => NotificationEntityResponsePagination.fromJsonFactory);

    return _v1NotificationsFilterGet(
        pageSize: pageSize, currentPage: currentPage, filter: filter);
  }

  ///Filters the notification.
  ///@param pageSize The page size.
  ///@param currentPage The current page.
  ///@param filter The filter.
  @Get(path: '/v1/notifications/filter')
  Future<chopper.Response<NotificationEntityResponsePagination>>
      _v1NotificationsFilterGet(
          {@Query('pageSize') int? pageSize,
          @Query('currentPage') int? currentPage,
          @Query('filter') String? filter});

  ///Filters the notification.
  ///@param pageSize The page size.
  ///@param currentPage The current page.
  ///@param body The filter.
  Future<chopper.Response<NotificationEntityResponsePagination>>
      v1NotificationsFilterPost(
          {int? pageSize, int? currentPage, NotificationQueryModel? body}) {
    generatedMapping.putIfAbsent(
        NotificationQueryModel, () => NotificationQueryModel.fromJsonFactory);
    generatedMapping.putIfAbsent(NotificationEntityResponsePagination,
        () => NotificationEntityResponsePagination.fromJsonFactory);

    return _v1NotificationsFilterPost(
        pageSize: pageSize, currentPage: currentPage, body: body);
  }

  ///Filters the notification.
  ///@param pageSize The page size.
  ///@param currentPage The current page.
  ///@param body The filter.
  @Post(path: '/v1/notifications/filter')
  Future<chopper.Response<NotificationEntityResponsePagination>>
      _v1NotificationsFilterPost(
          {@Query('pageSize') int? pageSize,
          @Query('currentPage') int? currentPage,
          @Body() NotificationQueryModel? body});

  ///Saves a notification.
  ///@param body The list of notification request models.
  Future<chopper.Response<NotificationEntityResponseList>>
      v1NotificationsManyUsersPost({NotificationsRequestModel? body}) {
    generatedMapping.putIfAbsent(NotificationsRequestModel,
        () => NotificationsRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(NotificationEntityResponseList,
        () => NotificationEntityResponseList.fromJsonFactory);

    return _v1NotificationsManyUsersPost(body: body);
  }

  ///Saves a notification.
  ///@param body The list of notification request models.
  @Post(path: '/v1/notifications/many-users')
  Future<chopper.Response<NotificationEntityResponseList>>
      _v1NotificationsManyUsersPost({@Body() NotificationsRequestModel? body});

  ///Patch update a notification.
  ///@param id The notification id.
  ///@param body The notification patch update request model.
  Future<chopper.Response<NotificationEntityResponseObject>>
      v1NotificationsIdPatch(
          {required String? id, NotificationPatchUpdateRequestModel? body}) {
    generatedMapping.putIfAbsent(NotificationPatchUpdateRequestModel,
        () => NotificationPatchUpdateRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(NotificationEntityResponseObject,
        () => NotificationEntityResponseObject.fromJsonFactory);

    return _v1NotificationsIdPatch(id: id, body: body);
  }

  ///Patch update a notification.
  ///@param id The notification id.
  ///@param body The notification patch update request model.
  @Patch(path: '/v1/notifications/{id}')
  Future<chopper.Response<NotificationEntityResponseObject>>
      _v1NotificationsIdPatch(
          {@Path('id') required String? id,
          @Body() NotificationPatchUpdateRequestModel? body});

  ///Patch update a notification.
  ///@param id The notification id.
  ///@param body The notification patch update request models.
  Future<chopper.Response<NotificationEntityResponseList>>
      v1NotificationsManyPatch(
          {String? id, List<NotificationPatchUpdateRequestModel>? body}) {
    generatedMapping.putIfAbsent(NotificationEntityResponseList,
        () => NotificationEntityResponseList.fromJsonFactory);

    return _v1NotificationsManyPatch(id: id, body: body);
  }

  ///Patch update a notification.
  ///@param id The notification id.
  ///@param body The notification patch update request models.
  @Patch(path: '/v1/notifications/many')
  Future<chopper.Response<NotificationEntityResponseList>>
      _v1NotificationsManyPatch(
          {@Query('id') String? id,
          @Body() List<NotificationPatchUpdateRequestModel>? body});
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
