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
  Future<Response<BaseCategoryViewModelResponsePagination>> _v1CategoryGet(
      {String? type,
      String? parentId,
      String? parentAppId,
      bool? recursive,
      Object? statusObj,
      int? page,
      int? size,
      String? sort,
      String? filter}) {
    final $url = '/v1/category';
    final $params = <String, dynamic>{
      'type': type,
      'parentId': parentId,
      'parentAppId': parentAppId,
      'recursive': recursive,
      'statusObj': statusObj,
      'page': page,
      'size': size,
      'sort': sort,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BaseCategoryViewModelResponsePagination,
        BaseCategoryViewModelResponsePagination>($request);
  }

  @override
  Future<Response<BaseCategoryViewModelResponsePagination>> _v1CategoryTypeGet(
      {required String? type,
      String? parentId,
      String? parentAppId,
      bool? recursive,
      Object? statusObj,
      int? page,
      int? size,
      String? sort,
      String? filter}) {
    final $url = '/v1/category/${type}';
    final $params = <String, dynamic>{
      'parentId': parentId,
      'parentAppId': parentAppId,
      'recursive': recursive,
      'statusObj': statusObj,
      'page': page,
      'size': size,
      'sort': sort,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BaseCategoryViewModelResponsePagination,
        BaseCategoryViewModelResponsePagination>($request);
  }

  @override
  Future<Response<BaseCategoryResponseObject>> _v1CategoryTypePost(
      {required String? type, CategoryRequestModel? body}) {
    final $url = '/v1/category/${type}';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<BaseCategoryResponseObject, BaseCategoryResponseObject>($request);
  }

  @override
  Future<Response<BaseCategoryResponsePagination>> _v1CategoryTypeTreeGet(
      {required String? type}) {
    final $url = '/v1/category/${type}/tree';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BaseCategoryResponsePagination,
        BaseCategoryResponsePagination>($request);
  }

  @override
  Future<Response<BaseCategoryResponseObject>> _v1CategoryTypeIdGet(
      {required String? type, required String? id}) {
    final $url = '/v1/category/${type}/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<BaseCategoryResponseObject, BaseCategoryResponseObject>($request);
  }

  @override
  Future<Response<BaseCategoryViewModelResponseObject>> _v1CategoryTypeIdPut(
      {required String? type,
      required String? id,
      CategoryRequestModel? body}) {
    final $url = '/v1/category/${type}/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<BaseCategoryViewModelResponseObject,
        BaseCategoryViewModelResponseObject>($request);
  }

  @override
  Future<Response<BaseCategoryResponseObject>> _v1CategoryTypeIdPatch(
      {required String? id,
      required String? type,
      CategoryPatchRequestModel? body}) {
    final $url = '/v1/category/${type}/${id}';
    final $body = body;
    final $request = Request('PATCH', $url, client.baseUrl, body: $body);
    return client
        .send<BaseCategoryResponseObject, BaseCategoryResponseObject>($request);
  }

  @override
  Future<Response<ResponseDelete>> _v1CategoryTypeIdDelete(
      {required String? type, required String? id}) {
    final $url = '/v1/category/${type}/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ResponseDelete, ResponseDelete>($request);
  }

  @override
  Future<Response<BaseCategoryViewModelResponseObject>>
      _v1CategoryTypeReorderPut(
          {required String? type, List<CategoryOrderModel>? body}) {
    final $url = '/v1/category/${type}/reorder';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<BaseCategoryViewModelResponseObject,
        BaseCategoryViewModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseDeleteMulti>> _v1CategoryTypeDeleteManyPost(
      {required String? type, List<String>? body}) {
    final $url = '/v1/category/${type}/delete/many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ResponseDeleteMulti, ResponseDeleteMulti>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1CategoryTypeAliasIsAvailableGet(
      {required String? type, required String? alias}) {
    final $url = '/v1/category/${type}/${alias}/is-available';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<dynamic>> _v1CategoryDownloadValidateFilePost(
      {List<String>? file, String? type}) {
    final $url = '/v1/category/download-validate-file';
    final $body = <String, dynamic>{'File': file, 'Type': type};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1CategoryValidateExcelPost(
      {List<String>? file, String? type}) {
    final $url = '/v1/category/validate-excel';
    final $body = <String, dynamic>{'File': file, 'Type': type};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1CategoryImportFilePost(
      {List<String>? file, String? type}) {
    final $url = '/v1/category/import-file';
    final $body = <String, dynamic>{'File': file, 'Type': type};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<EventResponseModelListResponseObject>>
      _v1CalendarEventsAttendeeAttendeeIdGet(
          {required String? attendeeId,
          int? year,
          int? month,
          String? start,
          String? end}) {
    final $url = '/v1/calendar/events/attendee/${attendeeId}';
    final $params = <String, dynamic>{
      'year': year,
      'month': month,
      'start': start,
      'end': end
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<EventResponseModelListResponseObject,
        EventResponseModelListResponseObject>($request);
  }

  @override
  Future<Response<EventResponseModelResponseObject>> _v1CalendarEventsIdGet(
      {required String? id}) {
    final $url = '/v1/calendar/events/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<EventResponseModelResponseObject,
        EventResponseModelResponseObject>($request);
  }

  @override
  Future<Response<EventResponseModelResponseObject>> _v1CalendarEventsIdPut(
      {required String? id, EventResquestModel? body}) {
    final $url = '/v1/calendar/events/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<EventResponseModelResponseObject,
        EventResponseModelResponseObject>($request);
  }

  @override
  Future<Response<EventResponseModelResponseObject>> _v1CalendarEventsIdDelete(
      {required String? id, String? body}) {
    final $url = '/v1/calendar/events/${id}';
    final $body = body;
    final $request = Request('DELETE', $url, client.baseUrl, body: $body);
    return client.send<EventResponseModelResponseObject,
        EventResponseModelResponseObject>($request);
  }

  @override
  Future<Response<EventResponseModelListResponseObject>>
      _v1CalendarEventsGetallGet(
          {int? year, int? month, String? start, String? end}) {
    final $url = '/v1/calendar/events/getall';
    final $params = <String, dynamic>{
      'year': year,
      'month': month,
      'start': start,
      'end': end
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<EventResponseModelListResponseObject,
        EventResponseModelListResponseObject>($request);
  }

  @override
  Future<Response<EventResponseModelListResponseObject>>
      _v1CalendarEventsOwnerOwnerIdGet(
          {required String? ownerId,
          int? year,
          int? month,
          String? start,
          String? end}) {
    final $url = '/v1/calendar/events/owner/${ownerId}';
    final $params = <String, dynamic>{
      'year': year,
      'month': month,
      'start': start,
      'end': end
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<EventResponseModelListResponseObject,
        EventResponseModelListResponseObject>($request);
  }

  @override
  Future<Response<EventResponseModelListResponseObject>> _v1CalendarEventsGet(
      {int? year, int? month, String? start, String? end}) {
    final $url = '/v1/calendar/events';
    final $params = <String, dynamic>{
      'year': year,
      'month': month,
      'start': start,
      'end': end
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<EventResponseModelListResponseObject,
        EventResponseModelListResponseObject>($request);
  }

  @override
  Future<Response<EventResponseModelResponseObject>> _v1CalendarEventsPost(
      {EventResquestModel? body}) {
    final $url = '/v1/calendar/events';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<EventResponseModelResponseObject,
        EventResponseModelResponseObject>($request);
  }

  @override
  Future<Response<EventResponseModelListResponseObject>>
      _v1CalendarEventsUsersPost(
          {int? year,
          int? month,
          String? start,
          String? end,
          ListOfUserRequestModel? body}) {
    final $url = '/v1/calendar/events/users';
    final $params = <String, dynamic>{
      'year': year,
      'month': month,
      'start': start,
      'end': end
    };
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, parameters: $params);
    return client.send<EventResponseModelListResponseObject,
        EventResponseModelListResponseObject>($request);
  }

  @override
  Future<Response<GuidListResponseObject>> _v1CalendarBusyusersIdPost(
      {required String? id,
      String? start,
      String? end,
      ListOfUserRequestModel? body}) {
    final $url = '/v1/calendar/busyusers/${id}';
    final $params = <String, dynamic>{'start': start, 'end': end};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, parameters: $params);
    return client
        .send<GuidListResponseObject, GuidListResponseObject>($request);
  }

  @override
  Future<Response<GuidListResponseObject>> _v1CalendarBusyusersUserIdGet(
      {required String? userId,
      String? currentEventId,
      String? start,
      String? end}) {
    final $url = '/v1/calendar/busyusers/${userId}';
    final $params = <String, dynamic>{
      'currentEventId': currentEventId,
      'start': start,
      'end': end
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<GuidListResponseObject, GuidListResponseObject>($request);
  }

  @override
  Future<Response<DateTimeListResponseObject>> _v1CalendarSuggestiontimePost(
      {String? start, String? end, ListOfUserRequestModel? body}) {
    final $url = '/v1/calendar/suggestiontime';
    final $params = <String, dynamic>{'start': start, 'end': end};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, parameters: $params);
    return client
        .send<DateTimeListResponseObject, DateTimeListResponseObject>($request);
  }

  @override
  Future<Response<FeedbackResponseObject>> _v1FeedbackIdGet(
      {required String? id}) {
    final $url = '/v1/feedback/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<FeedbackResponseObject, FeedbackResponseObject>($request);
  }

  @override
  Future<Response<FeedbackResponseObject>> _v1FeedbackIdPut(
      {required String? id, FeedbackRequestModel? body}) {
    final $url = '/v1/feedback/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client
        .send<FeedbackResponseObject, FeedbackResponseObject>($request);
  }

  @override
  Future<Response<FeedbackResponseObject>> _v1FeedbackIdDelete(
      {required String? id}) {
    final $url = '/v1/feedback/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client
        .send<FeedbackResponseObject, FeedbackResponseObject>($request);
  }

  @override
  Future<Response<FeedbackResponsePagination>> _v1FeedbackGet(
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
    final $url = '/v1/feedback';
    final $params = <String, dynamic>{
      'feedbackType': feedbackType,
      'category': category,
      'objectId': objectId,
      'status': status,
      'fromDate': fromDate,
      'toDate': toDate,
      'page': page,
      'size': size,
      'sort': sort,
      'queryString': queryString,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<FeedbackResponsePagination, FeedbackResponsePagination>($request);
  }

  @override
  Future<Response<FeedbackResponseObject>> _v1FeedbackPost(
      {FeedbackRequestModel? body}) {
    final $url = '/v1/feedback';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<FeedbackResponseObject, FeedbackResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1FeedbackDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/feedback/delete/many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<dynamic>> _healthCheckGet({String? apiVersion}) {
    final $url = '/health/check';
    final $params = <String, dynamic>{'api-version': apiVersion};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<OrganizationResponsePagination>> _v1OrganizationFilterGet(
      {int? currentPage, int? pageSize, String? sort, String? queryString}) {
    final $url = '/v1/organization/filter';
    final $params = <String, dynamic>{
      'currentPage': currentPage,
      'pageSize': pageSize,
      'sort': sort,
      'queryString': queryString
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<OrganizationResponsePagination,
        OrganizationResponsePagination>($request);
  }

  @override
  Future<Response<OrganizationResponsePagination>> _v1OrganizationGet(
      {String? parentCode,
      int? currentPage,
      int? pageSize,
      String? type,
      String? sort,
      String? queryString}) {
    final $url = '/v1/organization';
    final $params = <String, dynamic>{
      'parentCode': parentCode,
      'currentPage': currentPage,
      'pageSize': pageSize,
      'type': type,
      'sort': sort,
      'queryString': queryString
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<OrganizationResponsePagination,
        OrganizationResponsePagination>($request);
  }

  @override
  Future<Response<OrganizationResponseObject>> _v1OrganizationPost(
      {OrganizationRequestModel? body}) {
    final $url = '/v1/organization';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<OrganizationResponseObject, OrganizationResponseObject>($request);
  }

  @override
  Future<Response<OrganizationResponsePagination>>
      _v1OrganizationBypermissionGet(
          {String? parentCode,
          int? currentPage,
          int? pageSize,
          String? sort,
          String? queryString}) {
    final $url = '/v1/organization/bypermission';
    final $params = <String, dynamic>{
      'parentCode': parentCode,
      'currentPage': currentPage,
      'pageSize': pageSize,
      'sort': sort,
      'queryString': queryString
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<OrganizationResponsePagination,
        OrganizationResponsePagination>($request);
  }

  @override
  Future<Response<OrganizationResponseObject>> _v1OrganizationIdGet(
      {required String? id}) {
    final $url = '/v1/organization/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<OrganizationResponseObject, OrganizationResponseObject>($request);
  }

  @override
  Future<Response<OrganizationResponseObject>> _v1OrganizationIdPut(
      {required String? id, OrganizationRequestModel? body}) {
    final $url = '/v1/organization/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client
        .send<OrganizationResponseObject, OrganizationResponseObject>($request);
  }

  @override
  Future<Response<OrganizationResponseObject>> _v1OrganizationIdDelete(
      {required String? id}) {
    final $url = '/v1/organization/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client
        .send<OrganizationResponseObject, OrganizationResponseObject>($request);
  }

  @override
  Future<Response<OrganizationResponseObject>> _v1OrganizationBycodeCodeGet(
      {required String? code}) {
    final $url = '/v1/organization/bycode/${code}';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<OrganizationResponseObject, OrganizationResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1OrganizationDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/organization/delete/many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<ResContactResponseModelResponsePagination>> _v1ResContactGet(
      {String? reference,
      String? label,
      int? page,
      int? size,
      String? sort,
      String? filter}) {
    final $url = '/v1/res-contact';
    final $params = <String, dynamic>{
      'reference': reference,
      'label': label,
      'page': page,
      'size': size,
      'sort': sort,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ResContactResponseModelResponsePagination,
        ResContactResponseModelResponsePagination>($request);
  }

  @override
  Future<Response<ResContactResponseModelResponseObject>> _v1ResContactPost(
      {ResContactUpdateResquestModel? body}) {
    final $url = '/v1/res-contact';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ResContactResponseModelResponseObject,
        ResContactResponseModelResponseObject>($request);
  }

  @override
  Future<Response<ResContactResponseModelResponseObject>> _v1ResContactIdGet(
      {required String? id}) {
    final $url = '/v1/res-contact/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ResContactResponseModelResponseObject,
        ResContactResponseModelResponseObject>($request);
  }

  @override
  Future<Response<ResContactResponseModelResponseObject>> _v1ResContactIdPut(
      {required String? id, ResContactUpdateResquestModel? body}) {
    final $url = '/v1/res-contact/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ResContactResponseModelResponseObject,
        ResContactResponseModelResponseObject>($request);
  }

  @override
  Future<Response<ResContactResponseModelResponseObject>> _v1ResContactIdPatch(
      {required String? id, ResContactPatchUpdateResquestModel? body}) {
    final $url = '/v1/res-contact/${id}';
    final $body = body;
    final $request = Request('PATCH', $url, client.baseUrl, body: $body);
    return client.send<ResContactResponseModelResponseObject,
        ResContactResponseModelResponseObject>($request);
  }

  @override
  Future<Response<ResContactResponseModelResponseObject>> _v1ResContactIdDelete(
      {required String? id}) {
    final $url = '/v1/res-contact/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ResContactResponseModelResponseObject,
        ResContactResponseModelResponseObject>($request);
  }

  @override
  Future<Response<ResContactResponseModelResponseObject>>
      _v1ResContactManyPatch({List<ResContactPatchUpdateResquestModel>? body}) {
    final $url = '/v1/res-contact/many';
    final $body = body;
    final $request = Request('PATCH', $url, client.baseUrl, body: $body);
    return client.send<ResContactResponseModelResponseObject,
        ResContactResponseModelResponseObject>($request);
  }

  @override
  Future<Response<ResContactResponseModelResponseList>>
      _v1ResContactDeleteManyPost({List<String>? body}) {
    final $url = '/v1/res-contact/delete/many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ResContactResponseModelResponseList,
        ResContactResponseModelResponseList>($request);
  }

  @override
  Future<Response<ResCustomerGroupResponsePagination>>
      _v1ResCustomerGroupFilterGet(
          {String? parentId,
          int? page,
          int? size,
          String? sort,
          String? filter}) {
    final $url = '/v1/res-customer-group/filter';
    final $params = <String, dynamic>{
      'parentId': parentId,
      'page': page,
      'size': size,
      'sort': sort,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ResCustomerGroupResponsePagination,
        ResCustomerGroupResponsePagination>($request);
  }

  @override
  Future<Response<ResCustomerGroupResponseObject>> _v1ResCustomerGroupIdGet(
      {required String? id}) {
    final $url = '/v1/res-customer-group/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ResCustomerGroupResponseObject,
        ResCustomerGroupResponseObject>($request);
  }

  @override
  Future<Response<ResCustomerGroupResponseObject>> _v1ResCustomerGroupIdPut(
      {required String? id, ResCustomerGroupRequestModel? body}) {
    final $url = '/v1/res-customer-group/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ResCustomerGroupResponseObject,
        ResCustomerGroupResponseObject>($request);
  }

  @override
  Future<Response<ResCustomerGroupResponseObject>> _v1ResCustomerGroupIdDelete(
      {required String? id}) {
    final $url = '/v1/res-customer-group/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ResCustomerGroupResponseObject,
        ResCustomerGroupResponseObject>($request);
  }

  @override
  Future<Response<ResCustomerGroupResponsePagination>> _v1ResCustomerGroupGet(
      {String? parentId, int? page, int? size, String? sort, String? filter}) {
    final $url = '/v1/res-customer-group';
    final $params = <String, dynamic>{
      'parentId': parentId,
      'page': page,
      'size': size,
      'sort': sort,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ResCustomerGroupResponsePagination,
        ResCustomerGroupResponsePagination>($request);
  }

  @override
  Future<Response<ResCustomerGroupResponseObject>> _v1ResCustomerGroupPost(
      {ResCustomerGroupRequestModel? body}) {
    final $url = '/v1/res-customer-group';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ResCustomerGroupResponseObject,
        ResCustomerGroupResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1ResCustomerGroupDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/res-customer-group/delete/many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<ResPartnerResponsePagination>> _v1ResPartnerFilterGet(
      {int? page, int? size, String? sort, String? filter}) {
    final $url = '/v1/res-partner/filter';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ResPartnerResponsePagination,
        ResPartnerResponsePagination>($request);
  }

  @override
  Future<Response<ResPartnerViewModelResponsePagination>> _v1ResPartnerGet(
      {bool? isSmallStreet,
      int? page,
      int? size,
      String? sort,
      String? type,
      String? filter}) {
    final $url = '/v1/res-partner';
    final $params = <String, dynamic>{
      'isSmallStreet': isSmallStreet,
      'page': page,
      'size': size,
      'sort': sort,
      'type': type,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ResPartnerViewModelResponsePagination,
        ResPartnerViewModelResponsePagination>($request);
  }

  @override
  Future<Response<ResPartnerResponseObject>> _v1ResPartnerPost(
      {ResPartnerResquestModel? body}) {
    final $url = '/v1/res-partner';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<ResPartnerResponseObject, ResPartnerResponseObject>($request);
  }

  @override
  Future<Response<ResPartnerResponseObject>> _v1ResPartnerBycodeCodeGet(
      {required String? code}) {
    final $url = '/v1/res-partner/bycode/${code}';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<ResPartnerResponseObject, ResPartnerResponseObject>($request);
  }

  @override
  Future<Response<ResPartnerResponseObject>> _v1ResPartnerByuseridUseridGet(
      {required String? userid}) {
    final $url = '/v1/res-partner/byuserid/${userid}';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<ResPartnerResponseObject, ResPartnerResponseObject>($request);
  }

  @override
  Future<Response<ResPartnerResponseObject>> _v1ResPartnerIdGet(
      {required String? id}) {
    final $url = '/v1/res-partner/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<ResPartnerResponseObject, ResPartnerResponseObject>($request);
  }

  @override
  Future<Response<ResPartnerResponseObject>> _v1ResPartnerIdPut(
      {required String? id, ResPartnerResquestModel? body}) {
    final $url = '/v1/res-partner/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client
        .send<ResPartnerResponseObject, ResPartnerResponseObject>($request);
  }

  @override
  Future<Response<ResPartnerResponseObject>> _v1ResPartnerIdPatch(
      {required String? id, ResPartnerPatchResquestModel? body}) {
    final $url = '/v1/res-partner/${id}';
    final $body = body;
    final $request = Request('PATCH', $url, client.baseUrl, body: $body);
    return client
        .send<ResPartnerResponseObject, ResPartnerResponseObject>($request);
  }

  @override
  Future<Response<ResPartnerResponseObject>> _v1ResPartnerIdDelete(
      {required String? id}) {
    final $url = '/v1/res-partner/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client
        .send<ResPartnerResponseObject, ResPartnerResponseObject>($request);
  }

  @override
  Future<Response<ResPartnerResponseList>> _v1ResPartnerDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/res-partner/delete/many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<ResPartnerResponseList, ResPartnerResponseList>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1ResPartnerCodeIsAvailableGet(
      {required String? code, String? alias}) {
    final $url = '/v1/res-partner/${code}/is-available';
    final $params = <String, dynamic>{'alias': alias};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<dynamic>> _v1ResPartnerDownloadValidateFilePost(
      {List<String>? file, String? type}) {
    final $url = '/v1/res-partner/download-validate-file';
    final $body = <String, dynamic>{'File': file, 'Type': type};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ResPartnerResponseList>> _v1ResPartnerImportFilePost(
      {List<String>? file, String? type}) {
    final $url = '/v1/res-partner/import-file';
    final $body = <String, dynamic>{'File': file, 'Type': type};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<ResPartnerResponseList, ResPartnerResponseList>($request);
  }

  @override
  Future<Response<dynamic>> _v1ResPartnerValidateExcelPost(
      {List<String>? file, String? type}) {
    final $url = '/v1/res-partner/validate-excel';
    final $body = <String, dynamic>{'File': file, 'Type': type};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
