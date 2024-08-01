// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';
import 'swagger.enums.swagger.dart' as enums;

part 'swagger.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class ACLItem {
  ACLItem({
    this.objectId,
    this.objectCode,
    this.objectName,
    this.objectType,
    this.accessType,
  });

  factory ACLItem.fromJson(Map<String, dynamic> json) =>
      _$ACLItemFromJson(json);

  @JsonKey(name: 'objectId')
  final String? objectId;
  @JsonKey(name: 'objectCode')
  final String? objectCode;
  @JsonKey(name: 'objectName')
  final String? objectName;
  @JsonKey(
      name: 'objectType',
      toJson: objectTypeToJson,
      fromJson: objectTypeFromJson)
  final enums.ObjectType? objectType;
  @JsonKey(
      name: 'accessType',
      toJson: accessTypeToJson,
      fromJson: accessTypeFromJson)
  final enums.AccessType? accessType;
  static const fromJsonFactory = _$ACLItemFromJson;
  static const toJsonFactory = _$ACLItemToJson;
  Map<String, dynamic> toJson() => _$ACLItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ACLItem &&
            (identical(other.objectId, objectId) ||
                const DeepCollectionEquality()
                    .equals(other.objectId, objectId)) &&
            (identical(other.objectCode, objectCode) ||
                const DeepCollectionEquality()
                    .equals(other.objectCode, objectCode)) &&
            (identical(other.objectName, objectName) ||
                const DeepCollectionEquality()
                    .equals(other.objectName, objectName)) &&
            (identical(other.objectType, objectType) ||
                const DeepCollectionEquality()
                    .equals(other.objectType, objectType)) &&
            (identical(other.accessType, accessType) ||
                const DeepCollectionEquality()
                    .equals(other.accessType, accessType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(objectId) ^
      const DeepCollectionEquality().hash(objectCode) ^
      const DeepCollectionEquality().hash(objectName) ^
      const DeepCollectionEquality().hash(objectType) ^
      const DeepCollectionEquality().hash(accessType) ^
      runtimeType.hashCode;
}

extension $ACLItemExtension on ACLItem {
  ACLItem copyWith(
      {String? objectId,
      String? objectCode,
      String? objectName,
      enums.ObjectType? objectType,
      enums.AccessType? accessType}) {
    return ACLItem(
        objectId: objectId ?? this.objectId,
        objectCode: objectCode ?? this.objectCode,
        objectName: objectName ?? this.objectName,
        objectType: objectType ?? this.objectType,
        accessType: accessType ?? this.accessType);
  }
}

@JsonSerializable(explicitToJson: true)
class ACLObject {
  ACLObject({
    this.objectId,
    this.aclItems,
  });

  factory ACLObject.fromJson(Map<String, dynamic> json) =>
      _$ACLObjectFromJson(json);

  @JsonKey(name: 'objectId')
  final String? objectId;
  @JsonKey(name: 'aclItems', defaultValue: <ACLItem>[])
  final List<ACLItem>? aclItems;
  static const fromJsonFactory = _$ACLObjectFromJson;
  static const toJsonFactory = _$ACLObjectToJson;
  Map<String, dynamic> toJson() => _$ACLObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ACLObject &&
            (identical(other.objectId, objectId) ||
                const DeepCollectionEquality()
                    .equals(other.objectId, objectId)) &&
            (identical(other.aclItems, aclItems) ||
                const DeepCollectionEquality()
                    .equals(other.aclItems, aclItems)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(objectId) ^
      const DeepCollectionEquality().hash(aclItems) ^
      runtimeType.hashCode;
}

extension $ACLObjectExtension on ACLObject {
  ACLObject copyWith({String? objectId, List<ACLItem>? aclItems}) {
    return ACLObject(
        objectId: objectId ?? this.objectId,
        aclItems: aclItems ?? this.aclItems);
  }
}

@JsonSerializable(explicitToJson: true)
class Address {
  Address({
    this.type,
    this.countryCode,
    this.countryName,
    this.province,
    this.provinceName,
    this.district,
    this.districtName,
    this.ward,
    this.wardName,
    this.street,
    this.street2,
    this.zip,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  @JsonKey(name: 'type', defaultValue: <String>[])
  final List<String>? type;
  @JsonKey(name: 'countryCode')
  final String? countryCode;
  @JsonKey(name: 'countryName')
  final String? countryName;
  @JsonKey(name: 'province')
  final String? province;
  @JsonKey(name: 'provinceName')
  final String? provinceName;
  @JsonKey(name: 'district')
  final String? district;
  @JsonKey(name: 'districtName')
  final String? districtName;
  @JsonKey(name: 'ward')
  final String? ward;
  @JsonKey(name: 'wardName')
  final String? wardName;
  @JsonKey(name: 'street')
  final String? street;
  @JsonKey(name: 'street2')
  final String? street2;
  @JsonKey(name: 'zip')
  final String? zip;
  static const fromJsonFactory = _$AddressFromJson;
  static const toJsonFactory = _$AddressToJson;
  Map<String, dynamic> toJson() => _$AddressToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Address &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality()
                    .equals(other.countryName, countryName)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)) &&
            (identical(other.provinceName, provinceName) ||
                const DeepCollectionEquality()
                    .equals(other.provinceName, provinceName)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.districtName, districtName) ||
                const DeepCollectionEquality()
                    .equals(other.districtName, districtName)) &&
            (identical(other.ward, ward) ||
                const DeepCollectionEquality().equals(other.ward, ward)) &&
            (identical(other.wardName, wardName) ||
                const DeepCollectionEquality()
                    .equals(other.wardName, wardName)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.street2, street2) ||
                const DeepCollectionEquality()
                    .equals(other.street2, street2)) &&
            (identical(other.zip, zip) ||
                const DeepCollectionEquality().equals(other.zip, zip)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(provinceName) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(districtName) ^
      const DeepCollectionEquality().hash(ward) ^
      const DeepCollectionEquality().hash(wardName) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(street2) ^
      const DeepCollectionEquality().hash(zip) ^
      runtimeType.hashCode;
}

extension $AddressExtension on Address {
  Address copyWith(
      {List<String>? type,
      String? countryCode,
      String? countryName,
      String? province,
      String? provinceName,
      String? district,
      String? districtName,
      String? ward,
      String? wardName,
      String? street,
      String? street2,
      String? zip}) {
    return Address(
        type: type ?? this.type,
        countryCode: countryCode ?? this.countryCode,
        countryName: countryName ?? this.countryName,
        province: province ?? this.province,
        provinceName: provinceName ?? this.provinceName,
        district: district ?? this.district,
        districtName: districtName ?? this.districtName,
        ward: ward ?? this.ward,
        wardName: wardName ?? this.wardName,
        street: street ?? this.street,
        street2: street2 ?? this.street2,
        zip: zip ?? this.zip);
  }
}

@JsonSerializable(explicitToJson: true)
class BaseCategory {
  BaseCategory({
    this.createdByUserId,
    this.lastModifiedByUserId,
    this.lastModifiedOnDate,
    this.createdOnDate,
    this.applicationId,
    this.id,
    this.parentId,
    this.parentPath,
    required this.name,
    required this.displayName,
    required this.type,
    required this.alias,
    this.detail,
    this.description,
    this.order,
    this.statusObj,
    this.status,
    this.isDeleted,
    this.imageUrl,
    this.cLeft,
    this.cRight,
    this.cLevel,
    this.aclObject,
    this.acl,
    this.metadataContentObjs,
    this.metadataContent,
    this.metaContentType,
    this.labelsObjs,
    this.labelsJson,
    this.isActive,
  });

  factory BaseCategory.fromJson(Map<String, dynamic> json) =>
      _$BaseCategoryFromJson(json);

  @JsonKey(name: 'createdByUserId')
  final String? createdByUserId;
  @JsonKey(name: 'lastModifiedByUserId')
  final String? lastModifiedByUserId;
  @JsonKey(name: 'lastModifiedOnDate')
  final DateTime? lastModifiedOnDate;
  @JsonKey(name: 'createdOnDate')
  final DateTime? createdOnDate;
  @JsonKey(name: 'applicationId')
  final String? applicationId;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'parentId')
  final String? parentId;
  @JsonKey(name: 'parentPath')
  final String? parentPath;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'displayName')
  final String displayName;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'alias')
  final String alias;
  @JsonKey(name: 'detail')
  final String? detail;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'order')
  final int? order;
  @JsonKey(
      name: 'statusObj',
      toJson: statusEnumsToJson,
      fromJson: statusEnumsFromJson)
  final enums.StatusEnums? statusObj;
  @JsonKey(name: 'status')
  final int? status;
  @JsonKey(name: 'isDeleted')
  final bool? isDeleted;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @JsonKey(name: 'c_left')
  final int? cLeft;
  @JsonKey(name: 'c_right')
  final int? cRight;
  @JsonKey(name: 'c_level')
  final int? cLevel;
  @JsonKey(name: 'aclObject')
  final ACLObject? aclObject;
  @JsonKey(name: 'acl')
  final String? acl;
  @JsonKey(name: 'metadataContentObjs', defaultValue: <MetadataValue>[])
  final List<MetadataValue>? metadataContentObjs;
  @JsonKey(name: 'metadataContent')
  final String? metadataContent;
  @JsonKey(name: 'metaContentType')
  final String? metaContentType;
  @JsonKey(name: 'labelsObjs', defaultValue: <LabelsObj>[])
  final List<LabelsObj>? labelsObjs;
  @JsonKey(name: 'labelsJson')
  final String? labelsJson;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  static const fromJsonFactory = _$BaseCategoryFromJson;
  static const toJsonFactory = _$BaseCategoryToJson;
  Map<String, dynamic> toJson() => _$BaseCategoryToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BaseCategory &&
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
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.parentPath, parentPath) ||
                const DeepCollectionEquality()
                    .equals(other.parentPath, parentPath)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.alias, alias) ||
                const DeepCollectionEquality().equals(other.alias, alias)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.statusObj, statusObj) ||
                const DeepCollectionEquality()
                    .equals(other.statusObj, statusObj)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.isDeleted, isDeleted) ||
                const DeepCollectionEquality()
                    .equals(other.isDeleted, isDeleted)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.cLeft, cLeft) ||
                const DeepCollectionEquality().equals(other.cLeft, cLeft)) &&
            (identical(other.cRight, cRight) ||
                const DeepCollectionEquality().equals(other.cRight, cRight)) &&
            (identical(other.cLevel, cLevel) ||
                const DeepCollectionEquality().equals(other.cLevel, cLevel)) &&
            (identical(other.aclObject, aclObject) ||
                const DeepCollectionEquality()
                    .equals(other.aclObject, aclObject)) &&
            (identical(other.acl, acl) ||
                const DeepCollectionEquality().equals(other.acl, acl)) &&
            (identical(other.metadataContentObjs, metadataContentObjs) ||
                const DeepCollectionEquality()
                    .equals(other.metadataContentObjs, metadataContentObjs)) &&
            (identical(other.metadataContent, metadataContent) ||
                const DeepCollectionEquality()
                    .equals(other.metadataContent, metadataContent)) &&
            (identical(other.metaContentType, metaContentType) ||
                const DeepCollectionEquality()
                    .equals(other.metaContentType, metaContentType)) &&
            (identical(other.labelsObjs, labelsObjs) || const DeepCollectionEquality().equals(other.labelsObjs, labelsObjs)) &&
            (identical(other.labelsJson, labelsJson) || const DeepCollectionEquality().equals(other.labelsJson, labelsJson)) &&
            (identical(other.isActive, isActive) || const DeepCollectionEquality().equals(other.isActive, isActive)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedOnDate) ^
      const DeepCollectionEquality().hash(createdOnDate) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(parentPath) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(alias) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(statusObj) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(isDeleted) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(cLeft) ^
      const DeepCollectionEquality().hash(cRight) ^
      const DeepCollectionEquality().hash(cLevel) ^
      const DeepCollectionEquality().hash(aclObject) ^
      const DeepCollectionEquality().hash(acl) ^
      const DeepCollectionEquality().hash(metadataContentObjs) ^
      const DeepCollectionEquality().hash(metadataContent) ^
      const DeepCollectionEquality().hash(metaContentType) ^
      const DeepCollectionEquality().hash(labelsObjs) ^
      const DeepCollectionEquality().hash(labelsJson) ^
      const DeepCollectionEquality().hash(isActive) ^
      runtimeType.hashCode;
}

extension $BaseCategoryExtension on BaseCategory {
  BaseCategory copyWith(
      {String? createdByUserId,
      String? lastModifiedByUserId,
      DateTime? lastModifiedOnDate,
      DateTime? createdOnDate,
      String? applicationId,
      String? id,
      String? parentId,
      String? parentPath,
      String? name,
      String? displayName,
      String? type,
      String? alias,
      String? detail,
      String? description,
      int? order,
      enums.StatusEnums? statusObj,
      int? status,
      bool? isDeleted,
      String? imageUrl,
      int? cLeft,
      int? cRight,
      int? cLevel,
      ACLObject? aclObject,
      String? acl,
      List<MetadataValue>? metadataContentObjs,
      String? metadataContent,
      String? metaContentType,
      List<LabelsObj>? labelsObjs,
      String? labelsJson,
      bool? isActive}) {
    return BaseCategory(
        createdByUserId: createdByUserId ?? this.createdByUserId,
        lastModifiedByUserId: lastModifiedByUserId ?? this.lastModifiedByUserId,
        lastModifiedOnDate: lastModifiedOnDate ?? this.lastModifiedOnDate,
        createdOnDate: createdOnDate ?? this.createdOnDate,
        applicationId: applicationId ?? this.applicationId,
        id: id ?? this.id,
        parentId: parentId ?? this.parentId,
        parentPath: parentPath ?? this.parentPath,
        name: name ?? this.name,
        displayName: displayName ?? this.displayName,
        type: type ?? this.type,
        alias: alias ?? this.alias,
        detail: detail ?? this.detail,
        description: description ?? this.description,
        order: order ?? this.order,
        statusObj: statusObj ?? this.statusObj,
        status: status ?? this.status,
        isDeleted: isDeleted ?? this.isDeleted,
        imageUrl: imageUrl ?? this.imageUrl,
        cLeft: cLeft ?? this.cLeft,
        cRight: cRight ?? this.cRight,
        cLevel: cLevel ?? this.cLevel,
        aclObject: aclObject ?? this.aclObject,
        acl: acl ?? this.acl,
        metadataContentObjs: metadataContentObjs ?? this.metadataContentObjs,
        metadataContent: metadataContent ?? this.metadataContent,
        metaContentType: metaContentType ?? this.metaContentType,
        labelsObjs: labelsObjs ?? this.labelsObjs,
        labelsJson: labelsJson ?? this.labelsJson,
        isActive: isActive ?? this.isActive);
  }
}

@JsonSerializable(explicitToJson: true)
class BaseCategoryPagination {
  BaseCategoryPagination({
    this.currentPage,
    this.totalPages,
    this.pageSize,
    this.numberOfRecords,
    this.totalRecords,
    this.content,
  });

  factory BaseCategoryPagination.fromJson(Map<String, dynamic> json) =>
      _$BaseCategoryPaginationFromJson(json);

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
  @JsonKey(name: 'content', defaultValue: <BaseCategory>[])
  final List<BaseCategory>? content;
  static const fromJsonFactory = _$BaseCategoryPaginationFromJson;
  static const toJsonFactory = _$BaseCategoryPaginationToJson;
  Map<String, dynamic> toJson() => _$BaseCategoryPaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BaseCategoryPagination &&
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

extension $BaseCategoryPaginationExtension on BaseCategoryPagination {
  BaseCategoryPagination copyWith(
      {int? currentPage,
      int? totalPages,
      int? pageSize,
      int? numberOfRecords,
      int? totalRecords,
      List<BaseCategory>? content}) {
    return BaseCategoryPagination(
        currentPage: currentPage ?? this.currentPage,
        totalPages: totalPages ?? this.totalPages,
        pageSize: pageSize ?? this.pageSize,
        numberOfRecords: numberOfRecords ?? this.numberOfRecords,
        totalRecords: totalRecords ?? this.totalRecords,
        content: content ?? this.content);
  }
}

@JsonSerializable(explicitToJson: true)
class BaseCategoryResponseObject {
  BaseCategoryResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory BaseCategoryResponseObject.fromJson(Map<String, dynamic> json) =>
      _$BaseCategoryResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final BaseCategory? data;
  static const fromJsonFactory = _$BaseCategoryResponseObjectFromJson;
  static const toJsonFactory = _$BaseCategoryResponseObjectToJson;
  Map<String, dynamic> toJson() => _$BaseCategoryResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BaseCategoryResponseObject &&
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

extension $BaseCategoryResponseObjectExtension on BaseCategoryResponseObject {
  BaseCategoryResponseObject copyWith(
      {enums.Code? code, String? message, num? totalTime, BaseCategory? data}) {
    return BaseCategoryResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class BaseCategoryResponsePagination {
  BaseCategoryResponsePagination({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory BaseCategoryResponsePagination.fromJson(Map<String, dynamic> json) =>
      _$BaseCategoryResponsePaginationFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final BaseCategoryPagination? data;
  static const fromJsonFactory = _$BaseCategoryResponsePaginationFromJson;
  static const toJsonFactory = _$BaseCategoryResponsePaginationToJson;
  Map<String, dynamic> toJson() => _$BaseCategoryResponsePaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BaseCategoryResponsePagination &&
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

extension $BaseCategoryResponsePaginationExtension
    on BaseCategoryResponsePagination {
  BaseCategoryResponsePagination copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      BaseCategoryPagination? data}) {
    return BaseCategoryResponsePagination(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class BaseCategoryViewModel {
  BaseCategoryViewModel({
    this.id,
    this.parentId,
    this.parentPath,
    required this.name,
    this.displayName,
    required this.type,
    required this.alias,
    this.detail,
    this.description,
    this.order,
    this.isActive,
    this.status,
    this.imageUrl,
    this.metadataContentObjs,
    this.parent,
    this.children,
  });

  factory BaseCategoryViewModel.fromJson(Map<String, dynamic> json) =>
      _$BaseCategoryViewModelFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'parentId')
  final String? parentId;
  @JsonKey(name: 'parentPath')
  final String? parentPath;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'displayName')
  final String? displayName;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'alias')
  final String alias;
  @JsonKey(name: 'detail')
  final String? detail;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'order')
  final int? order;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @JsonKey(name: 'status')
  final int? status;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @JsonKey(name: 'metadataContentObjs', defaultValue: <MetadataValue>[])
  final List<MetadataValue>? metadataContentObjs;
  @JsonKey(name: 'parent')
  final BaseCategoryViewModel? parent;
  @JsonKey(name: 'children', defaultValue: <BaseCategoryViewModel>[])
  final List<BaseCategoryViewModel>? children;
  static const fromJsonFactory = _$BaseCategoryViewModelFromJson;
  static const toJsonFactory = _$BaseCategoryViewModelToJson;
  Map<String, dynamic> toJson() => _$BaseCategoryViewModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BaseCategoryViewModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality()
                    .equals(other.id, id)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.parentPath, parentPath) ||
                const DeepCollectionEquality()
                    .equals(other.parentPath, parentPath)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.alias, alias) ||
                const DeepCollectionEquality().equals(other.alias, alias)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.metadataContentObjs, metadataContentObjs) ||
                const DeepCollectionEquality()
                    .equals(other.metadataContentObjs, metadataContentObjs)) &&
            (identical(other.parent, parent) ||
                const DeepCollectionEquality().equals(other.parent, parent)) &&
            (identical(other.children, children) ||
                const DeepCollectionEquality()
                    .equals(other.children, children)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(parentPath) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(alias) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(metadataContentObjs) ^
      const DeepCollectionEquality().hash(parent) ^
      const DeepCollectionEquality().hash(children) ^
      runtimeType.hashCode;
}

extension $BaseCategoryViewModelExtension on BaseCategoryViewModel {
  BaseCategoryViewModel copyWith(
      {String? id,
      String? parentId,
      String? parentPath,
      String? name,
      String? displayName,
      String? type,
      String? alias,
      String? detail,
      String? description,
      int? order,
      bool? isActive,
      int? status,
      String? imageUrl,
      List<MetadataValue>? metadataContentObjs,
      BaseCategoryViewModel? parent,
      List<BaseCategoryViewModel>? children}) {
    return BaseCategoryViewModel(
        id: id ?? this.id,
        parentId: parentId ?? this.parentId,
        parentPath: parentPath ?? this.parentPath,
        name: name ?? this.name,
        displayName: displayName ?? this.displayName,
        type: type ?? this.type,
        alias: alias ?? this.alias,
        detail: detail ?? this.detail,
        description: description ?? this.description,
        order: order ?? this.order,
        isActive: isActive ?? this.isActive,
        status: status ?? this.status,
        imageUrl: imageUrl ?? this.imageUrl,
        metadataContentObjs: metadataContentObjs ?? this.metadataContentObjs,
        parent: parent ?? this.parent,
        children: children ?? this.children);
  }
}

@JsonSerializable(explicitToJson: true)
class BaseCategoryViewModelPagination {
  BaseCategoryViewModelPagination({
    this.currentPage,
    this.totalPages,
    this.pageSize,
    this.numberOfRecords,
    this.totalRecords,
    this.content,
  });

  factory BaseCategoryViewModelPagination.fromJson(Map<String, dynamic> json) =>
      _$BaseCategoryViewModelPaginationFromJson(json);

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
  @JsonKey(name: 'content', defaultValue: <BaseCategoryViewModel>[])
  final List<BaseCategoryViewModel>? content;
  static const fromJsonFactory = _$BaseCategoryViewModelPaginationFromJson;
  static const toJsonFactory = _$BaseCategoryViewModelPaginationToJson;
  Map<String, dynamic> toJson() =>
      _$BaseCategoryViewModelPaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BaseCategoryViewModelPagination &&
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

extension $BaseCategoryViewModelPaginationExtension
    on BaseCategoryViewModelPagination {
  BaseCategoryViewModelPagination copyWith(
      {int? currentPage,
      int? totalPages,
      int? pageSize,
      int? numberOfRecords,
      int? totalRecords,
      List<BaseCategoryViewModel>? content}) {
    return BaseCategoryViewModelPagination(
        currentPage: currentPage ?? this.currentPage,
        totalPages: totalPages ?? this.totalPages,
        pageSize: pageSize ?? this.pageSize,
        numberOfRecords: numberOfRecords ?? this.numberOfRecords,
        totalRecords: totalRecords ?? this.totalRecords,
        content: content ?? this.content);
  }
}

@JsonSerializable(explicitToJson: true)
class BaseCategoryViewModelResponseObject {
  BaseCategoryViewModelResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory BaseCategoryViewModelResponseObject.fromJson(
          Map<String, dynamic> json) =>
      _$BaseCategoryViewModelResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final BaseCategoryViewModel? data;
  static const fromJsonFactory = _$BaseCategoryViewModelResponseObjectFromJson;
  static const toJsonFactory = _$BaseCategoryViewModelResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$BaseCategoryViewModelResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BaseCategoryViewModelResponseObject &&
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

extension $BaseCategoryViewModelResponseObjectExtension
    on BaseCategoryViewModelResponseObject {
  BaseCategoryViewModelResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      BaseCategoryViewModel? data}) {
    return BaseCategoryViewModelResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class BaseCategoryViewModelResponsePagination {
  BaseCategoryViewModelResponsePagination({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory BaseCategoryViewModelResponsePagination.fromJson(
          Map<String, dynamic> json) =>
      _$BaseCategoryViewModelResponsePaginationFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final BaseCategoryViewModelPagination? data;
  static const fromJsonFactory =
      _$BaseCategoryViewModelResponsePaginationFromJson;
  static const toJsonFactory = _$BaseCategoryViewModelResponsePaginationToJson;
  Map<String, dynamic> toJson() =>
      _$BaseCategoryViewModelResponsePaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BaseCategoryViewModelResponsePagination &&
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

extension $BaseCategoryViewModelResponsePaginationExtension
    on BaseCategoryViewModelResponsePagination {
  BaseCategoryViewModelResponsePagination copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      BaseCategoryViewModelPagination? data}) {
    return BaseCategoryViewModelResponsePagination(
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

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
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
class CategoryOrderModel {
  CategoryOrderModel({
    this.id,
    this.order,
  });

  factory CategoryOrderModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryOrderModelFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'order')
  final int? order;
  static const fromJsonFactory = _$CategoryOrderModelFromJson;
  static const toJsonFactory = _$CategoryOrderModelToJson;
  Map<String, dynamic> toJson() => _$CategoryOrderModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryOrderModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(order) ^
      runtimeType.hashCode;
}

extension $CategoryOrderModelExtension on CategoryOrderModel {
  CategoryOrderModel copyWith({String? id, int? order}) {
    return CategoryOrderModel(id: id ?? this.id, order: order ?? this.order);
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryPatchRequestModel {
  CategoryPatchRequestModel({
    this.parentId,
    this.name,
    this.displayName,
    this.type,
    this.alias,
    this.detail,
    this.description,
    this.order,
    this.isActive,
    this.statusObj,
    this.imageUrl,
    this.metadataContentObjs,
    this.labelsObjs,
  });

  factory CategoryPatchRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryPatchRequestModelFromJson(json);

  @JsonKey(name: 'parentId')
  final String? parentId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'displayName')
  final String? displayName;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'alias')
  final String? alias;
  @JsonKey(name: 'detail')
  final String? detail;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'order')
  final int? order;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @JsonKey(
      name: 'statusObj',
      toJson: statusEnumsToJson,
      fromJson: statusEnumsFromJson)
  final enums.StatusEnums? statusObj;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @JsonKey(name: 'metadataContentObjs', defaultValue: <MetadataValue>[])
  final List<MetadataValue>? metadataContentObjs;
  @JsonKey(name: 'labelsObjs', defaultValue: <LabelsObj>[])
  final List<LabelsObj>? labelsObjs;
  static const fromJsonFactory = _$CategoryPatchRequestModelFromJson;
  static const toJsonFactory = _$CategoryPatchRequestModelToJson;
  Map<String, dynamic> toJson() => _$CategoryPatchRequestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryPatchRequestModel &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.alias, alias) ||
                const DeepCollectionEquality().equals(other.alias, alias)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.statusObj, statusObj) ||
                const DeepCollectionEquality()
                    .equals(other.statusObj, statusObj)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.metadataContentObjs, metadataContentObjs) ||
                const DeepCollectionEquality()
                    .equals(other.metadataContentObjs, metadataContentObjs)) &&
            (identical(other.labelsObjs, labelsObjs) ||
                const DeepCollectionEquality()
                    .equals(other.labelsObjs, labelsObjs)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(alias) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(statusObj) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(metadataContentObjs) ^
      const DeepCollectionEquality().hash(labelsObjs) ^
      runtimeType.hashCode;
}

extension $CategoryPatchRequestModelExtension on CategoryPatchRequestModel {
  CategoryPatchRequestModel copyWith(
      {String? parentId,
      String? name,
      String? displayName,
      String? type,
      String? alias,
      String? detail,
      String? description,
      int? order,
      bool? isActive,
      enums.StatusEnums? statusObj,
      String? imageUrl,
      List<MetadataValue>? metadataContentObjs,
      List<LabelsObj>? labelsObjs}) {
    return CategoryPatchRequestModel(
        parentId: parentId ?? this.parentId,
        name: name ?? this.name,
        displayName: displayName ?? this.displayName,
        type: type ?? this.type,
        alias: alias ?? this.alias,
        detail: detail ?? this.detail,
        description: description ?? this.description,
        order: order ?? this.order,
        isActive: isActive ?? this.isActive,
        statusObj: statusObj ?? this.statusObj,
        imageUrl: imageUrl ?? this.imageUrl,
        metadataContentObjs: metadataContentObjs ?? this.metadataContentObjs,
        labelsObjs: labelsObjs ?? this.labelsObjs);
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryRequestModel {
  CategoryRequestModel({
    this.id,
    this.parentId,
    required this.name,
    this.displayName,
    required this.type,
    required this.alias,
    this.detail,
    this.description,
    this.statusObj,
    this.imageUrl,
    this.metadataContentObjs,
    this.labelsObjs,
    this.order,
    this.isActive,
  });

  factory CategoryRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryRequestModelFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'parentId')
  final String? parentId;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'displayName')
  final String? displayName;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'alias')
  final String alias;
  @JsonKey(name: 'detail')
  final String? detail;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(
      name: 'statusObj',
      toJson: statusEnumsToJson,
      fromJson: statusEnumsFromJson)
  final enums.StatusEnums? statusObj;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @JsonKey(name: 'metadataContentObjs', defaultValue: <MetadataValue>[])
  final List<MetadataValue>? metadataContentObjs;
  @JsonKey(name: 'labelsObjs', defaultValue: <LabelsObj>[])
  final List<LabelsObj>? labelsObjs;
  @JsonKey(name: 'order')
  final int? order;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  static const fromJsonFactory = _$CategoryRequestModelFromJson;
  static const toJsonFactory = _$CategoryRequestModelToJson;
  Map<String, dynamic> toJson() => _$CategoryRequestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryRequestModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.alias, alias) ||
                const DeepCollectionEquality().equals(other.alias, alias)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.statusObj, statusObj) ||
                const DeepCollectionEquality()
                    .equals(other.statusObj, statusObj)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.metadataContentObjs, metadataContentObjs) ||
                const DeepCollectionEquality()
                    .equals(other.metadataContentObjs, metadataContentObjs)) &&
            (identical(other.labelsObjs, labelsObjs) ||
                const DeepCollectionEquality()
                    .equals(other.labelsObjs, labelsObjs)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(alias) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(statusObj) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(metadataContentObjs) ^
      const DeepCollectionEquality().hash(labelsObjs) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(isActive) ^
      runtimeType.hashCode;
}

extension $CategoryRequestModelExtension on CategoryRequestModel {
  CategoryRequestModel copyWith(
      {String? id,
      String? parentId,
      String? name,
      String? displayName,
      String? type,
      String? alias,
      String? detail,
      String? description,
      enums.StatusEnums? statusObj,
      String? imageUrl,
      List<MetadataValue>? metadataContentObjs,
      List<LabelsObj>? labelsObjs,
      int? order,
      bool? isActive}) {
    return CategoryRequestModel(
        id: id ?? this.id,
        parentId: parentId ?? this.parentId,
        name: name ?? this.name,
        displayName: displayName ?? this.displayName,
        type: type ?? this.type,
        alias: alias ?? this.alias,
        detail: detail ?? this.detail,
        description: description ?? this.description,
        statusObj: statusObj ?? this.statusObj,
        imageUrl: imageUrl ?? this.imageUrl,
        metadataContentObjs: metadataContentObjs ?? this.metadataContentObjs,
        labelsObjs: labelsObjs ?? this.labelsObjs,
        order: order ?? this.order,
        isActive: isActive ?? this.isActive);
  }
}

@JsonSerializable(explicitToJson: true)
class CustomRecurrenceModel {
  CustomRecurrenceModel({
    this.repeatType,
    this.numberOfOccurrences,
    this.repeateOnOfWeek,
    this.repeateOnOfMonthType,
    this.repeateOnOfMonthByDay,
    this.repeateOnOfMonthByDate,
    this.repeateOnOfYear,
    this.repeateEndType,
    this.valueOfRepeatTypeOn,
    this.valueOfRepeatTypeAfter,
  });

  factory CustomRecurrenceModel.fromJson(Map<String, dynamic> json) =>
      _$CustomRecurrenceModelFromJson(json);

  @JsonKey(name: 'repeatType')
  final String? repeatType;
  @JsonKey(name: 'numberOfOccurrences')
  final int? numberOfOccurrences;
  @JsonKey(name: 'repeateOnOfWeek')
  final String? repeateOnOfWeek;
  @JsonKey(name: 'repeateOnOfMonthType')
  final String? repeateOnOfMonthType;
  @JsonKey(name: 'repeateOnOfMonthByDay')
  final String? repeateOnOfMonthByDay;
  @JsonKey(name: 'repeateOnOfMonthByDate')
  final String? repeateOnOfMonthByDate;
  @JsonKey(name: 'repeateOnOfYear')
  final DateTime? repeateOnOfYear;
  @JsonKey(name: 'repeateEndType')
  final String? repeateEndType;
  @JsonKey(name: 'valueOfRepeatTypeOn')
  final DateTime? valueOfRepeatTypeOn;
  @JsonKey(name: 'valueOfRepeatTypeAfter')
  final int? valueOfRepeatTypeAfter;
  static const fromJsonFactory = _$CustomRecurrenceModelFromJson;
  static const toJsonFactory = _$CustomRecurrenceModelToJson;
  Map<String, dynamic> toJson() => _$CustomRecurrenceModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomRecurrenceModel &&
            (identical(other.repeatType, repeatType) ||
                const DeepCollectionEquality()
                    .equals(other.repeatType, repeatType)) &&
            (identical(other.numberOfOccurrences, numberOfOccurrences) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfOccurrences, numberOfOccurrences)) &&
            (identical(other.repeateOnOfWeek, repeateOnOfWeek) ||
                const DeepCollectionEquality()
                    .equals(other.repeateOnOfWeek, repeateOnOfWeek)) &&
            (identical(other.repeateOnOfMonthType, repeateOnOfMonthType) ||
                const DeepCollectionEquality().equals(
                    other.repeateOnOfMonthType, repeateOnOfMonthType)) &&
            (identical(other.repeateOnOfMonthByDay, repeateOnOfMonthByDay) ||
                const DeepCollectionEquality().equals(
                    other.repeateOnOfMonthByDay, repeateOnOfMonthByDay)) &&
            (identical(other.repeateOnOfMonthByDate, repeateOnOfMonthByDate) ||
                const DeepCollectionEquality().equals(
                    other.repeateOnOfMonthByDate, repeateOnOfMonthByDate)) &&
            (identical(other.repeateOnOfYear, repeateOnOfYear) ||
                const DeepCollectionEquality()
                    .equals(other.repeateOnOfYear, repeateOnOfYear)) &&
            (identical(other.repeateEndType, repeateEndType) ||
                const DeepCollectionEquality()
                    .equals(other.repeateEndType, repeateEndType)) &&
            (identical(other.valueOfRepeatTypeOn, valueOfRepeatTypeOn) ||
                const DeepCollectionEquality()
                    .equals(other.valueOfRepeatTypeOn, valueOfRepeatTypeOn)) &&
            (identical(other.valueOfRepeatTypeAfter, valueOfRepeatTypeAfter) ||
                const DeepCollectionEquality().equals(
                    other.valueOfRepeatTypeAfter, valueOfRepeatTypeAfter)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(repeatType) ^
      const DeepCollectionEquality().hash(numberOfOccurrences) ^
      const DeepCollectionEquality().hash(repeateOnOfWeek) ^
      const DeepCollectionEquality().hash(repeateOnOfMonthType) ^
      const DeepCollectionEquality().hash(repeateOnOfMonthByDay) ^
      const DeepCollectionEquality().hash(repeateOnOfMonthByDate) ^
      const DeepCollectionEquality().hash(repeateOnOfYear) ^
      const DeepCollectionEquality().hash(repeateEndType) ^
      const DeepCollectionEquality().hash(valueOfRepeatTypeOn) ^
      const DeepCollectionEquality().hash(valueOfRepeatTypeAfter) ^
      runtimeType.hashCode;
}

extension $CustomRecurrenceModelExtension on CustomRecurrenceModel {
  CustomRecurrenceModel copyWith(
      {String? repeatType,
      int? numberOfOccurrences,
      String? repeateOnOfWeek,
      String? repeateOnOfMonthType,
      String? repeateOnOfMonthByDay,
      String? repeateOnOfMonthByDate,
      DateTime? repeateOnOfYear,
      String? repeateEndType,
      DateTime? valueOfRepeatTypeOn,
      int? valueOfRepeatTypeAfter}) {
    return CustomRecurrenceModel(
        repeatType: repeatType ?? this.repeatType,
        numberOfOccurrences: numberOfOccurrences ?? this.numberOfOccurrences,
        repeateOnOfWeek: repeateOnOfWeek ?? this.repeateOnOfWeek,
        repeateOnOfMonthType: repeateOnOfMonthType ?? this.repeateOnOfMonthType,
        repeateOnOfMonthByDay:
            repeateOnOfMonthByDay ?? this.repeateOnOfMonthByDay,
        repeateOnOfMonthByDate:
            repeateOnOfMonthByDate ?? this.repeateOnOfMonthByDate,
        repeateOnOfYear: repeateOnOfYear ?? this.repeateOnOfYear,
        repeateEndType: repeateEndType ?? this.repeateEndType,
        valueOfRepeatTypeOn: valueOfRepeatTypeOn ?? this.valueOfRepeatTypeOn,
        valueOfRepeatTypeAfter:
            valueOfRepeatTypeAfter ?? this.valueOfRepeatTypeAfter);
  }
}

@JsonSerializable(explicitToJson: true)
class DateTimeListResponseObject {
  DateTimeListResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory DateTimeListResponseObject.fromJson(Map<String, dynamic> json) =>
      _$DateTimeListResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data', defaultValue: <DateTime>[])
  final List<DateTime>? data;
  static const fromJsonFactory = _$DateTimeListResponseObjectFromJson;
  static const toJsonFactory = _$DateTimeListResponseObjectToJson;
  Map<String, dynamic> toJson() => _$DateTimeListResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DateTimeListResponseObject &&
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

extension $DateTimeListResponseObjectExtension on DateTimeListResponseObject {
  DateTimeListResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<DateTime>? data}) {
    return DateTimeListResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class Email {
  Email({
    this.type,
    this.uri,
  });

  factory Email.fromJson(Map<String, dynamic> json) => _$EmailFromJson(json);

  @JsonKey(name: 'type', defaultValue: <String>[])
  final List<String>? type;
  @JsonKey(name: 'uri')
  final String? uri;
  static const fromJsonFactory = _$EmailFromJson;
  static const toJsonFactory = _$EmailToJson;
  Map<String, dynamic> toJson() => _$EmailToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Email &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      runtimeType.hashCode;
}

extension $EmailExtension on Email {
  Email copyWith({List<String>? type, String? uri}) {
    return Email(type: type ?? this.type, uri: uri ?? this.uri);
  }
}

@JsonSerializable(explicitToJson: true)
class Event {
  Event({
    this.label,
    this.eventDate,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'eventDate')
  final DateTime? eventDate;
  static const fromJsonFactory = _$EventFromJson;
  static const toJsonFactory = _$EventToJson;
  Map<String, dynamic> toJson() => _$EventToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Event &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.eventDate, eventDate) ||
                const DeepCollectionEquality()
                    .equals(other.eventDate, eventDate)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(eventDate) ^
      runtimeType.hashCode;
}

extension $EventExtension on Event {
  Event copyWith({String? label, DateTime? eventDate}) {
    return Event(
        label: label ?? this.label, eventDate: eventDate ?? this.eventDate);
  }
}

@JsonSerializable(explicitToJson: true)
class EventAttendee {
  EventAttendee({
    this.userId,
    this.username,
    this.userFullname,
    this.userOtherInfo,
  });

  factory EventAttendee.fromJson(Map<String, dynamic> json) =>
      _$EventAttendeeFromJson(json);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'username')
  final String? username;
  @JsonKey(name: 'userFullname')
  final String? userFullname;
  @JsonKey(name: 'userOtherInfo')
  final String? userOtherInfo;
  static const fromJsonFactory = _$EventAttendeeFromJson;
  static const toJsonFactory = _$EventAttendeeToJson;
  Map<String, dynamic> toJson() => _$EventAttendeeToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EventAttendee &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.userFullname, userFullname) ||
                const DeepCollectionEquality()
                    .equals(other.userFullname, userFullname)) &&
            (identical(other.userOtherInfo, userOtherInfo) ||
                const DeepCollectionEquality()
                    .equals(other.userOtherInfo, userOtherInfo)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(userFullname) ^
      const DeepCollectionEquality().hash(userOtherInfo) ^
      runtimeType.hashCode;
}

extension $EventAttendeeExtension on EventAttendee {
  EventAttendee copyWith(
      {String? userId,
      String? username,
      String? userFullname,
      String? userOtherInfo}) {
    return EventAttendee(
        userId: userId ?? this.userId,
        username: username ?? this.username,
        userFullname: userFullname ?? this.userFullname,
        userOtherInfo: userOtherInfo ?? this.userOtherInfo);
  }
}

@JsonSerializable(explicitToJson: true)
class EventDetails {
  EventDetails({
    this.eventType,
    this.icon,
    this.color,
  });

  factory EventDetails.fromJson(Map<String, dynamic> json) =>
      _$EventDetailsFromJson(json);

  @JsonKey(name: 'eventType')
  final String? eventType;
  @JsonKey(name: 'icon')
  final String? icon;
  @JsonKey(name: 'color')
  final String? color;
  static const fromJsonFactory = _$EventDetailsFromJson;
  static const toJsonFactory = _$EventDetailsToJson;
  Map<String, dynamic> toJson() => _$EventDetailsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EventDetails &&
            (identical(other.eventType, eventType) ||
                const DeepCollectionEquality()
                    .equals(other.eventType, eventType)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(eventType) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(color) ^
      runtimeType.hashCode;
}

extension $EventDetailsExtension on EventDetails {
  EventDetails copyWith({String? eventType, String? icon, String? color}) {
    return EventDetails(
        eventType: eventType ?? this.eventType,
        icon: icon ?? this.icon,
        color: color ?? this.color);
  }
}

@JsonSerializable(explicitToJson: true)
class EventHistory {
  EventHistory({
    this.modifiedDate,
    this.modifiedUser,
    this.actions,
  });

  factory EventHistory.fromJson(Map<String, dynamic> json) =>
      _$EventHistoryFromJson(json);

  @JsonKey(name: 'modifiedDate')
  final DateTime? modifiedDate;
  @JsonKey(name: 'modifiedUser')
  final String? modifiedUser;
  @JsonKey(name: 'actions')
  final String? actions;
  static const fromJsonFactory = _$EventHistoryFromJson;
  static const toJsonFactory = _$EventHistoryToJson;
  Map<String, dynamic> toJson() => _$EventHistoryToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EventHistory &&
            (identical(other.modifiedDate, modifiedDate) ||
                const DeepCollectionEquality()
                    .equals(other.modifiedDate, modifiedDate)) &&
            (identical(other.modifiedUser, modifiedUser) ||
                const DeepCollectionEquality()
                    .equals(other.modifiedUser, modifiedUser)) &&
            (identical(other.actions, actions) ||
                const DeepCollectionEquality().equals(other.actions, actions)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(modifiedDate) ^
      const DeepCollectionEquality().hash(modifiedUser) ^
      const DeepCollectionEquality().hash(actions) ^
      runtimeType.hashCode;
}

extension $EventHistoryExtension on EventHistory {
  EventHistory copyWith(
      {DateTime? modifiedDate, String? modifiedUser, String? actions}) {
    return EventHistory(
        modifiedDate: modifiedDate ?? this.modifiedDate,
        modifiedUser: modifiedUser ?? this.modifiedUser,
        actions: actions ?? this.actions);
  }
}

@JsonSerializable(explicitToJson: true)
class EventResponseModel {
  EventResponseModel({
    this.id,
    this.objectId,
    this.objectName,
    this.objectInfo,
    this.language,
    this.title,
    this.description,
    this.location,
    this.startTime,
    this.endTime,
    this.ownerId,
    this.attendees,
    this.guest,
    this.eventDetails,
    this.rrule,
    this.customRecurrence,
    this.applicationId,
    this.eventHistories,
  });

  factory EventResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EventResponseModelFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'objectId')
  final String? objectId;
  @JsonKey(name: 'objectName')
  final String? objectName;
  @JsonKey(name: 'objectInfo')
  final String? objectInfo;
  @JsonKey(name: 'language')
  final String? language;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'location')
  final String? location;
  @JsonKey(name: 'startTime')
  final DateTime? startTime;
  @JsonKey(name: 'endTime')
  final DateTime? endTime;
  @JsonKey(name: 'ownerId')
  final String? ownerId;
  @JsonKey(name: 'attendees', defaultValue: <String>[])
  final List<String>? attendees;
  @JsonKey(name: 'guest')
  final String? guest;
  @JsonKey(name: 'eventDetails')
  final EventDetails? eventDetails;
  @JsonKey(name: 'rrule')
  final String? rrule;
  @JsonKey(name: 'customRecurrence')
  final CustomRecurrenceModel? customRecurrence;
  @JsonKey(name: 'applicationId')
  final String? applicationId;
  @JsonKey(name: 'eventHistories', defaultValue: <EventHistory>[])
  final List<EventHistory>? eventHistories;
  static const fromJsonFactory = _$EventResponseModelFromJson;
  static const toJsonFactory = _$EventResponseModelToJson;
  Map<String, dynamic> toJson() => _$EventResponseModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EventResponseModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.objectId, objectId) ||
                const DeepCollectionEquality()
                    .equals(other.objectId, objectId)) &&
            (identical(other.objectName, objectName) ||
                const DeepCollectionEquality()
                    .equals(other.objectName, objectName)) &&
            (identical(other.objectInfo, objectInfo) ||
                const DeepCollectionEquality()
                    .equals(other.objectInfo, objectInfo)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality()
                    .equals(other.endTime, endTime)) &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.attendees, attendees) ||
                const DeepCollectionEquality()
                    .equals(other.attendees, attendees)) &&
            (identical(other.guest, guest) ||
                const DeepCollectionEquality().equals(other.guest, guest)) &&
            (identical(other.eventDetails, eventDetails) ||
                const DeepCollectionEquality()
                    .equals(other.eventDetails, eventDetails)) &&
            (identical(other.rrule, rrule) ||
                const DeepCollectionEquality().equals(other.rrule, rrule)) &&
            (identical(other.customRecurrence, customRecurrence) ||
                const DeepCollectionEquality()
                    .equals(other.customRecurrence, customRecurrence)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.eventHistories, eventHistories) ||
                const DeepCollectionEquality()
                    .equals(other.eventHistories, eventHistories)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(objectId) ^
      const DeepCollectionEquality().hash(objectName) ^
      const DeepCollectionEquality().hash(objectInfo) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(attendees) ^
      const DeepCollectionEquality().hash(guest) ^
      const DeepCollectionEquality().hash(eventDetails) ^
      const DeepCollectionEquality().hash(rrule) ^
      const DeepCollectionEquality().hash(customRecurrence) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(eventHistories) ^
      runtimeType.hashCode;
}

extension $EventResponseModelExtension on EventResponseModel {
  EventResponseModel copyWith(
      {String? id,
      String? objectId,
      String? objectName,
      String? objectInfo,
      String? language,
      String? title,
      String? description,
      String? location,
      DateTime? startTime,
      DateTime? endTime,
      String? ownerId,
      List<String>? attendees,
      String? guest,
      EventDetails? eventDetails,
      String? rrule,
      CustomRecurrenceModel? customRecurrence,
      String? applicationId,
      List<EventHistory>? eventHistories}) {
    return EventResponseModel(
        id: id ?? this.id,
        objectId: objectId ?? this.objectId,
        objectName: objectName ?? this.objectName,
        objectInfo: objectInfo ?? this.objectInfo,
        language: language ?? this.language,
        title: title ?? this.title,
        description: description ?? this.description,
        location: location ?? this.location,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        ownerId: ownerId ?? this.ownerId,
        attendees: attendees ?? this.attendees,
        guest: guest ?? this.guest,
        eventDetails: eventDetails ?? this.eventDetails,
        rrule: rrule ?? this.rrule,
        customRecurrence: customRecurrence ?? this.customRecurrence,
        applicationId: applicationId ?? this.applicationId,
        eventHistories: eventHistories ?? this.eventHistories);
  }
}

@JsonSerializable(explicitToJson: true)
class EventResponseModelListResponseObject {
  EventResponseModelListResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory EventResponseModelListResponseObject.fromJson(
          Map<String, dynamic> json) =>
      _$EventResponseModelListResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data', defaultValue: <EventResponseModel>[])
  final List<EventResponseModel>? data;
  static const fromJsonFactory = _$EventResponseModelListResponseObjectFromJson;
  static const toJsonFactory = _$EventResponseModelListResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$EventResponseModelListResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EventResponseModelListResponseObject &&
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

extension $EventResponseModelListResponseObjectExtension
    on EventResponseModelListResponseObject {
  EventResponseModelListResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<EventResponseModel>? data}) {
    return EventResponseModelListResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class EventResponseModelResponseObject {
  EventResponseModelResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory EventResponseModelResponseObject.fromJson(
          Map<String, dynamic> json) =>
      _$EventResponseModelResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final EventResponseModel? data;
  static const fromJsonFactory = _$EventResponseModelResponseObjectFromJson;
  static const toJsonFactory = _$EventResponseModelResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$EventResponseModelResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EventResponseModelResponseObject &&
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

extension $EventResponseModelResponseObjectExtension
    on EventResponseModelResponseObject {
  EventResponseModelResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      EventResponseModel? data}) {
    return EventResponseModelResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class EventResquestModel {
  EventResquestModel({
    this.id,
    this.objectId,
    this.objectName,
    this.objectInfo,
    this.language,
    this.title,
    this.description,
    this.location,
    this.startTime,
    this.endTime,
    this.ownerId,
    this.attendees,
    this.guest,
    this.eventDetails,
    this.rrule,
    this.customRecurrence,
  });

  factory EventResquestModel.fromJson(Map<String, dynamic> json) =>
      _$EventResquestModelFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'objectId')
  final String? objectId;
  @JsonKey(name: 'objectName')
  final String? objectName;
  @JsonKey(name: 'objectInfo')
  final String? objectInfo;
  @JsonKey(name: 'language')
  final String? language;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'location')
  final String? location;
  @JsonKey(name: 'startTime')
  final DateTime? startTime;
  @JsonKey(name: 'endTime')
  final DateTime? endTime;
  @JsonKey(name: 'ownerId')
  final String? ownerId;
  @JsonKey(name: 'attendees', defaultValue: <String>[])
  final List<String>? attendees;
  @JsonKey(name: 'guest')
  final String? guest;
  @JsonKey(name: 'eventDetails')
  final EventDetails? eventDetails;
  @JsonKey(name: 'rrule')
  final String? rrule;
  @JsonKey(name: 'customRecurrence')
  final CustomRecurrenceModel? customRecurrence;
  static const fromJsonFactory = _$EventResquestModelFromJson;
  static const toJsonFactory = _$EventResquestModelToJson;
  Map<String, dynamic> toJson() => _$EventResquestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EventResquestModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.objectId, objectId) ||
                const DeepCollectionEquality()
                    .equals(other.objectId, objectId)) &&
            (identical(other.objectName, objectName) ||
                const DeepCollectionEquality()
                    .equals(other.objectName, objectName)) &&
            (identical(other.objectInfo, objectInfo) ||
                const DeepCollectionEquality()
                    .equals(other.objectInfo, objectInfo)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality()
                    .equals(other.endTime, endTime)) &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.attendees, attendees) ||
                const DeepCollectionEquality()
                    .equals(other.attendees, attendees)) &&
            (identical(other.guest, guest) ||
                const DeepCollectionEquality().equals(other.guest, guest)) &&
            (identical(other.eventDetails, eventDetails) ||
                const DeepCollectionEquality()
                    .equals(other.eventDetails, eventDetails)) &&
            (identical(other.rrule, rrule) ||
                const DeepCollectionEquality().equals(other.rrule, rrule)) &&
            (identical(other.customRecurrence, customRecurrence) ||
                const DeepCollectionEquality()
                    .equals(other.customRecurrence, customRecurrence)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(objectId) ^
      const DeepCollectionEquality().hash(objectName) ^
      const DeepCollectionEquality().hash(objectInfo) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(attendees) ^
      const DeepCollectionEquality().hash(guest) ^
      const DeepCollectionEquality().hash(eventDetails) ^
      const DeepCollectionEquality().hash(rrule) ^
      const DeepCollectionEquality().hash(customRecurrence) ^
      runtimeType.hashCode;
}

extension $EventResquestModelExtension on EventResquestModel {
  EventResquestModel copyWith(
      {String? id,
      String? objectId,
      String? objectName,
      String? objectInfo,
      String? language,
      String? title,
      String? description,
      String? location,
      DateTime? startTime,
      DateTime? endTime,
      String? ownerId,
      List<String>? attendees,
      String? guest,
      EventDetails? eventDetails,
      String? rrule,
      CustomRecurrenceModel? customRecurrence}) {
    return EventResquestModel(
        id: id ?? this.id,
        objectId: objectId ?? this.objectId,
        objectName: objectName ?? this.objectName,
        objectInfo: objectInfo ?? this.objectInfo,
        language: language ?? this.language,
        title: title ?? this.title,
        description: description ?? this.description,
        location: location ?? this.location,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        ownerId: ownerId ?? this.ownerId,
        attendees: attendees ?? this.attendees,
        guest: guest ?? this.guest,
        eventDetails: eventDetails ?? this.eventDetails,
        rrule: rrule ?? this.rrule,
        customRecurrence: customRecurrence ?? this.customRecurrence);
  }
}

@JsonSerializable(explicitToJson: true)
class Feedback {
  Feedback({
    this.createdByUserId,
    this.lastModifiedByUserId,
    this.lastModifiedOnDate,
    this.createdOnDate,
    this.applicationId,
    this.id,
    this.feedbackName,
    this.feedbackType,
    this.objectId,
    this.objectCode,
    this.objectIds,
    this.category,
    this.subject,
    this.content,
    this.status,
    this.userFullname,
    this.username,
    this.metadataContent,
    this.metaContentType,
  });

  factory Feedback.fromJson(Map<String, dynamic> json) =>
      _$FeedbackFromJson(json);

  @JsonKey(name: 'createdByUserId')
  final String? createdByUserId;
  @JsonKey(name: 'lastModifiedByUserId')
  final String? lastModifiedByUserId;
  @JsonKey(name: 'lastModifiedOnDate')
  final DateTime? lastModifiedOnDate;
  @JsonKey(name: 'createdOnDate')
  final DateTime? createdOnDate;
  @JsonKey(name: 'applicationId')
  final String? applicationId;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'feedbackName')
  final String? feedbackName;
  @JsonKey(name: 'feedbackType')
  final String? feedbackType;
  @JsonKey(name: 'objectId')
  final String? objectId;
  @JsonKey(name: 'objectCode')
  final String? objectCode;
  @JsonKey(name: 'objectIds')
  final String? objectIds;
  @JsonKey(name: 'category')
  final String? category;
  @JsonKey(name: 'subject')
  final String? subject;
  @JsonKey(name: 'content')
  final String? content;
  @JsonKey(name: 'status')
  final int? status;
  @JsonKey(name: 'userFullname')
  final String? userFullname;
  @JsonKey(name: 'username')
  final String? username;
  @JsonKey(name: 'metadataContent')
  final String? metadataContent;
  @JsonKey(name: 'metaContentType')
  final String? metaContentType;
  static const fromJsonFactory = _$FeedbackFromJson;
  static const toJsonFactory = _$FeedbackToJson;
  Map<String, dynamic> toJson() => _$FeedbackToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Feedback &&
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
            (identical(other.feedbackName, feedbackName) ||
                const DeepCollectionEquality()
                    .equals(other.feedbackName, feedbackName)) &&
            (identical(other.feedbackType, feedbackType) ||
                const DeepCollectionEquality()
                    .equals(other.feedbackType, feedbackType)) &&
            (identical(other.objectId, objectId) ||
                const DeepCollectionEquality()
                    .equals(other.objectId, objectId)) &&
            (identical(other.objectCode, objectCode) ||
                const DeepCollectionEquality()
                    .equals(other.objectCode, objectCode)) &&
            (identical(other.objectIds, objectIds) ||
                const DeepCollectionEquality()
                    .equals(other.objectIds, objectIds)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.userFullname, userFullname) ||
                const DeepCollectionEquality()
                    .equals(other.userFullname, userFullname)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.metadataContent, metadataContent) ||
                const DeepCollectionEquality()
                    .equals(other.metadataContent, metadataContent)) &&
            (identical(other.metaContentType, metaContentType) ||
                const DeepCollectionEquality()
                    .equals(other.metaContentType, metaContentType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedOnDate) ^
      const DeepCollectionEquality().hash(createdOnDate) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(feedbackName) ^
      const DeepCollectionEquality().hash(feedbackType) ^
      const DeepCollectionEquality().hash(objectId) ^
      const DeepCollectionEquality().hash(objectCode) ^
      const DeepCollectionEquality().hash(objectIds) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(userFullname) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(metadataContent) ^
      const DeepCollectionEquality().hash(metaContentType) ^
      runtimeType.hashCode;
}

extension $FeedbackExtension on Feedback {
  Feedback copyWith(
      {String? createdByUserId,
      String? lastModifiedByUserId,
      DateTime? lastModifiedOnDate,
      DateTime? createdOnDate,
      String? applicationId,
      String? id,
      String? feedbackName,
      String? feedbackType,
      String? objectId,
      String? objectCode,
      String? objectIds,
      String? category,
      String? subject,
      String? content,
      int? status,
      String? userFullname,
      String? username,
      String? metadataContent,
      String? metaContentType}) {
    return Feedback(
        createdByUserId: createdByUserId ?? this.createdByUserId,
        lastModifiedByUserId: lastModifiedByUserId ?? this.lastModifiedByUserId,
        lastModifiedOnDate: lastModifiedOnDate ?? this.lastModifiedOnDate,
        createdOnDate: createdOnDate ?? this.createdOnDate,
        applicationId: applicationId ?? this.applicationId,
        id: id ?? this.id,
        feedbackName: feedbackName ?? this.feedbackName,
        feedbackType: feedbackType ?? this.feedbackType,
        objectId: objectId ?? this.objectId,
        objectCode: objectCode ?? this.objectCode,
        objectIds: objectIds ?? this.objectIds,
        category: category ?? this.category,
        subject: subject ?? this.subject,
        content: content ?? this.content,
        status: status ?? this.status,
        userFullname: userFullname ?? this.userFullname,
        username: username ?? this.username,
        metadataContent: metadataContent ?? this.metadataContent,
        metaContentType: metaContentType ?? this.metaContentType);
  }
}

@JsonSerializable(explicitToJson: true)
class FeedbackPagination {
  FeedbackPagination({
    this.currentPage,
    this.totalPages,
    this.pageSize,
    this.numberOfRecords,
    this.totalRecords,
    this.content,
  });

  factory FeedbackPagination.fromJson(Map<String, dynamic> json) =>
      _$FeedbackPaginationFromJson(json);

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
  @JsonKey(name: 'content', defaultValue: <Feedback>[])
  final List<Feedback>? content;
  static const fromJsonFactory = _$FeedbackPaginationFromJson;
  static const toJsonFactory = _$FeedbackPaginationToJson;
  Map<String, dynamic> toJson() => _$FeedbackPaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FeedbackPagination &&
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

extension $FeedbackPaginationExtension on FeedbackPagination {
  FeedbackPagination copyWith(
      {int? currentPage,
      int? totalPages,
      int? pageSize,
      int? numberOfRecords,
      int? totalRecords,
      List<Feedback>? content}) {
    return FeedbackPagination(
        currentPage: currentPage ?? this.currentPage,
        totalPages: totalPages ?? this.totalPages,
        pageSize: pageSize ?? this.pageSize,
        numberOfRecords: numberOfRecords ?? this.numberOfRecords,
        totalRecords: totalRecords ?? this.totalRecords,
        content: content ?? this.content);
  }
}

@JsonSerializable(explicitToJson: true)
class FeedbackRequestModel {
  FeedbackRequestModel({
    this.feedbackName,
    this.feedbackType,
    this.objectId,
    this.objectCode,
    this.objectIds,
    this.category,
    this.subject,
    this.content,
    this.status,
    this.metadata,
  });

  factory FeedbackRequestModel.fromJson(Map<String, dynamic> json) =>
      _$FeedbackRequestModelFromJson(json);

  @JsonKey(name: 'feedbackName')
  final String? feedbackName;
  @JsonKey(name: 'feedbackType')
  final String? feedbackType;
  @JsonKey(name: 'objectId')
  final String? objectId;
  @JsonKey(name: 'objectCode')
  final String? objectCode;
  @JsonKey(name: 'objectIds')
  final String? objectIds;
  @JsonKey(name: 'category')
  final String? category;
  @JsonKey(name: 'subject')
  final String? subject;
  @JsonKey(name: 'content')
  final String? content;
  @JsonKey(name: 'status')
  final int? status;
  @JsonKey(name: 'metadata')
  final String? metadata;
  static const fromJsonFactory = _$FeedbackRequestModelFromJson;
  static const toJsonFactory = _$FeedbackRequestModelToJson;
  Map<String, dynamic> toJson() => _$FeedbackRequestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FeedbackRequestModel &&
            (identical(other.feedbackName, feedbackName) ||
                const DeepCollectionEquality()
                    .equals(other.feedbackName, feedbackName)) &&
            (identical(other.feedbackType, feedbackType) ||
                const DeepCollectionEquality()
                    .equals(other.feedbackType, feedbackType)) &&
            (identical(other.objectId, objectId) ||
                const DeepCollectionEquality()
                    .equals(other.objectId, objectId)) &&
            (identical(other.objectCode, objectCode) ||
                const DeepCollectionEquality()
                    .equals(other.objectCode, objectCode)) &&
            (identical(other.objectIds, objectIds) ||
                const DeepCollectionEquality()
                    .equals(other.objectIds, objectIds)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(feedbackName) ^
      const DeepCollectionEquality().hash(feedbackType) ^
      const DeepCollectionEquality().hash(objectId) ^
      const DeepCollectionEquality().hash(objectCode) ^
      const DeepCollectionEquality().hash(objectIds) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(metadata) ^
      runtimeType.hashCode;
}

extension $FeedbackRequestModelExtension on FeedbackRequestModel {
  FeedbackRequestModel copyWith(
      {String? feedbackName,
      String? feedbackType,
      String? objectId,
      String? objectCode,
      String? objectIds,
      String? category,
      String? subject,
      String? content,
      int? status,
      String? metadata}) {
    return FeedbackRequestModel(
        feedbackName: feedbackName ?? this.feedbackName,
        feedbackType: feedbackType ?? this.feedbackType,
        objectId: objectId ?? this.objectId,
        objectCode: objectCode ?? this.objectCode,
        objectIds: objectIds ?? this.objectIds,
        category: category ?? this.category,
        subject: subject ?? this.subject,
        content: content ?? this.content,
        status: status ?? this.status,
        metadata: metadata ?? this.metadata);
  }
}

@JsonSerializable(explicitToJson: true)
class FeedbackResponseObject {
  FeedbackResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory FeedbackResponseObject.fromJson(Map<String, dynamic> json) =>
      _$FeedbackResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final Feedback? data;
  static const fromJsonFactory = _$FeedbackResponseObjectFromJson;
  static const toJsonFactory = _$FeedbackResponseObjectToJson;
  Map<String, dynamic> toJson() => _$FeedbackResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FeedbackResponseObject &&
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

extension $FeedbackResponseObjectExtension on FeedbackResponseObject {
  FeedbackResponseObject copyWith(
      {enums.Code? code, String? message, num? totalTime, Feedback? data}) {
    return FeedbackResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class FeedbackResponsePagination {
  FeedbackResponsePagination({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory FeedbackResponsePagination.fromJson(Map<String, dynamic> json) =>
      _$FeedbackResponsePaginationFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final FeedbackPagination? data;
  static const fromJsonFactory = _$FeedbackResponsePaginationFromJson;
  static const toJsonFactory = _$FeedbackResponsePaginationToJson;
  Map<String, dynamic> toJson() => _$FeedbackResponsePaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FeedbackResponsePagination &&
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

extension $FeedbackResponsePaginationExtension on FeedbackResponsePagination {
  FeedbackResponsePagination copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      FeedbackPagination? data}) {
    return FeedbackResponsePagination(
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

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data', defaultValue: <String>[])
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

  @JsonKey(name: 'objectId')
  final String? objectId;
  @JsonKey(name: 'objectCode')
  final String? objectCode;
  @JsonKey(name: 'objectName')
  final String? objectName;
  @JsonKey(name: 'color')
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
class ListOfUserRequestModel {
  ListOfUserRequestModel({
    this.listOfUserIds,
  });

  factory ListOfUserRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ListOfUserRequestModelFromJson(json);

  @JsonKey(name: 'listOfUserIds', defaultValue: <String>[])
  final List<String>? listOfUserIds;
  static const fromJsonFactory = _$ListOfUserRequestModelFromJson;
  static const toJsonFactory = _$ListOfUserRequestModelToJson;
  Map<String, dynamic> toJson() => _$ListOfUserRequestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListOfUserRequestModel &&
            (identical(other.listOfUserIds, listOfUserIds) ||
                const DeepCollectionEquality()
                    .equals(other.listOfUserIds, listOfUserIds)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(listOfUserIds) ^ runtimeType.hashCode;
}

extension $ListOfUserRequestModelExtension on ListOfUserRequestModel {
  ListOfUserRequestModel copyWith({List<String>? listOfUserIds}) {
    return ListOfUserRequestModel(
        listOfUserIds: listOfUserIds ?? this.listOfUserIds);
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

  @JsonKey(name: 'key')
  final String? key;
  @JsonKey(name: 'value')
  final String? value;
  @JsonKey(name: 'order')
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

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'fieldName')
  final String? fieldName;
  @JsonKey(name: 'displayName')
  final String? displayName;
  @JsonKey(
      name: 'fieldType',
      toJson: metafieldTypeToJson,
      fromJson: metafieldTypeFromJson)
  final enums.MetafieldType? fieldType;
  @JsonKey(name: 'defaultValue')
  final String? defaultValue;
  @JsonKey(name: 'fieldValues')
  final String? fieldValues;
  @JsonKey(name: 'fieldSelectionValues', defaultValue: <MetaKeyValue>[])
  final List<MetaKeyValue>? fieldSelectionValues;
  @JsonKey(name: 'allowNulls')
  final bool? allowNulls;
  @JsonKey(name: 'sortOrder')
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
class Org {
  Org({
    this.title,
    this.organization,
    this.startTime,
    this.endTime,
    this.description,
  });

  factory Org.fromJson(Map<String, dynamic> json) => _$OrgFromJson(json);

  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'organization')
  final String? organization;
  @JsonKey(name: 'startTime')
  final DateTime? startTime;
  @JsonKey(name: 'endTime')
  final DateTime? endTime;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$OrgFromJson;
  static const toJsonFactory = _$OrgToJson;
  Map<String, dynamic> toJson() => _$OrgToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Org &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.organization, organization) ||
                const DeepCollectionEquality()
                    .equals(other.organization, organization)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality()
                    .equals(other.endTime, endTime)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(organization) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $OrgExtension on Org {
  Org copyWith(
      {String? title,
      String? organization,
      DateTime? startTime,
      DateTime? endTime,
      String? description}) {
    return Org(
        title: title ?? this.title,
        organization: organization ?? this.organization,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class Organization {
  Organization({
    this.createdByUserId,
    this.lastModifiedByUserId,
    this.lastModifiedOnDate,
    this.createdOnDate,
    this.applicationId,
    this.metadataContentObjs,
    this.metaContentType,
    this.metadataContent,
    this.organizationId,
    this.parentId,
    this.parentOrganization,
    required this.code,
    required this.name,
    this.description,
    this.type,
    this.order,
    this.address,
    this.phoneNumber,
    this.fax,
    this.email,
    this.loai,
    this.idPath,
    this.path,
    this.level,
    this.hasChild,
    this.active,
    this.accountingAppId,
    this.imageUrl,
  });

  factory Organization.fromJson(Map<String, dynamic> json) =>
      _$OrganizationFromJson(json);

  @JsonKey(name: 'createdByUserId')
  final String? createdByUserId;
  @JsonKey(name: 'lastModifiedByUserId')
  final String? lastModifiedByUserId;
  @JsonKey(name: 'lastModifiedOnDate')
  final DateTime? lastModifiedOnDate;
  @JsonKey(name: 'createdOnDate')
  final DateTime? createdOnDate;
  @JsonKey(name: 'applicationId')
  final String? applicationId;
  @JsonKey(name: 'metadataContentObjs', defaultValue: <MetadataValue>[])
  final List<MetadataValue>? metadataContentObjs;
  @JsonKey(name: 'metaContentType')
  final String? metaContentType;
  @JsonKey(name: 'metadataContent')
  final String? metadataContent;
  @JsonKey(name: 'organizationId')
  final String? organizationId;
  @JsonKey(name: 'parentId')
  final String? parentId;
  @JsonKey(name: 'parentOrganization')
  final Organization? parentOrganization;
  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'order')
  final int? order;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'fax')
  final String? fax;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'loai')
  final int? loai;
  @JsonKey(name: 'idPath')
  final String? idPath;
  @JsonKey(name: 'path')
  final String? path;
  @JsonKey(name: 'level')
  final int? level;
  @JsonKey(name: 'hasChild')
  final bool? hasChild;
  @JsonKey(name: 'active')
  final int? active;
  @JsonKey(name: 'accountingAppId')
  final String? accountingAppId;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  static const fromJsonFactory = _$OrganizationFromJson;
  static const toJsonFactory = _$OrganizationToJson;
  Map<String, dynamic> toJson() => _$OrganizationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Organization &&
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
            (identical(other.metadataContentObjs, metadataContentObjs) ||
                const DeepCollectionEquality()
                    .equals(other.metadataContentObjs, metadataContentObjs)) &&
            (identical(other.metaContentType, metaContentType) ||
                const DeepCollectionEquality()
                    .equals(other.metaContentType, metaContentType)) &&
            (identical(other.metadataContent, metadataContent) ||
                const DeepCollectionEquality()
                    .equals(other.metadataContent, metadataContent)) &&
            (identical(other.organizationId, organizationId) ||
                const DeepCollectionEquality()
                    .equals(other.organizationId, organizationId)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.parentOrganization, parentOrganization) ||
                const DeepCollectionEquality()
                    .equals(other.parentOrganization, parentOrganization)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.fax, fax) ||
                const DeepCollectionEquality().equals(other.fax, fax)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.loai, loai) ||
                const DeepCollectionEquality().equals(other.loai, loai)) &&
            (identical(other.idPath, idPath) ||
                const DeepCollectionEquality().equals(other.idPath, idPath)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.hasChild, hasChild) ||
                const DeepCollectionEquality()
                    .equals(other.hasChild, hasChild)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.accountingAppId, accountingAppId) ||
                const DeepCollectionEquality()
                    .equals(other.accountingAppId, accountingAppId)) &&
            (identical(other.imageUrl, imageUrl) || const DeepCollectionEquality().equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedOnDate) ^
      const DeepCollectionEquality().hash(createdOnDate) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(metadataContentObjs) ^
      const DeepCollectionEquality().hash(metaContentType) ^
      const DeepCollectionEquality().hash(metadataContent) ^
      const DeepCollectionEquality().hash(organizationId) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(parentOrganization) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(fax) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(loai) ^
      const DeepCollectionEquality().hash(idPath) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(hasChild) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(accountingAppId) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      runtimeType.hashCode;
}

extension $OrganizationExtension on Organization {
  Organization copyWith(
      {String? createdByUserId,
      String? lastModifiedByUserId,
      DateTime? lastModifiedOnDate,
      DateTime? createdOnDate,
      String? applicationId,
      List<MetadataValue>? metadataContentObjs,
      String? metaContentType,
      String? metadataContent,
      String? organizationId,
      String? parentId,
      Organization? parentOrganization,
      String? code,
      String? name,
      String? description,
      String? type,
      int? order,
      String? address,
      String? phoneNumber,
      String? fax,
      String? email,
      int? loai,
      String? idPath,
      String? path,
      int? level,
      bool? hasChild,
      int? active,
      String? accountingAppId,
      String? imageUrl}) {
    return Organization(
        createdByUserId: createdByUserId ?? this.createdByUserId,
        lastModifiedByUserId: lastModifiedByUserId ?? this.lastModifiedByUserId,
        lastModifiedOnDate: lastModifiedOnDate ?? this.lastModifiedOnDate,
        createdOnDate: createdOnDate ?? this.createdOnDate,
        applicationId: applicationId ?? this.applicationId,
        metadataContentObjs: metadataContentObjs ?? this.metadataContentObjs,
        metaContentType: metaContentType ?? this.metaContentType,
        metadataContent: metadataContent ?? this.metadataContent,
        organizationId: organizationId ?? this.organizationId,
        parentId: parentId ?? this.parentId,
        parentOrganization: parentOrganization ?? this.parentOrganization,
        code: code ?? this.code,
        name: name ?? this.name,
        description: description ?? this.description,
        type: type ?? this.type,
        order: order ?? this.order,
        address: address ?? this.address,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        fax: fax ?? this.fax,
        email: email ?? this.email,
        loai: loai ?? this.loai,
        idPath: idPath ?? this.idPath,
        path: path ?? this.path,
        level: level ?? this.level,
        hasChild: hasChild ?? this.hasChild,
        active: active ?? this.active,
        accountingAppId: accountingAppId ?? this.accountingAppId,
        imageUrl: imageUrl ?? this.imageUrl);
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationPagination {
  OrganizationPagination({
    this.currentPage,
    this.totalPages,
    this.pageSize,
    this.numberOfRecords,
    this.totalRecords,
    this.content,
  });

  factory OrganizationPagination.fromJson(Map<String, dynamic> json) =>
      _$OrganizationPaginationFromJson(json);

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
  @JsonKey(name: 'content', defaultValue: <Organization>[])
  final List<Organization>? content;
  static const fromJsonFactory = _$OrganizationPaginationFromJson;
  static const toJsonFactory = _$OrganizationPaginationToJson;
  Map<String, dynamic> toJson() => _$OrganizationPaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationPagination &&
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

extension $OrganizationPaginationExtension on OrganizationPagination {
  OrganizationPagination copyWith(
      {int? currentPage,
      int? totalPages,
      int? pageSize,
      int? numberOfRecords,
      int? totalRecords,
      List<Organization>? content}) {
    return OrganizationPagination(
        currentPage: currentPage ?? this.currentPage,
        totalPages: totalPages ?? this.totalPages,
        pageSize: pageSize ?? this.pageSize,
        numberOfRecords: numberOfRecords ?? this.numberOfRecords,
        totalRecords: totalRecords ?? this.totalRecords,
        content: content ?? this.content);
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationRequestModel {
  OrganizationRequestModel({
    this.id,
    this.parentId,
    this.name,
    this.code,
    this.description,
    this.type,
    this.order,
    this.address,
    this.phoneNumber,
    this.fax,
    this.email,
    this.loai,
    this.idPath,
    this.path,
    this.level,
    this.hasChild,
    this.active,
  });

  factory OrganizationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$OrganizationRequestModelFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'parentId')
  final String? parentId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'order')
  final int? order;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'fax')
  final String? fax;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'loai')
  final int? loai;
  @JsonKey(name: 'idPath')
  final String? idPath;
  @JsonKey(name: 'path')
  final String? path;
  @JsonKey(name: 'level')
  final int? level;
  @JsonKey(name: 'hasChild')
  final bool? hasChild;
  @JsonKey(name: 'active')
  final int? active;
  static const fromJsonFactory = _$OrganizationRequestModelFromJson;
  static const toJsonFactory = _$OrganizationRequestModelToJson;
  Map<String, dynamic> toJson() => _$OrganizationRequestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationRequestModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.fax, fax) ||
                const DeepCollectionEquality().equals(other.fax, fax)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.loai, loai) ||
                const DeepCollectionEquality().equals(other.loai, loai)) &&
            (identical(other.idPath, idPath) ||
                const DeepCollectionEquality().equals(other.idPath, idPath)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.hasChild, hasChild) ||
                const DeepCollectionEquality()
                    .equals(other.hasChild, hasChild)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(fax) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(loai) ^
      const DeepCollectionEquality().hash(idPath) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(hasChild) ^
      const DeepCollectionEquality().hash(active) ^
      runtimeType.hashCode;
}

extension $OrganizationRequestModelExtension on OrganizationRequestModel {
  OrganizationRequestModel copyWith(
      {String? id,
      String? parentId,
      String? name,
      String? code,
      String? description,
      String? type,
      int? order,
      String? address,
      String? phoneNumber,
      String? fax,
      String? email,
      int? loai,
      String? idPath,
      String? path,
      int? level,
      bool? hasChild,
      int? active}) {
    return OrganizationRequestModel(
        id: id ?? this.id,
        parentId: parentId ?? this.parentId,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        type: type ?? this.type,
        order: order ?? this.order,
        address: address ?? this.address,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        fax: fax ?? this.fax,
        email: email ?? this.email,
        loai: loai ?? this.loai,
        idPath: idPath ?? this.idPath,
        path: path ?? this.path,
        level: level ?? this.level,
        hasChild: hasChild ?? this.hasChild,
        active: active ?? this.active);
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationResponseObject {
  OrganizationResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory OrganizationResponseObject.fromJson(Map<String, dynamic> json) =>
      _$OrganizationResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final Organization? data;
  static const fromJsonFactory = _$OrganizationResponseObjectFromJson;
  static const toJsonFactory = _$OrganizationResponseObjectToJson;
  Map<String, dynamic> toJson() => _$OrganizationResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationResponseObject &&
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

extension $OrganizationResponseObjectExtension on OrganizationResponseObject {
  OrganizationResponseObject copyWith(
      {enums.Code? code, String? message, num? totalTime, Organization? data}) {
    return OrganizationResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationResponsePagination {
  OrganizationResponsePagination({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory OrganizationResponsePagination.fromJson(Map<String, dynamic> json) =>
      _$OrganizationResponsePaginationFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final OrganizationPagination? data;
  static const fromJsonFactory = _$OrganizationResponsePaginationFromJson;
  static const toJsonFactory = _$OrganizationResponsePaginationToJson;
  Map<String, dynamic> toJson() => _$OrganizationResponsePaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationResponsePagination &&
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

extension $OrganizationResponsePaginationExtension
    on OrganizationResponsePagination {
  OrganizationResponsePagination copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      OrganizationPagination? data}) {
    return OrganizationResponsePagination(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class Phone {
  Phone({
    this.type,
    this.uri,
  });

  factory Phone.fromJson(Map<String, dynamic> json) => _$PhoneFromJson(json);

  @JsonKey(name: 'type', defaultValue: <String>[])
  final List<String>? type;
  @JsonKey(name: 'uri')
  final String? uri;
  static const fromJsonFactory = _$PhoneFromJson;
  static const toJsonFactory = _$PhoneToJson;
  Map<String, dynamic> toJson() => _$PhoneToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Phone &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uri) ^
      runtimeType.hashCode;
}

extension $PhoneExtension on Phone {
  Phone copyWith({List<String>? type, String? uri}) {
    return Phone(type: type ?? this.type, uri: uri ?? this.uri);
  }
}

@JsonSerializable(explicitToJson: true)
class ResContact {
  ResContact({
    this.createdByUserId,
    this.lastModifiedByUserId,
    this.lastModifiedOnDate,
    this.createdOnDate,
    this.applicationId,
    this.id,
    this.refsObject,
    this.refs,
    this.name,
    this.title,
    this.fullname,
    this.birthday,
    this.eventsObject,
    this.events,
    this.telephonesObject,
    this.telephones,
    this.addressesObject,
    this.addresses,
    this.organizationsObject,
    this.organizations,
    this.emailObject,
    this.emails,
    this.websiteObject,
    this.websites,
    this.notes,
    this.imageUrl,
    this.qrCodeUrl,
    this.labelsObjs,
    this.labelsJson,
    this.metadataContentObjs,
    this.metadataContent,
    this.metaContentType,
    this.isShared,
    this.isDeleted,
    this.isActive,
    this.order,
  });

  factory ResContact.fromJson(Map<String, dynamic> json) =>
      _$ResContactFromJson(json);

  @JsonKey(name: 'createdByUserId')
  final String? createdByUserId;
  @JsonKey(name: 'lastModifiedByUserId')
  final String? lastModifiedByUserId;
  @JsonKey(name: 'lastModifiedOnDate')
  final DateTime? lastModifiedOnDate;
  @JsonKey(name: 'createdOnDate')
  final DateTime? createdOnDate;
  @JsonKey(name: 'applicationId')
  final String? applicationId;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'refsObject', defaultValue: <String>[])
  final List<String>? refsObject;
  @JsonKey(name: 'refs')
  final String? refs;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'fullname')
  final String? fullname;
  @JsonKey(name: 'birthday')
  final DateTime? birthday;
  @JsonKey(name: 'eventsObject', defaultValue: <Event>[])
  final List<Event>? eventsObject;
  @JsonKey(name: 'events')
  final String? events;
  @JsonKey(name: 'telephonesObject', defaultValue: <Phone>[])
  final List<Phone>? telephonesObject;
  @JsonKey(name: 'telephones')
  final String? telephones;
  @JsonKey(name: 'addressesObject', defaultValue: <Address>[])
  final List<Address>? addressesObject;
  @JsonKey(name: 'addresses')
  final String? addresses;
  @JsonKey(name: 'organizationsObject', defaultValue: <Org>[])
  final List<Org>? organizationsObject;
  @JsonKey(name: 'organizations')
  final String? organizations;
  @JsonKey(name: 'emailObject', defaultValue: <Email>[])
  final List<Email>? emailObject;
  @JsonKey(name: 'emails')
  final String? emails;
  @JsonKey(name: 'websiteObject', defaultValue: <Website>[])
  final List<Website>? websiteObject;
  @JsonKey(name: 'websites')
  final String? websites;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @JsonKey(name: 'qrCodeUrl')
  final String? qrCodeUrl;
  @JsonKey(name: 'labelsObjs', defaultValue: <LabelsObj>[])
  final List<LabelsObj>? labelsObjs;
  @JsonKey(name: 'labelsJson')
  final String? labelsJson;
  @JsonKey(name: 'metadataContentObjs', defaultValue: <MetadataValue>[])
  final List<MetadataValue>? metadataContentObjs;
  @JsonKey(name: 'metadataContent')
  final String? metadataContent;
  @JsonKey(name: 'metaContentType')
  final String? metaContentType;
  @JsonKey(name: 'isShared')
  final bool? isShared;
  @JsonKey(name: 'isDeleted')
  final bool? isDeleted;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @JsonKey(name: 'order')
  final int? order;
  static const fromJsonFactory = _$ResContactFromJson;
  static const toJsonFactory = _$ResContactToJson;
  Map<String, dynamic> toJson() => _$ResContactToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResContact &&
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
            (identical(other.refsObject, refsObject) ||
                const DeepCollectionEquality()
                    .equals(other.refsObject, refsObject)) &&
            (identical(other.refs, refs) ||
                const DeepCollectionEquality().equals(other.refs, refs)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.fullname, fullname) ||
                const DeepCollectionEquality()
                    .equals(other.fullname, fullname)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality()
                    .equals(other.birthday, birthday)) &&
            (identical(other.eventsObject, eventsObject) ||
                const DeepCollectionEquality()
                    .equals(other.eventsObject, eventsObject)) &&
            (identical(other.events, events) ||
                const DeepCollectionEquality().equals(other.events, events)) &&
            (identical(other.telephonesObject, telephonesObject) ||
                const DeepCollectionEquality()
                    .equals(other.telephonesObject, telephonesObject)) &&
            (identical(other.telephones, telephones) ||
                const DeepCollectionEquality()
                    .equals(other.telephones, telephones)) &&
            (identical(other.addressesObject, addressesObject) ||
                const DeepCollectionEquality()
                    .equals(other.addressesObject, addressesObject)) &&
            (identical(other.addresses, addresses) ||
                const DeepCollectionEquality()
                    .equals(other.addresses, addresses)) &&
            (identical(other.organizationsObject, organizationsObject) ||
                const DeepCollectionEquality()
                    .equals(other.organizationsObject, organizationsObject)) &&
            (identical(other.organizations, organizations) ||
                const DeepCollectionEquality()
                    .equals(other.organizations, organizations)) &&
            (identical(other.emailObject, emailObject) ||
                const DeepCollectionEquality()
                    .equals(other.emailObject, emailObject)) &&
            (identical(other.emails, emails) ||
                const DeepCollectionEquality().equals(other.emails, emails)) &&
            (identical(other.websiteObject, websiteObject) ||
                const DeepCollectionEquality()
                    .equals(other.websiteObject, websiteObject)) &&
            (identical(other.websites, websites) ||
                const DeepCollectionEquality()
                    .equals(other.websites, websites)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.imageUrl, imageUrl) || const DeepCollectionEquality().equals(other.imageUrl, imageUrl)) &&
            (identical(other.qrCodeUrl, qrCodeUrl) || const DeepCollectionEquality().equals(other.qrCodeUrl, qrCodeUrl)) &&
            (identical(other.labelsObjs, labelsObjs) || const DeepCollectionEquality().equals(other.labelsObjs, labelsObjs)) &&
            (identical(other.labelsJson, labelsJson) || const DeepCollectionEquality().equals(other.labelsJson, labelsJson)) &&
            (identical(other.metadataContentObjs, metadataContentObjs) || const DeepCollectionEquality().equals(other.metadataContentObjs, metadataContentObjs)) &&
            (identical(other.metadataContent, metadataContent) || const DeepCollectionEquality().equals(other.metadataContent, metadataContent)) &&
            (identical(other.metaContentType, metaContentType) || const DeepCollectionEquality().equals(other.metaContentType, metaContentType)) &&
            (identical(other.isShared, isShared) || const DeepCollectionEquality().equals(other.isShared, isShared)) &&
            (identical(other.isDeleted, isDeleted) || const DeepCollectionEquality().equals(other.isDeleted, isDeleted)) &&
            (identical(other.isActive, isActive) || const DeepCollectionEquality().equals(other.isActive, isActive)) &&
            (identical(other.order, order) || const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedOnDate) ^
      const DeepCollectionEquality().hash(createdOnDate) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(refsObject) ^
      const DeepCollectionEquality().hash(refs) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(fullname) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(eventsObject) ^
      const DeepCollectionEquality().hash(events) ^
      const DeepCollectionEquality().hash(telephonesObject) ^
      const DeepCollectionEquality().hash(telephones) ^
      const DeepCollectionEquality().hash(addressesObject) ^
      const DeepCollectionEquality().hash(addresses) ^
      const DeepCollectionEquality().hash(organizationsObject) ^
      const DeepCollectionEquality().hash(organizations) ^
      const DeepCollectionEquality().hash(emailObject) ^
      const DeepCollectionEquality().hash(emails) ^
      const DeepCollectionEquality().hash(websiteObject) ^
      const DeepCollectionEquality().hash(websites) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(qrCodeUrl) ^
      const DeepCollectionEquality().hash(labelsObjs) ^
      const DeepCollectionEquality().hash(labelsJson) ^
      const DeepCollectionEquality().hash(metadataContentObjs) ^
      const DeepCollectionEquality().hash(metadataContent) ^
      const DeepCollectionEquality().hash(metaContentType) ^
      const DeepCollectionEquality().hash(isShared) ^
      const DeepCollectionEquality().hash(isDeleted) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(order) ^
      runtimeType.hashCode;
}

extension $ResContactExtension on ResContact {
  ResContact copyWith(
      {String? createdByUserId,
      String? lastModifiedByUserId,
      DateTime? lastModifiedOnDate,
      DateTime? createdOnDate,
      String? applicationId,
      String? id,
      List<String>? refsObject,
      String? refs,
      String? name,
      String? title,
      String? fullname,
      DateTime? birthday,
      List<Event>? eventsObject,
      String? events,
      List<Phone>? telephonesObject,
      String? telephones,
      List<Address>? addressesObject,
      String? addresses,
      List<Org>? organizationsObject,
      String? organizations,
      List<Email>? emailObject,
      String? emails,
      List<Website>? websiteObject,
      String? websites,
      String? notes,
      String? imageUrl,
      String? qrCodeUrl,
      List<LabelsObj>? labelsObjs,
      String? labelsJson,
      List<MetadataValue>? metadataContentObjs,
      String? metadataContent,
      String? metaContentType,
      bool? isShared,
      bool? isDeleted,
      bool? isActive,
      int? order}) {
    return ResContact(
        createdByUserId: createdByUserId ?? this.createdByUserId,
        lastModifiedByUserId: lastModifiedByUserId ?? this.lastModifiedByUserId,
        lastModifiedOnDate: lastModifiedOnDate ?? this.lastModifiedOnDate,
        createdOnDate: createdOnDate ?? this.createdOnDate,
        applicationId: applicationId ?? this.applicationId,
        id: id ?? this.id,
        refsObject: refsObject ?? this.refsObject,
        refs: refs ?? this.refs,
        name: name ?? this.name,
        title: title ?? this.title,
        fullname: fullname ?? this.fullname,
        birthday: birthday ?? this.birthday,
        eventsObject: eventsObject ?? this.eventsObject,
        events: events ?? this.events,
        telephonesObject: telephonesObject ?? this.telephonesObject,
        telephones: telephones ?? this.telephones,
        addressesObject: addressesObject ?? this.addressesObject,
        addresses: addresses ?? this.addresses,
        organizationsObject: organizationsObject ?? this.organizationsObject,
        organizations: organizations ?? this.organizations,
        emailObject: emailObject ?? this.emailObject,
        emails: emails ?? this.emails,
        websiteObject: websiteObject ?? this.websiteObject,
        websites: websites ?? this.websites,
        notes: notes ?? this.notes,
        imageUrl: imageUrl ?? this.imageUrl,
        qrCodeUrl: qrCodeUrl ?? this.qrCodeUrl,
        labelsObjs: labelsObjs ?? this.labelsObjs,
        labelsJson: labelsJson ?? this.labelsJson,
        metadataContentObjs: metadataContentObjs ?? this.metadataContentObjs,
        metadataContent: metadataContent ?? this.metadataContent,
        metaContentType: metaContentType ?? this.metaContentType,
        isShared: isShared ?? this.isShared,
        isDeleted: isDeleted ?? this.isDeleted,
        isActive: isActive ?? this.isActive,
        order: order ?? this.order);
  }
}

@JsonSerializable(explicitToJson: true)
class ResContactPatchUpdateResquestModel {
  ResContactPatchUpdateResquestModel({
    this.name,
    this.title,
    this.fullname,
    this.birthday,
    this.eventsObject,
    this.organizationsObject,
    this.addressesObject,
    this.telephonesObject,
    this.emailObject,
    this.websiteObject,
    this.notes,
    this.imageUrl,
    this.qrCodeUrl,
    this.labelsObjs,
    this.metadataContentObjs,
    this.metadataContent,
    this.metaContentType,
    this.isShared,
    this.order,
    this.isActive,
    this.refsObject,
    this.id,
  });

  factory ResContactPatchUpdateResquestModel.fromJson(
          Map<String, dynamic> json) =>
      _$ResContactPatchUpdateResquestModelFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'fullname')
  final String? fullname;
  @JsonKey(name: 'birthday')
  final DateTime? birthday;
  @JsonKey(name: 'eventsObject', defaultValue: <Event>[])
  final List<Event>? eventsObject;
  @JsonKey(name: 'organizationsObject', defaultValue: <Org>[])
  final List<Org>? organizationsObject;
  @JsonKey(name: 'addressesObject', defaultValue: <Address>[])
  final List<Address>? addressesObject;
  @JsonKey(name: 'telephonesObject', defaultValue: <Phone>[])
  final List<Phone>? telephonesObject;
  @JsonKey(name: 'emailObject', defaultValue: <Email>[])
  final List<Email>? emailObject;
  @JsonKey(name: 'websiteObject', defaultValue: <Website>[])
  final List<Website>? websiteObject;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @JsonKey(name: 'qrCodeUrl')
  final String? qrCodeUrl;
  @JsonKey(name: 'labelsObjs', defaultValue: <LabelsObj>[])
  final List<LabelsObj>? labelsObjs;
  @JsonKey(name: 'metadataContentObjs', defaultValue: <MetadataValue>[])
  final List<MetadataValue>? metadataContentObjs;
  @JsonKey(name: 'metadataContent')
  final String? metadataContent;
  @JsonKey(name: 'metaContentType')
  final String? metaContentType;
  @JsonKey(name: 'isShared')
  final bool? isShared;
  @JsonKey(name: 'order')
  final int? order;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @JsonKey(name: 'refsObject', defaultValue: <String>[])
  final List<String>? refsObject;
  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$ResContactPatchUpdateResquestModelFromJson;
  static const toJsonFactory = _$ResContactPatchUpdateResquestModelToJson;
  Map<String, dynamic> toJson() =>
      _$ResContactPatchUpdateResquestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResContactPatchUpdateResquestModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.fullname, fullname) ||
                const DeepCollectionEquality()
                    .equals(other.fullname, fullname)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality()
                    .equals(other.birthday, birthday)) &&
            (identical(other.eventsObject, eventsObject) ||
                const DeepCollectionEquality()
                    .equals(other.eventsObject, eventsObject)) &&
            (identical(other.organizationsObject, organizationsObject) ||
                const DeepCollectionEquality()
                    .equals(other.organizationsObject, organizationsObject)) &&
            (identical(other.addressesObject, addressesObject) ||
                const DeepCollectionEquality()
                    .equals(other.addressesObject, addressesObject)) &&
            (identical(other.telephonesObject, telephonesObject) ||
                const DeepCollectionEquality()
                    .equals(other.telephonesObject, telephonesObject)) &&
            (identical(other.emailObject, emailObject) ||
                const DeepCollectionEquality()
                    .equals(other.emailObject, emailObject)) &&
            (identical(other.websiteObject, websiteObject) ||
                const DeepCollectionEquality()
                    .equals(other.websiteObject, websiteObject)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.qrCodeUrl, qrCodeUrl) ||
                const DeepCollectionEquality()
                    .equals(other.qrCodeUrl, qrCodeUrl)) &&
            (identical(other.labelsObjs, labelsObjs) ||
                const DeepCollectionEquality()
                    .equals(other.labelsObjs, labelsObjs)) &&
            (identical(other.metadataContentObjs, metadataContentObjs) ||
                const DeepCollectionEquality()
                    .equals(other.metadataContentObjs, metadataContentObjs)) &&
            (identical(other.metadataContent, metadataContent) ||
                const DeepCollectionEquality()
                    .equals(other.metadataContent, metadataContent)) &&
            (identical(other.metaContentType, metaContentType) ||
                const DeepCollectionEquality()
                    .equals(other.metaContentType, metaContentType)) &&
            (identical(other.isShared, isShared) ||
                const DeepCollectionEquality()
                    .equals(other.isShared, isShared)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.refsObject, refsObject) ||
                const DeepCollectionEquality()
                    .equals(other.refsObject, refsObject)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(fullname) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(eventsObject) ^
      const DeepCollectionEquality().hash(organizationsObject) ^
      const DeepCollectionEquality().hash(addressesObject) ^
      const DeepCollectionEquality().hash(telephonesObject) ^
      const DeepCollectionEquality().hash(emailObject) ^
      const DeepCollectionEquality().hash(websiteObject) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(qrCodeUrl) ^
      const DeepCollectionEquality().hash(labelsObjs) ^
      const DeepCollectionEquality().hash(metadataContentObjs) ^
      const DeepCollectionEquality().hash(metadataContent) ^
      const DeepCollectionEquality().hash(metaContentType) ^
      const DeepCollectionEquality().hash(isShared) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(refsObject) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $ResContactPatchUpdateResquestModelExtension
    on ResContactPatchUpdateResquestModel {
  ResContactPatchUpdateResquestModel copyWith(
      {String? name,
      String? title,
      String? fullname,
      DateTime? birthday,
      List<Event>? eventsObject,
      List<Org>? organizationsObject,
      List<Address>? addressesObject,
      List<Phone>? telephonesObject,
      List<Email>? emailObject,
      List<Website>? websiteObject,
      String? notes,
      String? imageUrl,
      String? qrCodeUrl,
      List<LabelsObj>? labelsObjs,
      List<MetadataValue>? metadataContentObjs,
      String? metadataContent,
      String? metaContentType,
      bool? isShared,
      int? order,
      bool? isActive,
      List<String>? refsObject,
      String? id}) {
    return ResContactPatchUpdateResquestModel(
        name: name ?? this.name,
        title: title ?? this.title,
        fullname: fullname ?? this.fullname,
        birthday: birthday ?? this.birthday,
        eventsObject: eventsObject ?? this.eventsObject,
        organizationsObject: organizationsObject ?? this.organizationsObject,
        addressesObject: addressesObject ?? this.addressesObject,
        telephonesObject: telephonesObject ?? this.telephonesObject,
        emailObject: emailObject ?? this.emailObject,
        websiteObject: websiteObject ?? this.websiteObject,
        notes: notes ?? this.notes,
        imageUrl: imageUrl ?? this.imageUrl,
        qrCodeUrl: qrCodeUrl ?? this.qrCodeUrl,
        labelsObjs: labelsObjs ?? this.labelsObjs,
        metadataContentObjs: metadataContentObjs ?? this.metadataContentObjs,
        metadataContent: metadataContent ?? this.metadataContent,
        metaContentType: metaContentType ?? this.metaContentType,
        isShared: isShared ?? this.isShared,
        order: order ?? this.order,
        isActive: isActive ?? this.isActive,
        refsObject: refsObject ?? this.refsObject,
        id: id ?? this.id);
  }
}

@JsonSerializable(explicitToJson: true)
class ResContactResponseModel {
  ResContactResponseModel({
    this.name,
    this.title,
    this.fullname,
    this.birthday,
    this.eventsObject,
    this.organizationsObject,
    this.addressesObject,
    this.telephonesObject,
    this.emailObject,
    this.websiteObject,
    this.notes,
    this.imageUrl,
    this.qrCodeUrl,
    this.labelsObjs,
    this.metadataContentObjs,
    this.metadataContent,
    this.metaContentType,
    this.isShared,
    this.order,
    this.isActive,
    this.id,
    this.refsObject,
  });

  factory ResContactResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResContactResponseModelFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'fullname')
  final String? fullname;
  @JsonKey(name: 'birthday')
  final DateTime? birthday;
  @JsonKey(name: 'eventsObject', defaultValue: <Event>[])
  final List<Event>? eventsObject;
  @JsonKey(name: 'organizationsObject', defaultValue: <Org>[])
  final List<Org>? organizationsObject;
  @JsonKey(name: 'addressesObject', defaultValue: <Address>[])
  final List<Address>? addressesObject;
  @JsonKey(name: 'telephonesObject', defaultValue: <Phone>[])
  final List<Phone>? telephonesObject;
  @JsonKey(name: 'emailObject', defaultValue: <Email>[])
  final List<Email>? emailObject;
  @JsonKey(name: 'websiteObject', defaultValue: <Website>[])
  final List<Website>? websiteObject;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @JsonKey(name: 'qrCodeUrl')
  final String? qrCodeUrl;
  @JsonKey(name: 'labelsObjs', defaultValue: <LabelsObj>[])
  final List<LabelsObj>? labelsObjs;
  @JsonKey(name: 'metadataContentObjs', defaultValue: <MetadataValue>[])
  final List<MetadataValue>? metadataContentObjs;
  @JsonKey(name: 'metadataContent')
  final String? metadataContent;
  @JsonKey(name: 'metaContentType')
  final String? metaContentType;
  @JsonKey(name: 'isShared')
  final bool? isShared;
  @JsonKey(name: 'order')
  final int? order;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'refsObject', defaultValue: <String>[])
  final List<String>? refsObject;
  static const fromJsonFactory = _$ResContactResponseModelFromJson;
  static const toJsonFactory = _$ResContactResponseModelToJson;
  Map<String, dynamic> toJson() => _$ResContactResponseModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResContactResponseModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.fullname, fullname) ||
                const DeepCollectionEquality()
                    .equals(other.fullname, fullname)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality()
                    .equals(other.birthday, birthday)) &&
            (identical(other.eventsObject, eventsObject) ||
                const DeepCollectionEquality()
                    .equals(other.eventsObject, eventsObject)) &&
            (identical(other.organizationsObject, organizationsObject) ||
                const DeepCollectionEquality()
                    .equals(other.organizationsObject, organizationsObject)) &&
            (identical(other.addressesObject, addressesObject) ||
                const DeepCollectionEquality()
                    .equals(other.addressesObject, addressesObject)) &&
            (identical(other.telephonesObject, telephonesObject) ||
                const DeepCollectionEquality()
                    .equals(other.telephonesObject, telephonesObject)) &&
            (identical(other.emailObject, emailObject) ||
                const DeepCollectionEquality()
                    .equals(other.emailObject, emailObject)) &&
            (identical(other.websiteObject, websiteObject) ||
                const DeepCollectionEquality()
                    .equals(other.websiteObject, websiteObject)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.qrCodeUrl, qrCodeUrl) ||
                const DeepCollectionEquality()
                    .equals(other.qrCodeUrl, qrCodeUrl)) &&
            (identical(other.labelsObjs, labelsObjs) ||
                const DeepCollectionEquality()
                    .equals(other.labelsObjs, labelsObjs)) &&
            (identical(other.metadataContentObjs, metadataContentObjs) ||
                const DeepCollectionEquality()
                    .equals(other.metadataContentObjs, metadataContentObjs)) &&
            (identical(other.metadataContent, metadataContent) ||
                const DeepCollectionEquality()
                    .equals(other.metadataContent, metadataContent)) &&
            (identical(other.metaContentType, metaContentType) ||
                const DeepCollectionEquality()
                    .equals(other.metaContentType, metaContentType)) &&
            (identical(other.isShared, isShared) ||
                const DeepCollectionEquality()
                    .equals(other.isShared, isShared)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.refsObject, refsObject) ||
                const DeepCollectionEquality()
                    .equals(other.refsObject, refsObject)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(fullname) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(eventsObject) ^
      const DeepCollectionEquality().hash(organizationsObject) ^
      const DeepCollectionEquality().hash(addressesObject) ^
      const DeepCollectionEquality().hash(telephonesObject) ^
      const DeepCollectionEquality().hash(emailObject) ^
      const DeepCollectionEquality().hash(websiteObject) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(qrCodeUrl) ^
      const DeepCollectionEquality().hash(labelsObjs) ^
      const DeepCollectionEquality().hash(metadataContentObjs) ^
      const DeepCollectionEquality().hash(metadataContent) ^
      const DeepCollectionEquality().hash(metaContentType) ^
      const DeepCollectionEquality().hash(isShared) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(refsObject) ^
      runtimeType.hashCode;
}

extension $ResContactResponseModelExtension on ResContactResponseModel {
  ResContactResponseModel copyWith(
      {String? name,
      String? title,
      String? fullname,
      DateTime? birthday,
      List<Event>? eventsObject,
      List<Org>? organizationsObject,
      List<Address>? addressesObject,
      List<Phone>? telephonesObject,
      List<Email>? emailObject,
      List<Website>? websiteObject,
      String? notes,
      String? imageUrl,
      String? qrCodeUrl,
      List<LabelsObj>? labelsObjs,
      List<MetadataValue>? metadataContentObjs,
      String? metadataContent,
      String? metaContentType,
      bool? isShared,
      int? order,
      bool? isActive,
      String? id,
      List<String>? refsObject}) {
    return ResContactResponseModel(
        name: name ?? this.name,
        title: title ?? this.title,
        fullname: fullname ?? this.fullname,
        birthday: birthday ?? this.birthday,
        eventsObject: eventsObject ?? this.eventsObject,
        organizationsObject: organizationsObject ?? this.organizationsObject,
        addressesObject: addressesObject ?? this.addressesObject,
        telephonesObject: telephonesObject ?? this.telephonesObject,
        emailObject: emailObject ?? this.emailObject,
        websiteObject: websiteObject ?? this.websiteObject,
        notes: notes ?? this.notes,
        imageUrl: imageUrl ?? this.imageUrl,
        qrCodeUrl: qrCodeUrl ?? this.qrCodeUrl,
        labelsObjs: labelsObjs ?? this.labelsObjs,
        metadataContentObjs: metadataContentObjs ?? this.metadataContentObjs,
        metadataContent: metadataContent ?? this.metadataContent,
        metaContentType: metaContentType ?? this.metaContentType,
        isShared: isShared ?? this.isShared,
        order: order ?? this.order,
        isActive: isActive ?? this.isActive,
        id: id ?? this.id,
        refsObject: refsObject ?? this.refsObject);
  }
}

@JsonSerializable(explicitToJson: true)
class ResContactResponseModelPagination {
  ResContactResponseModelPagination({
    this.currentPage,
    this.totalPages,
    this.pageSize,
    this.numberOfRecords,
    this.totalRecords,
    this.content,
  });

  factory ResContactResponseModelPagination.fromJson(
          Map<String, dynamic> json) =>
      _$ResContactResponseModelPaginationFromJson(json);

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
  @JsonKey(name: 'content', defaultValue: <ResContactResponseModel>[])
  final List<ResContactResponseModel>? content;
  static const fromJsonFactory = _$ResContactResponseModelPaginationFromJson;
  static const toJsonFactory = _$ResContactResponseModelPaginationToJson;
  Map<String, dynamic> toJson() =>
      _$ResContactResponseModelPaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResContactResponseModelPagination &&
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

extension $ResContactResponseModelPaginationExtension
    on ResContactResponseModelPagination {
  ResContactResponseModelPagination copyWith(
      {int? currentPage,
      int? totalPages,
      int? pageSize,
      int? numberOfRecords,
      int? totalRecords,
      List<ResContactResponseModel>? content}) {
    return ResContactResponseModelPagination(
        currentPage: currentPage ?? this.currentPage,
        totalPages: totalPages ?? this.totalPages,
        pageSize: pageSize ?? this.pageSize,
        numberOfRecords: numberOfRecords ?? this.numberOfRecords,
        totalRecords: totalRecords ?? this.totalRecords,
        content: content ?? this.content);
  }
}

@JsonSerializable(explicitToJson: true)
class ResContactResponseModelResponseList {
  ResContactResponseModelResponseList({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory ResContactResponseModelResponseList.fromJson(
          Map<String, dynamic> json) =>
      _$ResContactResponseModelResponseListFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data', defaultValue: <ResContactResponseModel>[])
  final List<ResContactResponseModel>? data;
  static const fromJsonFactory = _$ResContactResponseModelResponseListFromJson;
  static const toJsonFactory = _$ResContactResponseModelResponseListToJson;
  Map<String, dynamic> toJson() =>
      _$ResContactResponseModelResponseListToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResContactResponseModelResponseList &&
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

extension $ResContactResponseModelResponseListExtension
    on ResContactResponseModelResponseList {
  ResContactResponseModelResponseList copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<ResContactResponseModel>? data}) {
    return ResContactResponseModelResponseList(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ResContactResponseModelResponseObject {
  ResContactResponseModelResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory ResContactResponseModelResponseObject.fromJson(
          Map<String, dynamic> json) =>
      _$ResContactResponseModelResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final ResContactResponseModel? data;
  static const fromJsonFactory =
      _$ResContactResponseModelResponseObjectFromJson;
  static const toJsonFactory = _$ResContactResponseModelResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$ResContactResponseModelResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResContactResponseModelResponseObject &&
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

extension $ResContactResponseModelResponseObjectExtension
    on ResContactResponseModelResponseObject {
  ResContactResponseModelResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      ResContactResponseModel? data}) {
    return ResContactResponseModelResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ResContactResponseModelResponsePagination {
  ResContactResponseModelResponsePagination({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory ResContactResponseModelResponsePagination.fromJson(
          Map<String, dynamic> json) =>
      _$ResContactResponseModelResponsePaginationFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final ResContactResponseModelPagination? data;
  static const fromJsonFactory =
      _$ResContactResponseModelResponsePaginationFromJson;
  static const toJsonFactory =
      _$ResContactResponseModelResponsePaginationToJson;
  Map<String, dynamic> toJson() =>
      _$ResContactResponseModelResponsePaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResContactResponseModelResponsePagination &&
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

extension $ResContactResponseModelResponsePaginationExtension
    on ResContactResponseModelResponsePagination {
  ResContactResponseModelResponsePagination copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      ResContactResponseModelPagination? data}) {
    return ResContactResponseModelResponsePagination(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ResContactUpdateResquestModel {
  ResContactUpdateResquestModel({
    this.name,
    this.title,
    this.fullname,
    this.birthday,
    this.eventsObject,
    this.organizationsObject,
    this.addressesObject,
    this.telephonesObject,
    this.emailObject,
    this.websiteObject,
    this.notes,
    this.imageUrl,
    this.qrCodeUrl,
    this.labelsObjs,
    this.metadataContentObjs,
    this.metadataContent,
    this.metaContentType,
    this.isShared,
    this.order,
    this.isActive,
    this.refsObject,
  });

  factory ResContactUpdateResquestModel.fromJson(Map<String, dynamic> json) =>
      _$ResContactUpdateResquestModelFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'fullname')
  final String? fullname;
  @JsonKey(name: 'birthday')
  final DateTime? birthday;
  @JsonKey(name: 'eventsObject', defaultValue: <Event>[])
  final List<Event>? eventsObject;
  @JsonKey(name: 'organizationsObject', defaultValue: <Org>[])
  final List<Org>? organizationsObject;
  @JsonKey(name: 'addressesObject', defaultValue: <Address>[])
  final List<Address>? addressesObject;
  @JsonKey(name: 'telephonesObject', defaultValue: <Phone>[])
  final List<Phone>? telephonesObject;
  @JsonKey(name: 'emailObject', defaultValue: <Email>[])
  final List<Email>? emailObject;
  @JsonKey(name: 'websiteObject', defaultValue: <Website>[])
  final List<Website>? websiteObject;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @JsonKey(name: 'qrCodeUrl')
  final String? qrCodeUrl;
  @JsonKey(name: 'labelsObjs', defaultValue: <LabelsObj>[])
  final List<LabelsObj>? labelsObjs;
  @JsonKey(name: 'metadataContentObjs', defaultValue: <MetadataValue>[])
  final List<MetadataValue>? metadataContentObjs;
  @JsonKey(name: 'metadataContent')
  final String? metadataContent;
  @JsonKey(name: 'metaContentType')
  final String? metaContentType;
  @JsonKey(name: 'isShared')
  final bool? isShared;
  @JsonKey(name: 'order')
  final int? order;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @JsonKey(name: 'refsObject', defaultValue: <String>[])
  final List<String>? refsObject;
  static const fromJsonFactory = _$ResContactUpdateResquestModelFromJson;
  static const toJsonFactory = _$ResContactUpdateResquestModelToJson;
  Map<String, dynamic> toJson() => _$ResContactUpdateResquestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResContactUpdateResquestModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.fullname, fullname) ||
                const DeepCollectionEquality()
                    .equals(other.fullname, fullname)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality()
                    .equals(other.birthday, birthday)) &&
            (identical(other.eventsObject, eventsObject) ||
                const DeepCollectionEquality()
                    .equals(other.eventsObject, eventsObject)) &&
            (identical(other.organizationsObject, organizationsObject) ||
                const DeepCollectionEquality()
                    .equals(other.organizationsObject, organizationsObject)) &&
            (identical(other.addressesObject, addressesObject) ||
                const DeepCollectionEquality()
                    .equals(other.addressesObject, addressesObject)) &&
            (identical(other.telephonesObject, telephonesObject) ||
                const DeepCollectionEquality()
                    .equals(other.telephonesObject, telephonesObject)) &&
            (identical(other.emailObject, emailObject) ||
                const DeepCollectionEquality()
                    .equals(other.emailObject, emailObject)) &&
            (identical(other.websiteObject, websiteObject) ||
                const DeepCollectionEquality()
                    .equals(other.websiteObject, websiteObject)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.qrCodeUrl, qrCodeUrl) ||
                const DeepCollectionEquality()
                    .equals(other.qrCodeUrl, qrCodeUrl)) &&
            (identical(other.labelsObjs, labelsObjs) ||
                const DeepCollectionEquality()
                    .equals(other.labelsObjs, labelsObjs)) &&
            (identical(other.metadataContentObjs, metadataContentObjs) ||
                const DeepCollectionEquality()
                    .equals(other.metadataContentObjs, metadataContentObjs)) &&
            (identical(other.metadataContent, metadataContent) ||
                const DeepCollectionEquality()
                    .equals(other.metadataContent, metadataContent)) &&
            (identical(other.metaContentType, metaContentType) ||
                const DeepCollectionEquality()
                    .equals(other.metaContentType, metaContentType)) &&
            (identical(other.isShared, isShared) ||
                const DeepCollectionEquality()
                    .equals(other.isShared, isShared)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.refsObject, refsObject) ||
                const DeepCollectionEquality()
                    .equals(other.refsObject, refsObject)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(fullname) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(eventsObject) ^
      const DeepCollectionEquality().hash(organizationsObject) ^
      const DeepCollectionEquality().hash(addressesObject) ^
      const DeepCollectionEquality().hash(telephonesObject) ^
      const DeepCollectionEquality().hash(emailObject) ^
      const DeepCollectionEquality().hash(websiteObject) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(qrCodeUrl) ^
      const DeepCollectionEquality().hash(labelsObjs) ^
      const DeepCollectionEquality().hash(metadataContentObjs) ^
      const DeepCollectionEquality().hash(metadataContent) ^
      const DeepCollectionEquality().hash(metaContentType) ^
      const DeepCollectionEquality().hash(isShared) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(refsObject) ^
      runtimeType.hashCode;
}

extension $ResContactUpdateResquestModelExtension
    on ResContactUpdateResquestModel {
  ResContactUpdateResquestModel copyWith(
      {String? name,
      String? title,
      String? fullname,
      DateTime? birthday,
      List<Event>? eventsObject,
      List<Org>? organizationsObject,
      List<Address>? addressesObject,
      List<Phone>? telephonesObject,
      List<Email>? emailObject,
      List<Website>? websiteObject,
      String? notes,
      String? imageUrl,
      String? qrCodeUrl,
      List<LabelsObj>? labelsObjs,
      List<MetadataValue>? metadataContentObjs,
      String? metadataContent,
      String? metaContentType,
      bool? isShared,
      int? order,
      bool? isActive,
      List<String>? refsObject}) {
    return ResContactUpdateResquestModel(
        name: name ?? this.name,
        title: title ?? this.title,
        fullname: fullname ?? this.fullname,
        birthday: birthday ?? this.birthday,
        eventsObject: eventsObject ?? this.eventsObject,
        organizationsObject: organizationsObject ?? this.organizationsObject,
        addressesObject: addressesObject ?? this.addressesObject,
        telephonesObject: telephonesObject ?? this.telephonesObject,
        emailObject: emailObject ?? this.emailObject,
        websiteObject: websiteObject ?? this.websiteObject,
        notes: notes ?? this.notes,
        imageUrl: imageUrl ?? this.imageUrl,
        qrCodeUrl: qrCodeUrl ?? this.qrCodeUrl,
        labelsObjs: labelsObjs ?? this.labelsObjs,
        metadataContentObjs: metadataContentObjs ?? this.metadataContentObjs,
        metadataContent: metadataContent ?? this.metadataContent,
        metaContentType: metaContentType ?? this.metaContentType,
        isShared: isShared ?? this.isShared,
        order: order ?? this.order,
        isActive: isActive ?? this.isActive,
        refsObject: refsObject ?? this.refsObject);
  }
}

@JsonSerializable(explicitToJson: true)
class ResCustomerGroup {
  ResCustomerGroup({
    this.createdByUserId,
    this.lastModifiedByUserId,
    this.lastModifiedOnDate,
    this.createdOnDate,
    this.applicationId,
    this.id,
    this.parentId,
    this.parentGroup,
    this.name,
    this.active,
    this.companyId,
  });

  factory ResCustomerGroup.fromJson(Map<String, dynamic> json) =>
      _$ResCustomerGroupFromJson(json);

  @JsonKey(name: 'createdByUserId')
  final String? createdByUserId;
  @JsonKey(name: 'lastModifiedByUserId')
  final String? lastModifiedByUserId;
  @JsonKey(name: 'lastModifiedOnDate')
  final DateTime? lastModifiedOnDate;
  @JsonKey(name: 'createdOnDate')
  final DateTime? createdOnDate;
  @JsonKey(name: 'applicationId')
  final String? applicationId;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'parentId')
  final String? parentId;
  @JsonKey(name: 'parentGroup')
  final ResCustomerGroup? parentGroup;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'companyId')
  final String? companyId;
  static const fromJsonFactory = _$ResCustomerGroupFromJson;
  static const toJsonFactory = _$ResCustomerGroupToJson;
  Map<String, dynamic> toJson() => _$ResCustomerGroupToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResCustomerGroup &&
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
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.parentGroup, parentGroup) ||
                const DeepCollectionEquality()
                    .equals(other.parentGroup, parentGroup)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.companyId, companyId) ||
                const DeepCollectionEquality()
                    .equals(other.companyId, companyId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedOnDate) ^
      const DeepCollectionEquality().hash(createdOnDate) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(parentGroup) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(companyId) ^
      runtimeType.hashCode;
}

extension $ResCustomerGroupExtension on ResCustomerGroup {
  ResCustomerGroup copyWith(
      {String? createdByUserId,
      String? lastModifiedByUserId,
      DateTime? lastModifiedOnDate,
      DateTime? createdOnDate,
      String? applicationId,
      String? id,
      String? parentId,
      ResCustomerGroup? parentGroup,
      String? name,
      bool? active,
      String? companyId}) {
    return ResCustomerGroup(
        createdByUserId: createdByUserId ?? this.createdByUserId,
        lastModifiedByUserId: lastModifiedByUserId ?? this.lastModifiedByUserId,
        lastModifiedOnDate: lastModifiedOnDate ?? this.lastModifiedOnDate,
        createdOnDate: createdOnDate ?? this.createdOnDate,
        applicationId: applicationId ?? this.applicationId,
        id: id ?? this.id,
        parentId: parentId ?? this.parentId,
        parentGroup: parentGroup ?? this.parentGroup,
        name: name ?? this.name,
        active: active ?? this.active,
        companyId: companyId ?? this.companyId);
  }
}

@JsonSerializable(explicitToJson: true)
class ResCustomerGroupPagination {
  ResCustomerGroupPagination({
    this.currentPage,
    this.totalPages,
    this.pageSize,
    this.numberOfRecords,
    this.totalRecords,
    this.content,
  });

  factory ResCustomerGroupPagination.fromJson(Map<String, dynamic> json) =>
      _$ResCustomerGroupPaginationFromJson(json);

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
  @JsonKey(name: 'content', defaultValue: <ResCustomerGroup>[])
  final List<ResCustomerGroup>? content;
  static const fromJsonFactory = _$ResCustomerGroupPaginationFromJson;
  static const toJsonFactory = _$ResCustomerGroupPaginationToJson;
  Map<String, dynamic> toJson() => _$ResCustomerGroupPaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResCustomerGroupPagination &&
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

extension $ResCustomerGroupPaginationExtension on ResCustomerGroupPagination {
  ResCustomerGroupPagination copyWith(
      {int? currentPage,
      int? totalPages,
      int? pageSize,
      int? numberOfRecords,
      int? totalRecords,
      List<ResCustomerGroup>? content}) {
    return ResCustomerGroupPagination(
        currentPage: currentPage ?? this.currentPage,
        totalPages: totalPages ?? this.totalPages,
        pageSize: pageSize ?? this.pageSize,
        numberOfRecords: numberOfRecords ?? this.numberOfRecords,
        totalRecords: totalRecords ?? this.totalRecords,
        content: content ?? this.content);
  }
}

@JsonSerializable(explicitToJson: true)
class ResCustomerGroupRequestModel {
  ResCustomerGroupRequestModel({
    this.parentId,
    this.name,
    this.active,
    this.companyId,
  });

  factory ResCustomerGroupRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ResCustomerGroupRequestModelFromJson(json);

  @JsonKey(name: 'parentId')
  final String? parentId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'companyId')
  final String? companyId;
  static const fromJsonFactory = _$ResCustomerGroupRequestModelFromJson;
  static const toJsonFactory = _$ResCustomerGroupRequestModelToJson;
  Map<String, dynamic> toJson() => _$ResCustomerGroupRequestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResCustomerGroupRequestModel &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.companyId, companyId) ||
                const DeepCollectionEquality()
                    .equals(other.companyId, companyId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(companyId) ^
      runtimeType.hashCode;
}

extension $ResCustomerGroupRequestModelExtension
    on ResCustomerGroupRequestModel {
  ResCustomerGroupRequestModel copyWith(
      {String? parentId, String? name, bool? active, String? companyId}) {
    return ResCustomerGroupRequestModel(
        parentId: parentId ?? this.parentId,
        name: name ?? this.name,
        active: active ?? this.active,
        companyId: companyId ?? this.companyId);
  }
}

@JsonSerializable(explicitToJson: true)
class ResCustomerGroupResponseObject {
  ResCustomerGroupResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory ResCustomerGroupResponseObject.fromJson(Map<String, dynamic> json) =>
      _$ResCustomerGroupResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final ResCustomerGroup? data;
  static const fromJsonFactory = _$ResCustomerGroupResponseObjectFromJson;
  static const toJsonFactory = _$ResCustomerGroupResponseObjectToJson;
  Map<String, dynamic> toJson() => _$ResCustomerGroupResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResCustomerGroupResponseObject &&
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

extension $ResCustomerGroupResponseObjectExtension
    on ResCustomerGroupResponseObject {
  ResCustomerGroupResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      ResCustomerGroup? data}) {
    return ResCustomerGroupResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ResCustomerGroupResponsePagination {
  ResCustomerGroupResponsePagination({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory ResCustomerGroupResponsePagination.fromJson(
          Map<String, dynamic> json) =>
      _$ResCustomerGroupResponsePaginationFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final ResCustomerGroupPagination? data;
  static const fromJsonFactory = _$ResCustomerGroupResponsePaginationFromJson;
  static const toJsonFactory = _$ResCustomerGroupResponsePaginationToJson;
  Map<String, dynamic> toJson() =>
      _$ResCustomerGroupResponsePaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResCustomerGroupResponsePagination &&
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

extension $ResCustomerGroupResponsePaginationExtension
    on ResCustomerGroupResponsePagination {
  ResCustomerGroupResponsePagination copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      ResCustomerGroupPagination? data}) {
    return ResCustomerGroupResponsePagination(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ResPartner {
  ResPartner({
    this.createdByUserId,
    this.lastModifiedByUserId,
    this.lastModifiedOnDate,
    this.createdOnDate,
    this.applicationId,
    this.id,
    this.code,
    this.name,
    this.companyId,
    this.date,
    this.displayName,
    this.title,
    this.parentId,
    this.parentName,
    this.ref,
    this.refName,
    this.tz,
    this.lang,
    this.languageName,
    this.userId,
    this.vat,
    this.website,
    this.comment,
    this.creditLimit,
    this.barcode,
    this.customer,
    this.supplier,
    this.employee,
    this.function,
    this.type,
    this.email,
    this.mobile,
    this.isCompany,
    this.industryId,
    this.color,
    this.partnerShare,
    this.commercialPartnerId,
    this.commercialCompanyName,
    this.companyName,
    this.messageMainAttachmentId,
    this.messageMainAttachmentPath,
    this.messageBounce,
    this.signupToken,
    this.signupType,
    this.signupExpiration,
    this.partnerGid,
    this.additionalInfo,
    this.pickingWarn,
    this.pickingWarnMsg,
    this.teamId,
    this.debitLimit,
    this.lastTimeEntriesChecked,
    this.invoiceWarn,
    this.invoiceWarnMsg,
    this.saleWarn,
    this.saleWarnMsg,
    this.purchaseWarn,
    this.purchaseWarnMsg,
    this.calendarLastNotifAck,
    this.accountingObjectType,
    this.websiteId,
    this.phoneNumber,
    this.fax,
    this.isSynchronized,
    this.countryId,
    this.countryCode,
    this.countryName,
    this.stateId,
    this.province,
    this.provinceName,
    this.district,
    this.districtName,
    this.ward,
    this.wardName,
    this.city,
    this.street,
    this.street2,
    this.isSmallStreet,
    this.zip,
    this.imageUrl,
    this.geoLocation,
    this.geoLocationImage,
    this.checkinDate,
    this.checkInAddress,
    this.checkInStatus,
    this.checkInUserId,
    this.checkInUsername,
    this.confirmUserId,
    this.confirmUsername,
    this.keyword,
    this.cLeft,
    this.cRight,
    this.cLevel,
    this.labelsObjs,
    this.labelsJson,
    this.metadataContentObjs,
    this.metadataContent,
    this.metaContentType,
    this.order,
    this.isActive,
  });

  factory ResPartner.fromJson(Map<String, dynamic> json) =>
      _$ResPartnerFromJson(json);

  @JsonKey(name: 'createdByUserId')
  final String? createdByUserId;
  @JsonKey(name: 'lastModifiedByUserId')
  final String? lastModifiedByUserId;
  @JsonKey(name: 'lastModifiedOnDate')
  final DateTime? lastModifiedOnDate;
  @JsonKey(name: 'createdOnDate')
  final DateTime? createdOnDate;
  @JsonKey(name: 'applicationId')
  final String? applicationId;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'companyId')
  final String? companyId;
  @JsonKey(name: 'date')
  final DateTime? date;
  @JsonKey(name: 'displayName')
  final String? displayName;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'parentId')
  final String? parentId;
  @JsonKey(name: 'parentName')
  final String? parentName;
  @JsonKey(name: 'ref')
  final String? ref;
  @JsonKey(name: 'refName')
  final String? refName;
  @JsonKey(name: 'tz')
  final String? tz;
  @JsonKey(name: 'lang')
  final String? lang;
  @JsonKey(name: 'languageName')
  final String? languageName;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'vat')
  final String? vat;
  @JsonKey(name: 'website')
  final String? website;
  @JsonKey(name: 'comment')
  final String? comment;
  @JsonKey(name: 'creditLimit')
  final double? creditLimit;
  @JsonKey(name: 'barcode')
  final String? barcode;
  @JsonKey(name: 'customer')
  final bool? customer;
  @JsonKey(name: 'supplier')
  final bool? supplier;
  @JsonKey(name: 'employee')
  final bool? employee;
  @JsonKey(name: 'function')
  final String? function;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'mobile')
  final String? mobile;
  @JsonKey(name: 'isCompany')
  final bool? isCompany;
  @JsonKey(name: 'industryId')
  final String? industryId;
  @JsonKey(name: 'color')
  final int? color;
  @JsonKey(name: 'partnerShare')
  final bool? partnerShare;
  @JsonKey(name: 'commercialPartnerId')
  final String? commercialPartnerId;
  @JsonKey(name: 'commercialCompanyName')
  final String? commercialCompanyName;
  @JsonKey(name: 'companyName')
  final String? companyName;
  @JsonKey(name: 'messageMainAttachmentId')
  final String? messageMainAttachmentId;
  @JsonKey(name: 'messageMainAttachmentPath')
  final String? messageMainAttachmentPath;
  @JsonKey(name: 'messageBounce')
  final int? messageBounce;
  @JsonKey(name: 'signupToken')
  final String? signupToken;
  @JsonKey(name: 'signupType')
  final String? signupType;
  @JsonKey(name: 'signupExpiration')
  final DateTime? signupExpiration;
  @JsonKey(name: 'partnerGid')
  final String? partnerGid;
  @JsonKey(name: 'additionalInfo')
  final String? additionalInfo;
  @JsonKey(name: 'pickingWarn')
  final String? pickingWarn;
  @JsonKey(name: 'pickingWarnMsg')
  final String? pickingWarnMsg;
  @JsonKey(name: 'teamId')
  final String? teamId;
  @JsonKey(name: 'debitLimit')
  final double? debitLimit;
  @JsonKey(name: 'lastTimeEntriesChecked')
  final DateTime? lastTimeEntriesChecked;
  @JsonKey(name: 'invoiceWarn')
  final String? invoiceWarn;
  @JsonKey(name: 'invoiceWarnMsg')
  final String? invoiceWarnMsg;
  @JsonKey(name: 'saleWarn')
  final String? saleWarn;
  @JsonKey(name: 'saleWarnMsg')
  final String? saleWarnMsg;
  @JsonKey(name: 'purchaseWarn')
  final String? purchaseWarn;
  @JsonKey(name: 'purchaseWarnMsg')
  final String? purchaseWarnMsg;
  @JsonKey(name: 'calendarLastNotifAck')
  final DateTime? calendarLastNotifAck;
  @JsonKey(name: 'accountingObjectType')
  final int? accountingObjectType;
  @JsonKey(name: 'websiteId')
  final String? websiteId;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'fax')
  final String? fax;
  @JsonKey(name: 'isSynchronized')
  final int? isSynchronized;
  @JsonKey(name: 'countryId')
  final String? countryId;
  @JsonKey(name: 'countryCode')
  final String? countryCode;
  @JsonKey(name: 'countryName')
  final String? countryName;
  @JsonKey(name: 'stateId')
  final String? stateId;
  @JsonKey(name: 'province')
  final String? province;
  @JsonKey(name: 'provinceName')
  final String? provinceName;
  @JsonKey(name: 'district')
  final String? district;
  @JsonKey(name: 'districtName')
  final String? districtName;
  @JsonKey(name: 'ward')
  final String? ward;
  @JsonKey(name: 'wardName')
  final String? wardName;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'street')
  final String? street;
  @JsonKey(name: 'street2')
  final String? street2;
  @JsonKey(name: 'isSmallStreet')
  final bool? isSmallStreet;
  @JsonKey(name: 'zip')
  final String? zip;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @JsonKey(name: 'geoLocation')
  final String? geoLocation;
  @JsonKey(name: 'geoLocationImage')
  final String? geoLocationImage;
  @JsonKey(name: 'checkinDate')
  final DateTime? checkinDate;
  @JsonKey(name: 'checkInAddress')
  final String? checkInAddress;
  @JsonKey(name: 'checkInStatus')
  final int? checkInStatus;
  @JsonKey(name: 'checkInUserId')
  final String? checkInUserId;
  @JsonKey(name: 'checkInUsername')
  final String? checkInUsername;
  @JsonKey(name: 'confirmUserId')
  final String? confirmUserId;
  @JsonKey(name: 'confirmUsername')
  final String? confirmUsername;
  @JsonKey(name: 'keyword')
  final String? keyword;
  @JsonKey(name: 'c_left')
  final int? cLeft;
  @JsonKey(name: 'c_right')
  final int? cRight;
  @JsonKey(name: 'c_level')
  final int? cLevel;
  @JsonKey(name: 'labelsObjs', defaultValue: <LabelsObj>[])
  final List<LabelsObj>? labelsObjs;
  @JsonKey(name: 'labelsJson')
  final String? labelsJson;
  @JsonKey(name: 'metadataContentObjs', defaultValue: <MetadataValue>[])
  final List<MetadataValue>? metadataContentObjs;
  @JsonKey(name: 'metadataContent')
  final String? metadataContent;
  @JsonKey(name: 'metaContentType')
  final String? metaContentType;
  @JsonKey(name: 'order')
  final int? order;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  static const fromJsonFactory = _$ResPartnerFromJson;
  static const toJsonFactory = _$ResPartnerToJson;
  Map<String, dynamic> toJson() => _$ResPartnerToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResPartner &&
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
            (identical(other.companyId, companyId) ||
                const DeepCollectionEquality()
                    .equals(other.companyId, companyId)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.parentName, parentName) ||
                const DeepCollectionEquality()
                    .equals(other.parentName, parentName)) &&
            (identical(other.ref, ref) ||
                const DeepCollectionEquality().equals(other.ref, ref)) &&
            (identical(other.refName, refName) ||
                const DeepCollectionEquality()
                    .equals(other.refName, refName)) &&
            (identical(other.tz, tz) ||
                const DeepCollectionEquality().equals(other.tz, tz)) &&
            (identical(other.lang, lang) ||
                const DeepCollectionEquality().equals(other.lang, lang)) &&
            (identical(other.languageName, languageName) ||
                const DeepCollectionEquality()
                    .equals(other.languageName, languageName)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality()
                    .equals(other.website, website)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.creditLimit, creditLimit) ||
                const DeepCollectionEquality()
                    .equals(other.creditLimit, creditLimit)) &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.customer, customer) ||
                const DeepCollectionEquality()
                    .equals(other.customer, customer)) &&
            (identical(other.supplier, supplier) ||
                const DeepCollectionEquality().equals(other.supplier, supplier)) &&
            (identical(other.employee, employee) || const DeepCollectionEquality().equals(other.employee, employee)) &&
            (identical(other.function, function) || const DeepCollectionEquality().equals(other.function, function)) &&
            (identical(other.type, type) || const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.email, email) || const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.mobile, mobile) || const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.isCompany, isCompany) || const DeepCollectionEquality().equals(other.isCompany, isCompany)) &&
            (identical(other.industryId, industryId) || const DeepCollectionEquality().equals(other.industryId, industryId)) &&
            (identical(other.color, color) || const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.partnerShare, partnerShare) || const DeepCollectionEquality().equals(other.partnerShare, partnerShare)) &&
            (identical(other.commercialPartnerId, commercialPartnerId) || const DeepCollectionEquality().equals(other.commercialPartnerId, commercialPartnerId)) &&
            (identical(other.commercialCompanyName, commercialCompanyName) || const DeepCollectionEquality().equals(other.commercialCompanyName, commercialCompanyName)) &&
            (identical(other.companyName, companyName) || const DeepCollectionEquality().equals(other.companyName, companyName)) &&
            (identical(other.messageMainAttachmentId, messageMainAttachmentId) || const DeepCollectionEquality().equals(other.messageMainAttachmentId, messageMainAttachmentId)) &&
            (identical(other.messageMainAttachmentPath, messageMainAttachmentPath) || const DeepCollectionEquality().equals(other.messageMainAttachmentPath, messageMainAttachmentPath)) &&
            (identical(other.messageBounce, messageBounce) || const DeepCollectionEquality().equals(other.messageBounce, messageBounce)) &&
            (identical(other.signupToken, signupToken) || const DeepCollectionEquality().equals(other.signupToken, signupToken)) &&
            (identical(other.signupType, signupType) || const DeepCollectionEquality().equals(other.signupType, signupType)) &&
            (identical(other.signupExpiration, signupExpiration) || const DeepCollectionEquality().equals(other.signupExpiration, signupExpiration)) &&
            (identical(other.partnerGid, partnerGid) || const DeepCollectionEquality().equals(other.partnerGid, partnerGid)) &&
            (identical(other.additionalInfo, additionalInfo) || const DeepCollectionEquality().equals(other.additionalInfo, additionalInfo)) &&
            (identical(other.pickingWarn, pickingWarn) || const DeepCollectionEquality().equals(other.pickingWarn, pickingWarn)) &&
            (identical(other.pickingWarnMsg, pickingWarnMsg) || const DeepCollectionEquality().equals(other.pickingWarnMsg, pickingWarnMsg)) &&
            (identical(other.teamId, teamId) || const DeepCollectionEquality().equals(other.teamId, teamId)) &&
            (identical(other.debitLimit, debitLimit) || const DeepCollectionEquality().equals(other.debitLimit, debitLimit)) &&
            (identical(other.lastTimeEntriesChecked, lastTimeEntriesChecked) || const DeepCollectionEquality().equals(other.lastTimeEntriesChecked, lastTimeEntriesChecked)) &&
            (identical(other.invoiceWarn, invoiceWarn) || const DeepCollectionEquality().equals(other.invoiceWarn, invoiceWarn)) &&
            (identical(other.invoiceWarnMsg, invoiceWarnMsg) || const DeepCollectionEquality().equals(other.invoiceWarnMsg, invoiceWarnMsg)) &&
            (identical(other.saleWarn, saleWarn) || const DeepCollectionEquality().equals(other.saleWarn, saleWarn)) &&
            (identical(other.saleWarnMsg, saleWarnMsg) || const DeepCollectionEquality().equals(other.saleWarnMsg, saleWarnMsg)) &&
            (identical(other.purchaseWarn, purchaseWarn) || const DeepCollectionEquality().equals(other.purchaseWarn, purchaseWarn)) &&
            (identical(other.purchaseWarnMsg, purchaseWarnMsg) || const DeepCollectionEquality().equals(other.purchaseWarnMsg, purchaseWarnMsg)) &&
            (identical(other.calendarLastNotifAck, calendarLastNotifAck) || const DeepCollectionEquality().equals(other.calendarLastNotifAck, calendarLastNotifAck)) &&
            (identical(other.accountingObjectType, accountingObjectType) || const DeepCollectionEquality().equals(other.accountingObjectType, accountingObjectType)) &&
            (identical(other.websiteId, websiteId) || const DeepCollectionEquality().equals(other.websiteId, websiteId)) &&
            (identical(other.phoneNumber, phoneNumber) || const DeepCollectionEquality().equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.fax, fax) || const DeepCollectionEquality().equals(other.fax, fax)) &&
            (identical(other.isSynchronized, isSynchronized) || const DeepCollectionEquality().equals(other.isSynchronized, isSynchronized)) &&
            (identical(other.countryId, countryId) || const DeepCollectionEquality().equals(other.countryId, countryId)) &&
            (identical(other.countryCode, countryCode) || const DeepCollectionEquality().equals(other.countryCode, countryCode)) &&
            (identical(other.countryName, countryName) || const DeepCollectionEquality().equals(other.countryName, countryName)) &&
            (identical(other.stateId, stateId) || const DeepCollectionEquality().equals(other.stateId, stateId)) &&
            (identical(other.province, province) || const DeepCollectionEquality().equals(other.province, province)) &&
            (identical(other.provinceName, provinceName) || const DeepCollectionEquality().equals(other.provinceName, provinceName)) &&
            (identical(other.district, district) || const DeepCollectionEquality().equals(other.district, district)) &&
            (identical(other.districtName, districtName) || const DeepCollectionEquality().equals(other.districtName, districtName)) &&
            (identical(other.ward, ward) || const DeepCollectionEquality().equals(other.ward, ward)) &&
            (identical(other.wardName, wardName) || const DeepCollectionEquality().equals(other.wardName, wardName)) &&
            (identical(other.city, city) || const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.street, street) || const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.street2, street2) || const DeepCollectionEquality().equals(other.street2, street2)) &&
            (identical(other.isSmallStreet, isSmallStreet) || const DeepCollectionEquality().equals(other.isSmallStreet, isSmallStreet)) &&
            (identical(other.zip, zip) || const DeepCollectionEquality().equals(other.zip, zip)) &&
            (identical(other.imageUrl, imageUrl) || const DeepCollectionEquality().equals(other.imageUrl, imageUrl)) &&
            (identical(other.geoLocation, geoLocation) || const DeepCollectionEquality().equals(other.geoLocation, geoLocation)) &&
            (identical(other.geoLocationImage, geoLocationImage) || const DeepCollectionEquality().equals(other.geoLocationImage, geoLocationImage)) &&
            (identical(other.checkinDate, checkinDate) || const DeepCollectionEquality().equals(other.checkinDate, checkinDate)) &&
            (identical(other.checkInAddress, checkInAddress) || const DeepCollectionEquality().equals(other.checkInAddress, checkInAddress)) &&
            (identical(other.checkInStatus, checkInStatus) || const DeepCollectionEquality().equals(other.checkInStatus, checkInStatus)) &&
            (identical(other.checkInUserId, checkInUserId) || const DeepCollectionEquality().equals(other.checkInUserId, checkInUserId)) &&
            (identical(other.checkInUsername, checkInUsername) || const DeepCollectionEquality().equals(other.checkInUsername, checkInUsername)) &&
            (identical(other.confirmUserId, confirmUserId) || const DeepCollectionEquality().equals(other.confirmUserId, confirmUserId)) &&
            (identical(other.confirmUsername, confirmUsername) || const DeepCollectionEquality().equals(other.confirmUsername, confirmUsername)) &&
            (identical(other.keyword, keyword) || const DeepCollectionEquality().equals(other.keyword, keyword)) &&
            (identical(other.cLeft, cLeft) || const DeepCollectionEquality().equals(other.cLeft, cLeft)) &&
            (identical(other.cRight, cRight) || const DeepCollectionEquality().equals(other.cRight, cRight)) &&
            (identical(other.cLevel, cLevel) || const DeepCollectionEquality().equals(other.cLevel, cLevel)) &&
            (identical(other.labelsObjs, labelsObjs) || const DeepCollectionEquality().equals(other.labelsObjs, labelsObjs)) &&
            (identical(other.labelsJson, labelsJson) || const DeepCollectionEquality().equals(other.labelsJson, labelsJson)) &&
            (identical(other.metadataContentObjs, metadataContentObjs) || const DeepCollectionEquality().equals(other.metadataContentObjs, metadataContentObjs)) &&
            (identical(other.metadataContent, metadataContent) || const DeepCollectionEquality().equals(other.metadataContent, metadataContent)) &&
            (identical(other.metaContentType, metaContentType) || const DeepCollectionEquality().equals(other.metaContentType, metaContentType)) &&
            (identical(other.order, order) || const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.isActive, isActive) || const DeepCollectionEquality().equals(other.isActive, isActive)));
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
      const DeepCollectionEquality().hash(companyId) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(parentName) ^
      const DeepCollectionEquality().hash(ref) ^
      const DeepCollectionEquality().hash(refName) ^
      const DeepCollectionEquality().hash(tz) ^
      const DeepCollectionEquality().hash(lang) ^
      const DeepCollectionEquality().hash(languageName) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(website) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(creditLimit) ^
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(customer) ^
      const DeepCollectionEquality().hash(supplier) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(function) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(isCompany) ^
      const DeepCollectionEquality().hash(industryId) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(partnerShare) ^
      const DeepCollectionEquality().hash(commercialPartnerId) ^
      const DeepCollectionEquality().hash(commercialCompanyName) ^
      const DeepCollectionEquality().hash(companyName) ^
      const DeepCollectionEquality().hash(messageMainAttachmentId) ^
      const DeepCollectionEquality().hash(messageMainAttachmentPath) ^
      const DeepCollectionEquality().hash(messageBounce) ^
      const DeepCollectionEquality().hash(signupToken) ^
      const DeepCollectionEquality().hash(signupType) ^
      const DeepCollectionEquality().hash(signupExpiration) ^
      const DeepCollectionEquality().hash(partnerGid) ^
      const DeepCollectionEquality().hash(additionalInfo) ^
      const DeepCollectionEquality().hash(pickingWarn) ^
      const DeepCollectionEquality().hash(pickingWarnMsg) ^
      const DeepCollectionEquality().hash(teamId) ^
      const DeepCollectionEquality().hash(debitLimit) ^
      const DeepCollectionEquality().hash(lastTimeEntriesChecked) ^
      const DeepCollectionEquality().hash(invoiceWarn) ^
      const DeepCollectionEquality().hash(invoiceWarnMsg) ^
      const DeepCollectionEquality().hash(saleWarn) ^
      const DeepCollectionEquality().hash(saleWarnMsg) ^
      const DeepCollectionEquality().hash(purchaseWarn) ^
      const DeepCollectionEquality().hash(purchaseWarnMsg) ^
      const DeepCollectionEquality().hash(calendarLastNotifAck) ^
      const DeepCollectionEquality().hash(accountingObjectType) ^
      const DeepCollectionEquality().hash(websiteId) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(fax) ^
      const DeepCollectionEquality().hash(isSynchronized) ^
      const DeepCollectionEquality().hash(countryId) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(stateId) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(provinceName) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(districtName) ^
      const DeepCollectionEquality().hash(ward) ^
      const DeepCollectionEquality().hash(wardName) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(street2) ^
      const DeepCollectionEquality().hash(isSmallStreet) ^
      const DeepCollectionEquality().hash(zip) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(geoLocation) ^
      const DeepCollectionEquality().hash(geoLocationImage) ^
      const DeepCollectionEquality().hash(checkinDate) ^
      const DeepCollectionEquality().hash(checkInAddress) ^
      const DeepCollectionEquality().hash(checkInStatus) ^
      const DeepCollectionEquality().hash(checkInUserId) ^
      const DeepCollectionEquality().hash(checkInUsername) ^
      const DeepCollectionEquality().hash(confirmUserId) ^
      const DeepCollectionEquality().hash(confirmUsername) ^
      const DeepCollectionEquality().hash(keyword) ^
      const DeepCollectionEquality().hash(cLeft) ^
      const DeepCollectionEquality().hash(cRight) ^
      const DeepCollectionEquality().hash(cLevel) ^
      const DeepCollectionEquality().hash(labelsObjs) ^
      const DeepCollectionEquality().hash(labelsJson) ^
      const DeepCollectionEquality().hash(metadataContentObjs) ^
      const DeepCollectionEquality().hash(metadataContent) ^
      const DeepCollectionEquality().hash(metaContentType) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(isActive) ^
      runtimeType.hashCode;
}

extension $ResPartnerExtension on ResPartner {
  ResPartner copyWith(
      {String? createdByUserId,
      String? lastModifiedByUserId,
      DateTime? lastModifiedOnDate,
      DateTime? createdOnDate,
      String? applicationId,
      String? id,
      String? code,
      String? name,
      String? companyId,
      DateTime? date,
      String? displayName,
      String? title,
      String? parentId,
      String? parentName,
      String? ref,
      String? refName,
      String? tz,
      String? lang,
      String? languageName,
      String? userId,
      String? vat,
      String? website,
      String? comment,
      double? creditLimit,
      String? barcode,
      bool? customer,
      bool? supplier,
      bool? employee,
      String? function,
      String? type,
      String? email,
      String? mobile,
      bool? isCompany,
      String? industryId,
      int? color,
      bool? partnerShare,
      String? commercialPartnerId,
      String? commercialCompanyName,
      String? companyName,
      String? messageMainAttachmentId,
      String? messageMainAttachmentPath,
      int? messageBounce,
      String? signupToken,
      String? signupType,
      DateTime? signupExpiration,
      String? partnerGid,
      String? additionalInfo,
      String? pickingWarn,
      String? pickingWarnMsg,
      String? teamId,
      double? debitLimit,
      DateTime? lastTimeEntriesChecked,
      String? invoiceWarn,
      String? invoiceWarnMsg,
      String? saleWarn,
      String? saleWarnMsg,
      String? purchaseWarn,
      String? purchaseWarnMsg,
      DateTime? calendarLastNotifAck,
      int? accountingObjectType,
      String? websiteId,
      String? phoneNumber,
      String? fax,
      int? isSynchronized,
      String? countryId,
      String? countryCode,
      String? countryName,
      String? stateId,
      String? province,
      String? provinceName,
      String? district,
      String? districtName,
      String? ward,
      String? wardName,
      String? city,
      String? street,
      String? street2,
      bool? isSmallStreet,
      String? zip,
      String? imageUrl,
      String? geoLocation,
      String? geoLocationImage,
      DateTime? checkinDate,
      String? checkInAddress,
      int? checkInStatus,
      String? checkInUserId,
      String? checkInUsername,
      String? confirmUserId,
      String? confirmUsername,
      String? keyword,
      int? cLeft,
      int? cRight,
      int? cLevel,
      List<LabelsObj>? labelsObjs,
      String? labelsJson,
      List<MetadataValue>? metadataContentObjs,
      String? metadataContent,
      String? metaContentType,
      int? order,
      bool? isActive}) {
    return ResPartner(
        createdByUserId: createdByUserId ?? this.createdByUserId,
        lastModifiedByUserId: lastModifiedByUserId ?? this.lastModifiedByUserId,
        lastModifiedOnDate: lastModifiedOnDate ?? this.lastModifiedOnDate,
        createdOnDate: createdOnDate ?? this.createdOnDate,
        applicationId: applicationId ?? this.applicationId,
        id: id ?? this.id,
        code: code ?? this.code,
        name: name ?? this.name,
        companyId: companyId ?? this.companyId,
        date: date ?? this.date,
        displayName: displayName ?? this.displayName,
        title: title ?? this.title,
        parentId: parentId ?? this.parentId,
        parentName: parentName ?? this.parentName,
        ref: ref ?? this.ref,
        refName: refName ?? this.refName,
        tz: tz ?? this.tz,
        lang: lang ?? this.lang,
        languageName: languageName ?? this.languageName,
        userId: userId ?? this.userId,
        vat: vat ?? this.vat,
        website: website ?? this.website,
        comment: comment ?? this.comment,
        creditLimit: creditLimit ?? this.creditLimit,
        barcode: barcode ?? this.barcode,
        customer: customer ?? this.customer,
        supplier: supplier ?? this.supplier,
        employee: employee ?? this.employee,
        function: function ?? this.function,
        type: type ?? this.type,
        email: email ?? this.email,
        mobile: mobile ?? this.mobile,
        isCompany: isCompany ?? this.isCompany,
        industryId: industryId ?? this.industryId,
        color: color ?? this.color,
        partnerShare: partnerShare ?? this.partnerShare,
        commercialPartnerId: commercialPartnerId ?? this.commercialPartnerId,
        commercialCompanyName:
            commercialCompanyName ?? this.commercialCompanyName,
        companyName: companyName ?? this.companyName,
        messageMainAttachmentId:
            messageMainAttachmentId ?? this.messageMainAttachmentId,
        messageMainAttachmentPath:
            messageMainAttachmentPath ?? this.messageMainAttachmentPath,
        messageBounce: messageBounce ?? this.messageBounce,
        signupToken: signupToken ?? this.signupToken,
        signupType: signupType ?? this.signupType,
        signupExpiration: signupExpiration ?? this.signupExpiration,
        partnerGid: partnerGid ?? this.partnerGid,
        additionalInfo: additionalInfo ?? this.additionalInfo,
        pickingWarn: pickingWarn ?? this.pickingWarn,
        pickingWarnMsg: pickingWarnMsg ?? this.pickingWarnMsg,
        teamId: teamId ?? this.teamId,
        debitLimit: debitLimit ?? this.debitLimit,
        lastTimeEntriesChecked:
            lastTimeEntriesChecked ?? this.lastTimeEntriesChecked,
        invoiceWarn: invoiceWarn ?? this.invoiceWarn,
        invoiceWarnMsg: invoiceWarnMsg ?? this.invoiceWarnMsg,
        saleWarn: saleWarn ?? this.saleWarn,
        saleWarnMsg: saleWarnMsg ?? this.saleWarnMsg,
        purchaseWarn: purchaseWarn ?? this.purchaseWarn,
        purchaseWarnMsg: purchaseWarnMsg ?? this.purchaseWarnMsg,
        calendarLastNotifAck: calendarLastNotifAck ?? this.calendarLastNotifAck,
        accountingObjectType: accountingObjectType ?? this.accountingObjectType,
        websiteId: websiteId ?? this.websiteId,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        fax: fax ?? this.fax,
        isSynchronized: isSynchronized ?? this.isSynchronized,
        countryId: countryId ?? this.countryId,
        countryCode: countryCode ?? this.countryCode,
        countryName: countryName ?? this.countryName,
        stateId: stateId ?? this.stateId,
        province: province ?? this.province,
        provinceName: provinceName ?? this.provinceName,
        district: district ?? this.district,
        districtName: districtName ?? this.districtName,
        ward: ward ?? this.ward,
        wardName: wardName ?? this.wardName,
        city: city ?? this.city,
        street: street ?? this.street,
        street2: street2 ?? this.street2,
        isSmallStreet: isSmallStreet ?? this.isSmallStreet,
        zip: zip ?? this.zip,
        imageUrl: imageUrl ?? this.imageUrl,
        geoLocation: geoLocation ?? this.geoLocation,
        geoLocationImage: geoLocationImage ?? this.geoLocationImage,
        checkinDate: checkinDate ?? this.checkinDate,
        checkInAddress: checkInAddress ?? this.checkInAddress,
        checkInStatus: checkInStatus ?? this.checkInStatus,
        checkInUserId: checkInUserId ?? this.checkInUserId,
        checkInUsername: checkInUsername ?? this.checkInUsername,
        confirmUserId: confirmUserId ?? this.confirmUserId,
        confirmUsername: confirmUsername ?? this.confirmUsername,
        keyword: keyword ?? this.keyword,
        cLeft: cLeft ?? this.cLeft,
        cRight: cRight ?? this.cRight,
        cLevel: cLevel ?? this.cLevel,
        labelsObjs: labelsObjs ?? this.labelsObjs,
        labelsJson: labelsJson ?? this.labelsJson,
        metadataContentObjs: metadataContentObjs ?? this.metadataContentObjs,
        metadataContent: metadataContent ?? this.metadataContent,
        metaContentType: metaContentType ?? this.metaContentType,
        order: order ?? this.order,
        isActive: isActive ?? this.isActive);
  }
}

@JsonSerializable(explicitToJson: true)
class ResPartnerPagination {
  ResPartnerPagination({
    this.currentPage,
    this.totalPages,
    this.pageSize,
    this.numberOfRecords,
    this.totalRecords,
    this.content,
  });

  factory ResPartnerPagination.fromJson(Map<String, dynamic> json) =>
      _$ResPartnerPaginationFromJson(json);

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
  @JsonKey(name: 'content', defaultValue: <ResPartner>[])
  final List<ResPartner>? content;
  static const fromJsonFactory = _$ResPartnerPaginationFromJson;
  static const toJsonFactory = _$ResPartnerPaginationToJson;
  Map<String, dynamic> toJson() => _$ResPartnerPaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResPartnerPagination &&
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

extension $ResPartnerPaginationExtension on ResPartnerPagination {
  ResPartnerPagination copyWith(
      {int? currentPage,
      int? totalPages,
      int? pageSize,
      int? numberOfRecords,
      int? totalRecords,
      List<ResPartner>? content}) {
    return ResPartnerPagination(
        currentPage: currentPage ?? this.currentPage,
        totalPages: totalPages ?? this.totalPages,
        pageSize: pageSize ?? this.pageSize,
        numberOfRecords: numberOfRecords ?? this.numberOfRecords,
        totalRecords: totalRecords ?? this.totalRecords,
        content: content ?? this.content);
  }
}

@JsonSerializable(explicitToJson: true)
class ResPartnerPatchResquestModel {
  ResPartnerPatchResquestModel({
    required this.code,
    this.name,
    this.companyId,
    this.date,
    this.displayName,
    this.title,
    this.parentId,
    this.parentName,
    this.ref,
    this.refName,
    this.lang,
    this.languageName,
    this.tz,
    this.userId,
    this.vat,
    this.website,
    this.comment,
    this.creditLimit,
    this.barcode,
    this.isActive,
    this.customer,
    this.supplier,
    this.employee,
    this.function,
    this.type,
    this.countryId,
    this.countryCode,
    this.countryName,
    this.stateId,
    this.province,
    this.provinceName,
    this.district,
    this.districtName,
    this.ward,
    this.wardName,
    this.street,
    this.isSmallStreet,
    this.street2,
    this.zip,
    this.email,
    this.mobile,
    this.isCompany,
    this.industryId,
    this.color,
    this.partnerShare,
    this.commercialPartnerId,
    this.commercialCompanyName,
    this.companyName,
    this.messageMainAttachmentId,
    this.messageMainAttachmentPath,
    this.messageBounce,
    this.signupToken,
    this.signupType,
    this.signupExpiration,
    this.partnerGid,
    this.additionalInfo,
    this.pickingWarn,
    this.pickingWarnMsg,
    this.teamId,
    this.debitLimit,
    this.lastTimeEntriesChecked,
    this.invoiceWarn,
    this.invoiceWarnMsg,
    this.saleWarn,
    this.saleWarnMsg,
    this.purchaseWarn,
    this.purchaseWarnMsg,
    this.calendarLastNotifAck,
    this.accountingObjectType,
    this.websiteId,
    this.phoneNumber,
    this.fax,
    this.isSynchronized,
    this.keyword,
    this.imageUrl,
    this.listResContact,
    this.metadataContentObjs,
  });

  factory ResPartnerPatchResquestModel.fromJson(Map<String, dynamic> json) =>
      _$ResPartnerPatchResquestModelFromJson(json);

  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'companyId')
  final String? companyId;
  @JsonKey(name: 'date')
  final DateTime? date;
  @JsonKey(name: 'displayName')
  final String? displayName;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'parentId')
  final String? parentId;
  @JsonKey(name: 'parentName')
  final String? parentName;
  @JsonKey(name: 'ref')
  final String? ref;
  @JsonKey(name: 'refName')
  final String? refName;
  @JsonKey(name: 'lang')
  final String? lang;
  @JsonKey(name: 'languageName')
  final String? languageName;
  @JsonKey(name: 'tz')
  final String? tz;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'vat')
  final String? vat;
  @JsonKey(name: 'website')
  final String? website;
  @JsonKey(name: 'comment')
  final String? comment;
  @JsonKey(name: 'creditLimit')
  final double? creditLimit;
  @JsonKey(name: 'barcode')
  final String? barcode;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @JsonKey(name: 'customer')
  final bool? customer;
  @JsonKey(name: 'supplier')
  final bool? supplier;
  @JsonKey(name: 'employee')
  final bool? employee;
  @JsonKey(name: 'function')
  final String? function;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'countryId')
  final String? countryId;
  @JsonKey(name: 'countryCode')
  final String? countryCode;
  @JsonKey(name: 'countryName')
  final String? countryName;
  @JsonKey(name: 'stateId')
  final String? stateId;
  @JsonKey(name: 'province')
  final String? province;
  @JsonKey(name: 'provinceName')
  final String? provinceName;
  @JsonKey(name: 'district')
  final String? district;
  @JsonKey(name: 'districtName')
  final String? districtName;
  @JsonKey(name: 'ward')
  final String? ward;
  @JsonKey(name: 'wardName')
  final String? wardName;
  @JsonKey(name: 'street')
  final String? street;
  @JsonKey(name: 'isSmallStreet')
  final bool? isSmallStreet;
  @JsonKey(name: 'street2')
  final String? street2;
  @JsonKey(name: 'zip')
  final String? zip;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'mobile')
  final String? mobile;
  @JsonKey(name: 'isCompany')
  final bool? isCompany;
  @JsonKey(name: 'industryId')
  final String? industryId;
  @JsonKey(name: 'color')
  final int? color;
  @JsonKey(name: 'partnerShare')
  final bool? partnerShare;
  @JsonKey(name: 'commercialPartnerId')
  final String? commercialPartnerId;
  @JsonKey(name: 'commercialCompanyName')
  final String? commercialCompanyName;
  @JsonKey(name: 'companyName')
  final String? companyName;
  @JsonKey(name: 'messageMainAttachmentId')
  final String? messageMainAttachmentId;
  @JsonKey(name: 'messageMainAttachmentPath')
  final String? messageMainAttachmentPath;
  @JsonKey(name: 'messageBounce')
  final int? messageBounce;
  @JsonKey(name: 'signupToken')
  final String? signupToken;
  @JsonKey(name: 'signupType')
  final String? signupType;
  @JsonKey(name: 'signupExpiration')
  final DateTime? signupExpiration;
  @JsonKey(name: 'partnerGid')
  final String? partnerGid;
  @JsonKey(name: 'additionalInfo')
  final String? additionalInfo;
  @JsonKey(name: 'pickingWarn')
  final String? pickingWarn;
  @JsonKey(name: 'pickingWarnMsg')
  final String? pickingWarnMsg;
  @JsonKey(name: 'teamId')
  final String? teamId;
  @JsonKey(name: 'debitLimit')
  final double? debitLimit;
  @JsonKey(name: 'lastTimeEntriesChecked')
  final DateTime? lastTimeEntriesChecked;
  @JsonKey(name: 'invoiceWarn')
  final String? invoiceWarn;
  @JsonKey(name: 'invoiceWarnMsg')
  final String? invoiceWarnMsg;
  @JsonKey(name: 'saleWarn')
  final String? saleWarn;
  @JsonKey(name: 'saleWarnMsg')
  final String? saleWarnMsg;
  @JsonKey(name: 'purchaseWarn')
  final String? purchaseWarn;
  @JsonKey(name: 'purchaseWarnMsg')
  final String? purchaseWarnMsg;
  @JsonKey(name: 'calendarLastNotifAck')
  final DateTime? calendarLastNotifAck;
  @JsonKey(name: 'accountingObjectType')
  final int? accountingObjectType;
  @JsonKey(name: 'websiteId')
  final String? websiteId;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'fax')
  final String? fax;
  @JsonKey(name: 'isSynchronized')
  final int? isSynchronized;
  @JsonKey(name: 'keyword')
  final String? keyword;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @JsonKey(name: 'listResContact', defaultValue: <ResContact>[])
  final List<ResContact>? listResContact;
  @JsonKey(name: 'metadataContentObjs', defaultValue: <MetadataValue>[])
  final List<MetadataValue>? metadataContentObjs;
  static const fromJsonFactory = _$ResPartnerPatchResquestModelFromJson;
  static const toJsonFactory = _$ResPartnerPatchResquestModelToJson;
  Map<String, dynamic> toJson() => _$ResPartnerPatchResquestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResPartnerPatchResquestModel &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.companyId, companyId) ||
                const DeepCollectionEquality()
                    .equals(other.companyId, companyId)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.parentName, parentName) ||
                const DeepCollectionEquality()
                    .equals(other.parentName, parentName)) &&
            (identical(other.ref, ref) ||
                const DeepCollectionEquality().equals(other.ref, ref)) &&
            (identical(other.refName, refName) ||
                const DeepCollectionEquality()
                    .equals(other.refName, refName)) &&
            (identical(other.lang, lang) ||
                const DeepCollectionEquality().equals(other.lang, lang)) &&
            (identical(other.languageName, languageName) ||
                const DeepCollectionEquality()
                    .equals(other.languageName, languageName)) &&
            (identical(other.tz, tz) ||
                const DeepCollectionEquality().equals(other.tz, tz)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality()
                    .equals(other.website, website)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.creditLimit, creditLimit) ||
                const DeepCollectionEquality()
                    .equals(other.creditLimit, creditLimit)) &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.customer, customer) ||
                const DeepCollectionEquality()
                    .equals(other.customer, customer)) &&
            (identical(other.supplier, supplier) ||
                const DeepCollectionEquality()
                    .equals(other.supplier, supplier)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.function, function) ||
                const DeepCollectionEquality()
                    .equals(other.function, function)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.countryId, countryId) ||
                const DeepCollectionEquality()
                    .equals(other.countryId, countryId)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality().equals(other.countryCode, countryCode)) &&
            (identical(other.countryName, countryName) || const DeepCollectionEquality().equals(other.countryName, countryName)) &&
            (identical(other.stateId, stateId) || const DeepCollectionEquality().equals(other.stateId, stateId)) &&
            (identical(other.province, province) || const DeepCollectionEquality().equals(other.province, province)) &&
            (identical(other.provinceName, provinceName) || const DeepCollectionEquality().equals(other.provinceName, provinceName)) &&
            (identical(other.district, district) || const DeepCollectionEquality().equals(other.district, district)) &&
            (identical(other.districtName, districtName) || const DeepCollectionEquality().equals(other.districtName, districtName)) &&
            (identical(other.ward, ward) || const DeepCollectionEquality().equals(other.ward, ward)) &&
            (identical(other.wardName, wardName) || const DeepCollectionEquality().equals(other.wardName, wardName)) &&
            (identical(other.street, street) || const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.isSmallStreet, isSmallStreet) || const DeepCollectionEquality().equals(other.isSmallStreet, isSmallStreet)) &&
            (identical(other.street2, street2) || const DeepCollectionEquality().equals(other.street2, street2)) &&
            (identical(other.zip, zip) || const DeepCollectionEquality().equals(other.zip, zip)) &&
            (identical(other.email, email) || const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.mobile, mobile) || const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.isCompany, isCompany) || const DeepCollectionEquality().equals(other.isCompany, isCompany)) &&
            (identical(other.industryId, industryId) || const DeepCollectionEquality().equals(other.industryId, industryId)) &&
            (identical(other.color, color) || const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.partnerShare, partnerShare) || const DeepCollectionEquality().equals(other.partnerShare, partnerShare)) &&
            (identical(other.commercialPartnerId, commercialPartnerId) || const DeepCollectionEquality().equals(other.commercialPartnerId, commercialPartnerId)) &&
            (identical(other.commercialCompanyName, commercialCompanyName) || const DeepCollectionEquality().equals(other.commercialCompanyName, commercialCompanyName)) &&
            (identical(other.companyName, companyName) || const DeepCollectionEquality().equals(other.companyName, companyName)) &&
            (identical(other.messageMainAttachmentId, messageMainAttachmentId) || const DeepCollectionEquality().equals(other.messageMainAttachmentId, messageMainAttachmentId)) &&
            (identical(other.messageMainAttachmentPath, messageMainAttachmentPath) || const DeepCollectionEquality().equals(other.messageMainAttachmentPath, messageMainAttachmentPath)) &&
            (identical(other.messageBounce, messageBounce) || const DeepCollectionEquality().equals(other.messageBounce, messageBounce)) &&
            (identical(other.signupToken, signupToken) || const DeepCollectionEquality().equals(other.signupToken, signupToken)) &&
            (identical(other.signupType, signupType) || const DeepCollectionEquality().equals(other.signupType, signupType)) &&
            (identical(other.signupExpiration, signupExpiration) || const DeepCollectionEquality().equals(other.signupExpiration, signupExpiration)) &&
            (identical(other.partnerGid, partnerGid) || const DeepCollectionEquality().equals(other.partnerGid, partnerGid)) &&
            (identical(other.additionalInfo, additionalInfo) || const DeepCollectionEquality().equals(other.additionalInfo, additionalInfo)) &&
            (identical(other.pickingWarn, pickingWarn) || const DeepCollectionEquality().equals(other.pickingWarn, pickingWarn)) &&
            (identical(other.pickingWarnMsg, pickingWarnMsg) || const DeepCollectionEquality().equals(other.pickingWarnMsg, pickingWarnMsg)) &&
            (identical(other.teamId, teamId) || const DeepCollectionEquality().equals(other.teamId, teamId)) &&
            (identical(other.debitLimit, debitLimit) || const DeepCollectionEquality().equals(other.debitLimit, debitLimit)) &&
            (identical(other.lastTimeEntriesChecked, lastTimeEntriesChecked) || const DeepCollectionEquality().equals(other.lastTimeEntriesChecked, lastTimeEntriesChecked)) &&
            (identical(other.invoiceWarn, invoiceWarn) || const DeepCollectionEquality().equals(other.invoiceWarn, invoiceWarn)) &&
            (identical(other.invoiceWarnMsg, invoiceWarnMsg) || const DeepCollectionEquality().equals(other.invoiceWarnMsg, invoiceWarnMsg)) &&
            (identical(other.saleWarn, saleWarn) || const DeepCollectionEquality().equals(other.saleWarn, saleWarn)) &&
            (identical(other.saleWarnMsg, saleWarnMsg) || const DeepCollectionEquality().equals(other.saleWarnMsg, saleWarnMsg)) &&
            (identical(other.purchaseWarn, purchaseWarn) || const DeepCollectionEquality().equals(other.purchaseWarn, purchaseWarn)) &&
            (identical(other.purchaseWarnMsg, purchaseWarnMsg) || const DeepCollectionEquality().equals(other.purchaseWarnMsg, purchaseWarnMsg)) &&
            (identical(other.calendarLastNotifAck, calendarLastNotifAck) || const DeepCollectionEquality().equals(other.calendarLastNotifAck, calendarLastNotifAck)) &&
            (identical(other.accountingObjectType, accountingObjectType) || const DeepCollectionEquality().equals(other.accountingObjectType, accountingObjectType)) &&
            (identical(other.websiteId, websiteId) || const DeepCollectionEquality().equals(other.websiteId, websiteId)) &&
            (identical(other.phoneNumber, phoneNumber) || const DeepCollectionEquality().equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.fax, fax) || const DeepCollectionEquality().equals(other.fax, fax)) &&
            (identical(other.isSynchronized, isSynchronized) || const DeepCollectionEquality().equals(other.isSynchronized, isSynchronized)) &&
            (identical(other.keyword, keyword) || const DeepCollectionEquality().equals(other.keyword, keyword)) &&
            (identical(other.imageUrl, imageUrl) || const DeepCollectionEquality().equals(other.imageUrl, imageUrl)) &&
            (identical(other.listResContact, listResContact) || const DeepCollectionEquality().equals(other.listResContact, listResContact)) &&
            (identical(other.metadataContentObjs, metadataContentObjs) || const DeepCollectionEquality().equals(other.metadataContentObjs, metadataContentObjs)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(companyId) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(parentName) ^
      const DeepCollectionEquality().hash(ref) ^
      const DeepCollectionEquality().hash(refName) ^
      const DeepCollectionEquality().hash(lang) ^
      const DeepCollectionEquality().hash(languageName) ^
      const DeepCollectionEquality().hash(tz) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(website) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(creditLimit) ^
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(customer) ^
      const DeepCollectionEquality().hash(supplier) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(function) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(countryId) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(stateId) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(provinceName) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(districtName) ^
      const DeepCollectionEquality().hash(ward) ^
      const DeepCollectionEquality().hash(wardName) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(isSmallStreet) ^
      const DeepCollectionEquality().hash(street2) ^
      const DeepCollectionEquality().hash(zip) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(isCompany) ^
      const DeepCollectionEquality().hash(industryId) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(partnerShare) ^
      const DeepCollectionEquality().hash(commercialPartnerId) ^
      const DeepCollectionEquality().hash(commercialCompanyName) ^
      const DeepCollectionEquality().hash(companyName) ^
      const DeepCollectionEquality().hash(messageMainAttachmentId) ^
      const DeepCollectionEquality().hash(messageMainAttachmentPath) ^
      const DeepCollectionEquality().hash(messageBounce) ^
      const DeepCollectionEquality().hash(signupToken) ^
      const DeepCollectionEquality().hash(signupType) ^
      const DeepCollectionEquality().hash(signupExpiration) ^
      const DeepCollectionEquality().hash(partnerGid) ^
      const DeepCollectionEquality().hash(additionalInfo) ^
      const DeepCollectionEquality().hash(pickingWarn) ^
      const DeepCollectionEquality().hash(pickingWarnMsg) ^
      const DeepCollectionEquality().hash(teamId) ^
      const DeepCollectionEquality().hash(debitLimit) ^
      const DeepCollectionEquality().hash(lastTimeEntriesChecked) ^
      const DeepCollectionEquality().hash(invoiceWarn) ^
      const DeepCollectionEquality().hash(invoiceWarnMsg) ^
      const DeepCollectionEquality().hash(saleWarn) ^
      const DeepCollectionEquality().hash(saleWarnMsg) ^
      const DeepCollectionEquality().hash(purchaseWarn) ^
      const DeepCollectionEquality().hash(purchaseWarnMsg) ^
      const DeepCollectionEquality().hash(calendarLastNotifAck) ^
      const DeepCollectionEquality().hash(accountingObjectType) ^
      const DeepCollectionEquality().hash(websiteId) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(fax) ^
      const DeepCollectionEquality().hash(isSynchronized) ^
      const DeepCollectionEquality().hash(keyword) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(listResContact) ^
      const DeepCollectionEquality().hash(metadataContentObjs) ^
      runtimeType.hashCode;
}

extension $ResPartnerPatchResquestModelExtension
    on ResPartnerPatchResquestModel {
  ResPartnerPatchResquestModel copyWith(
      {String? code,
      String? name,
      String? companyId,
      DateTime? date,
      String? displayName,
      String? title,
      String? parentId,
      String? parentName,
      String? ref,
      String? refName,
      String? lang,
      String? languageName,
      String? tz,
      String? userId,
      String? vat,
      String? website,
      String? comment,
      double? creditLimit,
      String? barcode,
      bool? isActive,
      bool? customer,
      bool? supplier,
      bool? employee,
      String? function,
      String? type,
      String? countryId,
      String? countryCode,
      String? countryName,
      String? stateId,
      String? province,
      String? provinceName,
      String? district,
      String? districtName,
      String? ward,
      String? wardName,
      String? street,
      bool? isSmallStreet,
      String? street2,
      String? zip,
      String? email,
      String? mobile,
      bool? isCompany,
      String? industryId,
      int? color,
      bool? partnerShare,
      String? commercialPartnerId,
      String? commercialCompanyName,
      String? companyName,
      String? messageMainAttachmentId,
      String? messageMainAttachmentPath,
      int? messageBounce,
      String? signupToken,
      String? signupType,
      DateTime? signupExpiration,
      String? partnerGid,
      String? additionalInfo,
      String? pickingWarn,
      String? pickingWarnMsg,
      String? teamId,
      double? debitLimit,
      DateTime? lastTimeEntriesChecked,
      String? invoiceWarn,
      String? invoiceWarnMsg,
      String? saleWarn,
      String? saleWarnMsg,
      String? purchaseWarn,
      String? purchaseWarnMsg,
      DateTime? calendarLastNotifAck,
      int? accountingObjectType,
      String? websiteId,
      String? phoneNumber,
      String? fax,
      int? isSynchronized,
      String? keyword,
      String? imageUrl,
      List<ResContact>? listResContact,
      List<MetadataValue>? metadataContentObjs}) {
    return ResPartnerPatchResquestModel(
        code: code ?? this.code,
        name: name ?? this.name,
        companyId: companyId ?? this.companyId,
        date: date ?? this.date,
        displayName: displayName ?? this.displayName,
        title: title ?? this.title,
        parentId: parentId ?? this.parentId,
        parentName: parentName ?? this.parentName,
        ref: ref ?? this.ref,
        refName: refName ?? this.refName,
        lang: lang ?? this.lang,
        languageName: languageName ?? this.languageName,
        tz: tz ?? this.tz,
        userId: userId ?? this.userId,
        vat: vat ?? this.vat,
        website: website ?? this.website,
        comment: comment ?? this.comment,
        creditLimit: creditLimit ?? this.creditLimit,
        barcode: barcode ?? this.barcode,
        isActive: isActive ?? this.isActive,
        customer: customer ?? this.customer,
        supplier: supplier ?? this.supplier,
        employee: employee ?? this.employee,
        function: function ?? this.function,
        type: type ?? this.type,
        countryId: countryId ?? this.countryId,
        countryCode: countryCode ?? this.countryCode,
        countryName: countryName ?? this.countryName,
        stateId: stateId ?? this.stateId,
        province: province ?? this.province,
        provinceName: provinceName ?? this.provinceName,
        district: district ?? this.district,
        districtName: districtName ?? this.districtName,
        ward: ward ?? this.ward,
        wardName: wardName ?? this.wardName,
        street: street ?? this.street,
        isSmallStreet: isSmallStreet ?? this.isSmallStreet,
        street2: street2 ?? this.street2,
        zip: zip ?? this.zip,
        email: email ?? this.email,
        mobile: mobile ?? this.mobile,
        isCompany: isCompany ?? this.isCompany,
        industryId: industryId ?? this.industryId,
        color: color ?? this.color,
        partnerShare: partnerShare ?? this.partnerShare,
        commercialPartnerId: commercialPartnerId ?? this.commercialPartnerId,
        commercialCompanyName:
            commercialCompanyName ?? this.commercialCompanyName,
        companyName: companyName ?? this.companyName,
        messageMainAttachmentId:
            messageMainAttachmentId ?? this.messageMainAttachmentId,
        messageMainAttachmentPath:
            messageMainAttachmentPath ?? this.messageMainAttachmentPath,
        messageBounce: messageBounce ?? this.messageBounce,
        signupToken: signupToken ?? this.signupToken,
        signupType: signupType ?? this.signupType,
        signupExpiration: signupExpiration ?? this.signupExpiration,
        partnerGid: partnerGid ?? this.partnerGid,
        additionalInfo: additionalInfo ?? this.additionalInfo,
        pickingWarn: pickingWarn ?? this.pickingWarn,
        pickingWarnMsg: pickingWarnMsg ?? this.pickingWarnMsg,
        teamId: teamId ?? this.teamId,
        debitLimit: debitLimit ?? this.debitLimit,
        lastTimeEntriesChecked:
            lastTimeEntriesChecked ?? this.lastTimeEntriesChecked,
        invoiceWarn: invoiceWarn ?? this.invoiceWarn,
        invoiceWarnMsg: invoiceWarnMsg ?? this.invoiceWarnMsg,
        saleWarn: saleWarn ?? this.saleWarn,
        saleWarnMsg: saleWarnMsg ?? this.saleWarnMsg,
        purchaseWarn: purchaseWarn ?? this.purchaseWarn,
        purchaseWarnMsg: purchaseWarnMsg ?? this.purchaseWarnMsg,
        calendarLastNotifAck: calendarLastNotifAck ?? this.calendarLastNotifAck,
        accountingObjectType: accountingObjectType ?? this.accountingObjectType,
        websiteId: websiteId ?? this.websiteId,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        fax: fax ?? this.fax,
        isSynchronized: isSynchronized ?? this.isSynchronized,
        keyword: keyword ?? this.keyword,
        imageUrl: imageUrl ?? this.imageUrl,
        listResContact: listResContact ?? this.listResContact,
        metadataContentObjs: metadataContentObjs ?? this.metadataContentObjs);
  }
}

@JsonSerializable(explicitToJson: true)
class ResPartnerResponseList {
  ResPartnerResponseList({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory ResPartnerResponseList.fromJson(Map<String, dynamic> json) =>
      _$ResPartnerResponseListFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data', defaultValue: <ResPartner>[])
  final List<ResPartner>? data;
  static const fromJsonFactory = _$ResPartnerResponseListFromJson;
  static const toJsonFactory = _$ResPartnerResponseListToJson;
  Map<String, dynamic> toJson() => _$ResPartnerResponseListToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResPartnerResponseList &&
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

extension $ResPartnerResponseListExtension on ResPartnerResponseList {
  ResPartnerResponseList copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<ResPartner>? data}) {
    return ResPartnerResponseList(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ResPartnerResponseObject {
  ResPartnerResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory ResPartnerResponseObject.fromJson(Map<String, dynamic> json) =>
      _$ResPartnerResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final ResPartner? data;
  static const fromJsonFactory = _$ResPartnerResponseObjectFromJson;
  static const toJsonFactory = _$ResPartnerResponseObjectToJson;
  Map<String, dynamic> toJson() => _$ResPartnerResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResPartnerResponseObject &&
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

extension $ResPartnerResponseObjectExtension on ResPartnerResponseObject {
  ResPartnerResponseObject copyWith(
      {enums.Code? code, String? message, num? totalTime, ResPartner? data}) {
    return ResPartnerResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ResPartnerResponsePagination {
  ResPartnerResponsePagination({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory ResPartnerResponsePagination.fromJson(Map<String, dynamic> json) =>
      _$ResPartnerResponsePaginationFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final ResPartnerPagination? data;
  static const fromJsonFactory = _$ResPartnerResponsePaginationFromJson;
  static const toJsonFactory = _$ResPartnerResponsePaginationToJson;
  Map<String, dynamic> toJson() => _$ResPartnerResponsePaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResPartnerResponsePagination &&
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

extension $ResPartnerResponsePaginationExtension
    on ResPartnerResponsePagination {
  ResPartnerResponsePagination copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      ResPartnerPagination? data}) {
    return ResPartnerResponsePagination(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ResPartnerResquestModel {
  ResPartnerResquestModel({
    required this.code,
    this.name,
    this.companyId,
    this.date,
    this.displayName,
    this.title,
    this.parentId,
    this.parentName,
    this.ref,
    this.refName,
    this.lang,
    this.languageName,
    this.tz,
    this.userId,
    this.vat,
    this.website,
    this.comment,
    this.creditLimit,
    this.barcode,
    this.active,
    this.customer,
    this.supplier,
    this.employee,
    this.function,
    this.type,
    this.countryId,
    this.countryCode,
    this.countryName,
    this.stateId,
    this.province,
    this.provinceName,
    this.district,
    this.districtName,
    this.ward,
    this.wardName,
    this.street,
    this.isSmallStreet,
    this.street2,
    this.zip,
    this.email,
    this.mobile,
    this.isCompany,
    this.industryId,
    this.color,
    this.partnerShare,
    this.commercialPartnerId,
    this.commercialCompanyName,
    this.companyName,
    this.messageMainAttachmentId,
    this.messageMainAttachmentPath,
    this.messageBounce,
    this.signupToken,
    this.signupType,
    this.signupExpiration,
    this.partnerGid,
    this.additionalInfo,
    this.pickingWarn,
    this.pickingWarnMsg,
    this.teamId,
    this.debitLimit,
    this.lastTimeEntriesChecked,
    this.invoiceWarn,
    this.invoiceWarnMsg,
    this.saleWarn,
    this.saleWarnMsg,
    this.purchaseWarn,
    this.purchaseWarnMsg,
    this.calendarLastNotifAck,
    this.accountingObjectType,
    this.websiteId,
    this.phoneNumber,
    this.fax,
    this.isSynchronized,
    this.keyword,
    this.imageUrl,
    this.listResContact,
    this.metadataContentObjs,
    this.order,
    this.isActive,
  });

  factory ResPartnerResquestModel.fromJson(Map<String, dynamic> json) =>
      _$ResPartnerResquestModelFromJson(json);

  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'companyId')
  final String? companyId;
  @JsonKey(name: 'date')
  final DateTime? date;
  @JsonKey(name: 'displayName')
  final String? displayName;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'parentId')
  final String? parentId;
  @JsonKey(name: 'parentName')
  final String? parentName;
  @JsonKey(name: 'ref')
  final String? ref;
  @JsonKey(name: 'refName')
  final String? refName;
  @JsonKey(name: 'lang')
  final String? lang;
  @JsonKey(name: 'languageName')
  final String? languageName;
  @JsonKey(name: 'tz')
  final String? tz;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'vat')
  final String? vat;
  @JsonKey(name: 'website')
  final String? website;
  @JsonKey(name: 'comment')
  final String? comment;
  @JsonKey(name: 'creditLimit')
  final double? creditLimit;
  @JsonKey(name: 'barcode')
  final String? barcode;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'customer')
  final bool? customer;
  @JsonKey(name: 'supplier')
  final bool? supplier;
  @JsonKey(name: 'employee')
  final bool? employee;
  @JsonKey(name: 'function')
  final String? function;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'countryId')
  final String? countryId;
  @JsonKey(name: 'countryCode')
  final String? countryCode;
  @JsonKey(name: 'countryName')
  final String? countryName;
  @JsonKey(name: 'stateId')
  final String? stateId;
  @JsonKey(name: 'province')
  final String? province;
  @JsonKey(name: 'provinceName')
  final String? provinceName;
  @JsonKey(name: 'district')
  final String? district;
  @JsonKey(name: 'districtName')
  final String? districtName;
  @JsonKey(name: 'ward')
  final String? ward;
  @JsonKey(name: 'wardName')
  final String? wardName;
  @JsonKey(name: 'street')
  final String? street;
  @JsonKey(name: 'isSmallStreet')
  final bool? isSmallStreet;
  @JsonKey(name: 'street2')
  final String? street2;
  @JsonKey(name: 'zip')
  final String? zip;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'mobile')
  final String? mobile;
  @JsonKey(name: 'isCompany')
  final bool? isCompany;
  @JsonKey(name: 'industryId')
  final String? industryId;
  @JsonKey(name: 'color')
  final int? color;
  @JsonKey(name: 'partnerShare')
  final bool? partnerShare;
  @JsonKey(name: 'commercialPartnerId')
  final String? commercialPartnerId;
  @JsonKey(name: 'commercialCompanyName')
  final String? commercialCompanyName;
  @JsonKey(name: 'companyName')
  final String? companyName;
  @JsonKey(name: 'messageMainAttachmentId')
  final String? messageMainAttachmentId;
  @JsonKey(name: 'messageMainAttachmentPath')
  final String? messageMainAttachmentPath;
  @JsonKey(name: 'messageBounce')
  final int? messageBounce;
  @JsonKey(name: 'signupToken')
  final String? signupToken;
  @JsonKey(name: 'signupType')
  final String? signupType;
  @JsonKey(name: 'signupExpiration')
  final DateTime? signupExpiration;
  @JsonKey(name: 'partnerGid')
  final String? partnerGid;
  @JsonKey(name: 'additionalInfo')
  final String? additionalInfo;
  @JsonKey(name: 'pickingWarn')
  final String? pickingWarn;
  @JsonKey(name: 'pickingWarnMsg')
  final String? pickingWarnMsg;
  @JsonKey(name: 'teamId')
  final String? teamId;
  @JsonKey(name: 'debitLimit')
  final double? debitLimit;
  @JsonKey(name: 'lastTimeEntriesChecked')
  final DateTime? lastTimeEntriesChecked;
  @JsonKey(name: 'invoiceWarn')
  final String? invoiceWarn;
  @JsonKey(name: 'invoiceWarnMsg')
  final String? invoiceWarnMsg;
  @JsonKey(name: 'saleWarn')
  final String? saleWarn;
  @JsonKey(name: 'saleWarnMsg')
  final String? saleWarnMsg;
  @JsonKey(name: 'purchaseWarn')
  final String? purchaseWarn;
  @JsonKey(name: 'purchaseWarnMsg')
  final String? purchaseWarnMsg;
  @JsonKey(name: 'calendarLastNotifAck')
  final DateTime? calendarLastNotifAck;
  @JsonKey(name: 'accountingObjectType')
  final int? accountingObjectType;
  @JsonKey(name: 'websiteId')
  final String? websiteId;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'fax')
  final String? fax;
  @JsonKey(name: 'isSynchronized')
  final int? isSynchronized;
  @JsonKey(name: 'keyword')
  final String? keyword;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @JsonKey(name: 'listResContact', defaultValue: <ResContact>[])
  final List<ResContact>? listResContact;
  @JsonKey(name: 'metadataContentObjs', defaultValue: <MetadataValue>[])
  final List<MetadataValue>? metadataContentObjs;
  @JsonKey(name: 'order')
  final int? order;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  static const fromJsonFactory = _$ResPartnerResquestModelFromJson;
  static const toJsonFactory = _$ResPartnerResquestModelToJson;
  Map<String, dynamic> toJson() => _$ResPartnerResquestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResPartnerResquestModel &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.companyId, companyId) ||
                const DeepCollectionEquality()
                    .equals(other.companyId, companyId)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.parentName, parentName) ||
                const DeepCollectionEquality()
                    .equals(other.parentName, parentName)) &&
            (identical(other.ref, ref) ||
                const DeepCollectionEquality().equals(other.ref, ref)) &&
            (identical(other.refName, refName) ||
                const DeepCollectionEquality()
                    .equals(other.refName, refName)) &&
            (identical(other.lang, lang) ||
                const DeepCollectionEquality().equals(other.lang, lang)) &&
            (identical(other.languageName, languageName) ||
                const DeepCollectionEquality()
                    .equals(other.languageName, languageName)) &&
            (identical(other.tz, tz) ||
                const DeepCollectionEquality().equals(other.tz, tz)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality()
                    .equals(other.website, website)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.creditLimit, creditLimit) ||
                const DeepCollectionEquality()
                    .equals(other.creditLimit, creditLimit)) &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.customer, customer) ||
                const DeepCollectionEquality()
                    .equals(other.customer, customer)) &&
            (identical(other.supplier, supplier) ||
                const DeepCollectionEquality()
                    .equals(other.supplier, supplier)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.function, function) ||
                const DeepCollectionEquality()
                    .equals(other.function, function)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.countryId, countryId) ||
                const DeepCollectionEquality()
                    .equals(other.countryId, countryId)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.countryName, countryName) || const DeepCollectionEquality().equals(other.countryName, countryName)) &&
            (identical(other.stateId, stateId) || const DeepCollectionEquality().equals(other.stateId, stateId)) &&
            (identical(other.province, province) || const DeepCollectionEquality().equals(other.province, province)) &&
            (identical(other.provinceName, provinceName) || const DeepCollectionEquality().equals(other.provinceName, provinceName)) &&
            (identical(other.district, district) || const DeepCollectionEquality().equals(other.district, district)) &&
            (identical(other.districtName, districtName) || const DeepCollectionEquality().equals(other.districtName, districtName)) &&
            (identical(other.ward, ward) || const DeepCollectionEquality().equals(other.ward, ward)) &&
            (identical(other.wardName, wardName) || const DeepCollectionEquality().equals(other.wardName, wardName)) &&
            (identical(other.street, street) || const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.isSmallStreet, isSmallStreet) || const DeepCollectionEquality().equals(other.isSmallStreet, isSmallStreet)) &&
            (identical(other.street2, street2) || const DeepCollectionEquality().equals(other.street2, street2)) &&
            (identical(other.zip, zip) || const DeepCollectionEquality().equals(other.zip, zip)) &&
            (identical(other.email, email) || const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.mobile, mobile) || const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.isCompany, isCompany) || const DeepCollectionEquality().equals(other.isCompany, isCompany)) &&
            (identical(other.industryId, industryId) || const DeepCollectionEquality().equals(other.industryId, industryId)) &&
            (identical(other.color, color) || const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.partnerShare, partnerShare) || const DeepCollectionEquality().equals(other.partnerShare, partnerShare)) &&
            (identical(other.commercialPartnerId, commercialPartnerId) || const DeepCollectionEquality().equals(other.commercialPartnerId, commercialPartnerId)) &&
            (identical(other.commercialCompanyName, commercialCompanyName) || const DeepCollectionEquality().equals(other.commercialCompanyName, commercialCompanyName)) &&
            (identical(other.companyName, companyName) || const DeepCollectionEquality().equals(other.companyName, companyName)) &&
            (identical(other.messageMainAttachmentId, messageMainAttachmentId) || const DeepCollectionEquality().equals(other.messageMainAttachmentId, messageMainAttachmentId)) &&
            (identical(other.messageMainAttachmentPath, messageMainAttachmentPath) || const DeepCollectionEquality().equals(other.messageMainAttachmentPath, messageMainAttachmentPath)) &&
            (identical(other.messageBounce, messageBounce) || const DeepCollectionEquality().equals(other.messageBounce, messageBounce)) &&
            (identical(other.signupToken, signupToken) || const DeepCollectionEquality().equals(other.signupToken, signupToken)) &&
            (identical(other.signupType, signupType) || const DeepCollectionEquality().equals(other.signupType, signupType)) &&
            (identical(other.signupExpiration, signupExpiration) || const DeepCollectionEquality().equals(other.signupExpiration, signupExpiration)) &&
            (identical(other.partnerGid, partnerGid) || const DeepCollectionEquality().equals(other.partnerGid, partnerGid)) &&
            (identical(other.additionalInfo, additionalInfo) || const DeepCollectionEquality().equals(other.additionalInfo, additionalInfo)) &&
            (identical(other.pickingWarn, pickingWarn) || const DeepCollectionEquality().equals(other.pickingWarn, pickingWarn)) &&
            (identical(other.pickingWarnMsg, pickingWarnMsg) || const DeepCollectionEquality().equals(other.pickingWarnMsg, pickingWarnMsg)) &&
            (identical(other.teamId, teamId) || const DeepCollectionEquality().equals(other.teamId, teamId)) &&
            (identical(other.debitLimit, debitLimit) || const DeepCollectionEquality().equals(other.debitLimit, debitLimit)) &&
            (identical(other.lastTimeEntriesChecked, lastTimeEntriesChecked) || const DeepCollectionEquality().equals(other.lastTimeEntriesChecked, lastTimeEntriesChecked)) &&
            (identical(other.invoiceWarn, invoiceWarn) || const DeepCollectionEquality().equals(other.invoiceWarn, invoiceWarn)) &&
            (identical(other.invoiceWarnMsg, invoiceWarnMsg) || const DeepCollectionEquality().equals(other.invoiceWarnMsg, invoiceWarnMsg)) &&
            (identical(other.saleWarn, saleWarn) || const DeepCollectionEquality().equals(other.saleWarn, saleWarn)) &&
            (identical(other.saleWarnMsg, saleWarnMsg) || const DeepCollectionEquality().equals(other.saleWarnMsg, saleWarnMsg)) &&
            (identical(other.purchaseWarn, purchaseWarn) || const DeepCollectionEquality().equals(other.purchaseWarn, purchaseWarn)) &&
            (identical(other.purchaseWarnMsg, purchaseWarnMsg) || const DeepCollectionEquality().equals(other.purchaseWarnMsg, purchaseWarnMsg)) &&
            (identical(other.calendarLastNotifAck, calendarLastNotifAck) || const DeepCollectionEquality().equals(other.calendarLastNotifAck, calendarLastNotifAck)) &&
            (identical(other.accountingObjectType, accountingObjectType) || const DeepCollectionEquality().equals(other.accountingObjectType, accountingObjectType)) &&
            (identical(other.websiteId, websiteId) || const DeepCollectionEquality().equals(other.websiteId, websiteId)) &&
            (identical(other.phoneNumber, phoneNumber) || const DeepCollectionEquality().equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.fax, fax) || const DeepCollectionEquality().equals(other.fax, fax)) &&
            (identical(other.isSynchronized, isSynchronized) || const DeepCollectionEquality().equals(other.isSynchronized, isSynchronized)) &&
            (identical(other.keyword, keyword) || const DeepCollectionEquality().equals(other.keyword, keyword)) &&
            (identical(other.imageUrl, imageUrl) || const DeepCollectionEquality().equals(other.imageUrl, imageUrl)) &&
            (identical(other.listResContact, listResContact) || const DeepCollectionEquality().equals(other.listResContact, listResContact)) &&
            (identical(other.metadataContentObjs, metadataContentObjs) || const DeepCollectionEquality().equals(other.metadataContentObjs, metadataContentObjs)) &&
            (identical(other.order, order) || const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.isActive, isActive) || const DeepCollectionEquality().equals(other.isActive, isActive)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(companyId) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(parentName) ^
      const DeepCollectionEquality().hash(ref) ^
      const DeepCollectionEquality().hash(refName) ^
      const DeepCollectionEquality().hash(lang) ^
      const DeepCollectionEquality().hash(languageName) ^
      const DeepCollectionEquality().hash(tz) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(website) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(creditLimit) ^
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(customer) ^
      const DeepCollectionEquality().hash(supplier) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(function) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(countryId) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(stateId) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(provinceName) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(districtName) ^
      const DeepCollectionEquality().hash(ward) ^
      const DeepCollectionEquality().hash(wardName) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(isSmallStreet) ^
      const DeepCollectionEquality().hash(street2) ^
      const DeepCollectionEquality().hash(zip) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(isCompany) ^
      const DeepCollectionEquality().hash(industryId) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(partnerShare) ^
      const DeepCollectionEquality().hash(commercialPartnerId) ^
      const DeepCollectionEquality().hash(commercialCompanyName) ^
      const DeepCollectionEquality().hash(companyName) ^
      const DeepCollectionEquality().hash(messageMainAttachmentId) ^
      const DeepCollectionEquality().hash(messageMainAttachmentPath) ^
      const DeepCollectionEquality().hash(messageBounce) ^
      const DeepCollectionEquality().hash(signupToken) ^
      const DeepCollectionEquality().hash(signupType) ^
      const DeepCollectionEquality().hash(signupExpiration) ^
      const DeepCollectionEquality().hash(partnerGid) ^
      const DeepCollectionEquality().hash(additionalInfo) ^
      const DeepCollectionEquality().hash(pickingWarn) ^
      const DeepCollectionEquality().hash(pickingWarnMsg) ^
      const DeepCollectionEquality().hash(teamId) ^
      const DeepCollectionEquality().hash(debitLimit) ^
      const DeepCollectionEquality().hash(lastTimeEntriesChecked) ^
      const DeepCollectionEquality().hash(invoiceWarn) ^
      const DeepCollectionEquality().hash(invoiceWarnMsg) ^
      const DeepCollectionEquality().hash(saleWarn) ^
      const DeepCollectionEquality().hash(saleWarnMsg) ^
      const DeepCollectionEquality().hash(purchaseWarn) ^
      const DeepCollectionEquality().hash(purchaseWarnMsg) ^
      const DeepCollectionEquality().hash(calendarLastNotifAck) ^
      const DeepCollectionEquality().hash(accountingObjectType) ^
      const DeepCollectionEquality().hash(websiteId) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(fax) ^
      const DeepCollectionEquality().hash(isSynchronized) ^
      const DeepCollectionEquality().hash(keyword) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(listResContact) ^
      const DeepCollectionEquality().hash(metadataContentObjs) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(isActive) ^
      runtimeType.hashCode;
}

extension $ResPartnerResquestModelExtension on ResPartnerResquestModel {
  ResPartnerResquestModel copyWith(
      {String? code,
      String? name,
      String? companyId,
      DateTime? date,
      String? displayName,
      String? title,
      String? parentId,
      String? parentName,
      String? ref,
      String? refName,
      String? lang,
      String? languageName,
      String? tz,
      String? userId,
      String? vat,
      String? website,
      String? comment,
      double? creditLimit,
      String? barcode,
      bool? active,
      bool? customer,
      bool? supplier,
      bool? employee,
      String? function,
      String? type,
      String? countryId,
      String? countryCode,
      String? countryName,
      String? stateId,
      String? province,
      String? provinceName,
      String? district,
      String? districtName,
      String? ward,
      String? wardName,
      String? street,
      bool? isSmallStreet,
      String? street2,
      String? zip,
      String? email,
      String? mobile,
      bool? isCompany,
      String? industryId,
      int? color,
      bool? partnerShare,
      String? commercialPartnerId,
      String? commercialCompanyName,
      String? companyName,
      String? messageMainAttachmentId,
      String? messageMainAttachmentPath,
      int? messageBounce,
      String? signupToken,
      String? signupType,
      DateTime? signupExpiration,
      String? partnerGid,
      String? additionalInfo,
      String? pickingWarn,
      String? pickingWarnMsg,
      String? teamId,
      double? debitLimit,
      DateTime? lastTimeEntriesChecked,
      String? invoiceWarn,
      String? invoiceWarnMsg,
      String? saleWarn,
      String? saleWarnMsg,
      String? purchaseWarn,
      String? purchaseWarnMsg,
      DateTime? calendarLastNotifAck,
      int? accountingObjectType,
      String? websiteId,
      String? phoneNumber,
      String? fax,
      int? isSynchronized,
      String? keyword,
      String? imageUrl,
      List<ResContact>? listResContact,
      List<MetadataValue>? metadataContentObjs,
      int? order,
      bool? isActive}) {
    return ResPartnerResquestModel(
        code: code ?? this.code,
        name: name ?? this.name,
        companyId: companyId ?? this.companyId,
        date: date ?? this.date,
        displayName: displayName ?? this.displayName,
        title: title ?? this.title,
        parentId: parentId ?? this.parentId,
        parentName: parentName ?? this.parentName,
        ref: ref ?? this.ref,
        refName: refName ?? this.refName,
        lang: lang ?? this.lang,
        languageName: languageName ?? this.languageName,
        tz: tz ?? this.tz,
        userId: userId ?? this.userId,
        vat: vat ?? this.vat,
        website: website ?? this.website,
        comment: comment ?? this.comment,
        creditLimit: creditLimit ?? this.creditLimit,
        barcode: barcode ?? this.barcode,
        active: active ?? this.active,
        customer: customer ?? this.customer,
        supplier: supplier ?? this.supplier,
        employee: employee ?? this.employee,
        function: function ?? this.function,
        type: type ?? this.type,
        countryId: countryId ?? this.countryId,
        countryCode: countryCode ?? this.countryCode,
        countryName: countryName ?? this.countryName,
        stateId: stateId ?? this.stateId,
        province: province ?? this.province,
        provinceName: provinceName ?? this.provinceName,
        district: district ?? this.district,
        districtName: districtName ?? this.districtName,
        ward: ward ?? this.ward,
        wardName: wardName ?? this.wardName,
        street: street ?? this.street,
        isSmallStreet: isSmallStreet ?? this.isSmallStreet,
        street2: street2 ?? this.street2,
        zip: zip ?? this.zip,
        email: email ?? this.email,
        mobile: mobile ?? this.mobile,
        isCompany: isCompany ?? this.isCompany,
        industryId: industryId ?? this.industryId,
        color: color ?? this.color,
        partnerShare: partnerShare ?? this.partnerShare,
        commercialPartnerId: commercialPartnerId ?? this.commercialPartnerId,
        commercialCompanyName:
            commercialCompanyName ?? this.commercialCompanyName,
        companyName: companyName ?? this.companyName,
        messageMainAttachmentId:
            messageMainAttachmentId ?? this.messageMainAttachmentId,
        messageMainAttachmentPath:
            messageMainAttachmentPath ?? this.messageMainAttachmentPath,
        messageBounce: messageBounce ?? this.messageBounce,
        signupToken: signupToken ?? this.signupToken,
        signupType: signupType ?? this.signupType,
        signupExpiration: signupExpiration ?? this.signupExpiration,
        partnerGid: partnerGid ?? this.partnerGid,
        additionalInfo: additionalInfo ?? this.additionalInfo,
        pickingWarn: pickingWarn ?? this.pickingWarn,
        pickingWarnMsg: pickingWarnMsg ?? this.pickingWarnMsg,
        teamId: teamId ?? this.teamId,
        debitLimit: debitLimit ?? this.debitLimit,
        lastTimeEntriesChecked:
            lastTimeEntriesChecked ?? this.lastTimeEntriesChecked,
        invoiceWarn: invoiceWarn ?? this.invoiceWarn,
        invoiceWarnMsg: invoiceWarnMsg ?? this.invoiceWarnMsg,
        saleWarn: saleWarn ?? this.saleWarn,
        saleWarnMsg: saleWarnMsg ?? this.saleWarnMsg,
        purchaseWarn: purchaseWarn ?? this.purchaseWarn,
        purchaseWarnMsg: purchaseWarnMsg ?? this.purchaseWarnMsg,
        calendarLastNotifAck: calendarLastNotifAck ?? this.calendarLastNotifAck,
        accountingObjectType: accountingObjectType ?? this.accountingObjectType,
        websiteId: websiteId ?? this.websiteId,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        fax: fax ?? this.fax,
        isSynchronized: isSynchronized ?? this.isSynchronized,
        keyword: keyword ?? this.keyword,
        imageUrl: imageUrl ?? this.imageUrl,
        listResContact: listResContact ?? this.listResContact,
        metadataContentObjs: metadataContentObjs ?? this.metadataContentObjs,
        order: order ?? this.order,
        isActive: isActive ?? this.isActive);
  }
}

@JsonSerializable(explicitToJson: true)
class ResPartnerViewModel {
  ResPartnerViewModel({
    this.createdByUserId,
    this.lastModifiedByUserId,
    this.lastModifiedOnDate,
    this.createdOnDate,
    this.applicationId,
    this.id,
    this.code,
    this.name,
    this.companyId,
    this.date,
    this.displayName,
    this.title,
    this.parentId,
    this.parentName,
    this.ref,
    this.refName,
    this.tz,
    this.lang,
    this.languageName,
    this.userId,
    this.vat,
    this.website,
    this.comment,
    this.creditLimit,
    this.barcode,
    this.active,
    this.customer,
    this.supplier,
    this.employee,
    this.function,
    this.type,
    this.email,
    this.mobile,
    this.isCompany,
    this.industryId,
    this.color,
    this.partnerShare,
    this.commercialPartnerId,
    this.commercialCompanyName,
    this.companyName,
    this.messageMainAttachmentId,
    this.messageMainAttachmentPath,
    this.messageBounce,
    this.signupToken,
    this.signupType,
    this.signupExpiration,
    this.partnerGid,
    this.additionalInfo,
    this.pickingWarn,
    this.pickingWarnMsg,
    this.teamId,
    this.debitLimit,
    this.lastTimeEntriesChecked,
    this.invoiceWarn,
    this.invoiceWarnMsg,
    this.saleWarn,
    this.saleWarnMsg,
    this.purchaseWarn,
    this.purchaseWarnMsg,
    this.calendarLastNotifAck,
    this.accountingObjectType,
    this.websiteId,
    this.phoneNumber,
    this.fax,
    this.isSynchronized,
    this.countryId,
    this.countryCode,
    this.countryName,
    this.stateId,
    this.province,
    this.provinceName,
    this.district,
    this.districtName,
    this.ward,
    this.wardName,
    this.street,
    this.street2,
    this.isSmallStreet,
    this.zip,
    this.imageUrl,
    this.geoLocation,
    this.geoLocationImage,
    this.checkinDate,
    this.checkInAddress,
    this.checkInStatus,
    this.checkInUserId,
    this.checkInUsername,
    this.confirmUserId,
    this.confirmUsername,
    this.keyword,
    this.cLeft,
    this.cRight,
    this.cLevel,
    this.metadataContentObjs,
    this.metaContentType,
    this.order,
  });

  factory ResPartnerViewModel.fromJson(Map<String, dynamic> json) =>
      _$ResPartnerViewModelFromJson(json);

  @JsonKey(name: 'createdByUserId')
  final String? createdByUserId;
  @JsonKey(name: 'lastModifiedByUserId')
  final String? lastModifiedByUserId;
  @JsonKey(name: 'lastModifiedOnDate')
  final DateTime? lastModifiedOnDate;
  @JsonKey(name: 'createdOnDate')
  final DateTime? createdOnDate;
  @JsonKey(name: 'applicationId')
  final String? applicationId;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'companyId')
  final String? companyId;
  @JsonKey(name: 'date')
  final DateTime? date;
  @JsonKey(name: 'displayName')
  final String? displayName;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'parentId')
  final String? parentId;
  @JsonKey(name: 'parentName')
  final String? parentName;
  @JsonKey(name: 'ref')
  final String? ref;
  @JsonKey(name: 'refName')
  final String? refName;
  @JsonKey(name: 'tz')
  final String? tz;
  @JsonKey(name: 'lang')
  final String? lang;
  @JsonKey(name: 'languageName')
  final String? languageName;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'vat')
  final String? vat;
  @JsonKey(name: 'website')
  final String? website;
  @JsonKey(name: 'comment')
  final String? comment;
  @JsonKey(name: 'creditLimit')
  final double? creditLimit;
  @JsonKey(name: 'barcode')
  final String? barcode;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'customer')
  final bool? customer;
  @JsonKey(name: 'supplier')
  final bool? supplier;
  @JsonKey(name: 'employee')
  final bool? employee;
  @JsonKey(name: 'function')
  final String? function;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'mobile')
  final String? mobile;
  @JsonKey(name: 'isCompany')
  final bool? isCompany;
  @JsonKey(name: 'industryId')
  final String? industryId;
  @JsonKey(name: 'color')
  final int? color;
  @JsonKey(name: 'partnerShare')
  final bool? partnerShare;
  @JsonKey(name: 'commercialPartnerId')
  final String? commercialPartnerId;
  @JsonKey(name: 'commercialCompanyName')
  final String? commercialCompanyName;
  @JsonKey(name: 'companyName')
  final String? companyName;
  @JsonKey(name: 'messageMainAttachmentId')
  final String? messageMainAttachmentId;
  @JsonKey(name: 'messageMainAttachmentPath')
  final String? messageMainAttachmentPath;
  @JsonKey(name: 'messageBounce')
  final int? messageBounce;
  @JsonKey(name: 'signupToken')
  final String? signupToken;
  @JsonKey(name: 'signupType')
  final String? signupType;
  @JsonKey(name: 'signupExpiration')
  final DateTime? signupExpiration;
  @JsonKey(name: 'partnerGid')
  final String? partnerGid;
  @JsonKey(name: 'additionalInfo')
  final String? additionalInfo;
  @JsonKey(name: 'pickingWarn')
  final String? pickingWarn;
  @JsonKey(name: 'pickingWarnMsg')
  final String? pickingWarnMsg;
  @JsonKey(name: 'teamId')
  final String? teamId;
  @JsonKey(name: 'debitLimit')
  final double? debitLimit;
  @JsonKey(name: 'lastTimeEntriesChecked')
  final DateTime? lastTimeEntriesChecked;
  @JsonKey(name: 'invoiceWarn')
  final String? invoiceWarn;
  @JsonKey(name: 'invoiceWarnMsg')
  final String? invoiceWarnMsg;
  @JsonKey(name: 'saleWarn')
  final String? saleWarn;
  @JsonKey(name: 'saleWarnMsg')
  final String? saleWarnMsg;
  @JsonKey(name: 'purchaseWarn')
  final String? purchaseWarn;
  @JsonKey(name: 'purchaseWarnMsg')
  final String? purchaseWarnMsg;
  @JsonKey(name: 'calendarLastNotifAck')
  final DateTime? calendarLastNotifAck;
  @JsonKey(name: 'accountingObjectType')
  final int? accountingObjectType;
  @JsonKey(name: 'websiteId')
  final String? websiteId;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'fax')
  final String? fax;
  @JsonKey(name: 'isSynchronized')
  final int? isSynchronized;
  @JsonKey(name: 'countryId')
  final String? countryId;
  @JsonKey(name: 'countryCode')
  final String? countryCode;
  @JsonKey(name: 'countryName')
  final String? countryName;
  @JsonKey(name: 'stateId')
  final String? stateId;
  @JsonKey(name: 'province')
  final String? province;
  @JsonKey(name: 'provinceName')
  final String? provinceName;
  @JsonKey(name: 'district')
  final String? district;
  @JsonKey(name: 'districtName')
  final String? districtName;
  @JsonKey(name: 'ward')
  final String? ward;
  @JsonKey(name: 'wardName')
  final String? wardName;
  @JsonKey(name: 'street')
  final String? street;
  @JsonKey(name: 'street2')
  final String? street2;
  @JsonKey(name: 'isSmallStreet')
  final bool? isSmallStreet;
  @JsonKey(name: 'zip')
  final String? zip;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @JsonKey(name: 'geoLocation')
  final String? geoLocation;
  @JsonKey(name: 'geoLocationImage')
  final String? geoLocationImage;
  @JsonKey(name: 'checkinDate')
  final DateTime? checkinDate;
  @JsonKey(name: 'checkInAddress')
  final String? checkInAddress;
  @JsonKey(name: 'checkInStatus')
  final int? checkInStatus;
  @JsonKey(name: 'checkInUserId')
  final String? checkInUserId;
  @JsonKey(name: 'checkInUsername')
  final String? checkInUsername;
  @JsonKey(name: 'confirmUserId')
  final String? confirmUserId;
  @JsonKey(name: 'confirmUsername')
  final String? confirmUsername;
  @JsonKey(name: 'keyword')
  final String? keyword;
  @JsonKey(name: 'c_left')
  final int? cLeft;
  @JsonKey(name: 'c_right')
  final int? cRight;
  @JsonKey(name: 'c_level')
  final int? cLevel;
  @JsonKey(name: 'metadataContentObjs', defaultValue: <MetadataValue>[])
  final List<MetadataValue>? metadataContentObjs;
  @JsonKey(name: 'metaContentType')
  final String? metaContentType;
  @JsonKey(name: 'order')
  final int? order;
  static const fromJsonFactory = _$ResPartnerViewModelFromJson;
  static const toJsonFactory = _$ResPartnerViewModelToJson;
  Map<String, dynamic> toJson() => _$ResPartnerViewModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResPartnerViewModel &&
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
            (identical(other.companyId, companyId) ||
                const DeepCollectionEquality()
                    .equals(other.companyId, companyId)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.parentName, parentName) ||
                const DeepCollectionEquality()
                    .equals(other.parentName, parentName)) &&
            (identical(other.ref, ref) ||
                const DeepCollectionEquality().equals(other.ref, ref)) &&
            (identical(other.refName, refName) ||
                const DeepCollectionEquality()
                    .equals(other.refName, refName)) &&
            (identical(other.tz, tz) ||
                const DeepCollectionEquality().equals(other.tz, tz)) &&
            (identical(other.lang, lang) ||
                const DeepCollectionEquality().equals(other.lang, lang)) &&
            (identical(other.languageName, languageName) ||
                const DeepCollectionEquality()
                    .equals(other.languageName, languageName)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality()
                    .equals(other.website, website)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.creditLimit, creditLimit) ||
                const DeepCollectionEquality()
                    .equals(other.creditLimit, creditLimit)) &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.customer, customer) ||
                const DeepCollectionEquality()
                    .equals(other.customer, customer)) &&
            (identical(other.supplier, supplier) || const DeepCollectionEquality().equals(other.supplier, supplier)) &&
            (identical(other.employee, employee) || const DeepCollectionEquality().equals(other.employee, employee)) &&
            (identical(other.function, function) || const DeepCollectionEquality().equals(other.function, function)) &&
            (identical(other.type, type) || const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.email, email) || const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.mobile, mobile) || const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.isCompany, isCompany) || const DeepCollectionEquality().equals(other.isCompany, isCompany)) &&
            (identical(other.industryId, industryId) || const DeepCollectionEquality().equals(other.industryId, industryId)) &&
            (identical(other.color, color) || const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.partnerShare, partnerShare) || const DeepCollectionEquality().equals(other.partnerShare, partnerShare)) &&
            (identical(other.commercialPartnerId, commercialPartnerId) || const DeepCollectionEquality().equals(other.commercialPartnerId, commercialPartnerId)) &&
            (identical(other.commercialCompanyName, commercialCompanyName) || const DeepCollectionEquality().equals(other.commercialCompanyName, commercialCompanyName)) &&
            (identical(other.companyName, companyName) || const DeepCollectionEquality().equals(other.companyName, companyName)) &&
            (identical(other.messageMainAttachmentId, messageMainAttachmentId) || const DeepCollectionEquality().equals(other.messageMainAttachmentId, messageMainAttachmentId)) &&
            (identical(other.messageMainAttachmentPath, messageMainAttachmentPath) || const DeepCollectionEquality().equals(other.messageMainAttachmentPath, messageMainAttachmentPath)) &&
            (identical(other.messageBounce, messageBounce) || const DeepCollectionEquality().equals(other.messageBounce, messageBounce)) &&
            (identical(other.signupToken, signupToken) || const DeepCollectionEquality().equals(other.signupToken, signupToken)) &&
            (identical(other.signupType, signupType) || const DeepCollectionEquality().equals(other.signupType, signupType)) &&
            (identical(other.signupExpiration, signupExpiration) || const DeepCollectionEquality().equals(other.signupExpiration, signupExpiration)) &&
            (identical(other.partnerGid, partnerGid) || const DeepCollectionEquality().equals(other.partnerGid, partnerGid)) &&
            (identical(other.additionalInfo, additionalInfo) || const DeepCollectionEquality().equals(other.additionalInfo, additionalInfo)) &&
            (identical(other.pickingWarn, pickingWarn) || const DeepCollectionEquality().equals(other.pickingWarn, pickingWarn)) &&
            (identical(other.pickingWarnMsg, pickingWarnMsg) || const DeepCollectionEquality().equals(other.pickingWarnMsg, pickingWarnMsg)) &&
            (identical(other.teamId, teamId) || const DeepCollectionEquality().equals(other.teamId, teamId)) &&
            (identical(other.debitLimit, debitLimit) || const DeepCollectionEquality().equals(other.debitLimit, debitLimit)) &&
            (identical(other.lastTimeEntriesChecked, lastTimeEntriesChecked) || const DeepCollectionEquality().equals(other.lastTimeEntriesChecked, lastTimeEntriesChecked)) &&
            (identical(other.invoiceWarn, invoiceWarn) || const DeepCollectionEquality().equals(other.invoiceWarn, invoiceWarn)) &&
            (identical(other.invoiceWarnMsg, invoiceWarnMsg) || const DeepCollectionEquality().equals(other.invoiceWarnMsg, invoiceWarnMsg)) &&
            (identical(other.saleWarn, saleWarn) || const DeepCollectionEquality().equals(other.saleWarn, saleWarn)) &&
            (identical(other.saleWarnMsg, saleWarnMsg) || const DeepCollectionEquality().equals(other.saleWarnMsg, saleWarnMsg)) &&
            (identical(other.purchaseWarn, purchaseWarn) || const DeepCollectionEquality().equals(other.purchaseWarn, purchaseWarn)) &&
            (identical(other.purchaseWarnMsg, purchaseWarnMsg) || const DeepCollectionEquality().equals(other.purchaseWarnMsg, purchaseWarnMsg)) &&
            (identical(other.calendarLastNotifAck, calendarLastNotifAck) || const DeepCollectionEquality().equals(other.calendarLastNotifAck, calendarLastNotifAck)) &&
            (identical(other.accountingObjectType, accountingObjectType) || const DeepCollectionEquality().equals(other.accountingObjectType, accountingObjectType)) &&
            (identical(other.websiteId, websiteId) || const DeepCollectionEquality().equals(other.websiteId, websiteId)) &&
            (identical(other.phoneNumber, phoneNumber) || const DeepCollectionEquality().equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.fax, fax) || const DeepCollectionEquality().equals(other.fax, fax)) &&
            (identical(other.isSynchronized, isSynchronized) || const DeepCollectionEquality().equals(other.isSynchronized, isSynchronized)) &&
            (identical(other.countryId, countryId) || const DeepCollectionEquality().equals(other.countryId, countryId)) &&
            (identical(other.countryCode, countryCode) || const DeepCollectionEquality().equals(other.countryCode, countryCode)) &&
            (identical(other.countryName, countryName) || const DeepCollectionEquality().equals(other.countryName, countryName)) &&
            (identical(other.stateId, stateId) || const DeepCollectionEquality().equals(other.stateId, stateId)) &&
            (identical(other.province, province) || const DeepCollectionEquality().equals(other.province, province)) &&
            (identical(other.provinceName, provinceName) || const DeepCollectionEquality().equals(other.provinceName, provinceName)) &&
            (identical(other.district, district) || const DeepCollectionEquality().equals(other.district, district)) &&
            (identical(other.districtName, districtName) || const DeepCollectionEquality().equals(other.districtName, districtName)) &&
            (identical(other.ward, ward) || const DeepCollectionEquality().equals(other.ward, ward)) &&
            (identical(other.wardName, wardName) || const DeepCollectionEquality().equals(other.wardName, wardName)) &&
            (identical(other.street, street) || const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.street2, street2) || const DeepCollectionEquality().equals(other.street2, street2)) &&
            (identical(other.isSmallStreet, isSmallStreet) || const DeepCollectionEquality().equals(other.isSmallStreet, isSmallStreet)) &&
            (identical(other.zip, zip) || const DeepCollectionEquality().equals(other.zip, zip)) &&
            (identical(other.imageUrl, imageUrl) || const DeepCollectionEquality().equals(other.imageUrl, imageUrl)) &&
            (identical(other.geoLocation, geoLocation) || const DeepCollectionEquality().equals(other.geoLocation, geoLocation)) &&
            (identical(other.geoLocationImage, geoLocationImage) || const DeepCollectionEquality().equals(other.geoLocationImage, geoLocationImage)) &&
            (identical(other.checkinDate, checkinDate) || const DeepCollectionEquality().equals(other.checkinDate, checkinDate)) &&
            (identical(other.checkInAddress, checkInAddress) || const DeepCollectionEquality().equals(other.checkInAddress, checkInAddress)) &&
            (identical(other.checkInStatus, checkInStatus) || const DeepCollectionEquality().equals(other.checkInStatus, checkInStatus)) &&
            (identical(other.checkInUserId, checkInUserId) || const DeepCollectionEquality().equals(other.checkInUserId, checkInUserId)) &&
            (identical(other.checkInUsername, checkInUsername) || const DeepCollectionEquality().equals(other.checkInUsername, checkInUsername)) &&
            (identical(other.confirmUserId, confirmUserId) || const DeepCollectionEquality().equals(other.confirmUserId, confirmUserId)) &&
            (identical(other.confirmUsername, confirmUsername) || const DeepCollectionEquality().equals(other.confirmUsername, confirmUsername)) &&
            (identical(other.keyword, keyword) || const DeepCollectionEquality().equals(other.keyword, keyword)) &&
            (identical(other.cLeft, cLeft) || const DeepCollectionEquality().equals(other.cLeft, cLeft)) &&
            (identical(other.cRight, cRight) || const DeepCollectionEquality().equals(other.cRight, cRight)) &&
            (identical(other.cLevel, cLevel) || const DeepCollectionEquality().equals(other.cLevel, cLevel)) &&
            (identical(other.metadataContentObjs, metadataContentObjs) || const DeepCollectionEquality().equals(other.metadataContentObjs, metadataContentObjs)) &&
            (identical(other.metaContentType, metaContentType) || const DeepCollectionEquality().equals(other.metaContentType, metaContentType)) &&
            (identical(other.order, order) || const DeepCollectionEquality().equals(other.order, order)));
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
      const DeepCollectionEquality().hash(companyId) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(parentName) ^
      const DeepCollectionEquality().hash(ref) ^
      const DeepCollectionEquality().hash(refName) ^
      const DeepCollectionEquality().hash(tz) ^
      const DeepCollectionEquality().hash(lang) ^
      const DeepCollectionEquality().hash(languageName) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(website) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(creditLimit) ^
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(customer) ^
      const DeepCollectionEquality().hash(supplier) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(function) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(isCompany) ^
      const DeepCollectionEquality().hash(industryId) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(partnerShare) ^
      const DeepCollectionEquality().hash(commercialPartnerId) ^
      const DeepCollectionEquality().hash(commercialCompanyName) ^
      const DeepCollectionEquality().hash(companyName) ^
      const DeepCollectionEquality().hash(messageMainAttachmentId) ^
      const DeepCollectionEquality().hash(messageMainAttachmentPath) ^
      const DeepCollectionEquality().hash(messageBounce) ^
      const DeepCollectionEquality().hash(signupToken) ^
      const DeepCollectionEquality().hash(signupType) ^
      const DeepCollectionEquality().hash(signupExpiration) ^
      const DeepCollectionEquality().hash(partnerGid) ^
      const DeepCollectionEquality().hash(additionalInfo) ^
      const DeepCollectionEquality().hash(pickingWarn) ^
      const DeepCollectionEquality().hash(pickingWarnMsg) ^
      const DeepCollectionEquality().hash(teamId) ^
      const DeepCollectionEquality().hash(debitLimit) ^
      const DeepCollectionEquality().hash(lastTimeEntriesChecked) ^
      const DeepCollectionEquality().hash(invoiceWarn) ^
      const DeepCollectionEquality().hash(invoiceWarnMsg) ^
      const DeepCollectionEquality().hash(saleWarn) ^
      const DeepCollectionEquality().hash(saleWarnMsg) ^
      const DeepCollectionEquality().hash(purchaseWarn) ^
      const DeepCollectionEquality().hash(purchaseWarnMsg) ^
      const DeepCollectionEquality().hash(calendarLastNotifAck) ^
      const DeepCollectionEquality().hash(accountingObjectType) ^
      const DeepCollectionEquality().hash(websiteId) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(fax) ^
      const DeepCollectionEquality().hash(isSynchronized) ^
      const DeepCollectionEquality().hash(countryId) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(stateId) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(provinceName) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(districtName) ^
      const DeepCollectionEquality().hash(ward) ^
      const DeepCollectionEquality().hash(wardName) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(street2) ^
      const DeepCollectionEquality().hash(isSmallStreet) ^
      const DeepCollectionEquality().hash(zip) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(geoLocation) ^
      const DeepCollectionEquality().hash(geoLocationImage) ^
      const DeepCollectionEquality().hash(checkinDate) ^
      const DeepCollectionEquality().hash(checkInAddress) ^
      const DeepCollectionEquality().hash(checkInStatus) ^
      const DeepCollectionEquality().hash(checkInUserId) ^
      const DeepCollectionEquality().hash(checkInUsername) ^
      const DeepCollectionEquality().hash(confirmUserId) ^
      const DeepCollectionEquality().hash(confirmUsername) ^
      const DeepCollectionEquality().hash(keyword) ^
      const DeepCollectionEquality().hash(cLeft) ^
      const DeepCollectionEquality().hash(cRight) ^
      const DeepCollectionEquality().hash(cLevel) ^
      const DeepCollectionEquality().hash(metadataContentObjs) ^
      const DeepCollectionEquality().hash(metaContentType) ^
      const DeepCollectionEquality().hash(order) ^
      runtimeType.hashCode;
}

extension $ResPartnerViewModelExtension on ResPartnerViewModel {
  ResPartnerViewModel copyWith(
      {String? createdByUserId,
      String? lastModifiedByUserId,
      DateTime? lastModifiedOnDate,
      DateTime? createdOnDate,
      String? applicationId,
      String? id,
      String? code,
      String? name,
      String? companyId,
      DateTime? date,
      String? displayName,
      String? title,
      String? parentId,
      String? parentName,
      String? ref,
      String? refName,
      String? tz,
      String? lang,
      String? languageName,
      String? userId,
      String? vat,
      String? website,
      String? comment,
      double? creditLimit,
      String? barcode,
      bool? active,
      bool? customer,
      bool? supplier,
      bool? employee,
      String? function,
      String? type,
      String? email,
      String? mobile,
      bool? isCompany,
      String? industryId,
      int? color,
      bool? partnerShare,
      String? commercialPartnerId,
      String? commercialCompanyName,
      String? companyName,
      String? messageMainAttachmentId,
      String? messageMainAttachmentPath,
      int? messageBounce,
      String? signupToken,
      String? signupType,
      DateTime? signupExpiration,
      String? partnerGid,
      String? additionalInfo,
      String? pickingWarn,
      String? pickingWarnMsg,
      String? teamId,
      double? debitLimit,
      DateTime? lastTimeEntriesChecked,
      String? invoiceWarn,
      String? invoiceWarnMsg,
      String? saleWarn,
      String? saleWarnMsg,
      String? purchaseWarn,
      String? purchaseWarnMsg,
      DateTime? calendarLastNotifAck,
      int? accountingObjectType,
      String? websiteId,
      String? phoneNumber,
      String? fax,
      int? isSynchronized,
      String? countryId,
      String? countryCode,
      String? countryName,
      String? stateId,
      String? province,
      String? provinceName,
      String? district,
      String? districtName,
      String? ward,
      String? wardName,
      String? street,
      String? street2,
      bool? isSmallStreet,
      String? zip,
      String? imageUrl,
      String? geoLocation,
      String? geoLocationImage,
      DateTime? checkinDate,
      String? checkInAddress,
      int? checkInStatus,
      String? checkInUserId,
      String? checkInUsername,
      String? confirmUserId,
      String? confirmUsername,
      String? keyword,
      int? cLeft,
      int? cRight,
      int? cLevel,
      List<MetadataValue>? metadataContentObjs,
      String? metaContentType,
      int? order}) {
    return ResPartnerViewModel(
        createdByUserId: createdByUserId ?? this.createdByUserId,
        lastModifiedByUserId: lastModifiedByUserId ?? this.lastModifiedByUserId,
        lastModifiedOnDate: lastModifiedOnDate ?? this.lastModifiedOnDate,
        createdOnDate: createdOnDate ?? this.createdOnDate,
        applicationId: applicationId ?? this.applicationId,
        id: id ?? this.id,
        code: code ?? this.code,
        name: name ?? this.name,
        companyId: companyId ?? this.companyId,
        date: date ?? this.date,
        displayName: displayName ?? this.displayName,
        title: title ?? this.title,
        parentId: parentId ?? this.parentId,
        parentName: parentName ?? this.parentName,
        ref: ref ?? this.ref,
        refName: refName ?? this.refName,
        tz: tz ?? this.tz,
        lang: lang ?? this.lang,
        languageName: languageName ?? this.languageName,
        userId: userId ?? this.userId,
        vat: vat ?? this.vat,
        website: website ?? this.website,
        comment: comment ?? this.comment,
        creditLimit: creditLimit ?? this.creditLimit,
        barcode: barcode ?? this.barcode,
        active: active ?? this.active,
        customer: customer ?? this.customer,
        supplier: supplier ?? this.supplier,
        employee: employee ?? this.employee,
        function: function ?? this.function,
        type: type ?? this.type,
        email: email ?? this.email,
        mobile: mobile ?? this.mobile,
        isCompany: isCompany ?? this.isCompany,
        industryId: industryId ?? this.industryId,
        color: color ?? this.color,
        partnerShare: partnerShare ?? this.partnerShare,
        commercialPartnerId: commercialPartnerId ?? this.commercialPartnerId,
        commercialCompanyName:
            commercialCompanyName ?? this.commercialCompanyName,
        companyName: companyName ?? this.companyName,
        messageMainAttachmentId:
            messageMainAttachmentId ?? this.messageMainAttachmentId,
        messageMainAttachmentPath:
            messageMainAttachmentPath ?? this.messageMainAttachmentPath,
        messageBounce: messageBounce ?? this.messageBounce,
        signupToken: signupToken ?? this.signupToken,
        signupType: signupType ?? this.signupType,
        signupExpiration: signupExpiration ?? this.signupExpiration,
        partnerGid: partnerGid ?? this.partnerGid,
        additionalInfo: additionalInfo ?? this.additionalInfo,
        pickingWarn: pickingWarn ?? this.pickingWarn,
        pickingWarnMsg: pickingWarnMsg ?? this.pickingWarnMsg,
        teamId: teamId ?? this.teamId,
        debitLimit: debitLimit ?? this.debitLimit,
        lastTimeEntriesChecked:
            lastTimeEntriesChecked ?? this.lastTimeEntriesChecked,
        invoiceWarn: invoiceWarn ?? this.invoiceWarn,
        invoiceWarnMsg: invoiceWarnMsg ?? this.invoiceWarnMsg,
        saleWarn: saleWarn ?? this.saleWarn,
        saleWarnMsg: saleWarnMsg ?? this.saleWarnMsg,
        purchaseWarn: purchaseWarn ?? this.purchaseWarn,
        purchaseWarnMsg: purchaseWarnMsg ?? this.purchaseWarnMsg,
        calendarLastNotifAck: calendarLastNotifAck ?? this.calendarLastNotifAck,
        accountingObjectType: accountingObjectType ?? this.accountingObjectType,
        websiteId: websiteId ?? this.websiteId,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        fax: fax ?? this.fax,
        isSynchronized: isSynchronized ?? this.isSynchronized,
        countryId: countryId ?? this.countryId,
        countryCode: countryCode ?? this.countryCode,
        countryName: countryName ?? this.countryName,
        stateId: stateId ?? this.stateId,
        province: province ?? this.province,
        provinceName: provinceName ?? this.provinceName,
        district: district ?? this.district,
        districtName: districtName ?? this.districtName,
        ward: ward ?? this.ward,
        wardName: wardName ?? this.wardName,
        street: street ?? this.street,
        street2: street2 ?? this.street2,
        isSmallStreet: isSmallStreet ?? this.isSmallStreet,
        zip: zip ?? this.zip,
        imageUrl: imageUrl ?? this.imageUrl,
        geoLocation: geoLocation ?? this.geoLocation,
        geoLocationImage: geoLocationImage ?? this.geoLocationImage,
        checkinDate: checkinDate ?? this.checkinDate,
        checkInAddress: checkInAddress ?? this.checkInAddress,
        checkInStatus: checkInStatus ?? this.checkInStatus,
        checkInUserId: checkInUserId ?? this.checkInUserId,
        checkInUsername: checkInUsername ?? this.checkInUsername,
        confirmUserId: confirmUserId ?? this.confirmUserId,
        confirmUsername: confirmUsername ?? this.confirmUsername,
        keyword: keyword ?? this.keyword,
        cLeft: cLeft ?? this.cLeft,
        cRight: cRight ?? this.cRight,
        cLevel: cLevel ?? this.cLevel,
        metadataContentObjs: metadataContentObjs ?? this.metadataContentObjs,
        metaContentType: metaContentType ?? this.metaContentType,
        order: order ?? this.order);
  }
}

@JsonSerializable(explicitToJson: true)
class ResPartnerViewModelPagination {
  ResPartnerViewModelPagination({
    this.currentPage,
    this.totalPages,
    this.pageSize,
    this.numberOfRecords,
    this.totalRecords,
    this.content,
  });

  factory ResPartnerViewModelPagination.fromJson(Map<String, dynamic> json) =>
      _$ResPartnerViewModelPaginationFromJson(json);

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
  @JsonKey(name: 'content', defaultValue: <ResPartnerViewModel>[])
  final List<ResPartnerViewModel>? content;
  static const fromJsonFactory = _$ResPartnerViewModelPaginationFromJson;
  static const toJsonFactory = _$ResPartnerViewModelPaginationToJson;
  Map<String, dynamic> toJson() => _$ResPartnerViewModelPaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResPartnerViewModelPagination &&
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

extension $ResPartnerViewModelPaginationExtension
    on ResPartnerViewModelPagination {
  ResPartnerViewModelPagination copyWith(
      {int? currentPage,
      int? totalPages,
      int? pageSize,
      int? numberOfRecords,
      int? totalRecords,
      List<ResPartnerViewModel>? content}) {
    return ResPartnerViewModelPagination(
        currentPage: currentPage ?? this.currentPage,
        totalPages: totalPages ?? this.totalPages,
        pageSize: pageSize ?? this.pageSize,
        numberOfRecords: numberOfRecords ?? this.numberOfRecords,
        totalRecords: totalRecords ?? this.totalRecords,
        content: content ?? this.content);
  }
}

@JsonSerializable(explicitToJson: true)
class ResPartnerViewModelResponsePagination {
  ResPartnerViewModelResponsePagination({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory ResPartnerViewModelResponsePagination.fromJson(
          Map<String, dynamic> json) =>
      _$ResPartnerViewModelResponsePaginationFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final ResPartnerViewModelPagination? data;
  static const fromJsonFactory =
      _$ResPartnerViewModelResponsePaginationFromJson;
  static const toJsonFactory = _$ResPartnerViewModelResponsePaginationToJson;
  Map<String, dynamic> toJson() =>
      _$ResPartnerViewModelResponsePaginationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResPartnerViewModelResponsePagination &&
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

extension $ResPartnerViewModelResponsePaginationExtension
    on ResPartnerViewModelResponsePagination {
  ResPartnerViewModelResponsePagination copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      ResPartnerViewModelPagination? data}) {
    return ResPartnerViewModelResponsePagination(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
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

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
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

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
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

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data', defaultValue: <ResponseDeleteModel>[])
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
class Website {
  Website({
    this.type,
    this.url,
  });

  factory Website.fromJson(Map<String, dynamic> json) =>
      _$WebsiteFromJson(json);

  @JsonKey(name: 'type', defaultValue: <String>[])
  final List<String>? type;
  @JsonKey(name: 'url')
  final String? url;
  static const fromJsonFactory = _$WebsiteFromJson;
  static const toJsonFactory = _$WebsiteToJson;
  Map<String, dynamic> toJson() => _$WebsiteToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Website &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $WebsiteExtension on Website {
  Website copyWith({List<String>? type, String? url}) {
    return Website(type: type ?? this.type, url: url ?? this.url);
  }
}

int? accessTypeToJson(enums.AccessType? accessType) {
  return enums.$AccessTypeMap[accessType];
}

enums.AccessType accessTypeFromJson(
  Object? accessType, [
  enums.AccessType? defaultValue,
]) {
  if (accessType is int) {
    return enums.$AccessTypeMap.entries
        .firstWhere((element) => element.value == accessType,
            orElse: () =>
                const MapEntry(enums.AccessType.swaggerGeneratedUnknown, 0))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$AccessTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.AccessType.swaggerGeneratedUnknown;
}

List<int> accessTypeListToJson(List<enums.AccessType>? accessType) {
  if (accessType == null) {
    return [];
  }

  return accessType.map((e) => enums.$AccessTypeMap[e]!).toList();
}

List<enums.AccessType> accessTypeListFromJson(
  List? accessType, [
  List<enums.AccessType>? defaultValue,
]) {
  if (accessType == null) {
    return defaultValue ?? [];
  }

  return accessType.map((e) => accessTypeFromJson(e.toString())).toList();
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

int? objectTypeToJson(enums.ObjectType? objectType) {
  return enums.$ObjectTypeMap[objectType];
}

enums.ObjectType objectTypeFromJson(
  Object? objectType, [
  enums.ObjectType? defaultValue,
]) {
  if (objectType is int) {
    return enums.$ObjectTypeMap.entries
        .firstWhere((element) => element.value == objectType,
            orElse: () =>
                const MapEntry(enums.ObjectType.swaggerGeneratedUnknown, 0))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$ObjectTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.ObjectType.swaggerGeneratedUnknown;
}

List<int> objectTypeListToJson(List<enums.ObjectType>? objectType) {
  if (objectType == null) {
    return [];
  }

  return objectType.map((e) => enums.$ObjectTypeMap[e]!).toList();
}

List<enums.ObjectType> objectTypeListFromJson(
  List? objectType, [
  List<enums.ObjectType>? defaultValue,
]) {
  if (objectType == null) {
    return defaultValue ?? [];
  }

  return objectType.map((e) => objectTypeFromJson(e.toString())).toList();
}

int? statusEnumsToJson(enums.StatusEnums? statusEnums) {
  return enums.$StatusEnumsMap[statusEnums];
}

enums.StatusEnums statusEnumsFromJson(
  Object? statusEnums, [
  enums.StatusEnums? defaultValue,
]) {
  if (statusEnums is int) {
    return enums.$StatusEnumsMap.entries
        .firstWhere((element) => element.value == statusEnums,
            orElse: () =>
                const MapEntry(enums.StatusEnums.swaggerGeneratedUnknown, 0))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$StatusEnumsMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.StatusEnums.swaggerGeneratedUnknown;
}

List<int> statusEnumsListToJson(List<enums.StatusEnums>? statusEnums) {
  if (statusEnums == null) {
    return [];
  }

  return statusEnums.map((e) => enums.$StatusEnumsMap[e]!).toList();
}

List<enums.StatusEnums> statusEnumsListFromJson(
  List? statusEnums, [
  List<enums.StatusEnums>? defaultValue,
]) {
  if (statusEnums == null) {
    return defaultValue ?? [];
  }

  return statusEnums.map((e) => statusEnumsFromJson(e.toString())).toList();
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
