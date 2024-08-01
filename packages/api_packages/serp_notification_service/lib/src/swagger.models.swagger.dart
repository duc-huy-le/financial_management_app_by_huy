// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';
import 'swagger.enums.swagger.dart' as enums;

part 'swagger.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class Int64ResponseObject {
  Int64ResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory Int64ResponseObject.fromJson(Map<String, dynamic> json) =>
      _$Int64ResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final num? data;
  static const fromJsonFactory = _$Int64ResponseObjectFromJson;
  static const toJsonFactory = _$Int64ResponseObjectToJson;
  Map<String, dynamic> toJson() => _$Int64ResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Int64ResponseObject &&
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

extension $Int64ResponseObjectExtension on Int64ResponseObject {
  Int64ResponseObject copyWith(
      {enums.Code? code, String? message, num? totalTime, num? data}) {
    return Int64ResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class NotificationEntity {
  NotificationEntity({
    required this.applicationId,
    this.id,
    this.ownerId,
    this.title,
    this.message,
    this.icon,
    this.state,
    this.isSentToDevices,
    this.createdAt,
    this.objectId,
    this.objectCode,
    this.module,
    this.isRead,
    this.metadata,
    this.metadataContent,
    this.metaContentType,
    this.searchKeywords,
  });

  factory NotificationEntity.fromJson(Map<String, dynamic> json) =>
      _$NotificationEntityFromJson(json);

  @JsonKey(name: 'applicationId')
  final String applicationId;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'ownerId')
  final String? ownerId;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'icon')
  final String? icon;
  @JsonKey(
      name: 'state',
      toJson: notificationStateToJson,
      fromJson: notificationStateFromJson)
  final enums.NotificationState? state;
  @JsonKey(name: 'isSentToDevices')
  final bool? isSentToDevices;
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'objectId')
  final String? objectId;
  @JsonKey(name: 'objectCode')
  final String? objectCode;
  @JsonKey(name: 'module')
  final String? module;
  @JsonKey(name: 'isRead')
  final bool? isRead;
  @JsonKey(name: 'metadata')
  final Map<String, dynamic>? metadata;
  @JsonKey(name: 'metadataContent')
  final dynamic metadataContent;
  @JsonKey(name: 'metaContentType')
  final String? metaContentType;
  @JsonKey(name: 'searchKeywords')
  final String? searchKeywords;
  static const fromJsonFactory = _$NotificationEntityFromJson;
  static const toJsonFactory = _$NotificationEntityToJson;
  Map<String, dynamic> toJson() => _$NotificationEntityToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationEntity &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.isSentToDevices, isSentToDevices) ||
                const DeepCollectionEquality()
                    .equals(other.isSentToDevices, isSentToDevices)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.objectId, objectId) ||
                const DeepCollectionEquality()
                    .equals(other.objectId, objectId)) &&
            (identical(other.objectCode, objectCode) ||
                const DeepCollectionEquality()
                    .equals(other.objectCode, objectCode)) &&
            (identical(other.module, module) ||
                const DeepCollectionEquality().equals(other.module, module)) &&
            (identical(other.isRead, isRead) ||
                const DeepCollectionEquality().equals(other.isRead, isRead)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)) &&
            (identical(other.metadataContent, metadataContent) ||
                const DeepCollectionEquality()
                    .equals(other.metadataContent, metadataContent)) &&
            (identical(other.metaContentType, metaContentType) ||
                const DeepCollectionEquality()
                    .equals(other.metaContentType, metaContentType)) &&
            (identical(other.searchKeywords, searchKeywords) ||
                const DeepCollectionEquality()
                    .equals(other.searchKeywords, searchKeywords)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(isSentToDevices) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(objectId) ^
      const DeepCollectionEquality().hash(objectCode) ^
      const DeepCollectionEquality().hash(module) ^
      const DeepCollectionEquality().hash(isRead) ^
      const DeepCollectionEquality().hash(metadata) ^
      const DeepCollectionEquality().hash(metadataContent) ^
      const DeepCollectionEquality().hash(metaContentType) ^
      const DeepCollectionEquality().hash(searchKeywords) ^
      runtimeType.hashCode;
}

extension $NotificationEntityExtension on NotificationEntity {
  NotificationEntity copyWith(
      {String? applicationId,
      String? id,
      String? ownerId,
      String? title,
      String? message,
      String? icon,
      enums.NotificationState? state,
      bool? isSentToDevices,
      DateTime? createdAt,
      String? objectId,
      String? objectCode,
      String? module,
      bool? isRead,
      Map<String, dynamic>? metadata,
      dynamic metadataContent,
      String? metaContentType,
      String? searchKeywords}) {
    return NotificationEntity(
        applicationId: applicationId ?? this.applicationId,
        id: id ?? this.id,
        ownerId: ownerId ?? this.ownerId,
        title: title ?? this.title,
        message: message ?? this.message,
        icon: icon ?? this.icon,
        state: state ?? this.state,
        isSentToDevices: isSentToDevices ?? this.isSentToDevices,
        createdAt: createdAt ?? this.createdAt,
        objectId: objectId ?? this.objectId,
        objectCode: objectCode ?? this.objectCode,
        module: module ?? this.module,
        isRead: isRead ?? this.isRead,
        metadata: metadata ?? this.metadata,
        metadataContent: metadataContent ?? this.metadataContent,
        metaContentType: metaContentType ?? this.metaContentType,
        searchKeywords: searchKeywords ?? this.searchKeywords);
  }
}

@JsonSerializable(explicitToJson: true)
class NotificationEntityPagination {
  NotificationEntityPagination({
    this.currentPage,
    this.totalPages,
    this.pageSize,
    this.numberOfRecords,
    this.totalRecords,
    this.content,
  });

  factory NotificationEntityPagination.fromJson(Map<String, dynamic> json) =>
      _$NotificationEntityPaginationFromJson(json);

  @JsonKey(name: 'currentPage')
  final int? currentPage;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'pageSize')
  final int? pageSize;
  @JsonKey(name: 'numberOfRecords')
  final int? numberOfRecords;
  @JsonKey(name: 'totalRecords')
  final int? totalRecords;
  @JsonKey(name: 'content', defaultValue: <NotificationEntity>[])
  final List<NotificationEntity>? content;
  static const fromJsonFactory = _$NotificationEntityPaginationFromJson;
  static const toJsonFactory = _$NotificationEntityPaginationToJson;
  Map<String, dynamic> toJson() => _$NotificationEntityPaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationEntityPagination &&
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

extension $NotificationEntityPaginationExtension
    on NotificationEntityPagination {
  NotificationEntityPagination copyWith(
      {int? currentPage,
      int? totalPages,
      int? pageSize,
      int? numberOfRecords,
      int? totalRecords,
      List<NotificationEntity>? content}) {
    return NotificationEntityPagination(
        currentPage: currentPage ?? this.currentPage,
        totalPages: totalPages ?? this.totalPages,
        pageSize: pageSize ?? this.pageSize,
        numberOfRecords: numberOfRecords ?? this.numberOfRecords,
        totalRecords: totalRecords ?? this.totalRecords,
        content: content ?? this.content);
  }
}

@JsonSerializable(explicitToJson: true)
class NotificationEntityResponseList {
  NotificationEntityResponseList({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory NotificationEntityResponseList.fromJson(Map<String, dynamic> json) =>
      _$NotificationEntityResponseListFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data', defaultValue: <NotificationEntity>[])
  final List<NotificationEntity>? data;
  static const fromJsonFactory = _$NotificationEntityResponseListFromJson;
  static const toJsonFactory = _$NotificationEntityResponseListToJson;
  Map<String, dynamic> toJson() => _$NotificationEntityResponseListToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationEntityResponseList &&
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

extension $NotificationEntityResponseListExtension
    on NotificationEntityResponseList {
  NotificationEntityResponseList copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<NotificationEntity>? data}) {
    return NotificationEntityResponseList(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class NotificationEntityResponseObject {
  NotificationEntityResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory NotificationEntityResponseObject.fromJson(
          Map<String, dynamic> json) =>
      _$NotificationEntityResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final NotificationEntity? data;
  static const fromJsonFactory = _$NotificationEntityResponseObjectFromJson;
  static const toJsonFactory = _$NotificationEntityResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$NotificationEntityResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationEntityResponseObject &&
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

extension $NotificationEntityResponseObjectExtension
    on NotificationEntityResponseObject {
  NotificationEntityResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      NotificationEntity? data}) {
    return NotificationEntityResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class NotificationEntityResponsePagination {
  NotificationEntityResponsePagination({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory NotificationEntityResponsePagination.fromJson(
          Map<String, dynamic> json) =>
      _$NotificationEntityResponsePaginationFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final NotificationEntityPagination? data;
  static const fromJsonFactory = _$NotificationEntityResponsePaginationFromJson;
  static const toJsonFactory = _$NotificationEntityResponsePaginationToJson;
  Map<String, dynamic> toJson() =>
      _$NotificationEntityResponsePaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationEntityResponsePagination &&
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

extension $NotificationEntityResponsePaginationExtension
    on NotificationEntityResponsePagination {
  NotificationEntityResponsePagination copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      NotificationEntityPagination? data}) {
    return NotificationEntityResponsePagination(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class NotificationPatchUpdateRequestModel {
  NotificationPatchUpdateRequestModel({
    this.applicationId,
    this.id,
    this.isRead,
  });

  factory NotificationPatchUpdateRequestModel.fromJson(
          Map<String, dynamic> json) =>
      _$NotificationPatchUpdateRequestModelFromJson(json);

  @JsonKey(name: 'applicationId')
  final String? applicationId;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'isRead')
  final bool? isRead;
  static const fromJsonFactory = _$NotificationPatchUpdateRequestModelFromJson;
  static const toJsonFactory = _$NotificationPatchUpdateRequestModelToJson;
  Map<String, dynamic> toJson() =>
      _$NotificationPatchUpdateRequestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationPatchUpdateRequestModel &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isRead, isRead) ||
                const DeepCollectionEquality().equals(other.isRead, isRead)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isRead) ^
      runtimeType.hashCode;
}

extension $NotificationPatchUpdateRequestModelExtension
    on NotificationPatchUpdateRequestModel {
  NotificationPatchUpdateRequestModel copyWith(
      {String? applicationId, String? id, bool? isRead}) {
    return NotificationPatchUpdateRequestModel(
        applicationId: applicationId ?? this.applicationId,
        id: id ?? this.id,
        isRead: isRead ?? this.isRead);
  }
}

@JsonSerializable(explicitToJson: true)
class NotificationQueryModel {
  NotificationQueryModel({
    this.sort,
    this.fields,
    this.currentPage,
    this.pageSize,
    this.filter,
    this.fullTextSearch,
    this.id,
    this.listId,
    this.applicationId,
    this.searchAllApp,
    this.listTextSearch,
    this.ownerId,
    this.objectId,
    this.modules,
    this.metadata,
    this.state,
    this.dateFrom,
    this.dateTo,
  });

  factory NotificationQueryModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationQueryModelFromJson(json);

  @JsonKey(name: 'sort')
  final String? sort;
  @JsonKey(name: 'fields')
  final String? fields;
  @JsonKey(name: 'currentPage')
  final int? currentPage;
  @JsonKey(name: 'pageSize')
  final int? pageSize;
  @JsonKey(name: 'filter')
  final String? filter;
  @JsonKey(name: 'fullTextSearch')
  final String? fullTextSearch;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'listId', defaultValue: <String>[])
  final List<String>? listId;
  @JsonKey(name: 'applicationId')
  final String? applicationId;
  @JsonKey(name: 'searchAllApp')
  final bool? searchAllApp;
  @JsonKey(name: 'listTextSearch', defaultValue: <String>[])
  final List<String>? listTextSearch;
  @JsonKey(name: 'ownerId')
  final String? ownerId;
  @JsonKey(name: 'objectId')
  final String? objectId;
  @JsonKey(name: 'modules', defaultValue: <String>[])
  final List<String>? modules;
  @JsonKey(name: 'metadata')
  final Map<String, dynamic>? metadata;
  @JsonKey(
      name: 'state',
      toJson: notificationStateToJson,
      fromJson: notificationStateFromJson)
  final enums.NotificationState? state;
  @JsonKey(name: 'dateFrom')
  final DateTime? dateFrom;
  @JsonKey(name: 'dateTo')
  final DateTime? dateTo;
  static const fromJsonFactory = _$NotificationQueryModelFromJson;
  static const toJsonFactory = _$NotificationQueryModelToJson;
  Map<String, dynamic> toJson() => _$NotificationQueryModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationQueryModel &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)) &&
            (identical(other.fields, fields) ||
                const DeepCollectionEquality().equals(other.fields, fields)) &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)) &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)) &&
            (identical(other.fullTextSearch, fullTextSearch) ||
                const DeepCollectionEquality()
                    .equals(other.fullTextSearch, fullTextSearch)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.listId, listId) ||
                const DeepCollectionEquality().equals(other.listId, listId)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.searchAllApp, searchAllApp) ||
                const DeepCollectionEquality()
                    .equals(other.searchAllApp, searchAllApp)) &&
            (identical(other.listTextSearch, listTextSearch) ||
                const DeepCollectionEquality()
                    .equals(other.listTextSearch, listTextSearch)) &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.objectId, objectId) ||
                const DeepCollectionEquality()
                    .equals(other.objectId, objectId)) &&
            (identical(other.modules, modules) ||
                const DeepCollectionEquality()
                    .equals(other.modules, modules)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.dateFrom, dateFrom) ||
                const DeepCollectionEquality()
                    .equals(other.dateFrom, dateFrom)) &&
            (identical(other.dateTo, dateTo) ||
                const DeepCollectionEquality().equals(other.dateTo, dateTo)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(sort) ^
      const DeepCollectionEquality().hash(fields) ^
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(filter) ^
      const DeepCollectionEquality().hash(fullTextSearch) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(listId) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(searchAllApp) ^
      const DeepCollectionEquality().hash(listTextSearch) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(objectId) ^
      const DeepCollectionEquality().hash(modules) ^
      const DeepCollectionEquality().hash(metadata) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(dateFrom) ^
      const DeepCollectionEquality().hash(dateTo) ^
      runtimeType.hashCode;
}

extension $NotificationQueryModelExtension on NotificationQueryModel {
  NotificationQueryModel copyWith(
      {String? sort,
      String? fields,
      int? currentPage,
      int? pageSize,
      String? filter,
      String? fullTextSearch,
      String? id,
      List<String>? listId,
      String? applicationId,
      bool? searchAllApp,
      List<String>? listTextSearch,
      String? ownerId,
      String? objectId,
      List<String>? modules,
      Map<String, dynamic>? metadata,
      enums.NotificationState? state,
      DateTime? dateFrom,
      DateTime? dateTo}) {
    return NotificationQueryModel(
        sort: sort ?? this.sort,
        fields: fields ?? this.fields,
        currentPage: currentPage ?? this.currentPage,
        pageSize: pageSize ?? this.pageSize,
        filter: filter ?? this.filter,
        fullTextSearch: fullTextSearch ?? this.fullTextSearch,
        id: id ?? this.id,
        listId: listId ?? this.listId,
        applicationId: applicationId ?? this.applicationId,
        searchAllApp: searchAllApp ?? this.searchAllApp,
        listTextSearch: listTextSearch ?? this.listTextSearch,
        ownerId: ownerId ?? this.ownerId,
        objectId: objectId ?? this.objectId,
        modules: modules ?? this.modules,
        metadata: metadata ?? this.metadata,
        state: state ?? this.state,
        dateFrom: dateFrom ?? this.dateFrom,
        dateTo: dateTo ?? this.dateTo);
  }
}

@JsonSerializable(explicitToJson: true)
class NotificationRequestModel {
  NotificationRequestModel({
    this.applicationId,
    this.id,
    this.ownerId,
    this.title,
    this.message,
    this.icon,
    this.state,
    this.isSentToDevices,
    this.createdAt,
    this.objectId,
    this.objectCode,
    this.module,
    this.isRead,
    this.metadata,
    this.metadataContent,
  });

  factory NotificationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationRequestModelFromJson(json);

  @JsonKey(name: 'applicationId')
  final String? applicationId;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'ownerId')
  final String? ownerId;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'icon')
  final String? icon;
  @JsonKey(
      name: 'state',
      toJson: notificationStateToJson,
      fromJson: notificationStateFromJson)
  final enums.NotificationState? state;
  @JsonKey(name: 'isSentToDevices')
  final bool? isSentToDevices;
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'objectId')
  final String? objectId;
  @JsonKey(name: 'objectCode')
  final String? objectCode;
  @JsonKey(name: 'module')
  final String? module;
  @JsonKey(name: 'isRead')
  final bool? isRead;
  @JsonKey(name: 'metadata')
  final Map<String, dynamic>? metadata;
  @JsonKey(name: 'metadataContent')
  final Map<String, dynamic>? metadataContent;
  static const fromJsonFactory = _$NotificationRequestModelFromJson;
  static const toJsonFactory = _$NotificationRequestModelToJson;
  Map<String, dynamic> toJson() => _$NotificationRequestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationRequestModel &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.isSentToDevices, isSentToDevices) ||
                const DeepCollectionEquality()
                    .equals(other.isSentToDevices, isSentToDevices)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.objectId, objectId) ||
                const DeepCollectionEquality()
                    .equals(other.objectId, objectId)) &&
            (identical(other.objectCode, objectCode) ||
                const DeepCollectionEquality()
                    .equals(other.objectCode, objectCode)) &&
            (identical(other.module, module) ||
                const DeepCollectionEquality().equals(other.module, module)) &&
            (identical(other.isRead, isRead) ||
                const DeepCollectionEquality().equals(other.isRead, isRead)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)) &&
            (identical(other.metadataContent, metadataContent) ||
                const DeepCollectionEquality()
                    .equals(other.metadataContent, metadataContent)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(isSentToDevices) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(objectId) ^
      const DeepCollectionEquality().hash(objectCode) ^
      const DeepCollectionEquality().hash(module) ^
      const DeepCollectionEquality().hash(isRead) ^
      const DeepCollectionEquality().hash(metadata) ^
      const DeepCollectionEquality().hash(metadataContent) ^
      runtimeType.hashCode;
}

extension $NotificationRequestModelExtension on NotificationRequestModel {
  NotificationRequestModel copyWith(
      {String? applicationId,
      String? id,
      String? ownerId,
      String? title,
      String? message,
      String? icon,
      enums.NotificationState? state,
      bool? isSentToDevices,
      DateTime? createdAt,
      String? objectId,
      String? objectCode,
      String? module,
      bool? isRead,
      Map<String, dynamic>? metadata,
      Map<String, dynamic>? metadataContent}) {
    return NotificationRequestModel(
        applicationId: applicationId ?? this.applicationId,
        id: id ?? this.id,
        ownerId: ownerId ?? this.ownerId,
        title: title ?? this.title,
        message: message ?? this.message,
        icon: icon ?? this.icon,
        state: state ?? this.state,
        isSentToDevices: isSentToDevices ?? this.isSentToDevices,
        createdAt: createdAt ?? this.createdAt,
        objectId: objectId ?? this.objectId,
        objectCode: objectCode ?? this.objectCode,
        module: module ?? this.module,
        isRead: isRead ?? this.isRead,
        metadata: metadata ?? this.metadata,
        metadataContent: metadataContent ?? this.metadataContent);
  }
}

@JsonSerializable(explicitToJson: true)
class NotificationsRequestModel {
  NotificationsRequestModel({
    this.applicationId,
    this.recievers,
    this.id,
    this.title,
    this.message,
    this.icon,
    this.state,
    this.isSentToDevices,
    this.createdAt,
    this.objectId,
    this.objectCode,
    this.module,
    this.isRead,
    this.metadataContent,
  });

  factory NotificationsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationsRequestModelFromJson(json);

  @JsonKey(name: 'applicationId')
  final String? applicationId;
  @JsonKey(name: 'recievers', defaultValue: <String>[])
  final List<String>? recievers;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'icon')
  final String? icon;
  @JsonKey(
      name: 'state',
      toJson: notificationStateToJson,
      fromJson: notificationStateFromJson)
  final enums.NotificationState? state;
  @JsonKey(name: 'isSentToDevices')
  final bool? isSentToDevices;
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'objectId')
  final String? objectId;
  @JsonKey(name: 'objectCode')
  final String? objectCode;
  @JsonKey(name: 'module')
  final String? module;
  @JsonKey(name: 'isRead')
  final bool? isRead;
  @JsonKey(name: 'metadataContent')
  final Map<String, dynamic>? metadataContent;
  static const fromJsonFactory = _$NotificationsRequestModelFromJson;
  static const toJsonFactory = _$NotificationsRequestModelToJson;
  Map<String, dynamic> toJson() => _$NotificationsRequestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationsRequestModel &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.recievers, recievers) ||
                const DeepCollectionEquality()
                    .equals(other.recievers, recievers)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.isSentToDevices, isSentToDevices) ||
                const DeepCollectionEquality()
                    .equals(other.isSentToDevices, isSentToDevices)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.objectId, objectId) ||
                const DeepCollectionEquality()
                    .equals(other.objectId, objectId)) &&
            (identical(other.objectCode, objectCode) ||
                const DeepCollectionEquality()
                    .equals(other.objectCode, objectCode)) &&
            (identical(other.module, module) ||
                const DeepCollectionEquality().equals(other.module, module)) &&
            (identical(other.isRead, isRead) ||
                const DeepCollectionEquality().equals(other.isRead, isRead)) &&
            (identical(other.metadataContent, metadataContent) ||
                const DeepCollectionEquality()
                    .equals(other.metadataContent, metadataContent)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(recievers) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(isSentToDevices) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(objectId) ^
      const DeepCollectionEquality().hash(objectCode) ^
      const DeepCollectionEquality().hash(module) ^
      const DeepCollectionEquality().hash(isRead) ^
      const DeepCollectionEquality().hash(metadataContent) ^
      runtimeType.hashCode;
}

extension $NotificationsRequestModelExtension on NotificationsRequestModel {
  NotificationsRequestModel copyWith(
      {String? applicationId,
      List<String>? recievers,
      String? id,
      String? title,
      String? message,
      String? icon,
      enums.NotificationState? state,
      bool? isSentToDevices,
      DateTime? createdAt,
      String? objectId,
      String? objectCode,
      String? module,
      bool? isRead,
      Map<String, dynamic>? metadataContent}) {
    return NotificationsRequestModel(
        applicationId: applicationId ?? this.applicationId,
        recievers: recievers ?? this.recievers,
        id: id ?? this.id,
        title: title ?? this.title,
        message: message ?? this.message,
        icon: icon ?? this.icon,
        state: state ?? this.state,
        isSentToDevices: isSentToDevices ?? this.isSentToDevices,
        createdAt: createdAt ?? this.createdAt,
        objectId: objectId ?? this.objectId,
        objectCode: objectCode ?? this.objectCode,
        module: module ?? this.module,
        isRead: isRead ?? this.isRead,
        metadataContent: metadataContent ?? this.metadataContent);
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

int? notificationStateToJson(enums.NotificationState? notificationState) {
  return enums.$NotificationStateMap[notificationState];
}

enums.NotificationState notificationStateFromJson(
  Object? notificationState, [
  enums.NotificationState? defaultValue,
]) {
  if (notificationState is int) {
    return enums.$NotificationStateMap.entries
        .firstWhere((element) => element.value == notificationState,
            orElse: () => const MapEntry(
                enums.NotificationState.swaggerGeneratedUnknown, 0))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$NotificationStateMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.NotificationState.swaggerGeneratedUnknown;
}

List<int> notificationStateListToJson(
    List<enums.NotificationState>? notificationState) {
  if (notificationState == null) {
    return [];
  }

  return notificationState.map((e) => enums.$NotificationStateMap[e]!).toList();
}

List<enums.NotificationState> notificationStateListFromJson(
  List? notificationState, [
  List<enums.NotificationState>? defaultValue,
]) {
  if (notificationState == null) {
    return defaultValue ?? [];
  }

  return notificationState
      .map((e) => notificationStateFromJson(e.toString()))
      .toList();
}

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
