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
  ///@param type
  ///@param parentId
  ///@param parentAppId
  ///@param recursive
  ///@param statusObj
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  Future<chopper.Response<BaseCategoryViewModelResponsePagination>>
      v1CategoryGet(
          {String? type,
          String? parentId,
          String? parentAppId,
          bool? recursive,
          Object? statusObj,
          int? page,
          int? size,
          String? sort,
          String? filter}) {
    generatedMapping.putIfAbsent(BaseCategoryViewModelResponsePagination,
        () => BaseCategoryViewModelResponsePagination.fromJsonFactory);

    return _v1CategoryGet(
        type: type,
        parentId: parentId,
        parentAppId: parentAppId,
        recursive: recursive,
        statusObj: statusObj,
        page: page,
        size: size,
        sort: sort,
        filter: filter);
  }

  ///
  ///@param type
  ///@param parentId
  ///@param parentAppId
  ///@param recursive
  ///@param statusObj
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  @Get(path: '/v1/category')
  Future<chopper.Response<BaseCategoryViewModelResponsePagination>>
      _v1CategoryGet(
          {@Query('type') String? type,
          @Query('parentId') String? parentId,
          @Query('parentAppId') String? parentAppId,
          @Query('recursive') bool? recursive,
          @Query('statusObj') Object? statusObj,
          @Query('page') int? page,
          @Query('size') int? size,
          @Query('sort') String? sort,
          @Query('filter') String? filter});

  ///
  ///@param type
  ///@param parentId
  ///@param parentAppId
  ///@param recursive
  ///@param statusObj
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  Future<chopper.Response<BaseCategoryViewModelResponsePagination>>
      v1CategoryTypeGet(
          {required String? type,
          String? parentId,
          String? parentAppId,
          bool? recursive,
          Object? statusObj,
          int? page,
          int? size,
          String? sort,
          String? filter}) {
    generatedMapping.putIfAbsent(BaseCategoryViewModelResponsePagination,
        () => BaseCategoryViewModelResponsePagination.fromJsonFactory);

    return _v1CategoryTypeGet(
        type: type,
        parentId: parentId,
        parentAppId: parentAppId,
        recursive: recursive,
        statusObj: statusObj,
        page: page,
        size: size,
        sort: sort,
        filter: filter);
  }

  ///
  ///@param type
  ///@param parentId
  ///@param parentAppId
  ///@param recursive
  ///@param statusObj
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  @Get(path: '/v1/category/{type}')
  Future<chopper.Response<BaseCategoryViewModelResponsePagination>>
      _v1CategoryTypeGet(
          {@Path('type') required String? type,
          @Query('parentId') String? parentId,
          @Query('parentAppId') String? parentAppId,
          @Query('recursive') bool? recursive,
          @Query('statusObj') Object? statusObj,
          @Query('page') int? page,
          @Query('size') int? size,
          @Query('sort') String? sort,
          @Query('filter') String? filter});

  ///
  ///@param type
  ///@param body
  Future<chopper.Response<BaseCategoryResponseObject>> v1CategoryTypePost(
      {required String? type, CategoryRequestModel? body}) {
    generatedMapping.putIfAbsent(
        CategoryRequestModel, () => CategoryRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(BaseCategoryResponseObject,
        () => BaseCategoryResponseObject.fromJsonFactory);

    return _v1CategoryTypePost(type: type, body: body);
  }

  ///
  ///@param type
  ///@param body
  @Post(path: '/v1/category/{type}')
  Future<chopper.Response<BaseCategoryResponseObject>> _v1CategoryTypePost(
      {@Path('type') required String? type,
      @Body() CategoryRequestModel? body});

  ///
  ///@param type
  Future<chopper.Response<BaseCategoryResponsePagination>>
      v1CategoryTypeTreeGet({required String? type}) {
    generatedMapping.putIfAbsent(BaseCategoryResponsePagination,
        () => BaseCategoryResponsePagination.fromJsonFactory);

    return _v1CategoryTypeTreeGet(type: type);
  }

  ///
  ///@param type
  @Get(path: '/v1/category/{type}/tree')
  Future<chopper.Response<BaseCategoryResponsePagination>>
      _v1CategoryTypeTreeGet({@Path('type') required String? type});

  ///
  ///@param type
  ///@param id
  Future<chopper.Response<BaseCategoryResponseObject>> v1CategoryTypeIdGet(
      {required String? type, required String? id}) {
    generatedMapping.putIfAbsent(BaseCategoryResponseObject,
        () => BaseCategoryResponseObject.fromJsonFactory);

    return _v1CategoryTypeIdGet(type: type, id: id);
  }

  ///
  ///@param type
  ///@param id
  @Get(path: '/v1/category/{type}/{id}')
  Future<chopper.Response<BaseCategoryResponseObject>> _v1CategoryTypeIdGet(
      {@Path('type') required String? type, @Path('id') required String? id});

  ///
  ///@param type
  ///@param id
  ///@param body
  Future<chopper.Response<BaseCategoryViewModelResponseObject>>
      v1CategoryTypeIdPut(
          {required String? type,
          required String? id,
          CategoryRequestModel? body}) {
    generatedMapping.putIfAbsent(
        CategoryRequestModel, () => CategoryRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(BaseCategoryViewModelResponseObject,
        () => BaseCategoryViewModelResponseObject.fromJsonFactory);

    return _v1CategoryTypeIdPut(type: type, id: id, body: body);
  }

  ///
  ///@param type
  ///@param id
  ///@param body
  @Put(path: '/v1/category/{type}/{id}')
  Future<chopper.Response<BaseCategoryViewModelResponseObject>>
      _v1CategoryTypeIdPut(
          {@Path('type') required String? type,
          @Path('id') required String? id,
          @Body() CategoryRequestModel? body});

  ///
  ///@param id
  ///@param type
  ///@param body
  Future<chopper.Response<BaseCategoryResponseObject>> v1CategoryTypeIdPatch(
      {required String? id,
      required String? type,
      CategoryPatchRequestModel? body}) {
    generatedMapping.putIfAbsent(CategoryPatchRequestModel,
        () => CategoryPatchRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(BaseCategoryResponseObject,
        () => BaseCategoryResponseObject.fromJsonFactory);

    return _v1CategoryTypeIdPatch(id: id, type: type, body: body);
  }

  ///
  ///@param id
  ///@param type
  ///@param body
  @Patch(path: '/v1/category/{type}/{id}')
  Future<chopper.Response<BaseCategoryResponseObject>> _v1CategoryTypeIdPatch(
      {@Path('id') required String? id,
      @Path('type') required String? type,
      @Body() CategoryPatchRequestModel? body});

  ///
  ///@param type
  ///@param id
  Future<chopper.Response<ResponseDelete>> v1CategoryTypeIdDelete(
      {required String? type, required String? id}) {
    generatedMapping.putIfAbsent(
        ResponseDelete, () => ResponseDelete.fromJsonFactory);

    return _v1CategoryTypeIdDelete(type: type, id: id);
  }

  ///
  ///@param type
  ///@param id
  @Delete(path: '/v1/category/{type}/{id}')
  Future<chopper.Response<ResponseDelete>> _v1CategoryTypeIdDelete(
      {@Path('type') required String? type, @Path('id') required String? id});

  ///
  ///@param type
  ///@param body
  Future<chopper.Response<BaseCategoryViewModelResponseObject>>
      v1CategoryTypeReorderPut(
          {required String? type, List<CategoryOrderModel>? body}) {
    generatedMapping.putIfAbsent(BaseCategoryViewModelResponseObject,
        () => BaseCategoryViewModelResponseObject.fromJsonFactory);

    return _v1CategoryTypeReorderPut(type: type, body: body);
  }

  ///
  ///@param type
  ///@param body
  @Put(path: '/v1/category/{type}/reorder')
  Future<chopper.Response<BaseCategoryViewModelResponseObject>>
      _v1CategoryTypeReorderPut(
          {@Path('type') required String? type,
          @Body() List<CategoryOrderModel>? body});

  ///
  ///@param type
  ///@param body
  Future<chopper.Response<ResponseDeleteMulti>> v1CategoryTypeDeleteManyPost(
      {required String? type, List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseDeleteMulti, () => ResponseDeleteMulti.fromJsonFactory);

    return _v1CategoryTypeDeleteManyPost(type: type, body: body);
  }

  ///
  ///@param type
  ///@param body
  @Post(path: '/v1/category/{type}/delete/many')
  Future<chopper.Response<ResponseDeleteMulti>> _v1CategoryTypeDeleteManyPost(
      {@Path('type') required String? type, @Body() List<String>? body});

  ///
  ///@param type
  ///@param alias
  Future<chopper.Response<BooleanResponseObject>>
      v1CategoryTypeAliasIsAvailableGet(
          {required String? type, required String? alias}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1CategoryTypeAliasIsAvailableGet(type: type, alias: alias);
  }

  ///
  ///@param type
  ///@param alias
  @Get(path: '/v1/category/{type}/{alias}/is-available')
  Future<chopper.Response<BooleanResponseObject>>
      _v1CategoryTypeAliasIsAvailableGet(
          {@Path('type') required String? type,
          @Path('alias') required String? alias});

  ///
  ///@param File
  ///@param Type
  Future<chopper.Response> v1CategoryDownloadValidateFilePost(
      {List<String>? file, String? type}) {
    return _v1CategoryDownloadValidateFilePost(file: file, type: type);
  }

  ///
  ///@param File
  ///@param Type
  @Post(path: '/v1/category/download-validate-file', optionalBody: true)
  Future<chopper.Response> _v1CategoryDownloadValidateFilePost(
      {@Field('File') List<String>? file, @Field('Type') String? type});

  ///
  ///@param File
  ///@param Type
  Future<chopper.Response> v1CategoryValidateExcelPost(
      {List<String>? file, String? type}) {
    return _v1CategoryValidateExcelPost(file: file, type: type);
  }

  ///
  ///@param File
  ///@param Type
  @Post(path: '/v1/category/validate-excel', optionalBody: true)
  Future<chopper.Response> _v1CategoryValidateExcelPost(
      {@Field('File') List<String>? file, @Field('Type') String? type});

  ///
  ///@param File
  ///@param Type
  Future<chopper.Response> v1CategoryImportFilePost(
      {List<String>? file, String? type}) {
    return _v1CategoryImportFilePost(file: file, type: type);
  }

  ///
  ///@param File
  ///@param Type
  @Post(path: '/v1/category/import-file', optionalBody: true)
  Future<chopper.Response> _v1CategoryImportFilePost(
      {@Field('File') List<String>? file, @Field('Type') String? type});

  ///
  ///@param attendeeId
  ///@param year
  ///@param month
  ///@param start
  ///@param end
  Future<chopper.Response<EventResponseModelListResponseObject>>
      v1CalendarEventsAttendeeAttendeeIdGet(
          {required String? attendeeId,
          int? year,
          int? month,
          String? start,
          String? end}) {
    generatedMapping.putIfAbsent(EventResponseModelListResponseObject,
        () => EventResponseModelListResponseObject.fromJsonFactory);

    return _v1CalendarEventsAttendeeAttendeeIdGet(
        attendeeId: attendeeId,
        year: year,
        month: month,
        start: start,
        end: end);
  }

  ///
  ///@param attendeeId
  ///@param year
  ///@param month
  ///@param start
  ///@param end
  @Get(path: '/v1/calendar/events/attendee/{attendeeId}')
  Future<chopper.Response<EventResponseModelListResponseObject>>
      _v1CalendarEventsAttendeeAttendeeIdGet(
          {@Path('attendeeId') required String? attendeeId,
          @Query('year') int? year,
          @Query('month') int? month,
          @Query('start') String? start,
          @Query('end') String? end});

  ///
  ///@param id
  Future<chopper.Response<EventResponseModelResponseObject>>
      v1CalendarEventsIdGet({required String? id}) {
    generatedMapping.putIfAbsent(EventResponseModelResponseObject,
        () => EventResponseModelResponseObject.fromJsonFactory);

    return _v1CalendarEventsIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/calendar/events/{id}')
  Future<chopper.Response<EventResponseModelResponseObject>>
      _v1CalendarEventsIdGet({@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<EventResponseModelResponseObject>>
      v1CalendarEventsIdPut({required String? id, EventResquestModel? body}) {
    generatedMapping.putIfAbsent(
        EventResquestModel, () => EventResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(EventResponseModelResponseObject,
        () => EventResponseModelResponseObject.fromJsonFactory);

    return _v1CalendarEventsIdPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/calendar/events/{id}')
  Future<chopper.Response<EventResponseModelResponseObject>>
      _v1CalendarEventsIdPut(
          {@Path('id') required String? id, @Body() EventResquestModel? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<EventResponseModelResponseObject>>
      v1CalendarEventsIdDelete({required String? id, String? body}) {
    generatedMapping.putIfAbsent(EventResponseModelResponseObject,
        () => EventResponseModelResponseObject.fromJsonFactory);

    return _v1CalendarEventsIdDelete(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Delete(path: '/v1/calendar/events/{id}')
  Future<chopper.Response<EventResponseModelResponseObject>>
      _v1CalendarEventsIdDelete(
          {@Path('id') required String? id, @Body() String? body});

  ///
  ///@param year
  ///@param month
  ///@param start
  ///@param end
  Future<chopper.Response<EventResponseModelListResponseObject>>
      v1CalendarEventsGetallGet(
          {int? year, int? month, String? start, String? end}) {
    generatedMapping.putIfAbsent(EventResponseModelListResponseObject,
        () => EventResponseModelListResponseObject.fromJsonFactory);

    return _v1CalendarEventsGetallGet(
        year: year, month: month, start: start, end: end);
  }

  ///
  ///@param year
  ///@param month
  ///@param start
  ///@param end
  @Get(path: '/v1/calendar/events/getall')
  Future<chopper.Response<EventResponseModelListResponseObject>>
      _v1CalendarEventsGetallGet(
          {@Query('year') int? year,
          @Query('month') int? month,
          @Query('start') String? start,
          @Query('end') String? end});

  ///
  ///@param ownerId
  ///@param year
  ///@param month
  ///@param start
  ///@param end
  Future<chopper.Response<EventResponseModelListResponseObject>>
      v1CalendarEventsOwnerOwnerIdGet(
          {required String? ownerId,
          int? year,
          int? month,
          String? start,
          String? end}) {
    generatedMapping.putIfAbsent(EventResponseModelListResponseObject,
        () => EventResponseModelListResponseObject.fromJsonFactory);

    return _v1CalendarEventsOwnerOwnerIdGet(
        ownerId: ownerId, year: year, month: month, start: start, end: end);
  }

  ///
  ///@param ownerId
  ///@param year
  ///@param month
  ///@param start
  ///@param end
  @Get(path: '/v1/calendar/events/owner/{ownerId}')
  Future<chopper.Response<EventResponseModelListResponseObject>>
      _v1CalendarEventsOwnerOwnerIdGet(
          {@Path('ownerId') required String? ownerId,
          @Query('year') int? year,
          @Query('month') int? month,
          @Query('start') String? start,
          @Query('end') String? end});

  ///
  ///@param year
  ///@param month
  ///@param start
  ///@param end
  Future<chopper.Response<EventResponseModelListResponseObject>>
      v1CalendarEventsGet({int? year, int? month, String? start, String? end}) {
    generatedMapping.putIfAbsent(EventResponseModelListResponseObject,
        () => EventResponseModelListResponseObject.fromJsonFactory);

    return _v1CalendarEventsGet(
        year: year, month: month, start: start, end: end);
  }

  ///
  ///@param year
  ///@param month
  ///@param start
  ///@param end
  @Get(path: '/v1/calendar/events')
  Future<chopper.Response<EventResponseModelListResponseObject>>
      _v1CalendarEventsGet(
          {@Query('year') int? year,
          @Query('month') int? month,
          @Query('start') String? start,
          @Query('end') String? end});

  ///
  ///@param body
  Future<chopper.Response<EventResponseModelResponseObject>>
      v1CalendarEventsPost({EventResquestModel? body}) {
    generatedMapping.putIfAbsent(
        EventResquestModel, () => EventResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(EventResponseModelResponseObject,
        () => EventResponseModelResponseObject.fromJsonFactory);

    return _v1CalendarEventsPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/calendar/events')
  Future<chopper.Response<EventResponseModelResponseObject>>
      _v1CalendarEventsPost({@Body() EventResquestModel? body});

  ///
  ///@param year
  ///@param month
  ///@param start
  ///@param end
  ///@param body
  Future<chopper.Response<EventResponseModelListResponseObject>>
      v1CalendarEventsUsersPost(
          {int? year,
          int? month,
          String? start,
          String? end,
          ListOfUserRequestModel? body}) {
    generatedMapping.putIfAbsent(
        ListOfUserRequestModel, () => ListOfUserRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(EventResponseModelListResponseObject,
        () => EventResponseModelListResponseObject.fromJsonFactory);

    return _v1CalendarEventsUsersPost(
        year: year, month: month, start: start, end: end, body: body);
  }

  ///
  ///@param year
  ///@param month
  ///@param start
  ///@param end
  ///@param body
  @Post(path: '/v1/calendar/events/users')
  Future<chopper.Response<EventResponseModelListResponseObject>>
      _v1CalendarEventsUsersPost(
          {@Query('year') int? year,
          @Query('month') int? month,
          @Query('start') String? start,
          @Query('end') String? end,
          @Body() ListOfUserRequestModel? body});

  ///
  ///@param id
  ///@param start
  ///@param end
  ///@param body
  Future<chopper.Response<GuidListResponseObject>> v1CalendarBusyusersIdPost(
      {required String? id,
      String? start,
      String? end,
      ListOfUserRequestModel? body}) {
    generatedMapping.putIfAbsent(
        ListOfUserRequestModel, () => ListOfUserRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        GuidListResponseObject, () => GuidListResponseObject.fromJsonFactory);

    return _v1CalendarBusyusersIdPost(
        id: id, start: start, end: end, body: body);
  }

  ///
  ///@param id
  ///@param start
  ///@param end
  ///@param body
  @Post(path: '/v1/calendar/busyusers/{id}')
  Future<chopper.Response<GuidListResponseObject>> _v1CalendarBusyusersIdPost(
      {@Path('id') required String? id,
      @Query('start') String? start,
      @Query('end') String? end,
      @Body() ListOfUserRequestModel? body});

  ///
  ///@param userId
  ///@param currentEventId
  ///@param start
  ///@param end
  Future<chopper.Response<GuidListResponseObject>> v1CalendarBusyusersUserIdGet(
      {required String? userId,
      String? currentEventId,
      String? start,
      String? end}) {
    generatedMapping.putIfAbsent(
        GuidListResponseObject, () => GuidListResponseObject.fromJsonFactory);

    return _v1CalendarBusyusersUserIdGet(
        userId: userId, currentEventId: currentEventId, start: start, end: end);
  }

  ///
  ///@param userId
  ///@param currentEventId
  ///@param start
  ///@param end
  @Get(path: '/v1/calendar/busyusers/{userId}')
  Future<chopper.Response<GuidListResponseObject>>
      _v1CalendarBusyusersUserIdGet(
          {@Path('userId') required String? userId,
          @Query('currentEventId') String? currentEventId,
          @Query('start') String? start,
          @Query('end') String? end});

  ///
  ///@param start
  ///@param end
  ///@param body
  Future<chopper.Response<DateTimeListResponseObject>>
      v1CalendarSuggestiontimePost(
          {String? start, String? end, ListOfUserRequestModel? body}) {
    generatedMapping.putIfAbsent(
        ListOfUserRequestModel, () => ListOfUserRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(DateTimeListResponseObject,
        () => DateTimeListResponseObject.fromJsonFactory);

    return _v1CalendarSuggestiontimePost(start: start, end: end, body: body);
  }

  ///
  ///@param start
  ///@param end
  ///@param body
  @Post(path: '/v1/calendar/suggestiontime')
  Future<chopper.Response<DateTimeListResponseObject>>
      _v1CalendarSuggestiontimePost(
          {@Query('start') String? start,
          @Query('end') String? end,
          @Body() ListOfUserRequestModel? body});

  ///Gets a feedback.
  ///@param id The feedback id.
  Future<chopper.Response<FeedbackResponseObject>> v1FeedbackIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        FeedbackResponseObject, () => FeedbackResponseObject.fromJsonFactory);

    return _v1FeedbackIdGet(id: id);
  }

  ///Gets a feedback.
  ///@param id The feedback id.
  @Get(path: '/v1/feedback/{id}')
  Future<chopper.Response<FeedbackResponseObject>> _v1FeedbackIdGet(
      {@Path('id') required String? id});

  ///Updates a feedback.
  ///@param id The feedback id.
  ///@param body The feedback request model.
  Future<chopper.Response<FeedbackResponseObject>> v1FeedbackIdPut(
      {required String? id, FeedbackRequestModel? body}) {
    generatedMapping.putIfAbsent(
        FeedbackRequestModel, () => FeedbackRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        FeedbackResponseObject, () => FeedbackResponseObject.fromJsonFactory);

    return _v1FeedbackIdPut(id: id, body: body);
  }

  ///Updates a feedback.
  ///@param id The feedback id.
  ///@param body The feedback request model.
  @Put(path: '/v1/feedback/{id}')
  Future<chopper.Response<FeedbackResponseObject>> _v1FeedbackIdPut(
      {@Path('id') required String? id, @Body() FeedbackRequestModel? body});

  ///Deletes a feedback.
  ///@param id The feedback id.
  Future<chopper.Response<FeedbackResponseObject>> v1FeedbackIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        FeedbackResponseObject, () => FeedbackResponseObject.fromJsonFactory);

    return _v1FeedbackIdDelete(id: id);
  }

  ///Deletes a feedback.
  ///@param id The feedback id.
  @Delete(path: '/v1/feedback/{id}')
  Future<chopper.Response<FeedbackResponseObject>> _v1FeedbackIdDelete(
      {@Path('id') required String? id});

  ///Gets all feedbacks.
  ///@param feedbackType
  ///@param category
  ///@param objectId
  ///@param status
  ///@param fromDate
  ///@param toDate
  ///@param page
  ///@param size
  ///@param sort
  ///@param queryString
  ///@param filter
  Future<chopper.Response<FeedbackResponsePagination>> v1FeedbackGet(
      {String? feedbackType,
      String? category,
      String? objectId,
      int? status,
      String? fromDate,
      String? toDate,
      int? page,
      int? size,
      String? sort,
      String? queryString,
      String? filter}) {
    generatedMapping.putIfAbsent(FeedbackResponsePagination,
        () => FeedbackResponsePagination.fromJsonFactory);

    return _v1FeedbackGet(
        feedbackType: feedbackType,
        category: category,
        objectId: objectId,
        status: status,
        fromDate: fromDate,
        toDate: toDate,
        page: page,
        size: size,
        sort: sort,
        queryString: queryString,
        filter: filter);
  }

  ///Gets all feedbacks.
  ///@param feedbackType
  ///@param category
  ///@param objectId
  ///@param status
  ///@param fromDate
  ///@param toDate
  ///@param page
  ///@param size
  ///@param sort
  ///@param queryString
  ///@param filter
  @Get(path: '/v1/feedback')
  Future<chopper.Response<FeedbackResponsePagination>> _v1FeedbackGet(
      {@Query('feedbackType') String? feedbackType,
      @Query('category') String? category,
      @Query('objectId') String? objectId,
      @Query('status') int? status,
      @Query('fromDate') String? fromDate,
      @Query('toDate') String? toDate,
      @Query('page') int? page,
      @Query('size') int? size,
      @Query('sort') String? sort,
      @Query('queryString') String? queryString,
      @Query('filter') String? filter});

  ///Creates a feedback.
  ///@param body The feedback request model
  Future<chopper.Response<FeedbackResponseObject>> v1FeedbackPost(
      {FeedbackRequestModel? body}) {
    generatedMapping.putIfAbsent(
        FeedbackRequestModel, () => FeedbackRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        FeedbackResponseObject, () => FeedbackResponseObject.fromJsonFactory);

    return _v1FeedbackPost(body: body);
  }

  ///Creates a feedback.
  ///@param body The feedback request model
  @Post(path: '/v1/feedback')
  Future<chopper.Response<FeedbackResponseObject>> _v1FeedbackPost(
      {@Body() FeedbackRequestModel? body});

  ///Deletes many feedbacks.
  ///@param body The list of feedback ids.
  Future<chopper.Response<BooleanResponseObject>> v1FeedbackDeleteManyPost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1FeedbackDeleteManyPost(body: body);
  }

  ///Deletes many feedbacks.
  ///@param body The list of feedback ids.
  @Post(path: '/v1/feedback/delete/many')
  Future<chopper.Response<BooleanResponseObject>> _v1FeedbackDeleteManyPost(
      {@Body() List<String>? body});

  ///The health check api.
  ///@param api-version
  Future<chopper.Response> healthCheckGet({String? apiVersion}) {
    return _healthCheckGet(apiVersion: apiVersion);
  }

  ///The health check api.
  ///@param api-version
  @Get(path: '/health/check')
  Future<chopper.Response> _healthCheckGet(
      {@Query('api-version') String? apiVersion});

  ///Gets filter organization.
  ///@param currentPage The current page.
  ///@param pageSize The page size.
  ///@param sort The sort field.
  ///@param queryString The query string.
  Future<chopper.Response<OrganizationResponsePagination>>
      v1OrganizationFilterGet(
          {int? currentPage,
          int? pageSize,
          String? sort,
          String? queryString}) {
    generatedMapping.putIfAbsent(OrganizationResponsePagination,
        () => OrganizationResponsePagination.fromJsonFactory);

    return _v1OrganizationFilterGet(
        currentPage: currentPage,
        pageSize: pageSize,
        sort: sort,
        queryString: queryString);
  }

  ///Gets filter organization.
  ///@param currentPage The current page.
  ///@param pageSize The page size.
  ///@param sort The sort field.
  ///@param queryString The query string.
  @Get(path: '/v1/organization/filter')
  Future<chopper.Response<OrganizationResponsePagination>>
      _v1OrganizationFilterGet(
          {@Query('currentPage') int? currentPage,
          @Query('pageSize') int? pageSize,
          @Query('sort') String? sort,
          @Query('queryString') String? queryString});

  ///Gets all organizations.
  ///@param parentCode The parent organization code.
  ///@param currentPage The current page.
  ///@param pageSize The page size.
  ///@param type
  ///@param sort The sort field.
  ///@param queryString The query string.
  Future<chopper.Response<OrganizationResponsePagination>> v1OrganizationGet(
      {String? parentCode,
      int? currentPage,
      int? pageSize,
      String? type,
      String? sort,
      String? queryString}) {
    generatedMapping.putIfAbsent(OrganizationResponsePagination,
        () => OrganizationResponsePagination.fromJsonFactory);

    return _v1OrganizationGet(
        parentCode: parentCode,
        currentPage: currentPage,
        pageSize: pageSize,
        type: type,
        sort: sort,
        queryString: queryString);
  }

  ///Gets all organizations.
  ///@param parentCode The parent organization code.
  ///@param currentPage The current page.
  ///@param pageSize The page size.
  ///@param type
  ///@param sort The sort field.
  ///@param queryString The query string.
  @Get(path: '/v1/organization')
  Future<chopper.Response<OrganizationResponsePagination>> _v1OrganizationGet(
      {@Query('parentCode') String? parentCode,
      @Query('currentPage') int? currentPage,
      @Query('pageSize') int? pageSize,
      @Query('type') String? type,
      @Query('sort') String? sort,
      @Query('queryString') String? queryString});

  ///Creates an organization.
  ///@param body The organization request model
  Future<chopper.Response<OrganizationResponseObject>> v1OrganizationPost(
      {OrganizationRequestModel? body}) {
    generatedMapping.putIfAbsent(OrganizationRequestModel,
        () => OrganizationRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(OrganizationResponseObject,
        () => OrganizationResponseObject.fromJsonFactory);

    return _v1OrganizationPost(body: body);
  }

  ///Creates an organization.
  ///@param body The organization request model
  @Post(path: '/v1/organization')
  Future<chopper.Response<OrganizationResponseObject>> _v1OrganizationPost(
      {@Body() OrganizationRequestModel? body});

  ///Gets all organizations by permission.
  ///@param parentCode The parent organization code.
  ///@param currentPage The current page.
  ///@param pageSize The page size.
  ///@param sort The sort field.
  ///@param queryString The query string.
  Future<chopper.Response<OrganizationResponsePagination>>
      v1OrganizationBypermissionGet(
          {String? parentCode,
          int? currentPage,
          int? pageSize,
          String? sort,
          String? queryString}) {
    generatedMapping.putIfAbsent(OrganizationResponsePagination,
        () => OrganizationResponsePagination.fromJsonFactory);

    return _v1OrganizationBypermissionGet(
        parentCode: parentCode,
        currentPage: currentPage,
        pageSize: pageSize,
        sort: sort,
        queryString: queryString);
  }

  ///Gets all organizations by permission.
  ///@param parentCode The parent organization code.
  ///@param currentPage The current page.
  ///@param pageSize The page size.
  ///@param sort The sort field.
  ///@param queryString The query string.
  @Get(path: '/v1/organization/bypermission')
  Future<chopper.Response<OrganizationResponsePagination>>
      _v1OrganizationBypermissionGet(
          {@Query('parentCode') String? parentCode,
          @Query('currentPage') int? currentPage,
          @Query('pageSize') int? pageSize,
          @Query('sort') String? sort,
          @Query('queryString') String? queryString});

  ///Gets an organization.
  ///@param id The organization id.
  Future<chopper.Response<OrganizationResponseObject>> v1OrganizationIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(OrganizationResponseObject,
        () => OrganizationResponseObject.fromJsonFactory);

    return _v1OrganizationIdGet(id: id);
  }

  ///Gets an organization.
  ///@param id The organization id.
  @Get(path: '/v1/organization/{id}')
  Future<chopper.Response<OrganizationResponseObject>> _v1OrganizationIdGet(
      {@Path('id') required String? id});

  ///Updates an organization.
  ///@param id The organization id.
  ///@param body The organization request model.
  Future<chopper.Response<OrganizationResponseObject>> v1OrganizationIdPut(
      {required String? id, OrganizationRequestModel? body}) {
    generatedMapping.putIfAbsent(OrganizationRequestModel,
        () => OrganizationRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(OrganizationResponseObject,
        () => OrganizationResponseObject.fromJsonFactory);

    return _v1OrganizationIdPut(id: id, body: body);
  }

  ///Updates an organization.
  ///@param id The organization id.
  ///@param body The organization request model.
  @Put(path: '/v1/organization/{id}')
  Future<chopper.Response<OrganizationResponseObject>> _v1OrganizationIdPut(
      {@Path('id') required String? id,
      @Body() OrganizationRequestModel? body});

  ///Deletes an organization.
  ///@param id The organization id.
  Future<chopper.Response<OrganizationResponseObject>> v1OrganizationIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(OrganizationResponseObject,
        () => OrganizationResponseObject.fromJsonFactory);

    return _v1OrganizationIdDelete(id: id);
  }

  ///Deletes an organization.
  ///@param id The organization id.
  @Delete(path: '/v1/organization/{id}')
  Future<chopper.Response<OrganizationResponseObject>> _v1OrganizationIdDelete(
      {@Path('id') required String? id});

  ///Gets an organization.
  ///@param code The organization code.
  Future<chopper.Response<OrganizationResponseObject>>
      v1OrganizationBycodeCodeGet({required String? code}) {
    generatedMapping.putIfAbsent(OrganizationResponseObject,
        () => OrganizationResponseObject.fromJsonFactory);

    return _v1OrganizationBycodeCodeGet(code: code);
  }

  ///Gets an organization.
  ///@param code The organization code.
  @Get(path: '/v1/organization/bycode/{code}')
  Future<chopper.Response<OrganizationResponseObject>>
      _v1OrganizationBycodeCodeGet({@Path('code') required String? code});

  ///Deletes many organizations.
  ///@param body The list of organization ids.
  Future<chopper.Response<BooleanResponseObject>> v1OrganizationDeleteManyPost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1OrganizationDeleteManyPost(body: body);
  }

  ///Deletes many organizations.
  ///@param body The list of organization ids.
  @Post(path: '/v1/organization/delete/many')
  Future<chopper.Response<BooleanResponseObject>> _v1OrganizationDeleteManyPost(
      {@Body() List<String>? body});

  ///
  ///@param reference
  ///@param label
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  Future<chopper.Response<ResContactResponseModelResponsePagination>>
      v1ResContactGet(
          {String? reference,
          String? label,
          int? page,
          int? size,
          String? sort,
          String? filter}) {
    generatedMapping.putIfAbsent(ResContactResponseModelResponsePagination,
        () => ResContactResponseModelResponsePagination.fromJsonFactory);

    return _v1ResContactGet(
        reference: reference,
        label: label,
        page: page,
        size: size,
        sort: sort,
        filter: filter);
  }

  ///
  ///@param reference
  ///@param label
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  @Get(path: '/v1/res-contact')
  Future<chopper.Response<ResContactResponseModelResponsePagination>>
      _v1ResContactGet(
          {@Query('reference') String? reference,
          @Query('label') String? label,
          @Query('page') int? page,
          @Query('size') int? size,
          @Query('sort') String? sort,
          @Query('filter') String? filter});

  ///
  ///@param body
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      v1ResContactPost({ResContactUpdateResquestModel? body}) {
    generatedMapping.putIfAbsent(ResContactUpdateResquestModel,
        () => ResContactUpdateResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ResContactResponseModelResponseObject,
        () => ResContactResponseModelResponseObject.fromJsonFactory);

    return _v1ResContactPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/res-contact')
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      _v1ResContactPost({@Body() ResContactUpdateResquestModel? body});

  ///
  ///@param id
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      v1ResContactIdGet({required String? id}) {
    generatedMapping.putIfAbsent(ResContactResponseModelResponseObject,
        () => ResContactResponseModelResponseObject.fromJsonFactory);

    return _v1ResContactIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/res-contact/{id}')
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      _v1ResContactIdGet({@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      v1ResContactIdPut(
          {required String? id, ResContactUpdateResquestModel? body}) {
    generatedMapping.putIfAbsent(ResContactUpdateResquestModel,
        () => ResContactUpdateResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ResContactResponseModelResponseObject,
        () => ResContactResponseModelResponseObject.fromJsonFactory);

    return _v1ResContactIdPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/res-contact/{id}')
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      _v1ResContactIdPut(
          {@Path('id') required String? id,
          @Body() ResContactUpdateResquestModel? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      v1ResContactIdPatch(
          {required String? id, ResContactPatchUpdateResquestModel? body}) {
    generatedMapping.putIfAbsent(ResContactPatchUpdateResquestModel,
        () => ResContactPatchUpdateResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ResContactResponseModelResponseObject,
        () => ResContactResponseModelResponseObject.fromJsonFactory);

    return _v1ResContactIdPatch(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Patch(path: '/v1/res-contact/{id}')
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      _v1ResContactIdPatch(
          {@Path('id') required String? id,
          @Body() ResContactPatchUpdateResquestModel? body});

  ///
  ///@param id
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      v1ResContactIdDelete({required String? id}) {
    generatedMapping.putIfAbsent(ResContactResponseModelResponseObject,
        () => ResContactResponseModelResponseObject.fromJsonFactory);

    return _v1ResContactIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/res-contact/{id}')
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      _v1ResContactIdDelete({@Path('id') required String? id});

  ///
  ///@param body
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      v1ResContactManyPatch({List<ResContactPatchUpdateResquestModel>? body}) {
    generatedMapping.putIfAbsent(ResContactResponseModelResponseObject,
        () => ResContactResponseModelResponseObject.fromJsonFactory);

    return _v1ResContactManyPatch(body: body);
  }

  ///
  ///@param body
  @Patch(path: '/v1/res-contact/many')
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      _v1ResContactManyPatch(
          {@Body() List<ResContactPatchUpdateResquestModel>? body});

  ///
  ///@param body
  Future<chopper.Response<ResContactResponseModelResponseList>>
      v1ResContactDeleteManyPost({List<String>? body}) {
    generatedMapping.putIfAbsent(ResContactResponseModelResponseList,
        () => ResContactResponseModelResponseList.fromJsonFactory);

    return _v1ResContactDeleteManyPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/res-contact/delete/many')
  Future<chopper.Response<ResContactResponseModelResponseList>>
      _v1ResContactDeleteManyPost({@Body() List<String>? body});

  ///Gets filter customer group.
  ///@param parentId The parent id.
  ///@param page The current page.
  ///@param size The page size.
  ///@param sort The sort field.
  ///@param filter The query string.
  Future<chopper.Response<ResCustomerGroupResponsePagination>>
      v1ResCustomerGroupFilterGet(
          {String? parentId,
          int? page,
          int? size,
          String? sort,
          String? filter}) {
    generatedMapping.putIfAbsent(ResCustomerGroupResponsePagination,
        () => ResCustomerGroupResponsePagination.fromJsonFactory);

    return _v1ResCustomerGroupFilterGet(
        parentId: parentId, page: page, size: size, sort: sort, filter: filter);
  }

  ///Gets filter customer group.
  ///@param parentId The parent id.
  ///@param page The current page.
  ///@param size The page size.
  ///@param sort The sort field.
  ///@param filter The query string.
  @Get(path: '/v1/res-customer-group/filter')
  Future<chopper.Response<ResCustomerGroupResponsePagination>>
      _v1ResCustomerGroupFilterGet(
          {@Query('parentId') String? parentId,
          @Query('page') int? page,
          @Query('size') int? size,
          @Query('sort') String? sort,
          @Query('filter') String? filter});

  ///Gets a customer group.
  ///@param id The customer group id.
  Future<chopper.Response<ResCustomerGroupResponseObject>>
      v1ResCustomerGroupIdGet({required String? id}) {
    generatedMapping.putIfAbsent(ResCustomerGroupResponseObject,
        () => ResCustomerGroupResponseObject.fromJsonFactory);

    return _v1ResCustomerGroupIdGet(id: id);
  }

  ///Gets a customer group.
  ///@param id The customer group id.
  @Get(path: '/v1/res-customer-group/{id}')
  Future<chopper.Response<ResCustomerGroupResponseObject>>
      _v1ResCustomerGroupIdGet({@Path('id') required String? id});

  ///Updates a customer group.
  ///@param id The customer group id.
  ///@param body The customer group request model.
  Future<chopper.Response<ResCustomerGroupResponseObject>>
      v1ResCustomerGroupIdPut(
          {required String? id, ResCustomerGroupRequestModel? body}) {
    generatedMapping.putIfAbsent(ResCustomerGroupRequestModel,
        () => ResCustomerGroupRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ResCustomerGroupResponseObject,
        () => ResCustomerGroupResponseObject.fromJsonFactory);

    return _v1ResCustomerGroupIdPut(id: id, body: body);
  }

  ///Updates a customer group.
  ///@param id The customer group id.
  ///@param body The customer group request model.
  @Put(path: '/v1/res-customer-group/{id}')
  Future<chopper.Response<ResCustomerGroupResponseObject>>
      _v1ResCustomerGroupIdPut(
          {@Path('id') required String? id,
          @Body() ResCustomerGroupRequestModel? body});

  ///Deletes a customer group.
  ///@param id The customer group id.
  Future<chopper.Response<ResCustomerGroupResponseObject>>
      v1ResCustomerGroupIdDelete({required String? id}) {
    generatedMapping.putIfAbsent(ResCustomerGroupResponseObject,
        () => ResCustomerGroupResponseObject.fromJsonFactory);

    return _v1ResCustomerGroupIdDelete(id: id);
  }

  ///Deletes a customer group.
  ///@param id The customer group id.
  @Delete(path: '/v1/res-customer-group/{id}')
  Future<chopper.Response<ResCustomerGroupResponseObject>>
      _v1ResCustomerGroupIdDelete({@Path('id') required String? id});

  ///Gets all customer groups.
  ///@param parentId The parent id.
  ///@param page The current page.
  ///@param size The page size.
  ///@param sort The sort field.
  ///@param filter The query string.
  Future<chopper.Response<ResCustomerGroupResponsePagination>>
      v1ResCustomerGroupGet(
          {String? parentId,
          int? page,
          int? size,
          String? sort,
          String? filter}) {
    generatedMapping.putIfAbsent(ResCustomerGroupResponsePagination,
        () => ResCustomerGroupResponsePagination.fromJsonFactory);

    return _v1ResCustomerGroupGet(
        parentId: parentId, page: page, size: size, sort: sort, filter: filter);
  }

  ///Gets all customer groups.
  ///@param parentId The parent id.
  ///@param page The current page.
  ///@param size The page size.
  ///@param sort The sort field.
  ///@param filter The query string.
  @Get(path: '/v1/res-customer-group')
  Future<chopper.Response<ResCustomerGroupResponsePagination>>
      _v1ResCustomerGroupGet(
          {@Query('parentId') String? parentId,
          @Query('page') int? page,
          @Query('size') int? size,
          @Query('sort') String? sort,
          @Query('filter') String? filter});

  ///Creates a customer group.
  ///@param body The customer group request model
  Future<chopper.Response<ResCustomerGroupResponseObject>>
      v1ResCustomerGroupPost({ResCustomerGroupRequestModel? body}) {
    generatedMapping.putIfAbsent(ResCustomerGroupRequestModel,
        () => ResCustomerGroupRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ResCustomerGroupResponseObject,
        () => ResCustomerGroupResponseObject.fromJsonFactory);

    return _v1ResCustomerGroupPost(body: body);
  }

  ///Creates a customer group.
  ///@param body The customer group request model
  @Post(path: '/v1/res-customer-group')
  Future<chopper.Response<ResCustomerGroupResponseObject>>
      _v1ResCustomerGroupPost({@Body() ResCustomerGroupRequestModel? body});

  ///Deletes many customer group.
  ///@param body The list of customer group ids.
  Future<chopper.Response<BooleanResponseObject>>
      v1ResCustomerGroupDeleteManyPost({List<String>? body}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1ResCustomerGroupDeleteManyPost(body: body);
  }

  ///Deletes many customer group.
  ///@param body The list of customer group ids.
  @Post(path: '/v1/res-customer-group/delete/many')
  Future<chopper.Response<BooleanResponseObject>>
      _v1ResCustomerGroupDeleteManyPost({@Body() List<String>? body});

  ///
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  Future<chopper.Response<ResPartnerResponsePagination>> v1ResPartnerFilterGet(
      {int? page, int? size, String? sort, String? filter}) {
    generatedMapping.putIfAbsent(ResPartnerResponsePagination,
        () => ResPartnerResponsePagination.fromJsonFactory);

    return _v1ResPartnerFilterGet(
        page: page, size: size, sort: sort, filter: filter);
  }

  ///
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  @Get(path: '/v1/res-partner/filter')
  Future<chopper.Response<ResPartnerResponsePagination>> _v1ResPartnerFilterGet(
      {@Query('page') int? page,
      @Query('size') int? size,
      @Query('sort') String? sort,
      @Query('filter') String? filter});

  ///
  ///@param isSmallStreet
  ///@param page
  ///@param size
  ///@param sort
  ///@param type
  ///@param filter
  Future<chopper.Response<ResPartnerViewModelResponsePagination>>
      v1ResPartnerGet(
          {bool? isSmallStreet,
          int? page,
          int? size,
          String? sort,
          String? type,
          String? filter}) {
    generatedMapping.putIfAbsent(ResPartnerViewModelResponsePagination,
        () => ResPartnerViewModelResponsePagination.fromJsonFactory);

    return _v1ResPartnerGet(
        isSmallStreet: isSmallStreet,
        page: page,
        size: size,
        sort: sort,
        type: type,
        filter: filter);
  }

  ///
  ///@param isSmallStreet
  ///@param page
  ///@param size
  ///@param sort
  ///@param type
  ///@param filter
  @Get(path: '/v1/res-partner')
  Future<chopper.Response<ResPartnerViewModelResponsePagination>>
      _v1ResPartnerGet(
          {@Query('isSmallStreet') bool? isSmallStreet,
          @Query('page') int? page,
          @Query('size') int? size,
          @Query('sort') String? sort,
          @Query('type') String? type,
          @Query('filter') String? filter});

  ///
  ///@param body
  Future<chopper.Response<ResPartnerResponseObject>> v1ResPartnerPost(
      {ResPartnerResquestModel? body}) {
    generatedMapping.putIfAbsent(
        ResPartnerResquestModel, () => ResPartnerResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ResPartnerResponseObject,
        () => ResPartnerResponseObject.fromJsonFactory);

    return _v1ResPartnerPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/res-partner')
  Future<chopper.Response<ResPartnerResponseObject>> _v1ResPartnerPost(
      {@Body() ResPartnerResquestModel? body});

  ///
  ///@param code
  Future<chopper.Response<ResPartnerResponseObject>> v1ResPartnerBycodeCodeGet(
      {required String? code}) {
    generatedMapping.putIfAbsent(ResPartnerResponseObject,
        () => ResPartnerResponseObject.fromJsonFactory);

    return _v1ResPartnerBycodeCodeGet(code: code);
  }

  ///
  ///@param code
  @Get(path: '/v1/res-partner/bycode/{code}')
  Future<chopper.Response<ResPartnerResponseObject>> _v1ResPartnerBycodeCodeGet(
      {@Path('code') required String? code});

  ///
  ///@param userid
  Future<chopper.Response<ResPartnerResponseObject>>
      v1ResPartnerByuseridUseridGet({required String? userid}) {
    generatedMapping.putIfAbsent(ResPartnerResponseObject,
        () => ResPartnerResponseObject.fromJsonFactory);

    return _v1ResPartnerByuseridUseridGet(userid: userid);
  }

  ///
  ///@param userid
  @Get(path: '/v1/res-partner/byuserid/{userid}')
  Future<chopper.Response<ResPartnerResponseObject>>
      _v1ResPartnerByuseridUseridGet({@Path('userid') required String? userid});

  ///
  ///@param id
  Future<chopper.Response<ResPartnerResponseObject>> v1ResPartnerIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(ResPartnerResponseObject,
        () => ResPartnerResponseObject.fromJsonFactory);

    return _v1ResPartnerIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/res-partner/{id}')
  Future<chopper.Response<ResPartnerResponseObject>> _v1ResPartnerIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ResPartnerResponseObject>> v1ResPartnerIdPut(
      {required String? id, ResPartnerResquestModel? body}) {
    generatedMapping.putIfAbsent(
        ResPartnerResquestModel, () => ResPartnerResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ResPartnerResponseObject,
        () => ResPartnerResponseObject.fromJsonFactory);

    return _v1ResPartnerIdPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/res-partner/{id}')
  Future<chopper.Response<ResPartnerResponseObject>> _v1ResPartnerIdPut(
      {@Path('id') required String? id, @Body() ResPartnerResquestModel? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ResPartnerResponseObject>> v1ResPartnerIdPatch(
      {required String? id, ResPartnerPatchResquestModel? body}) {
    generatedMapping.putIfAbsent(ResPartnerPatchResquestModel,
        () => ResPartnerPatchResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ResPartnerResponseObject,
        () => ResPartnerResponseObject.fromJsonFactory);

    return _v1ResPartnerIdPatch(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Patch(path: '/v1/res-partner/{id}')
  Future<chopper.Response<ResPartnerResponseObject>> _v1ResPartnerIdPatch(
      {@Path('id') required String? id,
      @Body() ResPartnerPatchResquestModel? body});

  ///
  ///@param id
  Future<chopper.Response<ResPartnerResponseObject>> v1ResPartnerIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(ResPartnerResponseObject,
        () => ResPartnerResponseObject.fromJsonFactory);

    return _v1ResPartnerIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/res-partner/{id}')
  Future<chopper.Response<ResPartnerResponseObject>> _v1ResPartnerIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param body
  Future<chopper.Response<ResPartnerResponseList>> v1ResPartnerDeleteManyPost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResPartnerResponseList, () => ResPartnerResponseList.fromJsonFactory);

    return _v1ResPartnerDeleteManyPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/res-partner/delete/many')
  Future<chopper.Response<ResPartnerResponseList>> _v1ResPartnerDeleteManyPost(
      {@Body() List<String>? body});

  ///
  ///@param code
  ///@param alias
  Future<chopper.Response<BooleanResponseObject>>
      v1ResPartnerCodeIsAvailableGet({required String? code, String? alias}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1ResPartnerCodeIsAvailableGet(code: code, alias: alias);
  }

  ///
  ///@param code
  ///@param alias
  @Get(path: '/v1/res-partner/{code}/is-available')
  Future<chopper.Response<BooleanResponseObject>>
      _v1ResPartnerCodeIsAvailableGet(
          {@Path('code') required String? code, @Query('alias') String? alias});

  ///
  ///@param File
  ///@param Type
  Future<chopper.Response> v1ResPartnerDownloadValidateFilePost(
      {List<String>? file, String? type}) {
    return _v1ResPartnerDownloadValidateFilePost(file: file, type: type);
  }

  ///
  ///@param File
  ///@param Type
  @Post(path: '/v1/res-partner/download-validate-file', optionalBody: true)
  Future<chopper.Response> _v1ResPartnerDownloadValidateFilePost(
      {@Field('File') List<String>? file, @Field('Type') String? type});

  ///
  ///@param File
  ///@param Type
  Future<chopper.Response<ResPartnerResponseList>> v1ResPartnerImportFilePost(
      {List<String>? file, String? type}) {
    generatedMapping.putIfAbsent(
        ResPartnerResponseList, () => ResPartnerResponseList.fromJsonFactory);

    return _v1ResPartnerImportFilePost(file: file, type: type);
  }

  ///
  ///@param File
  ///@param Type
  @Post(path: '/v1/res-partner/import-file', optionalBody: true)
  Future<chopper.Response<ResPartnerResponseList>> _v1ResPartnerImportFilePost(
      {@Field('File') List<String>? file, @Field('Type') String? type});

  ///
  ///@param File
  ///@param Type
  Future<chopper.Response> v1ResPartnerValidateExcelPost(
      {List<String>? file, String? type}) {
    return _v1ResPartnerValidateExcelPost(file: file, type: type);
  }

  ///
  ///@param File
  ///@param Type
  @Post(path: '/v1/res-partner/validate-excel', optionalBody: true)
  Future<chopper.Response> _v1ResPartnerValidateExcelPost(
      {@Field('File') List<String>? file, @Field('Type') String? type});
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
