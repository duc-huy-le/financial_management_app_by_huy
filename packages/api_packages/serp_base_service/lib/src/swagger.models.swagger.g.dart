// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ACLItem _$ACLItemFromJson(Map<String, dynamic> json) => ACLItem(
      objectId: json['objectId'] as String?,
      objectCode: json['objectCode'] as String?,
      objectName: json['objectName'] as String?,
      objectType: objectTypeFromJson(json['objectType']),
      accessType: accessTypeFromJson(json['accessType']),
    );

Map<String, dynamic> _$ACLItemToJson(ACLItem instance) => <String, dynamic>{
      'objectId': instance.objectId,
      'objectCode': instance.objectCode,
      'objectName': instance.objectName,
      'objectType': objectTypeToJson(instance.objectType),
      'accessType': accessTypeToJson(instance.accessType),
    };

ACLObject _$ACLObjectFromJson(Map<String, dynamic> json) => ACLObject(
      objectId: json['objectId'] as String?,
      aclItems: (json['aclItems'] as List<dynamic>?)
              ?.map((e) => ACLItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ACLObjectToJson(ACLObject instance) => <String, dynamic>{
      'objectId': instance.objectId,
      'aclItems': instance.aclItems?.map((e) => e.toJson()).toList(),
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      type:
          (json['type'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      countryCode: json['countryCode'] as String?,
      countryName: json['countryName'] as String?,
      province: json['province'] as String?,
      provinceName: json['provinceName'] as String?,
      district: json['district'] as String?,
      districtName: json['districtName'] as String?,
      ward: json['ward'] as String?,
      wardName: json['wardName'] as String?,
      street: json['street'] as String?,
      street2: json['street2'] as String?,
      zip: json['zip'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'type': instance.type,
      'countryCode': instance.countryCode,
      'countryName': instance.countryName,
      'province': instance.province,
      'provinceName': instance.provinceName,
      'district': instance.district,
      'districtName': instance.districtName,
      'ward': instance.ward,
      'wardName': instance.wardName,
      'street': instance.street,
      'street2': instance.street2,
      'zip': instance.zip,
    };

BaseCategory _$BaseCategoryFromJson(Map<String, dynamic> json) => BaseCategory(
      createdByUserId: json['createdByUserId'] as String?,
      lastModifiedByUserId: json['lastModifiedByUserId'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      applicationId: json['applicationId'] as String?,
      id: json['id'] as String?,
      parentId: json['parentId'] as String?,
      parentPath: json['parentPath'] as String?,
      name: json['name'] as String,
      displayName: json['displayName'] as String,
      type: json['type'] as String,
      alias: json['alias'] as String,
      detail: json['detail'] as String?,
      description: json['description'] as String?,
      order: json['order'] as int?,
      statusObj: statusEnumsFromJson(json['statusObj']),
      status: json['status'] as int?,
      isDeleted: json['isDeleted'] as bool?,
      imageUrl: json['imageUrl'] as String?,
      cLeft: json['c_left'] as int?,
      cRight: json['c_right'] as int?,
      cLevel: json['c_level'] as int?,
      aclObject: json['aclObject'] == null
          ? null
          : ACLObject.fromJson(json['aclObject'] as Map<String, dynamic>),
      acl: json['acl'] as String?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContent: json['metadataContent'] as String?,
      metaContentType: json['metaContentType'] as String?,
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      labelsJson: json['labelsJson'] as String?,
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$BaseCategoryToJson(BaseCategory instance) =>
    <String, dynamic>{
      'createdByUserId': instance.createdByUserId,
      'lastModifiedByUserId': instance.lastModifiedByUserId,
      'lastModifiedOnDate': instance.lastModifiedOnDate?.toIso8601String(),
      'createdOnDate': instance.createdOnDate?.toIso8601String(),
      'applicationId': instance.applicationId,
      'id': instance.id,
      'parentId': instance.parentId,
      'parentPath': instance.parentPath,
      'name': instance.name,
      'displayName': instance.displayName,
      'type': instance.type,
      'alias': instance.alias,
      'detail': instance.detail,
      'description': instance.description,
      'order': instance.order,
      'statusObj': statusEnumsToJson(instance.statusObj),
      'status': instance.status,
      'isDeleted': instance.isDeleted,
      'imageUrl': instance.imageUrl,
      'c_left': instance.cLeft,
      'c_right': instance.cRight,
      'c_level': instance.cLevel,
      'aclObject': instance.aclObject?.toJson(),
      'acl': instance.acl,
      'metadataContentObjs':
          instance.metadataContentObjs?.map((e) => e.toJson()).toList(),
      'metadataContent': instance.metadataContent,
      'metaContentType': instance.metaContentType,
      'labelsObjs': instance.labelsObjs?.map((e) => e.toJson()).toList(),
      'labelsJson': instance.labelsJson,
      'isActive': instance.isActive,
    };

BaseCategoryPagination _$BaseCategoryPaginationFromJson(
        Map<String, dynamic> json) =>
    BaseCategoryPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => BaseCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$BaseCategoryPaginationToJson(
        BaseCategoryPagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'numberOfRecords': instance.numberOfRecords,
      'totalRecords': instance.totalRecords,
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };

BaseCategoryResponseObject _$BaseCategoryResponseObjectFromJson(
        Map<String, dynamic> json) =>
    BaseCategoryResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : BaseCategory.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BaseCategoryResponseObjectToJson(
        BaseCategoryResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

BaseCategoryResponsePagination _$BaseCategoryResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    BaseCategoryResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : BaseCategoryPagination.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BaseCategoryResponsePaginationToJson(
        BaseCategoryResponsePagination instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

BaseCategoryViewModel _$BaseCategoryViewModelFromJson(
        Map<String, dynamic> json) =>
    BaseCategoryViewModel(
      id: json['id'] as String?,
      parentId: json['parentId'] as String?,
      parentPath: json['parentPath'] as String?,
      name: json['name'] as String,
      displayName: json['displayName'] as String?,
      type: json['type'] as String,
      alias: json['alias'] as String,
      detail: json['detail'] as String?,
      description: json['description'] as String?,
      order: json['order'] as int?,
      isActive: json['isActive'] as bool?,
      status: json['status'] as int?,
      imageUrl: json['imageUrl'] as String?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      parent: json['parent'] == null
          ? null
          : BaseCategoryViewModel.fromJson(
              json['parent'] as Map<String, dynamic>),
      children: (json['children'] as List<dynamic>?)
              ?.map((e) =>
                  BaseCategoryViewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$BaseCategoryViewModelToJson(
        BaseCategoryViewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'parentPath': instance.parentPath,
      'name': instance.name,
      'displayName': instance.displayName,
      'type': instance.type,
      'alias': instance.alias,
      'detail': instance.detail,
      'description': instance.description,
      'order': instance.order,
      'isActive': instance.isActive,
      'status': instance.status,
      'imageUrl': instance.imageUrl,
      'metadataContentObjs':
          instance.metadataContentObjs?.map((e) => e.toJson()).toList(),
      'parent': instance.parent?.toJson(),
      'children': instance.children?.map((e) => e.toJson()).toList(),
    };

BaseCategoryViewModelPagination _$BaseCategoryViewModelPaginationFromJson(
        Map<String, dynamic> json) =>
    BaseCategoryViewModelPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) =>
                  BaseCategoryViewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$BaseCategoryViewModelPaginationToJson(
        BaseCategoryViewModelPagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'numberOfRecords': instance.numberOfRecords,
      'totalRecords': instance.totalRecords,
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };

BaseCategoryViewModelResponseObject
    _$BaseCategoryViewModelResponseObjectFromJson(Map<String, dynamic> json) =>
        BaseCategoryViewModelResponseObject(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: json['data'] == null
              ? null
              : BaseCategoryViewModel.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BaseCategoryViewModelResponseObjectToJson(
        BaseCategoryViewModelResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

BaseCategoryViewModelResponsePagination
    _$BaseCategoryViewModelResponsePaginationFromJson(
            Map<String, dynamic> json) =>
        BaseCategoryViewModelResponsePagination(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: json['data'] == null
              ? null
              : BaseCategoryViewModelPagination.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BaseCategoryViewModelResponsePaginationToJson(
        BaseCategoryViewModelResponsePagination instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

BooleanResponseObject _$BooleanResponseObjectFromJson(
        Map<String, dynamic> json) =>
    BooleanResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] as bool?,
    );

Map<String, dynamic> _$BooleanResponseObjectToJson(
        BooleanResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data,
    };

CategoryOrderModel _$CategoryOrderModelFromJson(Map<String, dynamic> json) =>
    CategoryOrderModel(
      id: json['id'] as String?,
      order: json['order'] as int?,
    );

Map<String, dynamic> _$CategoryOrderModelToJson(CategoryOrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
    };

CategoryPatchRequestModel _$CategoryPatchRequestModelFromJson(
        Map<String, dynamic> json) =>
    CategoryPatchRequestModel(
      parentId: json['parentId'] as String?,
      name: json['name'] as String?,
      displayName: json['displayName'] as String?,
      type: json['type'] as String?,
      alias: json['alias'] as String?,
      detail: json['detail'] as String?,
      description: json['description'] as String?,
      order: json['order'] as int?,
      isActive: json['isActive'] as bool?,
      statusObj: statusEnumsFromJson(json['statusObj']),
      imageUrl: json['imageUrl'] as String?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CategoryPatchRequestModelToJson(
        CategoryPatchRequestModel instance) =>
    <String, dynamic>{
      'parentId': instance.parentId,
      'name': instance.name,
      'displayName': instance.displayName,
      'type': instance.type,
      'alias': instance.alias,
      'detail': instance.detail,
      'description': instance.description,
      'order': instance.order,
      'isActive': instance.isActive,
      'statusObj': statusEnumsToJson(instance.statusObj),
      'imageUrl': instance.imageUrl,
      'metadataContentObjs':
          instance.metadataContentObjs?.map((e) => e.toJson()).toList(),
      'labelsObjs': instance.labelsObjs?.map((e) => e.toJson()).toList(),
    };

CategoryRequestModel _$CategoryRequestModelFromJson(
        Map<String, dynamic> json) =>
    CategoryRequestModel(
      id: json['id'] as String?,
      parentId: json['parentId'] as String?,
      name: json['name'] as String,
      displayName: json['displayName'] as String?,
      type: json['type'] as String,
      alias: json['alias'] as String,
      detail: json['detail'] as String?,
      description: json['description'] as String?,
      statusObj: statusEnumsFromJson(json['statusObj']),
      imageUrl: json['imageUrl'] as String?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      order: json['order'] as int?,
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$CategoryRequestModelToJson(
        CategoryRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'name': instance.name,
      'displayName': instance.displayName,
      'type': instance.type,
      'alias': instance.alias,
      'detail': instance.detail,
      'description': instance.description,
      'statusObj': statusEnumsToJson(instance.statusObj),
      'imageUrl': instance.imageUrl,
      'metadataContentObjs':
          instance.metadataContentObjs?.map((e) => e.toJson()).toList(),
      'labelsObjs': instance.labelsObjs?.map((e) => e.toJson()).toList(),
      'order': instance.order,
      'isActive': instance.isActive,
    };

CustomRecurrenceModel _$CustomRecurrenceModelFromJson(
        Map<String, dynamic> json) =>
    CustomRecurrenceModel(
      repeatType: json['repeatType'] as String?,
      numberOfOccurrences: json['numberOfOccurrences'] as int?,
      repeateOnOfWeek: json['repeateOnOfWeek'] as String?,
      repeateOnOfMonthType: json['repeateOnOfMonthType'] as String?,
      repeateOnOfMonthByDay: json['repeateOnOfMonthByDay'] as String?,
      repeateOnOfMonthByDate: json['repeateOnOfMonthByDate'] as String?,
      repeateOnOfYear: json['repeateOnOfYear'] == null
          ? null
          : DateTime.parse(json['repeateOnOfYear'] as String),
      repeateEndType: json['repeateEndType'] as String?,
      valueOfRepeatTypeOn: json['valueOfRepeatTypeOn'] == null
          ? null
          : DateTime.parse(json['valueOfRepeatTypeOn'] as String),
      valueOfRepeatTypeAfter: json['valueOfRepeatTypeAfter'] as int?,
    );

Map<String, dynamic> _$CustomRecurrenceModelToJson(
        CustomRecurrenceModel instance) =>
    <String, dynamic>{
      'repeatType': instance.repeatType,
      'numberOfOccurrences': instance.numberOfOccurrences,
      'repeateOnOfWeek': instance.repeateOnOfWeek,
      'repeateOnOfMonthType': instance.repeateOnOfMonthType,
      'repeateOnOfMonthByDay': instance.repeateOnOfMonthByDay,
      'repeateOnOfMonthByDate': instance.repeateOnOfMonthByDate,
      'repeateOnOfYear': instance.repeateOnOfYear?.toIso8601String(),
      'repeateEndType': instance.repeateEndType,
      'valueOfRepeatTypeOn': instance.valueOfRepeatTypeOn?.toIso8601String(),
      'valueOfRepeatTypeAfter': instance.valueOfRepeatTypeAfter,
    };

DateTimeListResponseObject _$DateTimeListResponseObjectFromJson(
        Map<String, dynamic> json) =>
    DateTimeListResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => DateTime.parse(e as String))
              .toList() ??
          [],
    );

Map<String, dynamic> _$DateTimeListResponseObjectToJson(
        DateTimeListResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toIso8601String()).toList(),
    };

Email _$EmailFromJson(Map<String, dynamic> json) => Email(
      type:
          (json['type'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$EmailToJson(Email instance) => <String, dynamic>{
      'type': instance.type,
      'uri': instance.uri,
    };

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      label: json['label'] as String?,
      eventDate: json['eventDate'] == null
          ? null
          : DateTime.parse(json['eventDate'] as String),
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'label': instance.label,
      'eventDate': instance.eventDate?.toIso8601String(),
    };

EventAttendee _$EventAttendeeFromJson(Map<String, dynamic> json) =>
    EventAttendee(
      userId: json['userId'] as String?,
      username: json['username'] as String?,
      userFullname: json['userFullname'] as String?,
      userOtherInfo: json['userOtherInfo'] as String?,
    );

Map<String, dynamic> _$EventAttendeeToJson(EventAttendee instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'userFullname': instance.userFullname,
      'userOtherInfo': instance.userOtherInfo,
    };

EventDetails _$EventDetailsFromJson(Map<String, dynamic> json) => EventDetails(
      eventType: json['eventType'] as String?,
      icon: json['icon'] as String?,
      color: json['color'] as String?,
    );

Map<String, dynamic> _$EventDetailsToJson(EventDetails instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'icon': instance.icon,
      'color': instance.color,
    };

EventHistory _$EventHistoryFromJson(Map<String, dynamic> json) => EventHistory(
      modifiedDate: json['modifiedDate'] == null
          ? null
          : DateTime.parse(json['modifiedDate'] as String),
      modifiedUser: json['modifiedUser'] as String?,
      actions: json['actions'] as String?,
    );

Map<String, dynamic> _$EventHistoryToJson(EventHistory instance) =>
    <String, dynamic>{
      'modifiedDate': instance.modifiedDate?.toIso8601String(),
      'modifiedUser': instance.modifiedUser,
      'actions': instance.actions,
    };

EventResponseModel _$EventResponseModelFromJson(Map<String, dynamic> json) =>
    EventResponseModel(
      id: json['id'] as String?,
      objectId: json['objectId'] as String?,
      objectName: json['objectName'] as String?,
      objectInfo: json['objectInfo'] as String?,
      language: json['language'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      ownerId: json['ownerId'] as String?,
      attendees: (json['attendees'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      guest: json['guest'] as String?,
      eventDetails: json['eventDetails'] == null
          ? null
          : EventDetails.fromJson(json['eventDetails'] as Map<String, dynamic>),
      rrule: json['rrule'] as String?,
      customRecurrence: json['customRecurrence'] == null
          ? null
          : CustomRecurrenceModel.fromJson(
              json['customRecurrence'] as Map<String, dynamic>),
      applicationId: json['applicationId'] as String?,
      eventHistories: (json['eventHistories'] as List<dynamic>?)
              ?.map((e) => EventHistory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$EventResponseModelToJson(EventResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'objectId': instance.objectId,
      'objectName': instance.objectName,
      'objectInfo': instance.objectInfo,
      'language': instance.language,
      'title': instance.title,
      'description': instance.description,
      'location': instance.location,
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'ownerId': instance.ownerId,
      'attendees': instance.attendees,
      'guest': instance.guest,
      'eventDetails': instance.eventDetails?.toJson(),
      'rrule': instance.rrule,
      'customRecurrence': instance.customRecurrence?.toJson(),
      'applicationId': instance.applicationId,
      'eventHistories':
          instance.eventHistories?.map((e) => e.toJson()).toList(),
    };

EventResponseModelListResponseObject
    _$EventResponseModelListResponseObjectFromJson(Map<String, dynamic> json) =>
        EventResponseModelListResponseObject(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) =>
                      EventResponseModel.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$EventResponseModelListResponseObjectToJson(
        EventResponseModelListResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

EventResponseModelResponseObject _$EventResponseModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    EventResponseModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : EventResponseModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventResponseModelResponseObjectToJson(
        EventResponseModelResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

EventResquestModel _$EventResquestModelFromJson(Map<String, dynamic> json) =>
    EventResquestModel(
      id: json['id'] as String?,
      objectId: json['objectId'] as String?,
      objectName: json['objectName'] as String?,
      objectInfo: json['objectInfo'] as String?,
      language: json['language'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      ownerId: json['ownerId'] as String?,
      attendees: (json['attendees'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      guest: json['guest'] as String?,
      eventDetails: json['eventDetails'] == null
          ? null
          : EventDetails.fromJson(json['eventDetails'] as Map<String, dynamic>),
      rrule: json['rrule'] as String?,
      customRecurrence: json['customRecurrence'] == null
          ? null
          : CustomRecurrenceModel.fromJson(
              json['customRecurrence'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventResquestModelToJson(EventResquestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'objectId': instance.objectId,
      'objectName': instance.objectName,
      'objectInfo': instance.objectInfo,
      'language': instance.language,
      'title': instance.title,
      'description': instance.description,
      'location': instance.location,
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'ownerId': instance.ownerId,
      'attendees': instance.attendees,
      'guest': instance.guest,
      'eventDetails': instance.eventDetails?.toJson(),
      'rrule': instance.rrule,
      'customRecurrence': instance.customRecurrence?.toJson(),
    };

Feedback _$FeedbackFromJson(Map<String, dynamic> json) => Feedback(
      createdByUserId: json['createdByUserId'] as String?,
      lastModifiedByUserId: json['lastModifiedByUserId'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      applicationId: json['applicationId'] as String?,
      id: json['id'] as String?,
      feedbackName: json['feedbackName'] as String?,
      feedbackType: json['feedbackType'] as String?,
      objectId: json['objectId'] as String?,
      objectCode: json['objectCode'] as String?,
      objectIds: json['objectIds'] as String?,
      category: json['category'] as String?,
      subject: json['subject'] as String?,
      content: json['content'] as String?,
      status: json['status'] as int?,
      userFullname: json['userFullname'] as String?,
      username: json['username'] as String?,
      metadataContent: json['metadataContent'] as String?,
      metaContentType: json['metaContentType'] as String?,
    );

Map<String, dynamic> _$FeedbackToJson(Feedback instance) => <String, dynamic>{
      'createdByUserId': instance.createdByUserId,
      'lastModifiedByUserId': instance.lastModifiedByUserId,
      'lastModifiedOnDate': instance.lastModifiedOnDate?.toIso8601String(),
      'createdOnDate': instance.createdOnDate?.toIso8601String(),
      'applicationId': instance.applicationId,
      'id': instance.id,
      'feedbackName': instance.feedbackName,
      'feedbackType': instance.feedbackType,
      'objectId': instance.objectId,
      'objectCode': instance.objectCode,
      'objectIds': instance.objectIds,
      'category': instance.category,
      'subject': instance.subject,
      'content': instance.content,
      'status': instance.status,
      'userFullname': instance.userFullname,
      'username': instance.username,
      'metadataContent': instance.metadataContent,
      'metaContentType': instance.metaContentType,
    };

FeedbackPagination _$FeedbackPaginationFromJson(Map<String, dynamic> json) =>
    FeedbackPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => Feedback.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FeedbackPaginationToJson(FeedbackPagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'numberOfRecords': instance.numberOfRecords,
      'totalRecords': instance.totalRecords,
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };

FeedbackRequestModel _$FeedbackRequestModelFromJson(
        Map<String, dynamic> json) =>
    FeedbackRequestModel(
      feedbackName: json['feedbackName'] as String?,
      feedbackType: json['feedbackType'] as String?,
      objectId: json['objectId'] as String?,
      objectCode: json['objectCode'] as String?,
      objectIds: json['objectIds'] as String?,
      category: json['category'] as String?,
      subject: json['subject'] as String?,
      content: json['content'] as String?,
      status: json['status'] as int?,
      metadata: json['metadata'] as String?,
    );

Map<String, dynamic> _$FeedbackRequestModelToJson(
        FeedbackRequestModel instance) =>
    <String, dynamic>{
      'feedbackName': instance.feedbackName,
      'feedbackType': instance.feedbackType,
      'objectId': instance.objectId,
      'objectCode': instance.objectCode,
      'objectIds': instance.objectIds,
      'category': instance.category,
      'subject': instance.subject,
      'content': instance.content,
      'status': instance.status,
      'metadata': instance.metadata,
    };

FeedbackResponseObject _$FeedbackResponseObjectFromJson(
        Map<String, dynamic> json) =>
    FeedbackResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : Feedback.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeedbackResponseObjectToJson(
        FeedbackResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

FeedbackResponsePagination _$FeedbackResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    FeedbackResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : FeedbackPagination.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeedbackResponsePaginationToJson(
        FeedbackResponsePagination instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

GuidListResponseObject _$GuidListResponseObjectFromJson(
        Map<String, dynamic> json) =>
    GuidListResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data:
          (json['data'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
    );

Map<String, dynamic> _$GuidListResponseObjectToJson(
        GuidListResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data,
    };

LabelsObj _$LabelsObjFromJson(Map<String, dynamic> json) => LabelsObj(
      objectId: json['objectId'] as String?,
      objectCode: json['objectCode'] as String?,
      objectName: json['objectName'] as String?,
      color: json['color'] as String?,
    );

Map<String, dynamic> _$LabelsObjToJson(LabelsObj instance) => <String, dynamic>{
      'objectId': instance.objectId,
      'objectCode': instance.objectCode,
      'objectName': instance.objectName,
      'color': instance.color,
    };

ListOfUserRequestModel _$ListOfUserRequestModelFromJson(
        Map<String, dynamic> json) =>
    ListOfUserRequestModel(
      listOfUserIds: (json['listOfUserIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ListOfUserRequestModelToJson(
        ListOfUserRequestModel instance) =>
    <String, dynamic>{
      'listOfUserIds': instance.listOfUserIds,
    };

MetaKeyValue _$MetaKeyValueFromJson(Map<String, dynamic> json) => MetaKeyValue(
      key: json['key'] as String?,
      value: json['value'] as String?,
      order: json['order'] as int?,
    );

Map<String, dynamic> _$MetaKeyValueToJson(MetaKeyValue instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'order': instance.order,
    };

MetadataValue _$MetadataValueFromJson(Map<String, dynamic> json) =>
    MetadataValue(
      id: json['id'] as String?,
      fieldName: json['fieldName'] as String?,
      displayName: json['displayName'] as String?,
      fieldType: metafieldTypeFromJson(json['fieldType']),
      defaultValue: json['defaultValue'] as String?,
      fieldValues: json['fieldValues'] as String?,
      fieldSelectionValues: (json['fieldSelectionValues'] as List<dynamic>?)
              ?.map((e) => MetaKeyValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      allowNulls: json['allowNulls'] as bool?,
      sortOrder: json['sortOrder'] as int?,
    );

Map<String, dynamic> _$MetadataValueToJson(MetadataValue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fieldName': instance.fieldName,
      'displayName': instance.displayName,
      'fieldType': metafieldTypeToJson(instance.fieldType),
      'defaultValue': instance.defaultValue,
      'fieldValues': instance.fieldValues,
      'fieldSelectionValues':
          instance.fieldSelectionValues?.map((e) => e.toJson()).toList(),
      'allowNulls': instance.allowNulls,
      'sortOrder': instance.sortOrder,
    };

Org _$OrgFromJson(Map<String, dynamic> json) => Org(
      title: json['title'] as String?,
      organization: json['organization'] as String?,
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$OrgToJson(Org instance) => <String, dynamic>{
      'title': instance.title,
      'organization': instance.organization,
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'description': instance.description,
    };

Organization _$OrganizationFromJson(Map<String, dynamic> json) => Organization(
      createdByUserId: json['createdByUserId'] as String?,
      lastModifiedByUserId: json['lastModifiedByUserId'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      applicationId: json['applicationId'] as String?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metaContentType: json['metaContentType'] as String?,
      metadataContent: json['metadataContent'] as String?,
      organizationId: json['organizationId'] as String?,
      parentId: json['parentId'] as String?,
      parentOrganization: json['parentOrganization'] == null
          ? null
          : Organization.fromJson(
              json['parentOrganization'] as Map<String, dynamic>),
      code: json['code'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      type: json['type'] as String?,
      order: json['order'] as int?,
      address: json['address'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      fax: json['fax'] as String?,
      email: json['email'] as String?,
      loai: json['loai'] as int?,
      idPath: json['idPath'] as String?,
      path: json['path'] as String?,
      level: json['level'] as int?,
      hasChild: json['hasChild'] as bool?,
      active: json['active'] as int?,
      accountingAppId: json['accountingAppId'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$OrganizationToJson(Organization instance) =>
    <String, dynamic>{
      'createdByUserId': instance.createdByUserId,
      'lastModifiedByUserId': instance.lastModifiedByUserId,
      'lastModifiedOnDate': instance.lastModifiedOnDate?.toIso8601String(),
      'createdOnDate': instance.createdOnDate?.toIso8601String(),
      'applicationId': instance.applicationId,
      'metadataContentObjs':
          instance.metadataContentObjs?.map((e) => e.toJson()).toList(),
      'metaContentType': instance.metaContentType,
      'metadataContent': instance.metadataContent,
      'organizationId': instance.organizationId,
      'parentId': instance.parentId,
      'parentOrganization': instance.parentOrganization?.toJson(),
      'code': instance.code,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'order': instance.order,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'fax': instance.fax,
      'email': instance.email,
      'loai': instance.loai,
      'idPath': instance.idPath,
      'path': instance.path,
      'level': instance.level,
      'hasChild': instance.hasChild,
      'active': instance.active,
      'accountingAppId': instance.accountingAppId,
      'imageUrl': instance.imageUrl,
    };

OrganizationPagination _$OrganizationPaginationFromJson(
        Map<String, dynamic> json) =>
    OrganizationPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => Organization.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$OrganizationPaginationToJson(
        OrganizationPagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'numberOfRecords': instance.numberOfRecords,
      'totalRecords': instance.totalRecords,
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };

OrganizationRequestModel _$OrganizationRequestModelFromJson(
        Map<String, dynamic> json) =>
    OrganizationRequestModel(
      id: json['id'] as String?,
      parentId: json['parentId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      order: json['order'] as int?,
      address: json['address'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      fax: json['fax'] as String?,
      email: json['email'] as String?,
      loai: json['loai'] as int?,
      idPath: json['idPath'] as String?,
      path: json['path'] as String?,
      level: json['level'] as int?,
      hasChild: json['hasChild'] as bool?,
      active: json['active'] as int?,
    );

Map<String, dynamic> _$OrganizationRequestModelToJson(
        OrganizationRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'type': instance.type,
      'order': instance.order,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'fax': instance.fax,
      'email': instance.email,
      'loai': instance.loai,
      'idPath': instance.idPath,
      'path': instance.path,
      'level': instance.level,
      'hasChild': instance.hasChild,
      'active': instance.active,
    };

OrganizationResponseObject _$OrganizationResponseObjectFromJson(
        Map<String, dynamic> json) =>
    OrganizationResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : Organization.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrganizationResponseObjectToJson(
        OrganizationResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

OrganizationResponsePagination _$OrganizationResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    OrganizationResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : OrganizationPagination.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrganizationResponsePaginationToJson(
        OrganizationResponsePagination instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

Phone _$PhoneFromJson(Map<String, dynamic> json) => Phone(
      type:
          (json['type'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$PhoneToJson(Phone instance) => <String, dynamic>{
      'type': instance.type,
      'uri': instance.uri,
    };

ResContact _$ResContactFromJson(Map<String, dynamic> json) => ResContact(
      createdByUserId: json['createdByUserId'] as String?,
      lastModifiedByUserId: json['lastModifiedByUserId'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      applicationId: json['applicationId'] as String?,
      id: json['id'] as String?,
      refsObject: (json['refsObject'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      refs: json['refs'] as String?,
      name: json['name'] as String?,
      title: json['title'] as String?,
      fullname: json['fullname'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      eventsObject: (json['eventsObject'] as List<dynamic>?)
              ?.map((e) => Event.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      events: json['events'] as String?,
      telephonesObject: (json['telephonesObject'] as List<dynamic>?)
              ?.map((e) => Phone.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      telephones: json['telephones'] as String?,
      addressesObject: (json['addressesObject'] as List<dynamic>?)
              ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      addresses: json['addresses'] as String?,
      organizationsObject: (json['organizationsObject'] as List<dynamic>?)
              ?.map((e) => Org.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      organizations: json['organizations'] as String?,
      emailObject: (json['emailObject'] as List<dynamic>?)
              ?.map((e) => Email.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      emails: json['emails'] as String?,
      websiteObject: (json['websiteObject'] as List<dynamic>?)
              ?.map((e) => Website.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      websites: json['websites'] as String?,
      notes: json['notes'] as String?,
      imageUrl: json['imageUrl'] as String?,
      qrCodeUrl: json['qrCodeUrl'] as String?,
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      labelsJson: json['labelsJson'] as String?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContent: json['metadataContent'] as String?,
      metaContentType: json['metaContentType'] as String?,
      isShared: json['isShared'] as bool?,
      isDeleted: json['isDeleted'] as bool?,
      isActive: json['isActive'] as bool?,
      order: json['order'] as int?,
    );

Map<String, dynamic> _$ResContactToJson(ResContact instance) =>
    <String, dynamic>{
      'createdByUserId': instance.createdByUserId,
      'lastModifiedByUserId': instance.lastModifiedByUserId,
      'lastModifiedOnDate': instance.lastModifiedOnDate?.toIso8601String(),
      'createdOnDate': instance.createdOnDate?.toIso8601String(),
      'applicationId': instance.applicationId,
      'id': instance.id,
      'refsObject': instance.refsObject,
      'refs': instance.refs,
      'name': instance.name,
      'title': instance.title,
      'fullname': instance.fullname,
      'birthday': instance.birthday?.toIso8601String(),
      'eventsObject': instance.eventsObject?.map((e) => e.toJson()).toList(),
      'events': instance.events,
      'telephonesObject':
          instance.telephonesObject?.map((e) => e.toJson()).toList(),
      'telephones': instance.telephones,
      'addressesObject':
          instance.addressesObject?.map((e) => e.toJson()).toList(),
      'addresses': instance.addresses,
      'organizationsObject':
          instance.organizationsObject?.map((e) => e.toJson()).toList(),
      'organizations': instance.organizations,
      'emailObject': instance.emailObject?.map((e) => e.toJson()).toList(),
      'emails': instance.emails,
      'websiteObject': instance.websiteObject?.map((e) => e.toJson()).toList(),
      'websites': instance.websites,
      'notes': instance.notes,
      'imageUrl': instance.imageUrl,
      'qrCodeUrl': instance.qrCodeUrl,
      'labelsObjs': instance.labelsObjs?.map((e) => e.toJson()).toList(),
      'labelsJson': instance.labelsJson,
      'metadataContentObjs':
          instance.metadataContentObjs?.map((e) => e.toJson()).toList(),
      'metadataContent': instance.metadataContent,
      'metaContentType': instance.metaContentType,
      'isShared': instance.isShared,
      'isDeleted': instance.isDeleted,
      'isActive': instance.isActive,
      'order': instance.order,
    };

ResContactPatchUpdateResquestModel _$ResContactPatchUpdateResquestModelFromJson(
        Map<String, dynamic> json) =>
    ResContactPatchUpdateResquestModel(
      name: json['name'] as String?,
      title: json['title'] as String?,
      fullname: json['fullname'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      eventsObject: (json['eventsObject'] as List<dynamic>?)
              ?.map((e) => Event.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      organizationsObject: (json['organizationsObject'] as List<dynamic>?)
              ?.map((e) => Org.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      addressesObject: (json['addressesObject'] as List<dynamic>?)
              ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      telephonesObject: (json['telephonesObject'] as List<dynamic>?)
              ?.map((e) => Phone.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      emailObject: (json['emailObject'] as List<dynamic>?)
              ?.map((e) => Email.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      websiteObject: (json['websiteObject'] as List<dynamic>?)
              ?.map((e) => Website.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      notes: json['notes'] as String?,
      imageUrl: json['imageUrl'] as String?,
      qrCodeUrl: json['qrCodeUrl'] as String?,
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContent: json['metadataContent'] as String?,
      metaContentType: json['metaContentType'] as String?,
      isShared: json['isShared'] as bool?,
      order: json['order'] as int?,
      isActive: json['isActive'] as bool?,
      refsObject: (json['refsObject'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ResContactPatchUpdateResquestModelToJson(
        ResContactPatchUpdateResquestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'fullname': instance.fullname,
      'birthday': instance.birthday?.toIso8601String(),
      'eventsObject': instance.eventsObject?.map((e) => e.toJson()).toList(),
      'organizationsObject':
          instance.organizationsObject?.map((e) => e.toJson()).toList(),
      'addressesObject':
          instance.addressesObject?.map((e) => e.toJson()).toList(),
      'telephonesObject':
          instance.telephonesObject?.map((e) => e.toJson()).toList(),
      'emailObject': instance.emailObject?.map((e) => e.toJson()).toList(),
      'websiteObject': instance.websiteObject?.map((e) => e.toJson()).toList(),
      'notes': instance.notes,
      'imageUrl': instance.imageUrl,
      'qrCodeUrl': instance.qrCodeUrl,
      'labelsObjs': instance.labelsObjs?.map((e) => e.toJson()).toList(),
      'metadataContentObjs':
          instance.metadataContentObjs?.map((e) => e.toJson()).toList(),
      'metadataContent': instance.metadataContent,
      'metaContentType': instance.metaContentType,
      'isShared': instance.isShared,
      'order': instance.order,
      'isActive': instance.isActive,
      'refsObject': instance.refsObject,
      'id': instance.id,
    };

ResContactResponseModel _$ResContactResponseModelFromJson(
        Map<String, dynamic> json) =>
    ResContactResponseModel(
      name: json['name'] as String?,
      title: json['title'] as String?,
      fullname: json['fullname'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      eventsObject: (json['eventsObject'] as List<dynamic>?)
              ?.map((e) => Event.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      organizationsObject: (json['organizationsObject'] as List<dynamic>?)
              ?.map((e) => Org.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      addressesObject: (json['addressesObject'] as List<dynamic>?)
              ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      telephonesObject: (json['telephonesObject'] as List<dynamic>?)
              ?.map((e) => Phone.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      emailObject: (json['emailObject'] as List<dynamic>?)
              ?.map((e) => Email.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      websiteObject: (json['websiteObject'] as List<dynamic>?)
              ?.map((e) => Website.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      notes: json['notes'] as String?,
      imageUrl: json['imageUrl'] as String?,
      qrCodeUrl: json['qrCodeUrl'] as String?,
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContent: json['metadataContent'] as String?,
      metaContentType: json['metaContentType'] as String?,
      isShared: json['isShared'] as bool?,
      order: json['order'] as int?,
      isActive: json['isActive'] as bool?,
      id: json['id'] as String?,
      refsObject: (json['refsObject'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ResContactResponseModelToJson(
        ResContactResponseModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'fullname': instance.fullname,
      'birthday': instance.birthday?.toIso8601String(),
      'eventsObject': instance.eventsObject?.map((e) => e.toJson()).toList(),
      'organizationsObject':
          instance.organizationsObject?.map((e) => e.toJson()).toList(),
      'addressesObject':
          instance.addressesObject?.map((e) => e.toJson()).toList(),
      'telephonesObject':
          instance.telephonesObject?.map((e) => e.toJson()).toList(),
      'emailObject': instance.emailObject?.map((e) => e.toJson()).toList(),
      'websiteObject': instance.websiteObject?.map((e) => e.toJson()).toList(),
      'notes': instance.notes,
      'imageUrl': instance.imageUrl,
      'qrCodeUrl': instance.qrCodeUrl,
      'labelsObjs': instance.labelsObjs?.map((e) => e.toJson()).toList(),
      'metadataContentObjs':
          instance.metadataContentObjs?.map((e) => e.toJson()).toList(),
      'metadataContent': instance.metadataContent,
      'metaContentType': instance.metaContentType,
      'isShared': instance.isShared,
      'order': instance.order,
      'isActive': instance.isActive,
      'id': instance.id,
      'refsObject': instance.refsObject,
    };

ResContactResponseModelPagination _$ResContactResponseModelPaginationFromJson(
        Map<String, dynamic> json) =>
    ResContactResponseModelPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) =>
                  ResContactResponseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ResContactResponseModelPaginationToJson(
        ResContactResponseModelPagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'numberOfRecords': instance.numberOfRecords,
      'totalRecords': instance.totalRecords,
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };

ResContactResponseModelResponseList
    _$ResContactResponseModelResponseListFromJson(Map<String, dynamic> json) =>
        ResContactResponseModelResponseList(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) => ResContactResponseModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$ResContactResponseModelResponseListToJson(
        ResContactResponseModelResponseList instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

ResContactResponseModelResponseObject
    _$ResContactResponseModelResponseObjectFromJson(
            Map<String, dynamic> json) =>
        ResContactResponseModelResponseObject(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: json['data'] == null
              ? null
              : ResContactResponseModel.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ResContactResponseModelResponseObjectToJson(
        ResContactResponseModelResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

ResContactResponseModelResponsePagination
    _$ResContactResponseModelResponsePaginationFromJson(
            Map<String, dynamic> json) =>
        ResContactResponseModelResponsePagination(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: json['data'] == null
              ? null
              : ResContactResponseModelPagination.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ResContactResponseModelResponsePaginationToJson(
        ResContactResponseModelResponsePagination instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

ResContactUpdateResquestModel _$ResContactUpdateResquestModelFromJson(
        Map<String, dynamic> json) =>
    ResContactUpdateResquestModel(
      name: json['name'] as String?,
      title: json['title'] as String?,
      fullname: json['fullname'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      eventsObject: (json['eventsObject'] as List<dynamic>?)
              ?.map((e) => Event.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      organizationsObject: (json['organizationsObject'] as List<dynamic>?)
              ?.map((e) => Org.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      addressesObject: (json['addressesObject'] as List<dynamic>?)
              ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      telephonesObject: (json['telephonesObject'] as List<dynamic>?)
              ?.map((e) => Phone.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      emailObject: (json['emailObject'] as List<dynamic>?)
              ?.map((e) => Email.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      websiteObject: (json['websiteObject'] as List<dynamic>?)
              ?.map((e) => Website.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      notes: json['notes'] as String?,
      imageUrl: json['imageUrl'] as String?,
      qrCodeUrl: json['qrCodeUrl'] as String?,
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContent: json['metadataContent'] as String?,
      metaContentType: json['metaContentType'] as String?,
      isShared: json['isShared'] as bool?,
      order: json['order'] as int?,
      isActive: json['isActive'] as bool?,
      refsObject: (json['refsObject'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ResContactUpdateResquestModelToJson(
        ResContactUpdateResquestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'fullname': instance.fullname,
      'birthday': instance.birthday?.toIso8601String(),
      'eventsObject': instance.eventsObject?.map((e) => e.toJson()).toList(),
      'organizationsObject':
          instance.organizationsObject?.map((e) => e.toJson()).toList(),
      'addressesObject':
          instance.addressesObject?.map((e) => e.toJson()).toList(),
      'telephonesObject':
          instance.telephonesObject?.map((e) => e.toJson()).toList(),
      'emailObject': instance.emailObject?.map((e) => e.toJson()).toList(),
      'websiteObject': instance.websiteObject?.map((e) => e.toJson()).toList(),
      'notes': instance.notes,
      'imageUrl': instance.imageUrl,
      'qrCodeUrl': instance.qrCodeUrl,
      'labelsObjs': instance.labelsObjs?.map((e) => e.toJson()).toList(),
      'metadataContentObjs':
          instance.metadataContentObjs?.map((e) => e.toJson()).toList(),
      'metadataContent': instance.metadataContent,
      'metaContentType': instance.metaContentType,
      'isShared': instance.isShared,
      'order': instance.order,
      'isActive': instance.isActive,
      'refsObject': instance.refsObject,
    };

ResCustomerGroup _$ResCustomerGroupFromJson(Map<String, dynamic> json) =>
    ResCustomerGroup(
      createdByUserId: json['createdByUserId'] as String?,
      lastModifiedByUserId: json['lastModifiedByUserId'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      applicationId: json['applicationId'] as String?,
      id: json['id'] as String?,
      parentId: json['parentId'] as String?,
      parentGroup: json['parentGroup'] == null
          ? null
          : ResCustomerGroup.fromJson(
              json['parentGroup'] as Map<String, dynamic>),
      name: json['name'] as String?,
      active: json['active'] as bool?,
      companyId: json['companyId'] as String?,
    );

Map<String, dynamic> _$ResCustomerGroupToJson(ResCustomerGroup instance) =>
    <String, dynamic>{
      'createdByUserId': instance.createdByUserId,
      'lastModifiedByUserId': instance.lastModifiedByUserId,
      'lastModifiedOnDate': instance.lastModifiedOnDate?.toIso8601String(),
      'createdOnDate': instance.createdOnDate?.toIso8601String(),
      'applicationId': instance.applicationId,
      'id': instance.id,
      'parentId': instance.parentId,
      'parentGroup': instance.parentGroup?.toJson(),
      'name': instance.name,
      'active': instance.active,
      'companyId': instance.companyId,
    };

ResCustomerGroupPagination _$ResCustomerGroupPaginationFromJson(
        Map<String, dynamic> json) =>
    ResCustomerGroupPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => ResCustomerGroup.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ResCustomerGroupPaginationToJson(
        ResCustomerGroupPagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'numberOfRecords': instance.numberOfRecords,
      'totalRecords': instance.totalRecords,
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };

ResCustomerGroupRequestModel _$ResCustomerGroupRequestModelFromJson(
        Map<String, dynamic> json) =>
    ResCustomerGroupRequestModel(
      parentId: json['parentId'] as String?,
      name: json['name'] as String?,
      active: json['active'] as bool?,
      companyId: json['companyId'] as String?,
    );

Map<String, dynamic> _$ResCustomerGroupRequestModelToJson(
        ResCustomerGroupRequestModel instance) =>
    <String, dynamic>{
      'parentId': instance.parentId,
      'name': instance.name,
      'active': instance.active,
      'companyId': instance.companyId,
    };

ResCustomerGroupResponseObject _$ResCustomerGroupResponseObjectFromJson(
        Map<String, dynamic> json) =>
    ResCustomerGroupResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : ResCustomerGroup.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResCustomerGroupResponseObjectToJson(
        ResCustomerGroupResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

ResCustomerGroupResponsePagination _$ResCustomerGroupResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    ResCustomerGroupResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : ResCustomerGroupPagination.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResCustomerGroupResponsePaginationToJson(
        ResCustomerGroupResponsePagination instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

ResPartner _$ResPartnerFromJson(Map<String, dynamic> json) => ResPartner(
      createdByUserId: json['createdByUserId'] as String?,
      lastModifiedByUserId: json['lastModifiedByUserId'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      applicationId: json['applicationId'] as String?,
      id: json['id'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      companyId: json['companyId'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      displayName: json['displayName'] as String?,
      title: json['title'] as String?,
      parentId: json['parentId'] as String?,
      parentName: json['parentName'] as String?,
      ref: json['ref'] as String?,
      refName: json['refName'] as String?,
      tz: json['tz'] as String?,
      lang: json['lang'] as String?,
      languageName: json['languageName'] as String?,
      userId: json['userId'] as String?,
      vat: json['vat'] as String?,
      website: json['website'] as String?,
      comment: json['comment'] as String?,
      creditLimit: (json['creditLimit'] as num?)?.toDouble(),
      barcode: json['barcode'] as String?,
      customer: json['customer'] as bool?,
      supplier: json['supplier'] as bool?,
      employee: json['employee'] as bool?,
      function: json['function'] as String?,
      type: json['type'] as String?,
      email: json['email'] as String?,
      mobile: json['mobile'] as String?,
      isCompany: json['isCompany'] as bool?,
      industryId: json['industryId'] as String?,
      color: json['color'] as int?,
      partnerShare: json['partnerShare'] as bool?,
      commercialPartnerId: json['commercialPartnerId'] as String?,
      commercialCompanyName: json['commercialCompanyName'] as String?,
      companyName: json['companyName'] as String?,
      messageMainAttachmentId: json['messageMainAttachmentId'] as String?,
      messageMainAttachmentPath: json['messageMainAttachmentPath'] as String?,
      messageBounce: json['messageBounce'] as int?,
      signupToken: json['signupToken'] as String?,
      signupType: json['signupType'] as String?,
      signupExpiration: json['signupExpiration'] == null
          ? null
          : DateTime.parse(json['signupExpiration'] as String),
      partnerGid: json['partnerGid'] as String?,
      additionalInfo: json['additionalInfo'] as String?,
      pickingWarn: json['pickingWarn'] as String?,
      pickingWarnMsg: json['pickingWarnMsg'] as String?,
      teamId: json['teamId'] as String?,
      debitLimit: (json['debitLimit'] as num?)?.toDouble(),
      lastTimeEntriesChecked: json['lastTimeEntriesChecked'] == null
          ? null
          : DateTime.parse(json['lastTimeEntriesChecked'] as String),
      invoiceWarn: json['invoiceWarn'] as String?,
      invoiceWarnMsg: json['invoiceWarnMsg'] as String?,
      saleWarn: json['saleWarn'] as String?,
      saleWarnMsg: json['saleWarnMsg'] as String?,
      purchaseWarn: json['purchaseWarn'] as String?,
      purchaseWarnMsg: json['purchaseWarnMsg'] as String?,
      calendarLastNotifAck: json['calendarLastNotifAck'] == null
          ? null
          : DateTime.parse(json['calendarLastNotifAck'] as String),
      accountingObjectType: json['accountingObjectType'] as int?,
      websiteId: json['websiteId'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      fax: json['fax'] as String?,
      isSynchronized: json['isSynchronized'] as int?,
      countryId: json['countryId'] as String?,
      countryCode: json['countryCode'] as String?,
      countryName: json['countryName'] as String?,
      stateId: json['stateId'] as String?,
      province: json['province'] as String?,
      provinceName: json['provinceName'] as String?,
      district: json['district'] as String?,
      districtName: json['districtName'] as String?,
      ward: json['ward'] as String?,
      wardName: json['wardName'] as String?,
      city: json['city'] as String?,
      street: json['street'] as String?,
      street2: json['street2'] as String?,
      isSmallStreet: json['isSmallStreet'] as bool?,
      zip: json['zip'] as String?,
      imageUrl: json['imageUrl'] as String?,
      geoLocation: json['geoLocation'] as String?,
      geoLocationImage: json['geoLocationImage'] as String?,
      checkinDate: json['checkinDate'] == null
          ? null
          : DateTime.parse(json['checkinDate'] as String),
      checkInAddress: json['checkInAddress'] as String?,
      checkInStatus: json['checkInStatus'] as int?,
      checkInUserId: json['checkInUserId'] as String?,
      checkInUsername: json['checkInUsername'] as String?,
      confirmUserId: json['confirmUserId'] as String?,
      confirmUsername: json['confirmUsername'] as String?,
      keyword: json['keyword'] as String?,
      cLeft: json['c_left'] as int?,
      cRight: json['c_right'] as int?,
      cLevel: json['c_level'] as int?,
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      labelsJson: json['labelsJson'] as String?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContent: json['metadataContent'] as String?,
      metaContentType: json['metaContentType'] as String?,
      order: json['order'] as int?,
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$ResPartnerToJson(ResPartner instance) =>
    <String, dynamic>{
      'createdByUserId': instance.createdByUserId,
      'lastModifiedByUserId': instance.lastModifiedByUserId,
      'lastModifiedOnDate': instance.lastModifiedOnDate?.toIso8601String(),
      'createdOnDate': instance.createdOnDate?.toIso8601String(),
      'applicationId': instance.applicationId,
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'companyId': instance.companyId,
      'date': instance.date?.toIso8601String(),
      'displayName': instance.displayName,
      'title': instance.title,
      'parentId': instance.parentId,
      'parentName': instance.parentName,
      'ref': instance.ref,
      'refName': instance.refName,
      'tz': instance.tz,
      'lang': instance.lang,
      'languageName': instance.languageName,
      'userId': instance.userId,
      'vat': instance.vat,
      'website': instance.website,
      'comment': instance.comment,
      'creditLimit': instance.creditLimit,
      'barcode': instance.barcode,
      'customer': instance.customer,
      'supplier': instance.supplier,
      'employee': instance.employee,
      'function': instance.function,
      'type': instance.type,
      'email': instance.email,
      'mobile': instance.mobile,
      'isCompany': instance.isCompany,
      'industryId': instance.industryId,
      'color': instance.color,
      'partnerShare': instance.partnerShare,
      'commercialPartnerId': instance.commercialPartnerId,
      'commercialCompanyName': instance.commercialCompanyName,
      'companyName': instance.companyName,
      'messageMainAttachmentId': instance.messageMainAttachmentId,
      'messageMainAttachmentPath': instance.messageMainAttachmentPath,
      'messageBounce': instance.messageBounce,
      'signupToken': instance.signupToken,
      'signupType': instance.signupType,
      'signupExpiration': instance.signupExpiration?.toIso8601String(),
      'partnerGid': instance.partnerGid,
      'additionalInfo': instance.additionalInfo,
      'pickingWarn': instance.pickingWarn,
      'pickingWarnMsg': instance.pickingWarnMsg,
      'teamId': instance.teamId,
      'debitLimit': instance.debitLimit,
      'lastTimeEntriesChecked':
          instance.lastTimeEntriesChecked?.toIso8601String(),
      'invoiceWarn': instance.invoiceWarn,
      'invoiceWarnMsg': instance.invoiceWarnMsg,
      'saleWarn': instance.saleWarn,
      'saleWarnMsg': instance.saleWarnMsg,
      'purchaseWarn': instance.purchaseWarn,
      'purchaseWarnMsg': instance.purchaseWarnMsg,
      'calendarLastNotifAck': instance.calendarLastNotifAck?.toIso8601String(),
      'accountingObjectType': instance.accountingObjectType,
      'websiteId': instance.websiteId,
      'phoneNumber': instance.phoneNumber,
      'fax': instance.fax,
      'isSynchronized': instance.isSynchronized,
      'countryId': instance.countryId,
      'countryCode': instance.countryCode,
      'countryName': instance.countryName,
      'stateId': instance.stateId,
      'province': instance.province,
      'provinceName': instance.provinceName,
      'district': instance.district,
      'districtName': instance.districtName,
      'ward': instance.ward,
      'wardName': instance.wardName,
      'city': instance.city,
      'street': instance.street,
      'street2': instance.street2,
      'isSmallStreet': instance.isSmallStreet,
      'zip': instance.zip,
      'imageUrl': instance.imageUrl,
      'geoLocation': instance.geoLocation,
      'geoLocationImage': instance.geoLocationImage,
      'checkinDate': instance.checkinDate?.toIso8601String(),
      'checkInAddress': instance.checkInAddress,
      'checkInStatus': instance.checkInStatus,
      'checkInUserId': instance.checkInUserId,
      'checkInUsername': instance.checkInUsername,
      'confirmUserId': instance.confirmUserId,
      'confirmUsername': instance.confirmUsername,
      'keyword': instance.keyword,
      'c_left': instance.cLeft,
      'c_right': instance.cRight,
      'c_level': instance.cLevel,
      'labelsObjs': instance.labelsObjs?.map((e) => e.toJson()).toList(),
      'labelsJson': instance.labelsJson,
      'metadataContentObjs':
          instance.metadataContentObjs?.map((e) => e.toJson()).toList(),
      'metadataContent': instance.metadataContent,
      'metaContentType': instance.metaContentType,
      'order': instance.order,
      'isActive': instance.isActive,
    };

ResPartnerPagination _$ResPartnerPaginationFromJson(
        Map<String, dynamic> json) =>
    ResPartnerPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => ResPartner.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ResPartnerPaginationToJson(
        ResPartnerPagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'numberOfRecords': instance.numberOfRecords,
      'totalRecords': instance.totalRecords,
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };

ResPartnerPatchResquestModel _$ResPartnerPatchResquestModelFromJson(
        Map<String, dynamic> json) =>
    ResPartnerPatchResquestModel(
      code: json['code'] as String,
      name: json['name'] as String?,
      companyId: json['companyId'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      displayName: json['displayName'] as String?,
      title: json['title'] as String?,
      parentId: json['parentId'] as String?,
      parentName: json['parentName'] as String?,
      ref: json['ref'] as String?,
      refName: json['refName'] as String?,
      lang: json['lang'] as String?,
      languageName: json['languageName'] as String?,
      tz: json['tz'] as String?,
      userId: json['userId'] as String?,
      vat: json['vat'] as String?,
      website: json['website'] as String?,
      comment: json['comment'] as String?,
      creditLimit: (json['creditLimit'] as num?)?.toDouble(),
      barcode: json['barcode'] as String?,
      isActive: json['isActive'] as bool?,
      customer: json['customer'] as bool?,
      supplier: json['supplier'] as bool?,
      employee: json['employee'] as bool?,
      function: json['function'] as String?,
      type: json['type'] as String?,
      countryId: json['countryId'] as String?,
      countryCode: json['countryCode'] as String?,
      countryName: json['countryName'] as String?,
      stateId: json['stateId'] as String?,
      province: json['province'] as String?,
      provinceName: json['provinceName'] as String?,
      district: json['district'] as String?,
      districtName: json['districtName'] as String?,
      ward: json['ward'] as String?,
      wardName: json['wardName'] as String?,
      street: json['street'] as String?,
      isSmallStreet: json['isSmallStreet'] as bool?,
      street2: json['street2'] as String?,
      zip: json['zip'] as String?,
      email: json['email'] as String?,
      mobile: json['mobile'] as String?,
      isCompany: json['isCompany'] as bool?,
      industryId: json['industryId'] as String?,
      color: json['color'] as int?,
      partnerShare: json['partnerShare'] as bool?,
      commercialPartnerId: json['commercialPartnerId'] as String?,
      commercialCompanyName: json['commercialCompanyName'] as String?,
      companyName: json['companyName'] as String?,
      messageMainAttachmentId: json['messageMainAttachmentId'] as String?,
      messageMainAttachmentPath: json['messageMainAttachmentPath'] as String?,
      messageBounce: json['messageBounce'] as int?,
      signupToken: json['signupToken'] as String?,
      signupType: json['signupType'] as String?,
      signupExpiration: json['signupExpiration'] == null
          ? null
          : DateTime.parse(json['signupExpiration'] as String),
      partnerGid: json['partnerGid'] as String?,
      additionalInfo: json['additionalInfo'] as String?,
      pickingWarn: json['pickingWarn'] as String?,
      pickingWarnMsg: json['pickingWarnMsg'] as String?,
      teamId: json['teamId'] as String?,
      debitLimit: (json['debitLimit'] as num?)?.toDouble(),
      lastTimeEntriesChecked: json['lastTimeEntriesChecked'] == null
          ? null
          : DateTime.parse(json['lastTimeEntriesChecked'] as String),
      invoiceWarn: json['invoiceWarn'] as String?,
      invoiceWarnMsg: json['invoiceWarnMsg'] as String?,
      saleWarn: json['saleWarn'] as String?,
      saleWarnMsg: json['saleWarnMsg'] as String?,
      purchaseWarn: json['purchaseWarn'] as String?,
      purchaseWarnMsg: json['purchaseWarnMsg'] as String?,
      calendarLastNotifAck: json['calendarLastNotifAck'] == null
          ? null
          : DateTime.parse(json['calendarLastNotifAck'] as String),
      accountingObjectType: json['accountingObjectType'] as int?,
      websiteId: json['websiteId'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      fax: json['fax'] as String?,
      isSynchronized: json['isSynchronized'] as int?,
      keyword: json['keyword'] as String?,
      imageUrl: json['imageUrl'] as String?,
      listResContact: (json['listResContact'] as List<dynamic>?)
              ?.map((e) => ResContact.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ResPartnerPatchResquestModelToJson(
        ResPartnerPatchResquestModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'companyId': instance.companyId,
      'date': instance.date?.toIso8601String(),
      'displayName': instance.displayName,
      'title': instance.title,
      'parentId': instance.parentId,
      'parentName': instance.parentName,
      'ref': instance.ref,
      'refName': instance.refName,
      'lang': instance.lang,
      'languageName': instance.languageName,
      'tz': instance.tz,
      'userId': instance.userId,
      'vat': instance.vat,
      'website': instance.website,
      'comment': instance.comment,
      'creditLimit': instance.creditLimit,
      'barcode': instance.barcode,
      'isActive': instance.isActive,
      'customer': instance.customer,
      'supplier': instance.supplier,
      'employee': instance.employee,
      'function': instance.function,
      'type': instance.type,
      'countryId': instance.countryId,
      'countryCode': instance.countryCode,
      'countryName': instance.countryName,
      'stateId': instance.stateId,
      'province': instance.province,
      'provinceName': instance.provinceName,
      'district': instance.district,
      'districtName': instance.districtName,
      'ward': instance.ward,
      'wardName': instance.wardName,
      'street': instance.street,
      'isSmallStreet': instance.isSmallStreet,
      'street2': instance.street2,
      'zip': instance.zip,
      'email': instance.email,
      'mobile': instance.mobile,
      'isCompany': instance.isCompany,
      'industryId': instance.industryId,
      'color': instance.color,
      'partnerShare': instance.partnerShare,
      'commercialPartnerId': instance.commercialPartnerId,
      'commercialCompanyName': instance.commercialCompanyName,
      'companyName': instance.companyName,
      'messageMainAttachmentId': instance.messageMainAttachmentId,
      'messageMainAttachmentPath': instance.messageMainAttachmentPath,
      'messageBounce': instance.messageBounce,
      'signupToken': instance.signupToken,
      'signupType': instance.signupType,
      'signupExpiration': instance.signupExpiration?.toIso8601String(),
      'partnerGid': instance.partnerGid,
      'additionalInfo': instance.additionalInfo,
      'pickingWarn': instance.pickingWarn,
      'pickingWarnMsg': instance.pickingWarnMsg,
      'teamId': instance.teamId,
      'debitLimit': instance.debitLimit,
      'lastTimeEntriesChecked':
          instance.lastTimeEntriesChecked?.toIso8601String(),
      'invoiceWarn': instance.invoiceWarn,
      'invoiceWarnMsg': instance.invoiceWarnMsg,
      'saleWarn': instance.saleWarn,
      'saleWarnMsg': instance.saleWarnMsg,
      'purchaseWarn': instance.purchaseWarn,
      'purchaseWarnMsg': instance.purchaseWarnMsg,
      'calendarLastNotifAck': instance.calendarLastNotifAck?.toIso8601String(),
      'accountingObjectType': instance.accountingObjectType,
      'websiteId': instance.websiteId,
      'phoneNumber': instance.phoneNumber,
      'fax': instance.fax,
      'isSynchronized': instance.isSynchronized,
      'keyword': instance.keyword,
      'imageUrl': instance.imageUrl,
      'listResContact':
          instance.listResContact?.map((e) => e.toJson()).toList(),
      'metadataContentObjs':
          instance.metadataContentObjs?.map((e) => e.toJson()).toList(),
    };

ResPartnerResponseList _$ResPartnerResponseListFromJson(
        Map<String, dynamic> json) =>
    ResPartnerResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ResPartner.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ResPartnerResponseListToJson(
        ResPartnerResponseList instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

ResPartnerResponseObject _$ResPartnerResponseObjectFromJson(
        Map<String, dynamic> json) =>
    ResPartnerResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : ResPartner.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResPartnerResponseObjectToJson(
        ResPartnerResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

ResPartnerResponsePagination _$ResPartnerResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    ResPartnerResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : ResPartnerPagination.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResPartnerResponsePaginationToJson(
        ResPartnerResponsePagination instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

ResPartnerResquestModel _$ResPartnerResquestModelFromJson(
        Map<String, dynamic> json) =>
    ResPartnerResquestModel(
      code: json['code'] as String,
      name: json['name'] as String?,
      companyId: json['companyId'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      displayName: json['displayName'] as String?,
      title: json['title'] as String?,
      parentId: json['parentId'] as String?,
      parentName: json['parentName'] as String?,
      ref: json['ref'] as String?,
      refName: json['refName'] as String?,
      lang: json['lang'] as String?,
      languageName: json['languageName'] as String?,
      tz: json['tz'] as String?,
      userId: json['userId'] as String?,
      vat: json['vat'] as String?,
      website: json['website'] as String?,
      comment: json['comment'] as String?,
      creditLimit: (json['creditLimit'] as num?)?.toDouble(),
      barcode: json['barcode'] as String?,
      active: json['active'] as bool?,
      customer: json['customer'] as bool?,
      supplier: json['supplier'] as bool?,
      employee: json['employee'] as bool?,
      function: json['function'] as String?,
      type: json['type'] as String?,
      countryId: json['countryId'] as String?,
      countryCode: json['countryCode'] as String?,
      countryName: json['countryName'] as String?,
      stateId: json['stateId'] as String?,
      province: json['province'] as String?,
      provinceName: json['provinceName'] as String?,
      district: json['district'] as String?,
      districtName: json['districtName'] as String?,
      ward: json['ward'] as String?,
      wardName: json['wardName'] as String?,
      street: json['street'] as String?,
      isSmallStreet: json['isSmallStreet'] as bool?,
      street2: json['street2'] as String?,
      zip: json['zip'] as String?,
      email: json['email'] as String?,
      mobile: json['mobile'] as String?,
      isCompany: json['isCompany'] as bool?,
      industryId: json['industryId'] as String?,
      color: json['color'] as int?,
      partnerShare: json['partnerShare'] as bool?,
      commercialPartnerId: json['commercialPartnerId'] as String?,
      commercialCompanyName: json['commercialCompanyName'] as String?,
      companyName: json['companyName'] as String?,
      messageMainAttachmentId: json['messageMainAttachmentId'] as String?,
      messageMainAttachmentPath: json['messageMainAttachmentPath'] as String?,
      messageBounce: json['messageBounce'] as int?,
      signupToken: json['signupToken'] as String?,
      signupType: json['signupType'] as String?,
      signupExpiration: json['signupExpiration'] == null
          ? null
          : DateTime.parse(json['signupExpiration'] as String),
      partnerGid: json['partnerGid'] as String?,
      additionalInfo: json['additionalInfo'] as String?,
      pickingWarn: json['pickingWarn'] as String?,
      pickingWarnMsg: json['pickingWarnMsg'] as String?,
      teamId: json['teamId'] as String?,
      debitLimit: (json['debitLimit'] as num?)?.toDouble(),
      lastTimeEntriesChecked: json['lastTimeEntriesChecked'] == null
          ? null
          : DateTime.parse(json['lastTimeEntriesChecked'] as String),
      invoiceWarn: json['invoiceWarn'] as String?,
      invoiceWarnMsg: json['invoiceWarnMsg'] as String?,
      saleWarn: json['saleWarn'] as String?,
      saleWarnMsg: json['saleWarnMsg'] as String?,
      purchaseWarn: json['purchaseWarn'] as String?,
      purchaseWarnMsg: json['purchaseWarnMsg'] as String?,
      calendarLastNotifAck: json['calendarLastNotifAck'] == null
          ? null
          : DateTime.parse(json['calendarLastNotifAck'] as String),
      accountingObjectType: json['accountingObjectType'] as int?,
      websiteId: json['websiteId'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      fax: json['fax'] as String?,
      isSynchronized: json['isSynchronized'] as int?,
      keyword: json['keyword'] as String?,
      imageUrl: json['imageUrl'] as String?,
      listResContact: (json['listResContact'] as List<dynamic>?)
              ?.map((e) => ResContact.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      order: json['order'] as int?,
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$ResPartnerResquestModelToJson(
        ResPartnerResquestModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'companyId': instance.companyId,
      'date': instance.date?.toIso8601String(),
      'displayName': instance.displayName,
      'title': instance.title,
      'parentId': instance.parentId,
      'parentName': instance.parentName,
      'ref': instance.ref,
      'refName': instance.refName,
      'lang': instance.lang,
      'languageName': instance.languageName,
      'tz': instance.tz,
      'userId': instance.userId,
      'vat': instance.vat,
      'website': instance.website,
      'comment': instance.comment,
      'creditLimit': instance.creditLimit,
      'barcode': instance.barcode,
      'active': instance.active,
      'customer': instance.customer,
      'supplier': instance.supplier,
      'employee': instance.employee,
      'function': instance.function,
      'type': instance.type,
      'countryId': instance.countryId,
      'countryCode': instance.countryCode,
      'countryName': instance.countryName,
      'stateId': instance.stateId,
      'province': instance.province,
      'provinceName': instance.provinceName,
      'district': instance.district,
      'districtName': instance.districtName,
      'ward': instance.ward,
      'wardName': instance.wardName,
      'street': instance.street,
      'isSmallStreet': instance.isSmallStreet,
      'street2': instance.street2,
      'zip': instance.zip,
      'email': instance.email,
      'mobile': instance.mobile,
      'isCompany': instance.isCompany,
      'industryId': instance.industryId,
      'color': instance.color,
      'partnerShare': instance.partnerShare,
      'commercialPartnerId': instance.commercialPartnerId,
      'commercialCompanyName': instance.commercialCompanyName,
      'companyName': instance.companyName,
      'messageMainAttachmentId': instance.messageMainAttachmentId,
      'messageMainAttachmentPath': instance.messageMainAttachmentPath,
      'messageBounce': instance.messageBounce,
      'signupToken': instance.signupToken,
      'signupType': instance.signupType,
      'signupExpiration': instance.signupExpiration?.toIso8601String(),
      'partnerGid': instance.partnerGid,
      'additionalInfo': instance.additionalInfo,
      'pickingWarn': instance.pickingWarn,
      'pickingWarnMsg': instance.pickingWarnMsg,
      'teamId': instance.teamId,
      'debitLimit': instance.debitLimit,
      'lastTimeEntriesChecked':
          instance.lastTimeEntriesChecked?.toIso8601String(),
      'invoiceWarn': instance.invoiceWarn,
      'invoiceWarnMsg': instance.invoiceWarnMsg,
      'saleWarn': instance.saleWarn,
      'saleWarnMsg': instance.saleWarnMsg,
      'purchaseWarn': instance.purchaseWarn,
      'purchaseWarnMsg': instance.purchaseWarnMsg,
      'calendarLastNotifAck': instance.calendarLastNotifAck?.toIso8601String(),
      'accountingObjectType': instance.accountingObjectType,
      'websiteId': instance.websiteId,
      'phoneNumber': instance.phoneNumber,
      'fax': instance.fax,
      'isSynchronized': instance.isSynchronized,
      'keyword': instance.keyword,
      'imageUrl': instance.imageUrl,
      'listResContact':
          instance.listResContact?.map((e) => e.toJson()).toList(),
      'metadataContentObjs':
          instance.metadataContentObjs?.map((e) => e.toJson()).toList(),
      'order': instance.order,
      'isActive': instance.isActive,
    };

ResPartnerViewModel _$ResPartnerViewModelFromJson(Map<String, dynamic> json) =>
    ResPartnerViewModel(
      createdByUserId: json['createdByUserId'] as String?,
      lastModifiedByUserId: json['lastModifiedByUserId'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      applicationId: json['applicationId'] as String?,
      id: json['id'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      companyId: json['companyId'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      displayName: json['displayName'] as String?,
      title: json['title'] as String?,
      parentId: json['parentId'] as String?,
      parentName: json['parentName'] as String?,
      ref: json['ref'] as String?,
      refName: json['refName'] as String?,
      tz: json['tz'] as String?,
      lang: json['lang'] as String?,
      languageName: json['languageName'] as String?,
      userId: json['userId'] as String?,
      vat: json['vat'] as String?,
      website: json['website'] as String?,
      comment: json['comment'] as String?,
      creditLimit: (json['creditLimit'] as num?)?.toDouble(),
      barcode: json['barcode'] as String?,
      active: json['active'] as bool?,
      customer: json['customer'] as bool?,
      supplier: json['supplier'] as bool?,
      employee: json['employee'] as bool?,
      function: json['function'] as String?,
      type: json['type'] as String?,
      email: json['email'] as String?,
      mobile: json['mobile'] as String?,
      isCompany: json['isCompany'] as bool?,
      industryId: json['industryId'] as String?,
      color: json['color'] as int?,
      partnerShare: json['partnerShare'] as bool?,
      commercialPartnerId: json['commercialPartnerId'] as String?,
      commercialCompanyName: json['commercialCompanyName'] as String?,
      companyName: json['companyName'] as String?,
      messageMainAttachmentId: json['messageMainAttachmentId'] as String?,
      messageMainAttachmentPath: json['messageMainAttachmentPath'] as String?,
      messageBounce: json['messageBounce'] as int?,
      signupToken: json['signupToken'] as String?,
      signupType: json['signupType'] as String?,
      signupExpiration: json['signupExpiration'] == null
          ? null
          : DateTime.parse(json['signupExpiration'] as String),
      partnerGid: json['partnerGid'] as String?,
      additionalInfo: json['additionalInfo'] as String?,
      pickingWarn: json['pickingWarn'] as String?,
      pickingWarnMsg: json['pickingWarnMsg'] as String?,
      teamId: json['teamId'] as String?,
      debitLimit: (json['debitLimit'] as num?)?.toDouble(),
      lastTimeEntriesChecked: json['lastTimeEntriesChecked'] == null
          ? null
          : DateTime.parse(json['lastTimeEntriesChecked'] as String),
      invoiceWarn: json['invoiceWarn'] as String?,
      invoiceWarnMsg: json['invoiceWarnMsg'] as String?,
      saleWarn: json['saleWarn'] as String?,
      saleWarnMsg: json['saleWarnMsg'] as String?,
      purchaseWarn: json['purchaseWarn'] as String?,
      purchaseWarnMsg: json['purchaseWarnMsg'] as String?,
      calendarLastNotifAck: json['calendarLastNotifAck'] == null
          ? null
          : DateTime.parse(json['calendarLastNotifAck'] as String),
      accountingObjectType: json['accountingObjectType'] as int?,
      websiteId: json['websiteId'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      fax: json['fax'] as String?,
      isSynchronized: json['isSynchronized'] as int?,
      countryId: json['countryId'] as String?,
      countryCode: json['countryCode'] as String?,
      countryName: json['countryName'] as String?,
      stateId: json['stateId'] as String?,
      province: json['province'] as String?,
      provinceName: json['provinceName'] as String?,
      district: json['district'] as String?,
      districtName: json['districtName'] as String?,
      ward: json['ward'] as String?,
      wardName: json['wardName'] as String?,
      street: json['street'] as String?,
      street2: json['street2'] as String?,
      isSmallStreet: json['isSmallStreet'] as bool?,
      zip: json['zip'] as String?,
      imageUrl: json['imageUrl'] as String?,
      geoLocation: json['geoLocation'] as String?,
      geoLocationImage: json['geoLocationImage'] as String?,
      checkinDate: json['checkinDate'] == null
          ? null
          : DateTime.parse(json['checkinDate'] as String),
      checkInAddress: json['checkInAddress'] as String?,
      checkInStatus: json['checkInStatus'] as int?,
      checkInUserId: json['checkInUserId'] as String?,
      checkInUsername: json['checkInUsername'] as String?,
      confirmUserId: json['confirmUserId'] as String?,
      confirmUsername: json['confirmUsername'] as String?,
      keyword: json['keyword'] as String?,
      cLeft: json['c_left'] as int?,
      cRight: json['c_right'] as int?,
      cLevel: json['c_level'] as int?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metaContentType: json['metaContentType'] as String?,
      order: json['order'] as int?,
    );

Map<String, dynamic> _$ResPartnerViewModelToJson(
        ResPartnerViewModel instance) =>
    <String, dynamic>{
      'createdByUserId': instance.createdByUserId,
      'lastModifiedByUserId': instance.lastModifiedByUserId,
      'lastModifiedOnDate': instance.lastModifiedOnDate?.toIso8601String(),
      'createdOnDate': instance.createdOnDate?.toIso8601String(),
      'applicationId': instance.applicationId,
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'companyId': instance.companyId,
      'date': instance.date?.toIso8601String(),
      'displayName': instance.displayName,
      'title': instance.title,
      'parentId': instance.parentId,
      'parentName': instance.parentName,
      'ref': instance.ref,
      'refName': instance.refName,
      'tz': instance.tz,
      'lang': instance.lang,
      'languageName': instance.languageName,
      'userId': instance.userId,
      'vat': instance.vat,
      'website': instance.website,
      'comment': instance.comment,
      'creditLimit': instance.creditLimit,
      'barcode': instance.barcode,
      'active': instance.active,
      'customer': instance.customer,
      'supplier': instance.supplier,
      'employee': instance.employee,
      'function': instance.function,
      'type': instance.type,
      'email': instance.email,
      'mobile': instance.mobile,
      'isCompany': instance.isCompany,
      'industryId': instance.industryId,
      'color': instance.color,
      'partnerShare': instance.partnerShare,
      'commercialPartnerId': instance.commercialPartnerId,
      'commercialCompanyName': instance.commercialCompanyName,
      'companyName': instance.companyName,
      'messageMainAttachmentId': instance.messageMainAttachmentId,
      'messageMainAttachmentPath': instance.messageMainAttachmentPath,
      'messageBounce': instance.messageBounce,
      'signupToken': instance.signupToken,
      'signupType': instance.signupType,
      'signupExpiration': instance.signupExpiration?.toIso8601String(),
      'partnerGid': instance.partnerGid,
      'additionalInfo': instance.additionalInfo,
      'pickingWarn': instance.pickingWarn,
      'pickingWarnMsg': instance.pickingWarnMsg,
      'teamId': instance.teamId,
      'debitLimit': instance.debitLimit,
      'lastTimeEntriesChecked':
          instance.lastTimeEntriesChecked?.toIso8601String(),
      'invoiceWarn': instance.invoiceWarn,
      'invoiceWarnMsg': instance.invoiceWarnMsg,
      'saleWarn': instance.saleWarn,
      'saleWarnMsg': instance.saleWarnMsg,
      'purchaseWarn': instance.purchaseWarn,
      'purchaseWarnMsg': instance.purchaseWarnMsg,
      'calendarLastNotifAck': instance.calendarLastNotifAck?.toIso8601String(),
      'accountingObjectType': instance.accountingObjectType,
      'websiteId': instance.websiteId,
      'phoneNumber': instance.phoneNumber,
      'fax': instance.fax,
      'isSynchronized': instance.isSynchronized,
      'countryId': instance.countryId,
      'countryCode': instance.countryCode,
      'countryName': instance.countryName,
      'stateId': instance.stateId,
      'province': instance.province,
      'provinceName': instance.provinceName,
      'district': instance.district,
      'districtName': instance.districtName,
      'ward': instance.ward,
      'wardName': instance.wardName,
      'street': instance.street,
      'street2': instance.street2,
      'isSmallStreet': instance.isSmallStreet,
      'zip': instance.zip,
      'imageUrl': instance.imageUrl,
      'geoLocation': instance.geoLocation,
      'geoLocationImage': instance.geoLocationImage,
      'checkinDate': instance.checkinDate?.toIso8601String(),
      'checkInAddress': instance.checkInAddress,
      'checkInStatus': instance.checkInStatus,
      'checkInUserId': instance.checkInUserId,
      'checkInUsername': instance.checkInUsername,
      'confirmUserId': instance.confirmUserId,
      'confirmUsername': instance.confirmUsername,
      'keyword': instance.keyword,
      'c_left': instance.cLeft,
      'c_right': instance.cRight,
      'c_level': instance.cLevel,
      'metadataContentObjs':
          instance.metadataContentObjs?.map((e) => e.toJson()).toList(),
      'metaContentType': instance.metaContentType,
      'order': instance.order,
    };

ResPartnerViewModelPagination _$ResPartnerViewModelPaginationFromJson(
        Map<String, dynamic> json) =>
    ResPartnerViewModelPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) =>
                  ResPartnerViewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ResPartnerViewModelPaginationToJson(
        ResPartnerViewModelPagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'numberOfRecords': instance.numberOfRecords,
      'totalRecords': instance.totalRecords,
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };

ResPartnerViewModelResponsePagination
    _$ResPartnerViewModelResponsePaginationFromJson(
            Map<String, dynamic> json) =>
        ResPartnerViewModelResponsePagination(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: json['data'] == null
              ? null
              : ResPartnerViewModelPagination.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ResPartnerViewModelResponsePaginationToJson(
        ResPartnerViewModelResponsePagination instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

ResponseDelete _$ResponseDeleteFromJson(Map<String, dynamic> json) =>
    ResponseDelete(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : ResponseDeleteModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseDeleteToJson(ResponseDelete instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

ResponseDeleteModel _$ResponseDeleteModelFromJson(Map<String, dynamic> json) =>
    ResponseDeleteModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ResponseDeleteModelToJson(
        ResponseDeleteModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

ResponseDeleteMulti _$ResponseDeleteMultiFromJson(Map<String, dynamic> json) =>
    ResponseDeleteMulti(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  ResponseDeleteModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ResponseDeleteMultiToJson(
        ResponseDeleteMulti instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

Website _$WebsiteFromJson(Map<String, dynamic> json) => Website(
      type:
          (json['type'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      url: json['url'] as String?,
    );

Map<String, dynamic> _$WebsiteToJson(Website instance) => <String, dynamic>{
      'type': instance.type,
      'url': instance.url,
    };
