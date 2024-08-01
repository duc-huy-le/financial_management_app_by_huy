// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Int64ResponseObject _$Int64ResponseObjectFromJson(Map<String, dynamic> json) =>
    Int64ResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] as num?,
    );

Map<String, dynamic> _$Int64ResponseObjectToJson(
        Int64ResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data,
    };

NotificationEntity _$NotificationEntityFromJson(Map<String, dynamic> json) =>
    NotificationEntity(
      applicationId: json['applicationId'] as String,
      id: json['id'] as String?,
      ownerId: json['ownerId'] as String?,
      title: json['title'] as String?,
      message: json['message'] as String?,
      icon: json['icon'] as String?,
      state: notificationStateFromJson(json['state']),
      isSentToDevices: json['isSentToDevices'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      objectId: json['objectId'] as String?,
      objectCode: json['objectCode'] as String?,
      module: json['module'] as String?,
      isRead: json['isRead'] as bool?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      metadataContent: json['metadataContent'],
      metaContentType: json['metaContentType'] as String?,
      searchKeywords: json['searchKeywords'] as String?,
    );

Map<String, dynamic> _$NotificationEntityToJson(NotificationEntity instance) =>
    <String, dynamic>{
      'applicationId': instance.applicationId,
      'id': instance.id,
      'ownerId': instance.ownerId,
      'title': instance.title,
      'message': instance.message,
      'icon': instance.icon,
      'state': notificationStateToJson(instance.state),
      'isSentToDevices': instance.isSentToDevices,
      'createdAt': instance.createdAt?.toIso8601String(),
      'objectId': instance.objectId,
      'objectCode': instance.objectCode,
      'module': instance.module,
      'isRead': instance.isRead,
      'metadata': instance.metadata,
      'metadataContent': instance.metadataContent,
      'metaContentType': instance.metaContentType,
      'searchKeywords': instance.searchKeywords,
    };

NotificationEntityPagination _$NotificationEntityPaginationFromJson(
        Map<String, dynamic> json) =>
    NotificationEntityPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map(
                  (e) => NotificationEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$NotificationEntityPaginationToJson(
        NotificationEntityPagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'numberOfRecords': instance.numberOfRecords,
      'totalRecords': instance.totalRecords,
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };

NotificationEntityResponseList _$NotificationEntityResponseListFromJson(
        Map<String, dynamic> json) =>
    NotificationEntityResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => NotificationEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$NotificationEntityResponseListToJson(
        NotificationEntityResponseList instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

NotificationEntityResponseObject _$NotificationEntityResponseObjectFromJson(
        Map<String, dynamic> json) =>
    NotificationEntityResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : NotificationEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotificationEntityResponseObjectToJson(
        NotificationEntityResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

NotificationEntityResponsePagination
    _$NotificationEntityResponsePaginationFromJson(Map<String, dynamic> json) =>
        NotificationEntityResponsePagination(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: json['data'] == null
              ? null
              : NotificationEntityPagination.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NotificationEntityResponsePaginationToJson(
        NotificationEntityResponsePagination instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

NotificationPatchUpdateRequestModel
    _$NotificationPatchUpdateRequestModelFromJson(Map<String, dynamic> json) =>
        NotificationPatchUpdateRequestModel(
          applicationId: json['applicationId'] as String?,
          id: json['id'] as String?,
          isRead: json['isRead'] as bool?,
        );

Map<String, dynamic> _$NotificationPatchUpdateRequestModelToJson(
        NotificationPatchUpdateRequestModel instance) =>
    <String, dynamic>{
      'applicationId': instance.applicationId,
      'id': instance.id,
      'isRead': instance.isRead,
    };

NotificationQueryModel _$NotificationQueryModelFromJson(
        Map<String, dynamic> json) =>
    NotificationQueryModel(
      sort: json['sort'] as String?,
      fields: json['fields'] as String?,
      currentPage: json['currentPage'] as int?,
      pageSize: json['pageSize'] as int?,
      filter: json['filter'] as String?,
      fullTextSearch: json['fullTextSearch'] as String?,
      id: json['id'] as String?,
      listId: (json['listId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      applicationId: json['applicationId'] as String?,
      searchAllApp: json['searchAllApp'] as bool?,
      listTextSearch: (json['listTextSearch'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      ownerId: json['ownerId'] as String?,
      objectId: json['objectId'] as String?,
      modules: (json['modules'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      metadata: json['metadata'] as Map<String, dynamic>?,
      state: notificationStateFromJson(json['state']),
      dateFrom: json['dateFrom'] == null
          ? null
          : DateTime.parse(json['dateFrom'] as String),
      dateTo: json['dateTo'] == null
          ? null
          : DateTime.parse(json['dateTo'] as String),
    );

Map<String, dynamic> _$NotificationQueryModelToJson(
        NotificationQueryModel instance) =>
    <String, dynamic>{
      'sort': instance.sort,
      'fields': instance.fields,
      'currentPage': instance.currentPage,
      'pageSize': instance.pageSize,
      'filter': instance.filter,
      'fullTextSearch': instance.fullTextSearch,
      'id': instance.id,
      'listId': instance.listId,
      'applicationId': instance.applicationId,
      'searchAllApp': instance.searchAllApp,
      'listTextSearch': instance.listTextSearch,
      'ownerId': instance.ownerId,
      'objectId': instance.objectId,
      'modules': instance.modules,
      'metadata': instance.metadata,
      'state': notificationStateToJson(instance.state),
      'dateFrom': instance.dateFrom?.toIso8601String(),
      'dateTo': instance.dateTo?.toIso8601String(),
    };

NotificationRequestModel _$NotificationRequestModelFromJson(
        Map<String, dynamic> json) =>
    NotificationRequestModel(
      applicationId: json['applicationId'] as String?,
      id: json['id'] as String?,
      ownerId: json['ownerId'] as String?,
      title: json['title'] as String?,
      message: json['message'] as String?,
      icon: json['icon'] as String?,
      state: notificationStateFromJson(json['state']),
      isSentToDevices: json['isSentToDevices'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      objectId: json['objectId'] as String?,
      objectCode: json['objectCode'] as String?,
      module: json['module'] as String?,
      isRead: json['isRead'] as bool?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      metadataContent: json['metadataContent'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$NotificationRequestModelToJson(
        NotificationRequestModel instance) =>
    <String, dynamic>{
      'applicationId': instance.applicationId,
      'id': instance.id,
      'ownerId': instance.ownerId,
      'title': instance.title,
      'message': instance.message,
      'icon': instance.icon,
      'state': notificationStateToJson(instance.state),
      'isSentToDevices': instance.isSentToDevices,
      'createdAt': instance.createdAt?.toIso8601String(),
      'objectId': instance.objectId,
      'objectCode': instance.objectCode,
      'module': instance.module,
      'isRead': instance.isRead,
      'metadata': instance.metadata,
      'metadataContent': instance.metadataContent,
    };

NotificationsRequestModel _$NotificationsRequestModelFromJson(
        Map<String, dynamic> json) =>
    NotificationsRequestModel(
      applicationId: json['applicationId'] as String?,
      recievers: (json['recievers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      id: json['id'] as String?,
      title: json['title'] as String?,
      message: json['message'] as String?,
      icon: json['icon'] as String?,
      state: notificationStateFromJson(json['state']),
      isSentToDevices: json['isSentToDevices'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      objectId: json['objectId'] as String?,
      objectCode: json['objectCode'] as String?,
      module: json['module'] as String?,
      isRead: json['isRead'] as bool?,
      metadataContent: json['metadataContent'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$NotificationsRequestModelToJson(
        NotificationsRequestModel instance) =>
    <String, dynamic>{
      'applicationId': instance.applicationId,
      'recievers': instance.recievers,
      'id': instance.id,
      'title': instance.title,
      'message': instance.message,
      'icon': instance.icon,
      'state': notificationStateToJson(instance.state),
      'isSentToDevices': instance.isSentToDevices,
      'createdAt': instance.createdAt?.toIso8601String(),
      'objectId': instance.objectId,
      'objectCode': instance.objectCode,
      'module': instance.module,
      'isRead': instance.isRead,
      'metadataContent': instance.metadataContent,
    };
