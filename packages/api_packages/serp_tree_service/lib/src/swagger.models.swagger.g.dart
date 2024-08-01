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

Map<String, dynamic> _$ACLItemToJson(ACLItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectCode', instance.objectCode);
  writeNotNull('objectName', instance.objectName);
  writeNotNull('objectType', objectTypeToJson(instance.objectType));
  writeNotNull('accessType', accessTypeToJson(instance.accessType));
  return val;
}

ACLObject _$ACLObjectFromJson(Map<String, dynamic> json) => ACLObject(
      objectId: json['objectId'] as String?,
      aclItems: (json['aclItems'] as List<dynamic>?)
              ?.map((e) => ACLItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ACLObjectToJson(ACLObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('objectId', instance.objectId);
  writeNotNull('aclItems', instance.aclItems?.map((e) => e.toJson()).toList());
  return val;
}

ACLObjectResponseList _$ACLObjectResponseListFromJson(
        Map<String, dynamic> json) =>
    ACLObjectResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ACLObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ACLObjectResponseListToJson(
    ACLObjectResponseList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

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

Map<String, dynamic> _$AddressToJson(Address instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('countryCode', instance.countryCode);
  writeNotNull('countryName', instance.countryName);
  writeNotNull('province', instance.province);
  writeNotNull('provinceName', instance.provinceName);
  writeNotNull('district', instance.district);
  writeNotNull('districtName', instance.districtName);
  writeNotNull('ward', instance.ward);
  writeNotNull('wardName', instance.wardName);
  writeNotNull('street', instance.street);
  writeNotNull('street2', instance.street2);
  writeNotNull('zip', instance.zip);
  return val;
}

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

Map<String, dynamic> _$BaseCategoryToJson(BaseCategory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('id', instance.id);
  writeNotNull('parentId', instance.parentId);
  writeNotNull('parentPath', instance.parentPath);
  val['name'] = instance.name;
  val['displayName'] = instance.displayName;
  val['type'] = instance.type;
  val['alias'] = instance.alias;
  writeNotNull('detail', instance.detail);
  writeNotNull('description', instance.description);
  writeNotNull('order', instance.order);
  writeNotNull('statusObj', statusEnumsToJson(instance.statusObj));
  writeNotNull('status', instance.status);
  writeNotNull('isDeleted', instance.isDeleted);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('c_left', instance.cLeft);
  writeNotNull('c_right', instance.cRight);
  writeNotNull('c_level', instance.cLevel);
  writeNotNull('aclObject', instance.aclObject?.toJson());
  writeNotNull('acl', instance.acl);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull('labelsJson', instance.labelsJson);
  writeNotNull('isActive', instance.isActive);
  return val;
}

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
    BaseCategoryPagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('numberOfRecords', instance.numberOfRecords);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('content', instance.content?.map((e) => e.toJson()).toList());
  return val;
}

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
    BaseCategoryResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

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
    BaseCategoryResponsePagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

BaseCategoryViewModel _$BaseCategoryViewModelFromJson(
        Map<String, dynamic> json) =>
    BaseCategoryViewModel(
      categoryId: json['categoryId'] as String?,
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
    BaseCategoryViewModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('categoryId', instance.categoryId);
  writeNotNull('parentId', instance.parentId);
  writeNotNull('parentPath', instance.parentPath);
  val['name'] = instance.name;
  writeNotNull('displayName', instance.displayName);
  val['type'] = instance.type;
  val['alias'] = instance.alias;
  writeNotNull('detail', instance.detail);
  writeNotNull('description', instance.description);
  writeNotNull('order', instance.order);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('status', instance.status);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('parent', instance.parent?.toJson());
  writeNotNull('children', instance.children?.map((e) => e.toJson()).toList());
  return val;
}

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
    BaseCategoryViewModelPagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('numberOfRecords', instance.numberOfRecords);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('content', instance.content?.map((e) => e.toJson()).toList());
  return val;
}

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
    BaseCategoryViewModelResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

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
    BaseCategoryViewModelResponsePagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

BomTemp _$BomTempFromJson(Map<String, dynamic> json) => BomTemp(
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
      id: json['id'] as String?,
      objectId: json['objectId'] as String?,
      objectName: json['objectName'] as String?,
      objectType: json['objectType'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      unitId: json['unitId'] as String,
      unitName: json['unitName'] as String?,
      routingId: json['routingId'] as String?,
      routingName: json['routingName'] as String?,
      description: json['description'] as String?,
      deXe: (json['deXe'] as num?)?.toDouble(),
      code: json['code'] as String?,
      isActive: json['isActive'] as bool?,
      type: json['type'] as String?,
      order: json['order'] as int?,
      readyToProduce: json['readyToProduce'] as String?,
      pickingTypeId: json['pickingTypeId'] as String?,
      companyId: json['companyId'] as String?,
      companyName: json['companyName'] as String?,
    );

Map<String, dynamic> _$BomTempToJson(BomTemp instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('id', instance.id);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectName', instance.objectName);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('quantity', instance.quantity);
  val['unitId'] = instance.unitId;
  writeNotNull('unitName', instance.unitName);
  writeNotNull('routingId', instance.routingId);
  writeNotNull('routingName', instance.routingName);
  writeNotNull('description', instance.description);
  writeNotNull('deXe', instance.deXe);
  writeNotNull('code', instance.code);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('type', instance.type);
  writeNotNull('order', instance.order);
  writeNotNull('readyToProduce', instance.readyToProduce);
  writeNotNull('pickingTypeId', instance.pickingTypeId);
  writeNotNull('companyId', instance.companyId);
  writeNotNull('companyName', instance.companyName);
  return val;
}

BomTempLineModel _$BomTempLineModelFromJson(Map<String, dynamic> json) =>
    BomTempLineModel(
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
      id: json['id'] as String?,
      objectId: json['objectId'] as String?,
      objectName: json['objectName'] as String?,
      objectType: json['objectType'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      objectAttributeValueId: json['objectAttributeValueId'] as String?,
      objectAttributeValueName: json['objectAttributeValueName'] as String?,
      objectGroup: json['objectGroup'] as String?,
      bomTempId: json['bomTempId'] as String,
      unitId: json['unitId'] as String,
      unitName: json['unitName'] as String?,
      order: json['order'] as int?,
      routingId: json['routingId'] as String?,
      routingName: json['routingName'] as String?,
      operationId: json['operationId'] as String?,
      description: json['description'] as String?,
      workCenterId: json['workCenterId'] as String?,
    );

Map<String, dynamic> _$BomTempLineModelToJson(BomTempLineModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('id', instance.id);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectName', instance.objectName);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('objectAttributeValueId', instance.objectAttributeValueId);
  writeNotNull('objectAttributeValueName', instance.objectAttributeValueName);
  writeNotNull('objectGroup', instance.objectGroup);
  val['bomTempId'] = instance.bomTempId;
  val['unitId'] = instance.unitId;
  writeNotNull('unitName', instance.unitName);
  writeNotNull('order', instance.order);
  writeNotNull('routingId', instance.routingId);
  writeNotNull('routingName', instance.routingName);
  writeNotNull('operationId', instance.operationId);
  writeNotNull('description', instance.description);
  writeNotNull('workCenterId', instance.workCenterId);
  return val;
}

BomTempModel _$BomTempModelFromJson(Map<String, dynamic> json) => BomTempModel(
      id: json['id'] as String?,
      objectId: json['objectId'] as String?,
      objectName: json['objectName'] as String?,
      objectType: json['objectType'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      unitId: json['unitId'] as String?,
      unitName: json['unitName'] as String?,
      routingId: json['routingId'] as String?,
      routingName: json['routingName'] as String?,
      description: json['description'] as String?,
      deXe: (json['deXe'] as num?)?.toDouble(),
      code: json['code'] as String?,
      isActive: json['isActive'] as bool?,
      type: json['type'] as String?,
      order: json['order'] as int?,
      readyToProduce: json['readyToProduce'] as String?,
      pickingTypeId: json['pickingTypeId'] as String?,
      companyId: json['companyId'] as String?,
      companyName: json['companyName'] as String?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      bomTempDetails: (json['bomTempDetails'] as List<dynamic>?)
              ?.map((e) => BomTempLineModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$BomTempModelToJson(BomTempModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectName', instance.objectName);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('unitId', instance.unitId);
  writeNotNull('unitName', instance.unitName);
  writeNotNull('routingId', instance.routingId);
  writeNotNull('routingName', instance.routingName);
  writeNotNull('description', instance.description);
  writeNotNull('deXe', instance.deXe);
  writeNotNull('code', instance.code);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('type', instance.type);
  writeNotNull('order', instance.order);
  writeNotNull('readyToProduce', instance.readyToProduce);
  writeNotNull('pickingTypeId', instance.pickingTypeId);
  writeNotNull('companyId', instance.companyId);
  writeNotNull('companyName', instance.companyName);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('bomTempDetails',
      instance.bomTempDetails?.map((e) => e.toJson()).toList());
  return val;
}

BomTempModelResponseObject _$BomTempModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    BomTempModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : BomTempModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BomTempModelResponseObjectToJson(
    BomTempModelResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

BomTempPagination _$BomTempPaginationFromJson(Map<String, dynamic> json) =>
    BomTempPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => BomTemp.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$BomTempPaginationToJson(BomTempPagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('numberOfRecords', instance.numberOfRecords);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('content', instance.content?.map((e) => e.toJson()).toList());
  return val;
}

BomTempResponseList _$BomTempResponseListFromJson(Map<String, dynamic> json) =>
    BomTempResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => BomTemp.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$BomTempResponseListToJson(BomTempResponseList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

BomTempResponseObject _$BomTempResponseObjectFromJson(
        Map<String, dynamic> json) =>
    BomTempResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : BomTemp.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BomTempResponseObjectToJson(
    BomTempResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

BomTempResponsePagination _$BomTempResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    BomTempResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : BomTempPagination.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BomTempResponsePaginationToJson(
    BomTempResponsePagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

BooleanResponseObject _$BooleanResponseObjectFromJson(
        Map<String, dynamic> json) =>
    BooleanResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] as bool?,
    );

Map<String, dynamic> _$BooleanResponseObjectToJson(
    BooleanResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data);
  return val;
}

CategoryOrderModel _$CategoryOrderModelFromJson(Map<String, dynamic> json) =>
    CategoryOrderModel(
      id: json['id'] as String?,
      order: json['order'] as int?,
    );

Map<String, dynamic> _$CategoryOrderModelToJson(CategoryOrderModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('order', instance.order);
  return val;
}

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
    CategoryPatchRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('parentId', instance.parentId);
  writeNotNull('name', instance.name);
  writeNotNull('displayName', instance.displayName);
  writeNotNull('type', instance.type);
  writeNotNull('alias', instance.alias);
  writeNotNull('detail', instance.detail);
  writeNotNull('description', instance.description);
  writeNotNull('order', instance.order);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('statusObj', statusEnumsToJson(instance.statusObj));
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  return val;
}

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
    CategoryRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('parentId', instance.parentId);
  val['name'] = instance.name;
  writeNotNull('displayName', instance.displayName);
  val['type'] = instance.type;
  val['alias'] = instance.alias;
  writeNotNull('detail', instance.detail);
  writeNotNull('description', instance.description);
  writeNotNull('statusObj', statusEnumsToJson(instance.statusObj));
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull('order', instance.order);
  writeNotNull('isActive', instance.isActive);
  return val;
}

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
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
      objectId: json['objectId'] as String?,
      objectType: json['objectType'] as String?,
      ref: json['ref'] as String?,
      message: json['message'] as String?,
      statusObj: commentStatusEnumsFromJson(json['statusObj']),
      status: json['status'] as int?,
      attachment: json['attachment'] as String?,
      username: json['username'] as String?,
      userdisplay: json['userdisplay'] as String?,
    );

Map<String, dynamic> _$CommentToJson(Comment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('id', instance.id);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('ref', instance.ref);
  writeNotNull('message', instance.message);
  writeNotNull('statusObj', commentStatusEnumsToJson(instance.statusObj));
  writeNotNull('status', instance.status);
  writeNotNull('attachment', instance.attachment);
  writeNotNull('username', instance.username);
  writeNotNull('userdisplay', instance.userdisplay);
  return val;
}

CommentPagination _$CommentPaginationFromJson(Map<String, dynamic> json) =>
    CommentPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CommentPaginationToJson(CommentPagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('numberOfRecords', instance.numberOfRecords);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('content', instance.content?.map((e) => e.toJson()).toList());
  return val;
}

CommentRequestModel _$CommentRequestModelFromJson(Map<String, dynamic> json) =>
    CommentRequestModel(
      objectId: json['objectId'] as String?,
      objectType: json['objectType'] as String?,
      ref: json['ref'] as String?,
      message: json['message'] as String?,
      statusObj: commentStatusEnumsFromJson(json['statusObj']),
      attachment: json['attachment'] as String?,
    );

Map<String, dynamic> _$CommentRequestModelToJson(CommentRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('ref', instance.ref);
  writeNotNull('message', instance.message);
  writeNotNull('statusObj', commentStatusEnumsToJson(instance.statusObj));
  writeNotNull('attachment', instance.attachment);
  return val;
}

CommentResponseObject _$CommentResponseObjectFromJson(
        Map<String, dynamic> json) =>
    CommentResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : Comment.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommentResponseObjectToJson(
    CommentResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

CommentResponsePagination _$CommentResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    CommentResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : CommentPagination.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommentResponsePaginationToJson(
    CommentResponsePagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

CommentStatusRequestModel _$CommentStatusRequestModelFromJson(
        Map<String, dynamic> json) =>
    CommentStatusRequestModel(
      statusObj: commentStatusEnumsFromJson(json['statusObj']),
    );

Map<String, dynamic> _$CommentStatusRequestModelToJson(
    CommentStatusRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('statusObj', commentStatusEnumsToJson(instance.statusObj));
  return val;
}

CreateTreeInventoryAdjustmentRequest
    _$CreateTreeInventoryAdjustmentRequestFromJson(Map<String, dynamic> json) =>
        CreateTreeInventoryAdjustmentRequest(
          objectId: json['objectId'] as String?,
          lotId: json['lotId'] as String?,
          locationDestId: json['locationDestId'] as String?,
          locationDestName: json['locationDestName'] as String?,
          referenceDestId: json['referenceDestId'] as String?,
          referenceDest: json['referenceDest'] as String?,
          parentLocationDestId: json['parentLocationDestId'] as String?,
          objectName: json['objectName'] as String?,
          quantity: (json['quantity'] as num?)?.toDouble(),
          voucherType: json['voucherType'] as String?,
          description: json['description'] as String?,
        );

Map<String, dynamic> _$CreateTreeInventoryAdjustmentRequestToJson(
    CreateTreeInventoryAdjustmentRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('objectId', instance.objectId);
  writeNotNull('lotId', instance.lotId);
  writeNotNull('locationDestId', instance.locationDestId);
  writeNotNull('locationDestName', instance.locationDestName);
  writeNotNull('referenceDestId', instance.referenceDestId);
  writeNotNull('referenceDest', instance.referenceDest);
  writeNotNull('parentLocationDestId', instance.parentLocationDestId);
  writeNotNull('objectName', instance.objectName);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('voucherType', instance.voucherType);
  writeNotNull('description', instance.description);
  return val;
}

CreateTreePickingDetailModel _$CreateTreePickingDetailModelFromJson(
        Map<String, dynamic> json) =>
    CreateTreePickingDetailModel(
      referenceSrc: json['referenceSrc'] as String?,
      referenceSrcId: json['referenceSrcId'] as String?,
      referenceDest: json['referenceDest'] as String?,
      referenceDestId: json['referenceDestId'] as String?,
      parentLocationId: json['parentLocationId'] as String?,
      parentLocationName: json['parentLocationName'] as String?,
      parentPath: json['parentPath'] as String?,
      locationDestId: json['locationDestId'] as String?,
      locationDestName: json['locationDestName'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      quantityMark: (json['quantityMark'] as num?)?.toDouble(),
      unitId: json['unitId'] as String?,
      unitName: json['unitName'] as String?,
      objectType: json['objectType'] as String?,
      objectName: json['objectName'] as String?,
      isAutoGenerateLine: json['isAutoGenerateLine'] as bool?,
      productTmpId: json['productTmpId'] as String?,
      isConfirm: json['isConfirm'] as bool?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateTreePickingDetailModelToJson(
    CreateTreePickingDetailModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('referenceSrc', instance.referenceSrc);
  writeNotNull('referenceSrcId', instance.referenceSrcId);
  writeNotNull('referenceDest', instance.referenceDest);
  writeNotNull('referenceDestId', instance.referenceDestId);
  writeNotNull('parentLocationId', instance.parentLocationId);
  writeNotNull('parentLocationName', instance.parentLocationName);
  writeNotNull('parentPath', instance.parentPath);
  writeNotNull('locationDestId', instance.locationDestId);
  writeNotNull('locationDestName', instance.locationDestName);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('quantityMark', instance.quantityMark);
  writeNotNull('unitId', instance.unitId);
  writeNotNull('unitName', instance.unitName);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('objectName', instance.objectName);
  writeNotNull('isAutoGenerateLine', instance.isAutoGenerateLine);
  writeNotNull('productTmpId', instance.productTmpId);
  writeNotNull('isConfirm', instance.isConfirm);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  return val;
}

CreateTreePickingLotRequestModel _$CreateTreePickingLotRequestModelFromJson(
        Map<String, dynamic> json) =>
    CreateTreePickingLotRequestModel(
      treePickingDetails: (json['treePickingDetails'] as List<dynamic>?)
              ?.map((e) => CreateTreePickingDetailModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      isConfirm: json['isConfirm'] as bool?,
    );

Map<String, dynamic> _$CreateTreePickingLotRequestModelToJson(
    CreateTreePickingLotRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('treePickingDetails',
      instance.treePickingDetails?.map((e) => e.toJson()).toList());
  writeNotNull('isConfirm', instance.isConfirm);
  return val;
}

CreateWorkOrderRequestModel _$CreateWorkOrderRequestModelFromJson(
        Map<String, dynamic> json) =>
    CreateWorkOrderRequestModel(
      prodId: json['prodId'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$CreateWorkOrderRequestModelToJson(
    CreateWorkOrderRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('prodId', instance.prodId);
  writeNotNull('description', instance.description);
  return val;
}

DetailAttribute _$DetailAttributeFromJson(Map<String, dynamic> json) =>
    DetailAttribute(
      attributeId: json['attributeId'] as String?,
      attributeName: json['attributeName'] as String?,
      totalCost: (json['totalCost'] as num?)?.toDouble(),
      totalCostLastTerm: (json['totalCostLastTerm'] as num?)?.toDouble(),
      difference: (json['difference'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DetailAttributeToJson(DetailAttribute instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attributeId', instance.attributeId);
  writeNotNull('attributeName', instance.attributeName);
  writeNotNull('totalCost', instance.totalCost);
  writeNotNull('totalCostLastTerm', instance.totalCostLastTerm);
  writeNotNull('difference', instance.difference);
  return val;
}

DetailFinanceByRef _$DetailFinanceByRefFromJson(Map<String, dynamic> json) =>
    DetailFinanceByRef(
      objectGroup: json['objectGroup'] as String?,
      totalCost: (json['totalCost'] as num?)?.toDouble(),
      totalCostLastTerm: (json['totalCostLastTerm'] as num?)?.toDouble(),
      difference: (json['difference'] as num?)?.toDouble(),
      detailAttributes: (json['detailAttributes'] as List<dynamic>?)
              ?.map((e) => DetailAttribute.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$DetailFinanceByRefToJson(DetailFinanceByRef instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('objectGroup', instance.objectGroup);
  writeNotNull('totalCost', instance.totalCost);
  writeNotNull('totalCostLastTerm', instance.totalCostLastTerm);
  writeNotNull('difference', instance.difference);
  writeNotNull('detailAttributes',
      instance.detailAttributes?.map((e) => e.toJson()).toList());
  return val;
}

DetailLocation _$DetailLocationFromJson(Map<String, dynamic> json) =>
    DetailLocation(
      productionId: json['productionId'] as String?,
      objectId: json['objectId'] as String?,
      objectName: json['objectName'] as String?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$DetailLocationToJson(DetailLocation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('productionId', instance.productionId);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectName', instance.objectName);
  writeNotNull('state', instance.state);
  return val;
}

DetailMonth _$DetailMonthFromJson(Map<String, dynamic> json) => DetailMonth(
      workingTimeId: json['workingTimeId'] as String?,
      time: json['time'] as String?,
      totalCost: (json['totalCost'] as num?)?.toDouble(),
      locationId: json['locationId'] as String?,
    );

Map<String, dynamic> _$DetailMonthToJson(DetailMonth instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('workingTimeId', instance.workingTimeId);
  writeNotNull('time', instance.time);
  writeNotNull('totalCost', instance.totalCost);
  writeNotNull('locationId', instance.locationId);
  return val;
}

DetailObjectGroup _$DetailObjectGroupFromJson(Map<String, dynamic> json) =>
    DetailObjectGroup(
      objectGroup: json['objectGroup'] as String?,
      locationId: json['locationId'] as String?,
      totalCost: (json['totalCost'] as num?)?.toDouble(),
      totalCostLastTerm: (json['totalCostLastTerm'] as num?)?.toDouble(),
      difference: (json['difference'] as num?)?.toDouble(),
      detailsMonth: (json['detailsMonth'] as List<dynamic>?)
              ?.map((e) => DetailMonth.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$DetailObjectGroupToJson(DetailObjectGroup instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('objectGroup', instance.objectGroup);
  writeNotNull('locationId', instance.locationId);
  writeNotNull('totalCost', instance.totalCost);
  writeNotNull('totalCostLastTerm', instance.totalCostLastTerm);
  writeNotNull('difference', instance.difference);
  writeNotNull(
      'detailsMonth', instance.detailsMonth?.map((e) => e.toJson()).toList());
  return val;
}

Email _$EmailFromJson(Map<String, dynamic> json) => Email(
      type:
          (json['type'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$EmailToJson(Email instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('uri', instance.uri);
  return val;
}

EmailBodyRequestModel _$EmailBodyRequestModelFromJson(
        Map<String, dynamic> json) =>
    EmailBodyRequestModel(
      listAvailableCommand: (json['listAvailableCommand'] as List<dynamic>?)
              ?.map((e) => WorkflowEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      listUserEntity: (json['listUserEntity'] as List<dynamic>?)
              ?.map((e) => UserEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      leaderPosition: json['leaderPosition'] as String?,
      year: json['year'] as int?,
      version: json['version'] as int?,
    );

Map<String, dynamic> _$EmailBodyRequestModelToJson(
    EmailBodyRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('listAvailableCommand',
      instance.listAvailableCommand?.map((e) => e.toJson()).toList());
  writeNotNull('listUserEntity',
      instance.listUserEntity?.map((e) => e.toJson()).toList());
  writeNotNull('leaderPosition', instance.leaderPosition);
  writeNotNull('year', instance.year);
  writeNotNull('version', instance.version);
  return val;
}

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      label: json['label'] as String?,
      eventDate: json['eventDate'] == null
          ? null
          : DateTime.parse(json['eventDate'] as String),
    );

Map<String, dynamic> _$EventToJson(Event instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('label', instance.label);
  writeNotNull('eventDate', instance.eventDate?.toIso8601String());
  return val;
}

FileDownloadRequestModel _$FileDownloadRequestModelFromJson(
        Map<String, dynamic> json) =>
    FileDownloadRequestModel(
      userId: json['userId'] as String?,
      expiredTime: json['expiredTime'] == null
          ? null
          : DateTime.parse(json['expiredTime'] as String),
      numberOfUsers: json['numberOfUsers'] as int?,
      origin: json['origin'] as bool?,
    );

Map<String, dynamic> _$FileDownloadRequestModelToJson(
    FileDownloadRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userId', instance.userId);
  writeNotNull('expiredTime', instance.expiredTime?.toIso8601String());
  writeNotNull('numberOfUsers', instance.numberOfUsers);
  writeNotNull('origin', instance.origin);
  return val;
}

FileMetadata _$FileMetadataFromJson(Map<String, dynamic> json) => FileMetadata(
      fileId: json['fileId'] as String?,
      filePath: json['filePath'] as String?,
      fileName: json['fileName'] as String?,
      fileType: json['fileType'] as String?,
      type: json['type'] as String?,
      fileSize: json['fileSize'] as num?,
      absoluteUri: json['absoluteUri'] as String?,
      container: json['container'] as String?,
    );

Map<String, dynamic> _$FileMetadataToJson(FileMetadata instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fileId', instance.fileId);
  writeNotNull('filePath', instance.filePath);
  writeNotNull('fileName', instance.fileName);
  writeNotNull('fileType', instance.fileType);
  writeNotNull('type', instance.type);
  writeNotNull('fileSize', instance.fileSize);
  writeNotNull('absoluteUri', instance.absoluteUri);
  writeNotNull('container', instance.container);
  return val;
}

FileObjectsRelation _$FileObjectsRelationFromJson(Map<String, dynamic> json) =>
    FileObjectsRelation(
      fileId: json['fileId'] as String?,
      relatedObjectId: json['relatedObjectId'] as String?,
    );

Map<String, dynamic> _$FileObjectsRelationToJson(FileObjectsRelation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fileId', instance.fileId);
  writeNotNull('relatedObjectId', instance.relatedObjectId);
  return val;
}

FileResponseModel _$FileResponseModelFromJson(Map<String, dynamic> json) =>
    FileResponseModel(
      objectId: json['objectId'] as String?,
      objectType: json['objectType'] as String?,
      relatedObjectIdList: (json['relatedObjectIdList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      relatedBaseCategory: json['relatedBaseCategory'] as String?,
      relatedFondId: json['relatedFondId'] as String?,
      relatedArchiveTypeId: json['relatedArchiveTypeId'] as String?,
      relatedRecordCollectionId: json['relatedRecordCollectionId'] as String?,
      relatedRecordId: json['relatedRecordId'] as String?,
      relatedProjectId: json['relatedProjectId'] as String?,
      relatedTaskId: json['relatedTaskId'] as String?,
      relatedRespartnerId: json['relatedRespartnerId'] as String?,
      relatedObject1: json['relatedObject1'] as String?,
      relatedObject1Type: json['relatedObject1Type'] as String?,
      relatedObject2: json['relatedObject2'] as String?,
      relatedObject2Type: json['relatedObject2Type'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String?,
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      description: json['description'] as String?,
      nodeTypeObj: nodeTypeEnumFromJson(json['nodeTypeObj']),
      parentId: json['parentId'] as String?,
      metaContentType: json['metaContentType'] as String?,
      type: json['type'] as String?,
      metadataContentObj: (json['metadataContentObj'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataObj: (json['metadataObj'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      ownerId: json['ownerId'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      isPublish: json['isPublish'] as bool?,
      isSearchable: json['isSearchable'] as bool?,
      ancestors: (json['ancestors'] as List<dynamic>?)
              ?.map((e) => SimpleNodeBaseResponseModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      descendents: (json['descendents'] as List<dynamic>?)
              ?.map((e) => SimpleNodeBaseResponseModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      aclObject: json['aclObject'] == null
          ? null
          : ACLObject.fromJson(json['aclObject'] as Map<String, dynamic>),
      relatedFileId: json['relatedFileId'] as String?,
      relatedRoleCodeObjects: (json['relatedRoleCodeObjects'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      relatedRoleCode: json['relatedRoleCode'] as String?,
      hasChildren: json['hasChildren'] as bool?,
      statusObj: statusEnumFromJson(json['statusObj']),
      allowToView: json['allowToView'] as bool?,
      allowToDelete: json['allowToDelete'] as bool?,
      allowToMove: json['allowToMove'] as bool?,
      allowToSharing: json['allowToSharing'] as bool?,
      allowToModify: json['allowToModify'] as bool?,
      allowToSetPermission: json['allowToSetPermission'] as bool?,
      allowToSetRoleMapping: json['allowToSetRoleMapping'] as bool?,
      allowToChangeOwner: json['allowToChangeOwner'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      lastModifiedByUserId: json['lastModifiedByUserId'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      applicationId: json['applicationId'] as String?,
      cLeft: json['c_left'] as int?,
      cRight: json['c_right'] as int?,
      cLevel: json['c_level'] as int?,
      completePath: json['completePath'] as String?,
      completeName: json['completeName'] as String?,
      fileUrl: json['fileUrl'] as String?,
      metadata: json['metadata'] == null
          ? null
          : FileMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
      metaContent: json['metaContent'] as String?,
    );

Map<String, dynamic> _$FileResponseModelToJson(FileResponseModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('relatedObjectIdList', instance.relatedObjectIdList);
  writeNotNull('relatedBaseCategory', instance.relatedBaseCategory);
  writeNotNull('relatedFondId', instance.relatedFondId);
  writeNotNull('relatedArchiveTypeId', instance.relatedArchiveTypeId);
  writeNotNull('relatedRecordCollectionId', instance.relatedRecordCollectionId);
  writeNotNull('relatedRecordId', instance.relatedRecordId);
  writeNotNull('relatedProjectId', instance.relatedProjectId);
  writeNotNull('relatedTaskId', instance.relatedTaskId);
  writeNotNull('relatedRespartnerId', instance.relatedRespartnerId);
  writeNotNull('relatedObject1', instance.relatedObject1);
  writeNotNull('relatedObject1Type', instance.relatedObject1Type);
  writeNotNull('relatedObject2', instance.relatedObject2);
  writeNotNull('relatedObject2Type', instance.relatedObject2Type);
  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull('description', instance.description);
  writeNotNull('nodeTypeObj', nodeTypeEnumToJson(instance.nodeTypeObj));
  writeNotNull('parentId', instance.parentId);
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('type', instance.type);
  writeNotNull('metadataContentObj',
      instance.metadataContentObj?.map((e) => e.toJson()).toList());
  writeNotNull(
      'metadataObj', instance.metadataObj?.map((e) => e.toJson()).toList());
  writeNotNull('ownerId', instance.ownerId);
  writeNotNull('isDeleted', instance.isDeleted);
  writeNotNull('isPublish', instance.isPublish);
  writeNotNull('isSearchable', instance.isSearchable);
  writeNotNull(
      'ancestors', instance.ancestors?.map((e) => e.toJson()).toList());
  writeNotNull(
      'descendents', instance.descendents?.map((e) => e.toJson()).toList());
  writeNotNull('aclObject', instance.aclObject?.toJson());
  writeNotNull('relatedFileId', instance.relatedFileId);
  writeNotNull('relatedRoleCodeObjects', instance.relatedRoleCodeObjects);
  writeNotNull('relatedRoleCode', instance.relatedRoleCode);
  writeNotNull('hasChildren', instance.hasChildren);
  writeNotNull('statusObj', statusEnumToJson(instance.statusObj));
  writeNotNull('allowToView', instance.allowToView);
  writeNotNull('allowToDelete', instance.allowToDelete);
  writeNotNull('allowToMove', instance.allowToMove);
  writeNotNull('allowToSharing', instance.allowToSharing);
  writeNotNull('allowToModify', instance.allowToModify);
  writeNotNull('allowToSetPermission', instance.allowToSetPermission);
  writeNotNull('allowToSetRoleMapping', instance.allowToSetRoleMapping);
  writeNotNull('allowToChangeOwner', instance.allowToChangeOwner);
  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('c_left', instance.cLeft);
  writeNotNull('c_right', instance.cRight);
  writeNotNull('c_level', instance.cLevel);
  writeNotNull('completePath', instance.completePath);
  writeNotNull('completeName', instance.completeName);
  writeNotNull('fileUrl', instance.fileUrl);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('metaContent', instance.metaContent);
  return val;
}

FileResponseModelPagination _$FileResponseModelPaginationFromJson(
        Map<String, dynamic> json) =>
    FileResponseModelPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map(
                  (e) => FileResponseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FileResponseModelPaginationToJson(
    FileResponseModelPagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('numberOfRecords', instance.numberOfRecords);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('content', instance.content?.map((e) => e.toJson()).toList());
  return val;
}

FileResponseModelResponseList _$FileResponseModelResponseListFromJson(
        Map<String, dynamic> json) =>
    FileResponseModelResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => FileResponseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FileResponseModelResponseListToJson(
    FileResponseModelResponseList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

FileResponseModelResponseObject _$FileResponseModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    FileResponseModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : FileResponseModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FileResponseModelResponseObjectToJson(
    FileResponseModelResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

FileResponseModelResponsePagination
    _$FileResponseModelResponsePaginationFromJson(Map<String, dynamic> json) =>
        FileResponseModelResponsePagination(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: json['data'] == null
              ? null
              : FileResponseModelPagination.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$FileResponseModelResponsePaginationToJson(
    FileResponseModelResponsePagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

FilesDownloadRequestModel _$FilesDownloadRequestModelFromJson(
        Map<String, dynamic> json) =>
    FilesDownloadRequestModel(
      userId: json['userId'] as String?,
      username: json['username'] as String?,
      expiredTime: json['expiredTime'] == null
          ? null
          : DateTime.parse(json['expiredTime'] as String),
      fileIds: (json['fileIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      origin: json['origin'] as bool?,
    );

Map<String, dynamic> _$FilesDownloadRequestModelToJson(
    FilesDownloadRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userId', instance.userId);
  writeNotNull('username', instance.username);
  writeNotNull('expiredTime', instance.expiredTime?.toIso8601String());
  writeNotNull('fileIds', instance.fileIds);
  writeNotNull('origin', instance.origin);
  return val;
}

Finance _$FinanceFromJson(Map<String, dynamic> json) => Finance(
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
      id: json['id'] as String?,
      timeOfFinance: json['timeOfFinance'] == null
          ? null
          : DateTime.parse(json['timeOfFinance'] as String),
      state: json['state'] as String?,
      totalCost: (json['totalCost'] as num?)?.toDouble(),
      version: json['version'] as int?,
      workflowState: json['workflowState'] as String?,
      workflowStatus: json['workflowStatus'] as String?,
    );

Map<String, dynamic> _$FinanceToJson(Finance instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('id', instance.id);
  writeNotNull('timeOfFinance', instance.timeOfFinance?.toIso8601String());
  writeNotNull('state', instance.state);
  writeNotNull('totalCost', instance.totalCost);
  writeNotNull('version', instance.version);
  writeNotNull('workflowState', instance.workflowState);
  writeNotNull('workflowStatus', instance.workflowStatus);
  return val;
}

FinanceByAttribute _$FinanceByAttributeFromJson(Map<String, dynamic> json) =>
    FinanceByAttribute(
      locationId: json['locationId'] as String?,
      locationName: json['locationName'] as String?,
      attributeId: json['attributeId'] as String?,
      attributeName: json['attributeName'] as String?,
      year: json['year'] as int?,
      totalCost: (json['totalCost'] as num?)?.toDouble(),
      financeByAttributeDetails: (json['financeByAttributeDetails']
                  as List<dynamic>?)
              ?.map((e) =>
                  FinanceByAttributeDetail.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FinanceByAttributeToJson(FinanceByAttribute instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locationId', instance.locationId);
  writeNotNull('locationName', instance.locationName);
  writeNotNull('attributeId', instance.attributeId);
  writeNotNull('attributeName', instance.attributeName);
  writeNotNull('year', instance.year);
  writeNotNull('totalCost', instance.totalCost);
  writeNotNull('financeByAttributeDetails',
      instance.financeByAttributeDetails?.map((e) => e.toJson()).toList());
  return val;
}

FinanceByAttributeDetail _$FinanceByAttributeDetailFromJson(
        Map<String, dynamic> json) =>
    FinanceByAttributeDetail(
      objectId: json['objectId'] as String?,
      objectName: json['objectName'] as String?,
      objectUnitId: json['objectUnitId'] as String?,
      objectUnitName: json['objectUnitName'] as String?,
      total: (json['total'] as num?)?.toDouble(),
      totalCost: (json['totalCost'] as num?)?.toDouble(),
      unitPrice: (json['unitPrice'] as num?)?.toDouble(),
      financeByDetails: (json['financeByDetails'] as List<dynamic>?)
              ?.map((e) => FinanceInCell.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FinanceByAttributeDetailToJson(
    FinanceByAttributeDetail instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectName', instance.objectName);
  writeNotNull('objectUnitId', instance.objectUnitId);
  writeNotNull('objectUnitName', instance.objectUnitName);
  writeNotNull('total', instance.total);
  writeNotNull('totalCost', instance.totalCost);
  writeNotNull('unitPrice', instance.unitPrice);
  writeNotNull('financeByDetails',
      instance.financeByDetails?.map((e) => e.toJson()).toList());
  return val;
}

FinanceByAttributeResponseObject _$FinanceByAttributeResponseObjectFromJson(
        Map<String, dynamic> json) =>
    FinanceByAttributeResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : FinanceByAttribute.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FinanceByAttributeResponseObjectToJson(
    FinanceByAttributeResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

FinanceByLocation _$FinanceByLocationFromJson(Map<String, dynamic> json) =>
    FinanceByLocation(
      locationId: json['locationId'] as String?,
      locationName: json['locationName'] as String?,
      year: json['year'] as int?,
      totalCost: (json['totalCost'] as num?)?.toDouble(),
      totalCostLastTerm: (json['totalCostLastTerm'] as num?)?.toDouble(),
      difference: (json['difference'] as num?)?.toDouble(),
      financeDetails: (json['financeDetails'] as List<dynamic>?)
              ?.map(
                  (e) => DetailFinanceByRef.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FinanceByLocationToJson(FinanceByLocation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locationId', instance.locationId);
  writeNotNull('locationName', instance.locationName);
  writeNotNull('year', instance.year);
  writeNotNull('totalCost', instance.totalCost);
  writeNotNull('totalCostLastTerm', instance.totalCostLastTerm);
  writeNotNull('difference', instance.difference);
  writeNotNull('financeDetails',
      instance.financeDetails?.map((e) => e.toJson()).toList());
  return val;
}

FinanceByLocationResponseObject _$FinanceByLocationResponseObjectFromJson(
        Map<String, dynamic> json) =>
    FinanceByLocationResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : FinanceByLocation.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FinanceByLocationResponseObjectToJson(
    FinanceByLocationResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

FinanceInCell _$FinanceInCellFromJson(Map<String, dynamic> json) =>
    FinanceInCell(
      attributeValueId: json['attributeValueId'] as String?,
      attributeValueName: json['attributeValueName'] as String?,
      workCenterId: json['workCenterId'] as String?,
      workCenterName: json['workCenterName'] as String?,
      totalBomQty: (json['totalBomQty'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FinanceInCellToJson(FinanceInCell instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attributeValueId', instance.attributeValueId);
  writeNotNull('attributeValueName', instance.attributeValueName);
  writeNotNull('workCenterId', instance.workCenterId);
  writeNotNull('workCenterName', instance.workCenterName);
  writeNotNull('totalBomQty', instance.totalBomQty);
  return val;
}

FinanceInYearDetail _$FinanceInYearDetailFromJson(Map<String, dynamic> json) =>
    FinanceInYearDetail(
      locationName: json['locationName'] as String?,
      locationId: json['locationId'] as String?,
      caringQualify: json['caringQualify'] as String?,
      order: json['order'] as int?,
      totalCost: (json['totalCost'] as num?)?.toDouble(),
      totalCostLastTerm: (json['totalCostLastTerm'] as num?)?.toDouble(),
      difference: (json['difference'] as num?)?.toDouble(),
      detailsMonth: (json['detailsMonth'] as List<dynamic>?)
              ?.map((e) => DetailMonth.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      detailObjectGroups: (json['detailObjectGroups'] as List<dynamic>?)
              ?.map(
                  (e) => DetailObjectGroup.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FinanceInYearDetailToJson(FinanceInYearDetail instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locationName', instance.locationName);
  writeNotNull('locationId', instance.locationId);
  writeNotNull('caringQualify', instance.caringQualify);
  writeNotNull('order', instance.order);
  writeNotNull('totalCost', instance.totalCost);
  writeNotNull('totalCostLastTerm', instance.totalCostLastTerm);
  writeNotNull('difference', instance.difference);
  writeNotNull(
      'detailsMonth', instance.detailsMonth?.map((e) => e.toJson()).toList());
  writeNotNull('detailObjectGroups',
      instance.detailObjectGroups?.map((e) => e.toJson()).toList());
  return val;
}

FinanceInYearModel _$FinanceInYearModelFromJson(Map<String, dynamic> json) =>
    FinanceInYearModel(
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
      id: json['id'] as String?,
      timeOfFinance: json['timeOfFinance'] == null
          ? null
          : DateTime.parse(json['timeOfFinance'] as String),
      state: json['state'] as String?,
      totalCost: (json['totalCost'] as num?)?.toDouble(),
      totalCostLastTerm: (json['totalCostLastTerm'] as num?)?.toDouble(),
      difference: (json['difference'] as num?)?.toDouble(),
      version: json['version'] as int?,
      workflowState: json['workflowState'] as String?,
      workflowStatus: json['workflowStatus'] as String?,
      financeDetails: (json['financeDetails'] as List<dynamic>?)
              ?.map((e) =>
                  FinanceInYearDetail.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      detailsMonth: (json['detailsMonth'] as List<dynamic>?)
              ?.map((e) => DetailMonth.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      financeLaborProtection: json['financeLaborProtection'] == null
          ? null
          : FinanceLaborProtection.fromJson(
              json['financeLaborProtection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FinanceInYearModelToJson(FinanceInYearModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('id', instance.id);
  writeNotNull('timeOfFinance', instance.timeOfFinance?.toIso8601String());
  writeNotNull('state', instance.state);
  writeNotNull('totalCost', instance.totalCost);
  writeNotNull('totalCostLastTerm', instance.totalCostLastTerm);
  writeNotNull('difference', instance.difference);
  writeNotNull('version', instance.version);
  writeNotNull('workflowState', instance.workflowState);
  writeNotNull('workflowStatus', instance.workflowStatus);
  writeNotNull('financeDetails',
      instance.financeDetails?.map((e) => e.toJson()).toList());
  writeNotNull(
      'detailsMonth', instance.detailsMonth?.map((e) => e.toJson()).toList());
  writeNotNull(
      'financeLaborProtection', instance.financeLaborProtection?.toJson());
  return val;
}

FinanceInYearModelResponseObject _$FinanceInYearModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    FinanceInYearModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : FinanceInYearModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FinanceInYearModelResponseObjectToJson(
    FinanceInYearModelResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

FinanceLaborProtection _$FinanceLaborProtectionFromJson(
        Map<String, dynamic> json) =>
    FinanceLaborProtection(
      name: json['name'] as String?,
      totalCost: (json['totalCost'] as num?)?.toDouble(),
      totalCostLastTerm: (json['totalCostLastTerm'] as num?)?.toDouble(),
      difference: (json['difference'] as num?)?.toDouble(),
      financeLaborProtectionDetails:
          (json['financeLaborProtectionDetails'] as List<dynamic>?)
                  ?.map((e) => FinanceLaborProtectionDetail.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
      detailsMonth: (json['detailsMonth'] as List<dynamic>?)
              ?.map((e) => DetailMonth.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FinanceLaborProtectionToJson(
    FinanceLaborProtection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('totalCost', instance.totalCost);
  writeNotNull('totalCostLastTerm', instance.totalCostLastTerm);
  writeNotNull('difference', instance.difference);
  writeNotNull('financeLaborProtectionDetails',
      instance.financeLaborProtectionDetails?.map((e) => e.toJson()).toList());
  writeNotNull(
      'detailsMonth', instance.detailsMonth?.map((e) => e.toJson()).toList());
  return val;
}

FinanceLaborProtectionDetail _$FinanceLaborProtectionDetailFromJson(
        Map<String, dynamic> json) =>
    FinanceLaborProtectionDetail(
      locationName: json['locationName'] as String?,
      locationId: json['locationId'] as String?,
      totalCost: (json['totalCost'] as num?)?.toDouble(),
      totalCostLastTerm: (json['totalCostLastTerm'] as num?)?.toDouble(),
      difference: (json['difference'] as num?)?.toDouble(),
      detailsMonth: (json['detailsMonth'] as List<dynamic>?)
              ?.map((e) => DetailMonth.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FinanceLaborProtectionDetailToJson(
    FinanceLaborProtectionDetail instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locationName', instance.locationName);
  writeNotNull('locationId', instance.locationId);
  writeNotNull('totalCost', instance.totalCost);
  writeNotNull('totalCostLastTerm', instance.totalCostLastTerm);
  writeNotNull('difference', instance.difference);
  writeNotNull(
      'detailsMonth', instance.detailsMonth?.map((e) => e.toJson()).toList());
  return val;
}

FinanceResponseObject _$FinanceResponseObjectFromJson(
        Map<String, dynamic> json) =>
    FinanceResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : Finance.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FinanceResponseObjectToJson(
    FinanceResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

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
    GuidListResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data);
  return val;
}

ImportTaskRequestModel _$ImportTaskRequestModelFromJson(
        Map<String, dynamic> json) =>
    ImportTaskRequestModel(
      templateId: json['templateId'] as String?,
      templateCode: json['templateCode'] as String,
    );

Map<String, dynamic> _$ImportTaskRequestModelToJson(
    ImportTaskRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('templateId', instance.templateId);
  val['templateCode'] = instance.templateCode;
  return val;
}

Int64ResponseObject _$Int64ResponseObjectFromJson(Map<String, dynamic> json) =>
    Int64ResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] as num?,
    );

Map<String, dynamic> _$Int64ResponseObjectToJson(Int64ResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data);
  return val;
}

LabelsObj _$LabelsObjFromJson(Map<String, dynamic> json) => LabelsObj(
      objectId: json['objectId'] as String?,
      objectCode: json['objectCode'] as String?,
      objectName: json['objectName'] as String?,
      color: json['color'] as String?,
    );

Map<String, dynamic> _$LabelsObjToJson(LabelsObj instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectCode', instance.objectCode);
  writeNotNull('objectName', instance.objectName);
  writeNotNull('color', instance.color);
  return val;
}

LaborProtectionAllocation _$LaborProtectionAllocationFromJson(
        Map<String, dynamic> json) =>
    LaborProtectionAllocation(
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
      productionMasterId: json['productionMasterId'] as String?,
      maintenanceGroupId: json['maintenanceGroupId'] as String?,
      maintenanceGroupName: json['maintenanceGroupName'] as String?,
      leaderId: json['leaderId'] as String?,
      leaderName: json['leaderName'] as String?,
      memberQtyDelivery: json['memberQtyDelivery'] as int?,
      maintenanceGroupMember: json['maintenanceGroupMember'] as int?,
      workType: json['workType'] as String?,
      workTypeName: json['workTypeName'] as String?,
      state: json['state'] as String?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContent: json['metadataContent'] as String?,
      metaContentType: json['metaContentType'] as String?,
    );

Map<String, dynamic> _$LaborProtectionAllocationToJson(
    LaborProtectionAllocation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('id', instance.id);
  writeNotNull('productionMasterId', instance.productionMasterId);
  writeNotNull('maintenanceGroupId', instance.maintenanceGroupId);
  writeNotNull('maintenanceGroupName', instance.maintenanceGroupName);
  writeNotNull('leaderId', instance.leaderId);
  writeNotNull('leaderName', instance.leaderName);
  writeNotNull('memberQtyDelivery', instance.memberQtyDelivery);
  writeNotNull('maintenanceGroupMember', instance.maintenanceGroupMember);
  writeNotNull('workType', instance.workType);
  writeNotNull('workTypeName', instance.workTypeName);
  writeNotNull('state', instance.state);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('metaContentType', instance.metaContentType);
  return val;
}

LaborProtectionAllocationDetail _$LaborProtectionAllocationDetailFromJson(
        Map<String, dynamic> json) =>
    LaborProtectionAllocationDetail(
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
      laborProtectionAllocationId:
          json['laborProtectionAllocationId'] as String?,
      objectId: json['objectId'] as String?,
      objectName: json['objectName'] as String?,
      allocationBy: json['allocationBy'] as String?,
      employeeTypeCode: json['employeeTypeCode'] as String?,
      employeeType: json['employeeType'] as String?,
      bomLaborProtectionId: json['bomLaborProtectionId'] as String?,
      bomLaborProtectionName: json['bomLaborProtectionName'] as String?,
      allocationTimes: json['allocationTimes'] as int?,
      totalPlanningsValue: json['totalPlanningsValue'] as int?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContent: json['metadataContent'] as String?,
      metaContentType: json['metaContentType'] as String?,
    );

Map<String, dynamic> _$LaborProtectionAllocationDetailToJson(
    LaborProtectionAllocationDetail instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('id', instance.id);
  writeNotNull(
      'laborProtectionAllocationId', instance.laborProtectionAllocationId);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectName', instance.objectName);
  writeNotNull('allocationBy', instance.allocationBy);
  writeNotNull('employeeTypeCode', instance.employeeTypeCode);
  writeNotNull('employeeType', instance.employeeType);
  writeNotNull('bomLaborProtectionId', instance.bomLaborProtectionId);
  writeNotNull('bomLaborProtectionName', instance.bomLaborProtectionName);
  writeNotNull('allocationTimes', instance.allocationTimes);
  writeNotNull('totalPlanningsValue', instance.totalPlanningsValue);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('metaContentType', instance.metaContentType);
  return val;
}

LaborProtectionAllocationDetailModel
    _$LaborProtectionAllocationDetailModelFromJson(Map<String, dynamic> json) =>
        LaborProtectionAllocationDetailModel(
          employeeTypeCode: json['employeeTypeCode'] as String?,
          laborProtectionAllocationDetail:
              json['laborProtectionAllocationDetail'] == null
                  ? null
                  : LaborProtectionAllocationDetail.fromJson(
                      json['laborProtectionAllocationDetail']
                          as Map<String, dynamic>),
          listLaborProtectionAllocationPlanning:
              (json['listLaborProtectionAllocationPlanning'] as List<dynamic>?)
                      ?.map((e) => LaborProtectionAllocationPlanning.fromJson(
                          e as Map<String, dynamic>))
                      .toList() ??
                  [],
        );

Map<String, dynamic> _$LaborProtectionAllocationDetailModelToJson(
    LaborProtectionAllocationDetailModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('employeeTypeCode', instance.employeeTypeCode);
  writeNotNull('laborProtectionAllocationDetail',
      instance.laborProtectionAllocationDetail?.toJson());
  writeNotNull(
      'listLaborProtectionAllocationPlanning',
      instance.listLaborProtectionAllocationPlanning
          ?.map((e) => e.toJson())
          .toList());
  return val;
}

LaborProtectionAllocationPlanning _$LaborProtectionAllocationPlanningFromJson(
        Map<String, dynamic> json) =>
    LaborProtectionAllocationPlanning(
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
      laborProtectionAllocationDetailId:
          json['laborProtectionAllocationDetailId'] as String?,
      workingTimeId: json['workingTimeId'] as String?,
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$LaborProtectionAllocationPlanningToJson(
    LaborProtectionAllocationPlanning instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('id', instance.id);
  writeNotNull('laborProtectionAllocationDetailId',
      instance.laborProtectionAllocationDetailId);
  writeNotNull('workingTimeId', instance.workingTimeId);
  writeNotNull('quantity', instance.quantity);
  return val;
}

LogQueryModel _$LogQueryModelFromJson(Map<String, dynamic> json) =>
    LogQueryModel(
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
      level: logEventLevelFromJson(json['level']),
      action: json['action'] as String?,
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
      objectId: json['objectId'] as String?,
      objectType: json['objectType'] as String?,
      module: json['module'] as String?,
      dateFrom: json['dateFrom'] == null
          ? null
          : DateTime.parse(json['dateFrom'] as String),
      dateTo: json['dateTo'] == null
          ? null
          : DateTime.parse(json['dateTo'] as String),
      minimumShouldMatch: (json['minimumShouldMatch'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LogQueryModelToJson(LogQueryModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sort', instance.sort);
  writeNotNull('fields', instance.fields);
  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('filter', instance.filter);
  writeNotNull('fullTextSearch', instance.fullTextSearch);
  writeNotNull('id', instance.id);
  writeNotNull('listId', instance.listId);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('searchAllApp', instance.searchAllApp);
  writeNotNull('listTextSearch', instance.listTextSearch);
  writeNotNull('level', logEventLevelToJson(instance.level));
  writeNotNull('action', instance.action);
  writeNotNull('userId', instance.userId);
  writeNotNull('userName', instance.userName);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('module', instance.module);
  writeNotNull('dateFrom', instance.dateFrom?.toIso8601String());
  writeNotNull('dateTo', instance.dateTo?.toIso8601String());
  writeNotNull('minimumShouldMatch', instance.minimumShouldMatch);
  return val;
}

LotDetailModel _$LotDetailModelFromJson(Map<String, dynamic> json) =>
    LotDetailModel(
      id: json['id'] as String?,
      lotId: json['lotId'] as String?,
      objectId: json['objectId'] as String?,
      objectType: json['objectType'] as String?,
      objectCode: json['objectCode'] as String?,
      lotName: json['lotName'] as String?,
      objectName: json['objectName'] as String?,
      locationDestId: json['locationDestId'] as String?,
      locationDestName: json['locationDestName'] as String?,
      description: json['description'] as String?,
      productQty: (json['productQty'] as num?)?.toDouble(),
      unitId: json['unitId'] as String?,
      unit: json['unit'] as String?,
      isMark: json['isMark'] as bool?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      pickingId: json['pickingId'] as String?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$LotDetailModelToJson(LotDetailModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('lotId', instance.lotId);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('objectCode', instance.objectCode);
  writeNotNull('lotName', instance.lotName);
  writeNotNull('objectName', instance.objectName);
  writeNotNull('locationDestId', instance.locationDestId);
  writeNotNull('locationDestName', instance.locationDestName);
  writeNotNull('description', instance.description);
  writeNotNull('productQty', instance.productQty);
  writeNotNull('unitId', instance.unitId);
  writeNotNull('unit', instance.unit);
  writeNotNull('isMark', instance.isMark);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('pickingId', instance.pickingId);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  return val;
}

MetaKeyValue _$MetaKeyValueFromJson(Map<String, dynamic> json) => MetaKeyValue(
      key: json['key'] as String?,
      value: json['value'] as String?,
      order: json['order'] as int?,
    );

Map<String, dynamic> _$MetaKeyValueToJson(MetaKeyValue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  writeNotNull('order', instance.order);
  return val;
}

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

Map<String, dynamic> _$MetadataValueToJson(MetadataValue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('fieldName', instance.fieldName);
  writeNotNull('displayName', instance.displayName);
  writeNotNull('fieldType', metafieldTypeToJson(instance.fieldType));
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('fieldValues', instance.fieldValues);
  writeNotNull('fieldSelectionValues',
      instance.fieldSelectionValues?.map((e) => e.toJson()).toList());
  writeNotNull('allowNulls', instance.allowNulls);
  writeNotNull('sortOrder', instance.sortOrder);
  return val;
}

ModifyFileRequestModel _$ModifyFileRequestModelFromJson(
        Map<String, dynamic> json) =>
    ModifyFileRequestModel(
      objectId: json['objectId'] as String?,
      objectType: json['objectType'] as String?,
      relatedRoleCodeObjects: (json['relatedRoleCodeObjects'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      relatedRoleCode: json['relatedRoleCode'] as String?,
      relatedObjectIdList: (json['relatedObjectIdList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      relatedBaseCategory: json['relatedBaseCategory'] as String?,
      relatedFondId: json['relatedFondId'] as String?,
      relatedArchiveTypeId: json['relatedArchiveTypeId'] as String?,
      relatedRecordCollectionId: json['relatedRecordCollectionId'] as String?,
      relatedRecordId: json['relatedRecordId'] as String?,
      relatedProjectId: json['relatedProjectId'] as String?,
      relatedTaskId: json['relatedTaskId'] as String?,
      relatedRespartnerId: json['relatedRespartnerId'] as String?,
      relatedObject1: json['relatedObject1'] as String?,
      relatedObject1Type: json['relatedObject1Type'] as String?,
      relatedObject2: json['relatedObject2'] as String?,
      relatedObject2Type: json['relatedObject2Type'] as String?,
      id: json['id'] as String?,
      parentId: json['parentId'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      labels: json['labels'] as String?,
      imageUrl: json['imageUrl'] as String?,
      description: json['description'] as String?,
      nodeTypeObj: nodeTypeEnumFromJson(json['nodeTypeObj']),
      metaContentType: json['metaContentType'] as String?,
      metadataContentObj: (json['metadataContentObj'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataObj: (json['metadataObj'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      ownerId: json['ownerId'] as String?,
      isPublish: json['isPublish'] as bool?,
      isSearchable: json['isSearchable'] as bool?,
      aclObject: json['aclObject'] == null
          ? null
          : ACLObject.fromJson(json['aclObject'] as Map<String, dynamic>),
      metaContent: json['metaContent'] as String?,
      parentIds: (json['parentIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ModifyFileRequestModelToJson(
    ModifyFileRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('relatedRoleCodeObjects', instance.relatedRoleCodeObjects);
  writeNotNull('relatedRoleCode', instance.relatedRoleCode);
  writeNotNull('relatedObjectIdList', instance.relatedObjectIdList);
  writeNotNull('relatedBaseCategory', instance.relatedBaseCategory);
  writeNotNull('relatedFondId', instance.relatedFondId);
  writeNotNull('relatedArchiveTypeId', instance.relatedArchiveTypeId);
  writeNotNull('relatedRecordCollectionId', instance.relatedRecordCollectionId);
  writeNotNull('relatedRecordId', instance.relatedRecordId);
  writeNotNull('relatedProjectId', instance.relatedProjectId);
  writeNotNull('relatedTaskId', instance.relatedTaskId);
  writeNotNull('relatedRespartnerId', instance.relatedRespartnerId);
  writeNotNull('relatedObject1', instance.relatedObject1);
  writeNotNull('relatedObject1Type', instance.relatedObject1Type);
  writeNotNull('relatedObject2', instance.relatedObject2);
  writeNotNull('relatedObject2Type', instance.relatedObject2Type);
  writeNotNull('id', instance.id);
  writeNotNull('parentId', instance.parentId);
  writeNotNull('name', instance.name);
  writeNotNull('type', instance.type);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull('labels', instance.labels);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('description', instance.description);
  writeNotNull('nodeTypeObj', nodeTypeEnumToJson(instance.nodeTypeObj));
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('metadataContentObj',
      instance.metadataContentObj?.map((e) => e.toJson()).toList());
  writeNotNull(
      'metadataObj', instance.metadataObj?.map((e) => e.toJson()).toList());
  writeNotNull('ownerId', instance.ownerId);
  writeNotNull('isPublish', instance.isPublish);
  writeNotNull('isSearchable', instance.isSearchable);
  writeNotNull('aclObject', instance.aclObject?.toJson());
  writeNotNull('metaContent', instance.metaContent);
  writeNotNull('parentIds', instance.parentIds);
  return val;
}

ObjectPagination _$ObjectPaginationFromJson(Map<String, dynamic> json) =>
    ObjectPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ObjectPaginationToJson(ObjectPagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('numberOfRecords', instance.numberOfRecords);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('content', instance.content);
  return val;
}

ObjectResponseList _$ObjectResponseListFromJson(Map<String, dynamic> json) =>
    ObjectResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data:
          (json['data'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
              [],
    );

Map<String, dynamic> _$ObjectResponseListToJson(ObjectResponseList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data);
  return val;
}

ObjectResponseObject _$ObjectResponseObjectFromJson(
        Map<String, dynamic> json) =>
    ObjectResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'],
    );

Map<String, dynamic> _$ObjectResponseObjectToJson(
    ObjectResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data);
  return val;
}

ObjectResponsePagination _$ObjectResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    ObjectResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : ObjectPagination.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ObjectResponsePaginationToJson(
    ObjectResponsePagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

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

Map<String, dynamic> _$OrgToJson(Org instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('organization', instance.organization);
  writeNotNull('startTime', instance.startTime?.toIso8601String());
  writeNotNull('endTime', instance.endTime?.toIso8601String());
  writeNotNull('description', instance.description);
  return val;
}

PMProject _$PMProjectFromJson(Map<String, dynamic> json) => PMProject(
      createdByUserId: json['createdByUserId'] as String?,
      lastModifiedByUserId: json['lastModifiedByUserId'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      applicationId: json['applicationId'] as String?,
      aclObject: json['aclObject'] == null
          ? null
          : ACLObject.fromJson(json['aclObject'] as Map<String, dynamic>),
      acl: json['acl'] as String?,
      id: json['id'] as String?,
      code: json['code'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      parentId: json['parentId'] as String?,
      parentType: json['parentType'] as String?,
      priorityObj: priorityEnumsFromJson(json['priorityObj']),
      priority: json['priority'] as int?,
      weight: json['weight'] as int?,
      rank: json['rank'] as int?,
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      labels: json['labels'] as String?,
      managementObj: (json['managementObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      management: json['management'] as String?,
      ownerObj: (json['ownerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      owner: json['owner'] as String?,
      supervisorObj: (json['supervisorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      supervisor: json['supervisor'] as String?,
      coordinatorObj: (json['coordinatorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      coordinator: json['coordinator'] as String?,
      assigneeObj: (json['assigneeObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      assignee: json['assignee'] as String?,
      viewerObj: (json['viewerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      viewer: json['viewer'] as String?,
      statusObj: pMStatusEnumsFromJson(json['statusObj']),
      status: json['status'] as int?,
      objectId: json['objectId'] as String?,
      objectType: json['objectType'] as String?,
      objectAction: json['objectAction'] as String?,
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      finishDate: json['finishDate'] == null
          ? null
          : DateTime.parse(json['finishDate'] as String),
      estimateTime: (json['estimateTime'] as num?)?.toDouble(),
      actualTime: (json['actualTime'] as num?)?.toDouble(),
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContent: json['metadataContent'] as String?,
      metaContentType: json['metaContentType'] as String?,
      order: json['order'] as int?,
      cLeft: json['c_left'] as int?,
      cRight: json['c_right'] as int?,
      cLevel: json['c_level'] as int?,
      projectTemplateId: json['projectTemplateId'] as String?,
      workflowStatus: json['workflowStatus'] as int?,
      ref: json['ref'] as String?,
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$PMProjectToJson(PMProject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('aclObject', instance.aclObject?.toJson());
  writeNotNull('acl', instance.acl);
  writeNotNull('id', instance.id);
  val['code'] = instance.code;
  val['name'] = instance.name;
  writeNotNull('description', instance.description);
  writeNotNull('parentId', instance.parentId);
  writeNotNull('parentType', instance.parentType);
  writeNotNull('priorityObj', priorityEnumsToJson(instance.priorityObj));
  writeNotNull('priority', instance.priority);
  writeNotNull('weight', instance.weight);
  writeNotNull('rank', instance.rank);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull('labels', instance.labels);
  writeNotNull('managementObj', instance.managementObj);
  writeNotNull('management', instance.management);
  writeNotNull('ownerObj', instance.ownerObj);
  writeNotNull('owner', instance.owner);
  writeNotNull('supervisorObj', instance.supervisorObj);
  writeNotNull('supervisor', instance.supervisor);
  writeNotNull('coordinatorObj', instance.coordinatorObj);
  writeNotNull('coordinator', instance.coordinator);
  writeNotNull('assigneeObj', instance.assigneeObj);
  writeNotNull('assignee', instance.assignee);
  writeNotNull('viewerObj', instance.viewerObj);
  writeNotNull('viewer', instance.viewer);
  writeNotNull('statusObj', pMStatusEnumsToJson(instance.statusObj));
  writeNotNull('status', instance.status);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('objectAction', instance.objectAction);
  writeNotNull('fromDate', instance.fromDate?.toIso8601String());
  writeNotNull('toDate', instance.toDate?.toIso8601String());
  writeNotNull('finishDate', instance.finishDate?.toIso8601String());
  writeNotNull('estimateTime', instance.estimateTime);
  writeNotNull('actualTime', instance.actualTime);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('order', instance.order);
  writeNotNull('c_left', instance.cLeft);
  writeNotNull('c_right', instance.cRight);
  writeNotNull('c_level', instance.cLevel);
  writeNotNull('projectTemplateId', instance.projectTemplateId);
  writeNotNull('workflowStatus', instance.workflowStatus);
  writeNotNull('ref', instance.ref);
  writeNotNull('isDeleted', instance.isDeleted);
  return val;
}

PMProjectResponseObject _$PMProjectResponseObjectFromJson(
        Map<String, dynamic> json) =>
    PMProjectResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : PMProject.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PMProjectResponseObjectToJson(
    PMProjectResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

PatchUpdateFileRequestModel _$PatchUpdateFileRequestModelFromJson(
        Map<String, dynamic> json) =>
    PatchUpdateFileRequestModel(
      objectId: json['objectId'] as String?,
      objectType: json['objectType'] as String?,
      relatedRoleCodeObjects: (json['relatedRoleCodeObjects'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      relatedRoleCode: json['relatedRoleCode'] as String?,
      relatedObjectIdList: (json['relatedObjectIdList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      relatedBaseCategory: json['relatedBaseCategory'] as String?,
      relatedFondId: json['relatedFondId'] as String?,
      relatedArchiveTypeId: json['relatedArchiveTypeId'] as String?,
      relatedRecordCollectionId: json['relatedRecordCollectionId'] as String?,
      relatedRecordId: json['relatedRecordId'] as String?,
      relatedProjectId: json['relatedProjectId'] as String?,
      relatedTaskId: json['relatedTaskId'] as String?,
      relatedRespartnerId: json['relatedRespartnerId'] as String?,
      relatedObject1: json['relatedObject1'] as String?,
      relatedObject1Type: json['relatedObject1Type'] as String?,
      relatedObject2: json['relatedObject2'] as String?,
      relatedObject2Type: json['relatedObject2Type'] as String?,
      name: json['name'] as String?,
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      imageUrl: json['imageUrl'] as String?,
      type: json['type'] as String?,
      description: json['description'] as String?,
      aclObject: json['aclObject'] == null
          ? null
          : ACLObject.fromJson(json['aclObject'] as Map<String, dynamic>),
      metadataContentObj: (json['metadataContentObj'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      parentId: json['parentId'] as String?,
      parentIds: (json['parentIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      metadataObj: (json['metadataObj'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      ownerId: json['ownerId'] as String?,
      isPublish: json['isPublish'] as bool?,
      isSearchable: json['isSearchable'] as bool?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$PatchUpdateFileRequestModelToJson(
    PatchUpdateFileRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('relatedRoleCodeObjects', instance.relatedRoleCodeObjects);
  writeNotNull('relatedRoleCode', instance.relatedRoleCode);
  writeNotNull('relatedObjectIdList', instance.relatedObjectIdList);
  writeNotNull('relatedBaseCategory', instance.relatedBaseCategory);
  writeNotNull('relatedFondId', instance.relatedFondId);
  writeNotNull('relatedArchiveTypeId', instance.relatedArchiveTypeId);
  writeNotNull('relatedRecordCollectionId', instance.relatedRecordCollectionId);
  writeNotNull('relatedRecordId', instance.relatedRecordId);
  writeNotNull('relatedProjectId', instance.relatedProjectId);
  writeNotNull('relatedTaskId', instance.relatedTaskId);
  writeNotNull('relatedRespartnerId', instance.relatedRespartnerId);
  writeNotNull('relatedObject1', instance.relatedObject1);
  writeNotNull('relatedObject1Type', instance.relatedObject1Type);
  writeNotNull('relatedObject2', instance.relatedObject2);
  writeNotNull('relatedObject2Type', instance.relatedObject2Type);
  writeNotNull('name', instance.name);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('type', instance.type);
  writeNotNull('description', instance.description);
  writeNotNull('aclObject', instance.aclObject?.toJson());
  writeNotNull('metadataContentObj',
      instance.metadataContentObj?.map((e) => e.toJson()).toList());
  writeNotNull('parentId', instance.parentId);
  writeNotNull('parentIds', instance.parentIds);
  writeNotNull(
      'metadataObj', instance.metadataObj?.map((e) => e.toJson()).toList());
  writeNotNull('ownerId', instance.ownerId);
  writeNotNull('isPublish', instance.isPublish);
  writeNotNull('isSearchable', instance.isSearchable);
  writeNotNull('id', instance.id);
  return val;
}

PatchUpdateFilesMetadataRequestModel
    _$PatchUpdateFilesMetadataRequestModelFromJson(Map<String, dynamic> json) =>
        PatchUpdateFilesMetadataRequestModel(
          id: json['id'] as String?,
          metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
                  ?.map(
                      (e) => MetadataValue.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$PatchUpdateFilesMetadataRequestModelToJson(
    PatchUpdateFilesMetadataRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  return val;
}

PatchUpdateFilesParentRequestModel _$PatchUpdateFilesParentRequestModelFromJson(
        Map<String, dynamic> json) =>
    PatchUpdateFilesParentRequestModel(
      id: json['id'] as String?,
      parentId: json['parentId'] as String?,
    );

Map<String, dynamic> _$PatchUpdateFilesParentRequestModelToJson(
    PatchUpdateFilesParentRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('parentId', instance.parentId);
  return val;
}

Phone _$PhoneFromJson(Map<String, dynamic> json) => Phone(
      type:
          (json['type'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$PhoneToJson(Phone instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('uri', instance.uri);
  return val;
}

PlanLaborModel _$PlanLaborModelFromJson(Map<String, dynamic> json) =>
    PlanLaborModel(
      laborProtectionAllocation: json['laborProtectionAllocation'] == null
          ? null
          : LaborProtectionAllocation.fromJson(
              json['laborProtectionAllocation'] as Map<String, dynamic>),
      listLaborProtectionAllocationDetailModel:
          (json['listLaborProtectionAllocationDetailModel'] as List<dynamic>?)
                  ?.map((e) => LaborProtectionAllocationDetailModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
    );

Map<String, dynamic> _$PlanLaborModelToJson(PlanLaborModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('laborProtectionAllocation',
      instance.laborProtectionAllocation?.toJson());
  writeNotNull(
      'listLaborProtectionAllocationDetailModel',
      instance.listLaborProtectionAllocationDetailModel
          ?.map((e) => e.toJson())
          .toList());
  return val;
}

PlanLaborModelResponseObject _$PlanLaborModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    PlanLaborModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : PlanLaborModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlanLaborModelResponseObjectToJson(
    PlanLaborModelResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

PlanningCloneRequestModel _$PlanningCloneRequestModelFromJson(
        Map<String, dynamic> json) =>
    PlanningCloneRequestModel(
      srcYear: json['srcYear'] as int?,
      destYear: json['destYear'] as int?,
    );

Map<String, dynamic> _$PlanningCloneRequestModelToJson(
    PlanningCloneRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('srcYear', instance.srcYear);
  writeNotNull('destYear', instance.destYear);
  return val;
}

PlanningModel _$PlanningModelFromJson(Map<String, dynamic> json) =>
    PlanningModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      state: json['state'] as String?,
      datePlannedStart: json['datePlannedStart'] == null
          ? null
          : DateTime.parse(json['datePlannedStart'] as String),
      objectId: json['objectId'] as String?,
      unitId: json['unitId'] as String?,
      objectName: json['objectName'] as String?,
      objectType: json['objectType'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      locationSrcId: json['locationSrcId'] as String?,
      locationSrcName: json['locationSrcName'] as String?,
      description: json['description'] as String?,
      notebookId: json['notebookId'] as String?,
      productionMasterId: json['productionMasterId'] as String?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      details: (json['details'] as List<dynamic>?)
              ?.map((e) => ProductionWorkOrderPlanningModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PlanningModelToJson(PlanningModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('state', instance.state);
  writeNotNull(
      'datePlannedStart', instance.datePlannedStart?.toIso8601String());
  writeNotNull('objectId', instance.objectId);
  writeNotNull('unitId', instance.unitId);
  writeNotNull('objectName', instance.objectName);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('locationSrcId', instance.locationSrcId);
  writeNotNull('locationSrcName', instance.locationSrcName);
  writeNotNull('description', instance.description);
  writeNotNull('notebookId', instance.notebookId);
  writeNotNull('productionMasterId', instance.productionMasterId);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('details', instance.details?.map((e) => e.toJson()).toList());
  return val;
}

PlanningModelOldResponseList _$PlanningModelOldResponseListFromJson(
        Map<String, dynamic> json) =>
    PlanningModelOldResponseList(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => PlanningModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      totalCount: json['totalCount'] as int?,
      dataCount: json['dataCount'] as int?,
      status: json['status'] as int?,
      salaryCount: (json['salaryCount'] as num?)?.toDouble(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$PlanningModelOldResponseListToJson(
    PlanningModelOldResponseList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  writeNotNull('totalCount', instance.totalCount);
  writeNotNull('dataCount', instance.dataCount);
  writeNotNull('status', instance.status);
  writeNotNull('salaryCount', instance.salaryCount);
  writeNotNull('message', instance.message);
  return val;
}

PlanningModelOldResponseListResponseObject
    _$PlanningModelOldResponseListResponseObjectFromJson(
            Map<String, dynamic> json) =>
        PlanningModelOldResponseListResponseObject(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: json['data'] == null
              ? null
              : PlanningModelOldResponseList.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$PlanningModelOldResponseListResponseObjectToJson(
    PlanningModelOldResponseListResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

PlanningModelResponseObject _$PlanningModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    PlanningModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : PlanningModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlanningModelResponseObjectToJson(
    PlanningModelResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

PlanningResponseListModel _$PlanningResponseListModelFromJson(
        Map<String, dynamic> json) =>
    PlanningResponseListModel(
      productionMasterModel: json['productionMasterModel'] == null
          ? null
          : ProductionMasterModel.fromJson(
              json['productionMasterModel'] as Map<String, dynamic>),
      laborProtectionAllocation: (json['laborProtectionAllocation']
                  as List<dynamic>?)
              ?.map((e) =>
                  LaborProtectionAllocation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PlanningResponseListModelToJson(
    PlanningResponseListModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'productionMasterModel', instance.productionMasterModel?.toJson());
  writeNotNull('laborProtectionAllocation',
      instance.laborProtectionAllocation?.map((e) => e.toJson()).toList());
  return val;
}

PlanningResponseListModelResponseObject
    _$PlanningResponseListModelResponseObjectFromJson(
            Map<String, dynamic> json) =>
        PlanningResponseListModelResponseObject(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: json['data'] == null
              ? null
              : PlanningResponseListModel.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$PlanningResponseListModelResponseObjectToJson(
    PlanningResponseListModelResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

Production _$ProductionFromJson(Map<String, dynamic> json) => Production(
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
      id: json['id'] as String?,
      name: json['name'] as String?,
      origin: json['origin'] as String?,
      originDetailId: json['originDetailId'] as String?,
      objectId: json['objectId'] as String?,
      objectName: json['objectName'] as String?,
      objectType: json['objectType'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      unitId: json['unitId'] as String?,
      unitName: json['unitName'] as String?,
      pickingTypeId: json['pickingTypeId'] as String?,
      locationSrcId: json['locationSrcId'] as String?,
      locationSrcName: json['locationSrcName'] as String?,
      locationDestId: json['locationDestId'] as String?,
      locationDestName: json['locationDestName'] as String?,
      datePlannedStart: json['datePlannedStart'] == null
          ? null
          : DateTime.parse(json['datePlannedStart'] as String),
      datePlannedFinished: json['datePlannedFinished'] == null
          ? null
          : DateTime.parse(json['datePlannedFinished'] as String),
      dateStart: json['dateStart'] == null
          ? null
          : DateTime.parse(json['dateStart'] as String),
      dateFinished: json['dateFinished'] == null
          ? null
          : DateTime.parse(json['dateFinished'] as String),
      bomId: json['bomId'] as String?,
      bomTempId: json['bomTempId'] as String?,
      deXe: (json['deXe'] as num?)?.toDouble(),
      routingId: json['routingId'] as String?,
      routingName: json['routingName'] as String?,
      state: json['state'] as String?,
      availability: json['availability'] as String?,
      userId: json['userId'] as String?,
      companyId: json['companyId'] as String?,
      companyName: json['companyName'] as String?,
      procurementGroupId: json['procurementGroupId'] as String?,
      propagate: json['propagate'] as bool?,
      order: json['order'] as int?,
      isLocked: json['isLocked'] as bool?,
      productIndustry: json['productIndustry'] as String?,
      description: json['description'] as String?,
      productionMasterId: json['productionMasterId'] as String?,
    );

Map<String, dynamic> _$ProductionToJson(Production instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('origin', instance.origin);
  writeNotNull('originDetailId', instance.originDetailId);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectName', instance.objectName);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('unitId', instance.unitId);
  writeNotNull('unitName', instance.unitName);
  writeNotNull('pickingTypeId', instance.pickingTypeId);
  writeNotNull('locationSrcId', instance.locationSrcId);
  writeNotNull('locationSrcName', instance.locationSrcName);
  writeNotNull('locationDestId', instance.locationDestId);
  writeNotNull('locationDestName', instance.locationDestName);
  writeNotNull(
      'datePlannedStart', instance.datePlannedStart?.toIso8601String());
  writeNotNull(
      'datePlannedFinished', instance.datePlannedFinished?.toIso8601String());
  writeNotNull('dateStart', instance.dateStart?.toIso8601String());
  writeNotNull('dateFinished', instance.dateFinished?.toIso8601String());
  writeNotNull('bomId', instance.bomId);
  writeNotNull('bomTempId', instance.bomTempId);
  writeNotNull('deXe', instance.deXe);
  writeNotNull('routingId', instance.routingId);
  writeNotNull('routingName', instance.routingName);
  writeNotNull('state', instance.state);
  writeNotNull('availability', instance.availability);
  writeNotNull('userId', instance.userId);
  writeNotNull('companyId', instance.companyId);
  writeNotNull('companyName', instance.companyName);
  writeNotNull('procurementGroupId', instance.procurementGroupId);
  writeNotNull('propagate', instance.propagate);
  writeNotNull('order', instance.order);
  writeNotNull('isLocked', instance.isLocked);
  writeNotNull('productIndustry', instance.productIndustry);
  writeNotNull('description', instance.description);
  writeNotNull('productionMasterId', instance.productionMasterId);
  return val;
}

ProductionDetail _$ProductionDetailFromJson(Map<String, dynamic> json) =>
    ProductionDetail(
      locationId: json['locationId'] as String?,
      locationName: json['locationName'] as String?,
      state: json['state'] as String?,
      detailLocations: (json['detailLocations'] as List<dynamic>?)
              ?.map((e) => DetailLocation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ProductionDetailToJson(ProductionDetail instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locationId', instance.locationId);
  writeNotNull('locationName', instance.locationName);
  writeNotNull('state', instance.state);
  writeNotNull('detailLocations',
      instance.detailLocations?.map((e) => e.toJson()).toList());
  return val;
}

ProductionMaster _$ProductionMasterFromJson(Map<String, dynamic> json) =>
    ProductionMaster(
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
      id: json['id'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      timeOfPlan: json['timeOfPlan'] == null
          ? null
          : DateTime.parse(json['timeOfPlan'] as String),
      state: json['state'] as String?,
      sumOfPlanning: (json['sumOfPlanning'] as num?)?.toDouble(),
      sumOfPlanned: (json['sumOfPlanned'] as num?)?.toDouble(),
      sumOfDraft: (json['sumOfDraft'] as num?)?.toDouble(),
      version: json['version'] as int?,
      workflowState: json['workflowState'] as String?,
      workflowStatus: json['workflowStatus'] as String?,
      sumOfPlannedGroup: (json['sumOfPlannedGroup'] as num?)?.toDouble(),
      sumOfDraftGroup: (json['sumOfDraftGroup'] as num?)?.toDouble(),
      sumOfPlanningGroup: (json['sumOfPlanningGroup'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProductionMasterToJson(ProductionMaster instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('id', instance.id);
  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  writeNotNull('timeOfPlan', instance.timeOfPlan?.toIso8601String());
  writeNotNull('state', instance.state);
  writeNotNull('sumOfPlanning', instance.sumOfPlanning);
  writeNotNull('sumOfPlanned', instance.sumOfPlanned);
  writeNotNull('sumOfDraft', instance.sumOfDraft);
  writeNotNull('version', instance.version);
  writeNotNull('workflowState', instance.workflowState);
  writeNotNull('workflowStatus', instance.workflowStatus);
  writeNotNull('sumOfPlannedGroup', instance.sumOfPlannedGroup);
  writeNotNull('sumOfDraftGroup', instance.sumOfDraftGroup);
  writeNotNull('sumOfPlanningGroup', instance.sumOfPlanningGroup);
  return val;
}

ProductionMasterModel _$ProductionMasterModelFromJson(
        Map<String, dynamic> json) =>
    ProductionMasterModel(
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
      id: json['id'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      timeOfPlan: json['timeOfPlan'] == null
          ? null
          : DateTime.parse(json['timeOfPlan'] as String),
      sumOfPlanning: (json['sumOfPlanning'] as num?)?.toDouble(),
      sumOfPlanned: (json['sumOfPlanned'] as num?)?.toDouble(),
      sumOfDraft: (json['sumOfDraft'] as num?)?.toDouble(),
      version: json['version'] as int?,
      workflowState: json['workflowState'] as String?,
      workflowStatus: json['workflowStatus'] as String?,
      sumOfPlannedGroup: (json['sumOfPlannedGroup'] as num?)?.toDouble(),
      sumOfDraftGroup: (json['sumOfDraftGroup'] as num?)?.toDouble(),
      sumOfPlanningGroup: (json['sumOfPlanningGroup'] as num?)?.toDouble(),
      productionDetails: (json['productionDetails'] as List<dynamic>?)
              ?.map((e) => ProductionDetail.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ProductionMasterModelToJson(
    ProductionMasterModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('id', instance.id);
  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  writeNotNull('timeOfPlan', instance.timeOfPlan?.toIso8601String());
  writeNotNull('sumOfPlanning', instance.sumOfPlanning);
  writeNotNull('sumOfPlanned', instance.sumOfPlanned);
  writeNotNull('sumOfDraft', instance.sumOfDraft);
  writeNotNull('version', instance.version);
  writeNotNull('workflowState', instance.workflowState);
  writeNotNull('workflowStatus', instance.workflowStatus);
  writeNotNull('sumOfPlannedGroup', instance.sumOfPlannedGroup);
  writeNotNull('sumOfDraftGroup', instance.sumOfDraftGroup);
  writeNotNull('sumOfPlanningGroup', instance.sumOfPlanningGroup);
  writeNotNull('productionDetails',
      instance.productionDetails?.map((e) => e.toJson()).toList());
  return val;
}

ProductionMasterResponseObject _$ProductionMasterResponseObjectFromJson(
        Map<String, dynamic> json) =>
    ProductionMasterResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : ProductionMaster.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductionMasterResponseObjectToJson(
    ProductionMasterResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

ProductionPagination _$ProductionPaginationFromJson(
        Map<String, dynamic> json) =>
    ProductionPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => Production.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ProductionPaginationToJson(
    ProductionPagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('numberOfRecords', instance.numberOfRecords);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('content', instance.content?.map((e) => e.toJson()).toList());
  return val;
}

ProductionResponseObject _$ProductionResponseObjectFromJson(
        Map<String, dynamic> json) =>
    ProductionResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : Production.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductionResponseObjectToJson(
    ProductionResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

ProductionResponsePagination _$ProductionResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    ProductionResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : ProductionPagination.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductionResponsePaginationToJson(
    ProductionResponsePagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

ProductionWorkOrderPlanningModel _$ProductionWorkOrderPlanningModelFromJson(
        Map<String, dynamic> json) =>
    ProductionWorkOrderPlanningModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      workCenterId: json['workCenterId'] as String?,
      productionId: json['productionId'] as String?,
      objectId: json['objectId'] as String?,
      productionAvailability: json['productionAvailability'] as String?,
      qtyProduced: (json['qtyProduced'] as num?)?.toDouble(),
      qtyProducing: (json['qtyProducing'] as num?)?.toDouble(),
      state: json['state'] as String?,
      datePlannedStart: json['datePlannedStart'] == null
          ? null
          : DateTime.parse(json['datePlannedStart'] as String),
      datePlannedFinished: json['datePlannedFinished'] == null
          ? null
          : DateTime.parse(json['datePlannedFinished'] as String),
      dateStart: json['dateStart'] == null
          ? null
          : DateTime.parse(json['dateStart'] as String),
      dateFinished: json['dateFinished'] == null
          ? null
          : DateTime.parse(json['dateFinished'] as String),
      durationExpected: (json['durationExpected'] as num?)?.toDouble(),
      duration: (json['duration'] as num?)?.toDouble(),
      durationUnit: (json['durationUnit'] as num?)?.toDouble(),
      durationPercent: json['durationPercent'] as int?,
      operationId: json['operationId'] as String?,
      finalLotId: json['finalLotId'] as String?,
      nextWorkOrderId: json['nextWorkOrderId'] as String?,
      productionDate: json['productionDate'] == null
          ? null
          : DateTime.parse(json['productionDate'] as String),
      capacity: (json['capacity'] as num?)?.toDouble(),
      machineId: json['machineId'] as String?,
      operatorId: json['operatorId'] as String?,
      semiFinishedProductId: json['semiFinishedProductId'] as String?,
      semiFinishedProductUnitId: json['semiFinishedProductUnitId'] as String?,
      qtySemiFinishedProduct:
          (json['qtySemiFinishedProduct'] as num?)?.toDouble(),
      description: json['description'] as String?,
      totalQtyPlanned: (json['totalQtyPlanned'] as num?)?.toDouble(),
      convertToKgResult: (json['convertToKgResult'] as num?)?.toDouble(),
      planningDetails: (json['planningDetails'] as List<dynamic>?)
              ?.map(
                  (e) => WorkOrderPlanning.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ProductionWorkOrderPlanningModelToJson(
    ProductionWorkOrderPlanningModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('workCenterId', instance.workCenterId);
  writeNotNull('productionId', instance.productionId);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('productionAvailability', instance.productionAvailability);
  writeNotNull('qtyProduced', instance.qtyProduced);
  writeNotNull('qtyProducing', instance.qtyProducing);
  writeNotNull('state', instance.state);
  writeNotNull(
      'datePlannedStart', instance.datePlannedStart?.toIso8601String());
  writeNotNull(
      'datePlannedFinished', instance.datePlannedFinished?.toIso8601String());
  writeNotNull('dateStart', instance.dateStart?.toIso8601String());
  writeNotNull('dateFinished', instance.dateFinished?.toIso8601String());
  writeNotNull('durationExpected', instance.durationExpected);
  writeNotNull('duration', instance.duration);
  writeNotNull('durationUnit', instance.durationUnit);
  writeNotNull('durationPercent', instance.durationPercent);
  writeNotNull('operationId', instance.operationId);
  writeNotNull('finalLotId', instance.finalLotId);
  writeNotNull('nextWorkOrderId', instance.nextWorkOrderId);
  writeNotNull('productionDate', instance.productionDate?.toIso8601String());
  writeNotNull('capacity', instance.capacity);
  writeNotNull('machineId', instance.machineId);
  writeNotNull('operatorId', instance.operatorId);
  writeNotNull('semiFinishedProductId', instance.semiFinishedProductId);
  writeNotNull('semiFinishedProductUnitId', instance.semiFinishedProductUnitId);
  writeNotNull('qtySemiFinishedProduct', instance.qtySemiFinishedProduct);
  writeNotNull('description', instance.description);
  writeNotNull('totalQtyPlanned', instance.totalQtyPlanned);
  writeNotNull('convertToKgResult', instance.convertToKgResult);
  writeNotNull('planningDetails',
      instance.planningDetails?.map((e) => e.toJson()).toList());
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  return val;
}

ProjectCloneRequestModel _$ProjectCloneRequestModelFromJson(
        Map<String, dynamic> json) =>
    ProjectCloneRequestModel(
      code: json['code'] as String?,
    );

Map<String, dynamic> _$ProjectCloneRequestModelToJson(
    ProjectCloneRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  return val;
}

ProjectPatchResquestModel _$ProjectPatchResquestModelFromJson(
        Map<String, dynamic> json) =>
    ProjectPatchResquestModel(
      id: json['id'] as String?,
      parentId: json['parentId'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      order: json['order'] as int?,
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      finishDate: json['finishDate'] == null
          ? null
          : DateTime.parse(json['finishDate'] as String),
      estimateTime: (json['estimateTime'] as num?)?.toDouble(),
      actualTime: (json['actualTime'] as num?)?.toDouble(),
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      priorityObj: priorityEnumsFromJson(json['priorityObj']),
      weight: json['weight'] as int?,
      rank: json['rank'] as int?,
      statusObj: pMStatusEnumsFromJson(json['statusObj']),
      managementObj: (json['managementObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      ownerObj: (json['ownerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      supervisorObj: (json['supervisorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      coordinatorObj: (json['coordinatorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      assigneeObj: (json['assigneeObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      viewerObj: (json['viewerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      aclObject: json['aclObject'] == null
          ? null
          : ACLObject.fromJson(json['aclObject'] as Map<String, dynamic>),
      metaContentType: json['metaContentType'] as String?,
      projectTemplateId: json['projectTemplateId'] as String?,
    );

Map<String, dynamic> _$ProjectPatchResquestModelToJson(
    ProjectPatchResquestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('parentId', instance.parentId);
  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('order', instance.order);
  writeNotNull('fromDate', instance.fromDate?.toIso8601String());
  writeNotNull('toDate', instance.toDate?.toIso8601String());
  writeNotNull('finishDate', instance.finishDate?.toIso8601String());
  writeNotNull('estimateTime', instance.estimateTime);
  writeNotNull('actualTime', instance.actualTime);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull('priorityObj', priorityEnumsToJson(instance.priorityObj));
  writeNotNull('weight', instance.weight);
  writeNotNull('rank', instance.rank);
  writeNotNull('statusObj', pMStatusEnumsToJson(instance.statusObj));
  writeNotNull('managementObj', instance.managementObj);
  writeNotNull('ownerObj', instance.ownerObj);
  writeNotNull('supervisorObj', instance.supervisorObj);
  writeNotNull('coordinatorObj', instance.coordinatorObj);
  writeNotNull('assigneeObj', instance.assigneeObj);
  writeNotNull('viewerObj', instance.viewerObj);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('aclObject', instance.aclObject?.toJson());
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('projectTemplateId', instance.projectTemplateId);
  return val;
}

ProjectResquestModel _$ProjectResquestModelFromJson(
        Map<String, dynamic> json) =>
    ProjectResquestModel(
      createdByUserId: json['createdByUserId'] as String?,
      lastModifiedByUserId: json['lastModifiedByUserId'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      applicationId: json['applicationId'] as String?,
      acl: json['acl'] as String?,
      id: json['id'] as String?,
      code: json['code'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      parentId: json['parentId'] as String?,
      parentType: json['parentType'] as String?,
      priorityObj: priorityEnumsFromJson(json['priorityObj']),
      priority: json['priority'] as int?,
      weight: json['weight'] as int?,
      rank: json['rank'] as int?,
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      labels: json['labels'] as String?,
      managementObj: (json['managementObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      management: json['management'] as String?,
      ownerObj: (json['ownerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      owner: json['owner'] as String?,
      supervisorObj: (json['supervisorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      supervisor: json['supervisor'] as String?,
      coordinatorObj: (json['coordinatorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      coordinator: json['coordinator'] as String?,
      assigneeObj: (json['assigneeObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      assignee: json['assignee'] as String?,
      viewerObj: (json['viewerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      viewer: json['viewer'] as String?,
      statusObj: pMStatusEnumsFromJson(json['statusObj']),
      status: json['status'] as int?,
      objectId: json['objectId'] as String?,
      objectType: json['objectType'] as String?,
      objectAction: json['objectAction'] as String?,
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      finishDate: json['finishDate'] == null
          ? null
          : DateTime.parse(json['finishDate'] as String),
      estimateTime: (json['estimateTime'] as num?)?.toDouble(),
      actualTime: (json['actualTime'] as num?)?.toDouble(),
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContent: json['metadataContent'] as String?,
      metaContentType: json['metaContentType'] as String?,
      order: json['order'] as int?,
      cLeft: json['c_left'] as int?,
      cRight: json['c_right'] as int?,
      cLevel: json['c_level'] as int?,
      allowToModify: json['allowToModify'] as bool?,
      allowToView: json['allowToView'] as bool?,
      allowToChangeStatus: json['allowToChangeStatus'] as bool?,
      allowToModifyCoordinator: json['allowToModifyCoordinator'] as bool?,
      allowToModifyFromDate: json['allowToModifyFromDate'] as bool?,
      allowToModifyToDate: json['allowToModifyToDate'] as bool?,
      allowToModifyFinishDate: json['allowToModifyFinishDate'] as bool?,
      relatedFolderId: json['relatedFolderId'] as String?,
      allowToCreateSubTasks: json['allowToCreateSubTasks'] as bool?,
      aclObject: json['aclObject'] == null
          ? null
          : ACLObject.fromJson(json['aclObject'] as Map<String, dynamic>),
      projectTemplateId: json['projectTemplateId'] as String?,
      workflowStatus: json['workflowStatus'] as int?,
    );

Map<String, dynamic> _$ProjectResquestModelToJson(
    ProjectResquestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('acl', instance.acl);
  writeNotNull('id', instance.id);
  val['code'] = instance.code;
  val['name'] = instance.name;
  writeNotNull('description', instance.description);
  writeNotNull('parentId', instance.parentId);
  writeNotNull('parentType', instance.parentType);
  writeNotNull('priorityObj', priorityEnumsToJson(instance.priorityObj));
  writeNotNull('priority', instance.priority);
  writeNotNull('weight', instance.weight);
  writeNotNull('rank', instance.rank);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull('labels', instance.labels);
  writeNotNull('managementObj', instance.managementObj);
  writeNotNull('management', instance.management);
  writeNotNull('ownerObj', instance.ownerObj);
  writeNotNull('owner', instance.owner);
  writeNotNull('supervisorObj', instance.supervisorObj);
  writeNotNull('supervisor', instance.supervisor);
  writeNotNull('coordinatorObj', instance.coordinatorObj);
  writeNotNull('coordinator', instance.coordinator);
  writeNotNull('assigneeObj', instance.assigneeObj);
  writeNotNull('assignee', instance.assignee);
  writeNotNull('viewerObj', instance.viewerObj);
  writeNotNull('viewer', instance.viewer);
  writeNotNull('statusObj', pMStatusEnumsToJson(instance.statusObj));
  writeNotNull('status', instance.status);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('objectAction', instance.objectAction);
  writeNotNull('fromDate', instance.fromDate?.toIso8601String());
  writeNotNull('toDate', instance.toDate?.toIso8601String());
  writeNotNull('finishDate', instance.finishDate?.toIso8601String());
  writeNotNull('estimateTime', instance.estimateTime);
  writeNotNull('actualTime', instance.actualTime);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('order', instance.order);
  writeNotNull('c_left', instance.cLeft);
  writeNotNull('c_right', instance.cRight);
  writeNotNull('c_level', instance.cLevel);
  writeNotNull('allowToModify', instance.allowToModify);
  writeNotNull('allowToView', instance.allowToView);
  writeNotNull('allowToChangeStatus', instance.allowToChangeStatus);
  writeNotNull('allowToModifyCoordinator', instance.allowToModifyCoordinator);
  writeNotNull('allowToModifyFromDate', instance.allowToModifyFromDate);
  writeNotNull('allowToModifyToDate', instance.allowToModifyToDate);
  writeNotNull('allowToModifyFinishDate', instance.allowToModifyFinishDate);
  writeNotNull('relatedFolderId', instance.relatedFolderId);
  writeNotNull('allowToCreateSubTasks', instance.allowToCreateSubTasks);
  writeNotNull('aclObject', instance.aclObject?.toJson());
  writeNotNull('projectTemplateId', instance.projectTemplateId);
  writeNotNull('workflowStatus', instance.workflowStatus);
  return val;
}

ProjectTaskPlanningCreateModel _$ProjectTaskPlanningCreateModelFromJson(
        Map<String, dynamic> json) =>
    ProjectTaskPlanningCreateModel(
      year: json['year'] as int?,
      version: json['version'] as int?,
    );

Map<String, dynamic> _$ProjectTaskPlanningCreateModelToJson(
    ProjectTaskPlanningCreateModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('year', instance.year);
  writeNotNull('version', instance.version);
  return val;
}

ProjectTaskPlanningResponseModel _$ProjectTaskPlanningResponseModelFromJson(
        Map<String, dynamic> json) =>
    ProjectTaskPlanningResponseModel(
      numberProjectsCreated: json['numberProjectsCreated'] as int?,
      numberTasksCreated: json['numberTasksCreated'] as int?,
      numberTasksUpdated: json['numberTasksUpdated'] as int?,
    );

Map<String, dynamic> _$ProjectTaskPlanningResponseModelToJson(
    ProjectTaskPlanningResponseModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('numberProjectsCreated', instance.numberProjectsCreated);
  writeNotNull('numberTasksCreated', instance.numberTasksCreated);
  writeNotNull('numberTasksUpdated', instance.numberTasksUpdated);
  return val;
}

ProjectUpdateParentModel _$ProjectUpdateParentModelFromJson(
        Map<String, dynamic> json) =>
    ProjectUpdateParentModel(
      parentId: json['parentId'] as String?,
      parentType: json['parentType'] as String?,
    );

Map<String, dynamic> _$ProjectUpdateParentModelToJson(
    ProjectUpdateParentModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('parentId', instance.parentId);
  writeNotNull('parentType', instance.parentType);
  return val;
}

ProjectViewModel _$ProjectViewModelFromJson(Map<String, dynamic> json) =>
    ProjectViewModel(
      createdByUserId: json['createdByUserId'] as String?,
      lastModifiedByUserId: json['lastModifiedByUserId'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      applicationId: json['applicationId'] as String?,
      acl: json['acl'] as String?,
      id: json['id'] as String?,
      code: json['code'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      parentId: json['parentId'] as String?,
      parentType: json['parentType'] as String?,
      priorityObj: priorityEnumsFromJson(json['priorityObj']),
      priority: json['priority'] as int?,
      weight: json['weight'] as int?,
      rank: json['rank'] as int?,
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      labels: json['labels'] as String?,
      managementObj: (json['managementObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      management: json['management'] as String?,
      ownerObj: (json['ownerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      owner: json['owner'] as String?,
      supervisorObj: (json['supervisorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      supervisor: json['supervisor'] as String?,
      coordinatorObj: (json['coordinatorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      coordinator: json['coordinator'] as String?,
      assigneeObj: (json['assigneeObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      assignee: json['assignee'] as String?,
      viewerObj: (json['viewerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      viewer: json['viewer'] as String?,
      statusObj: pMStatusEnumsFromJson(json['statusObj']),
      status: json['status'] as int?,
      objectId: json['objectId'] as String?,
      objectType: json['objectType'] as String?,
      objectAction: json['objectAction'] as String?,
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      finishDate: json['finishDate'] == null
          ? null
          : DateTime.parse(json['finishDate'] as String),
      estimateTime: (json['estimateTime'] as num?)?.toDouble(),
      actualTime: (json['actualTime'] as num?)?.toDouble(),
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContent: json['metadataContent'] as String?,
      metaContentType: json['metaContentType'] as String?,
      order: json['order'] as int?,
      cLeft: json['c_left'] as int?,
      cRight: json['c_right'] as int?,
      cLevel: json['c_level'] as int?,
      allowToModify: json['allowToModify'] as bool?,
      allowToView: json['allowToView'] as bool?,
      allowToChangeStatus: json['allowToChangeStatus'] as bool?,
      allowToModifyCoordinator: json['allowToModifyCoordinator'] as bool?,
      allowToModifyFromDate: json['allowToModifyFromDate'] as bool?,
      allowToModifyToDate: json['allowToModifyToDate'] as bool?,
      allowToModifyFinishDate: json['allowToModifyFinishDate'] as bool?,
      relatedFolderId: json['relatedFolderId'] as String?,
      allowToCreateSubTasks: json['allowToCreateSubTasks'] as bool?,
      aclObject: json['aclObject'] == null
          ? null
          : ACLObject.fromJson(json['aclObject'] as Map<String, dynamic>),
      projectTemplateId: json['projectTemplateId'] as String?,
      workflowStatus: json['workflowStatus'] as int?,
    );

Map<String, dynamic> _$ProjectViewModelToJson(ProjectViewModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('acl', instance.acl);
  writeNotNull('id', instance.id);
  val['code'] = instance.code;
  val['name'] = instance.name;
  writeNotNull('description', instance.description);
  writeNotNull('parentId', instance.parentId);
  writeNotNull('parentType', instance.parentType);
  writeNotNull('priorityObj', priorityEnumsToJson(instance.priorityObj));
  writeNotNull('priority', instance.priority);
  writeNotNull('weight', instance.weight);
  writeNotNull('rank', instance.rank);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull('labels', instance.labels);
  writeNotNull('managementObj', instance.managementObj);
  writeNotNull('management', instance.management);
  writeNotNull('ownerObj', instance.ownerObj);
  writeNotNull('owner', instance.owner);
  writeNotNull('supervisorObj', instance.supervisorObj);
  writeNotNull('supervisor', instance.supervisor);
  writeNotNull('coordinatorObj', instance.coordinatorObj);
  writeNotNull('coordinator', instance.coordinator);
  writeNotNull('assigneeObj', instance.assigneeObj);
  writeNotNull('assignee', instance.assignee);
  writeNotNull('viewerObj', instance.viewerObj);
  writeNotNull('viewer', instance.viewer);
  writeNotNull('statusObj', pMStatusEnumsToJson(instance.statusObj));
  writeNotNull('status', instance.status);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('objectAction', instance.objectAction);
  writeNotNull('fromDate', instance.fromDate?.toIso8601String());
  writeNotNull('toDate', instance.toDate?.toIso8601String());
  writeNotNull('finishDate', instance.finishDate?.toIso8601String());
  writeNotNull('estimateTime', instance.estimateTime);
  writeNotNull('actualTime', instance.actualTime);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('order', instance.order);
  writeNotNull('c_left', instance.cLeft);
  writeNotNull('c_right', instance.cRight);
  writeNotNull('c_level', instance.cLevel);
  writeNotNull('allowToModify', instance.allowToModify);
  writeNotNull('allowToView', instance.allowToView);
  writeNotNull('allowToChangeStatus', instance.allowToChangeStatus);
  writeNotNull('allowToModifyCoordinator', instance.allowToModifyCoordinator);
  writeNotNull('allowToModifyFromDate', instance.allowToModifyFromDate);
  writeNotNull('allowToModifyToDate', instance.allowToModifyToDate);
  writeNotNull('allowToModifyFinishDate', instance.allowToModifyFinishDate);
  writeNotNull('relatedFolderId', instance.relatedFolderId);
  writeNotNull('allowToCreateSubTasks', instance.allowToCreateSubTasks);
  writeNotNull('aclObject', instance.aclObject?.toJson());
  writeNotNull('projectTemplateId', instance.projectTemplateId);
  writeNotNull('workflowStatus', instance.workflowStatus);
  return val;
}

ProjectViewModelPagination _$ProjectViewModelPaginationFromJson(
        Map<String, dynamic> json) =>
    ProjectViewModelPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => ProjectViewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ProjectViewModelPaginationToJson(
    ProjectViewModelPagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('numberOfRecords', instance.numberOfRecords);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('content', instance.content?.map((e) => e.toJson()).toList());
  return val;
}

ProjectViewModelResponseList _$ProjectViewModelResponseListFromJson(
        Map<String, dynamic> json) =>
    ProjectViewModelResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ProjectViewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ProjectViewModelResponseListToJson(
    ProjectViewModelResponseList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

ProjectViewModelResponseObject _$ProjectViewModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    ProjectViewModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : ProjectViewModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProjectViewModelResponseObjectToJson(
    ProjectViewModelResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

ProjectViewModelResponsePagination _$ProjectViewModelResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    ProjectViewModelResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : ProjectViewModelPagination.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProjectViewModelResponsePaginationToJson(
    ProjectViewModelResponsePagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

QRCodeRequestModel _$QRCodeRequestModelFromJson(Map<String, dynamic> json) =>
    QRCodeRequestModel(
      id: json['id'] as String?,
      applicationId: json['applicationId'] as String?,
      type: json['type'] as String,
      name: json['name'] as String?,
      description: json['description'] as String?,
      content: json['content'] as String?,
      order: json['order'] as int?,
      imageUrl: json['imageUrl'] as String?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metaContentType: json['metaContentType'] as String?,
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      relatedObjs: (json['relatedObjs'] as List<dynamic>?)
              ?.map((e) => RelatedObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$QRCodeRequestModelToJson(QRCodeRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('applicationId', instance.applicationId);
  val['type'] = instance.type;
  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('content', instance.content);
  writeNotNull('order', instance.order);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull(
      'relatedObjs', instance.relatedObjs?.map((e) => e.toJson()).toList());
  writeNotNull('isActive', instance.isActive);
  return val;
}

QRResponseModel _$QRResponseModelFromJson(Map<String, dynamic> json) =>
    QRResponseModel(
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
      type: json['type'] as String,
      name: json['name'] as String?,
      description: json['description'] as String?,
      content: json['content'] as String?,
      order: json['order'] as int?,
      imageUrl: json['imageUrl'] as String?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metaContentType: json['metaContentType'] as String?,
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      relatedObjs: (json['relatedObjs'] as List<dynamic>?)
              ?.map((e) => RelatedObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$QRResponseModelToJson(QRResponseModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('id', instance.id);
  val['type'] = instance.type;
  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('content', instance.content);
  writeNotNull('order', instance.order);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull(
      'relatedObjs', instance.relatedObjs?.map((e) => e.toJson()).toList());
  writeNotNull('isActive', instance.isActive);
  return val;
}

QRResponseModelPagination _$QRResponseModelPaginationFromJson(
        Map<String, dynamic> json) =>
    QRResponseModelPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => QRResponseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$QRResponseModelPaginationToJson(
    QRResponseModelPagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('numberOfRecords', instance.numberOfRecords);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('content', instance.content?.map((e) => e.toJson()).toList());
  return val;
}

QRResponseModelResponseList _$QRResponseModelResponseListFromJson(
        Map<String, dynamic> json) =>
    QRResponseModelResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => QRResponseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$QRResponseModelResponseListToJson(
    QRResponseModelResponseList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

QRResponseModelResponseObject _$QRResponseModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    QRResponseModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : QRResponseModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QRResponseModelResponseObjectToJson(
    QRResponseModelResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

QRResponseModelResponsePagination _$QRResponseModelResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    QRResponseModelResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : QRResponseModelPagination.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QRResponseModelResponsePaginationToJson(
    QRResponseModelResponsePagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

ReCreatePlanningRequestModel _$ReCreatePlanningRequestModelFromJson(
        Map<String, dynamic> json) =>
    ReCreatePlanningRequestModel(
      year: json['year'] as int?,
      version: json['version'] as int?,
    );

Map<String, dynamic> _$ReCreatePlanningRequestModelToJson(
    ReCreatePlanningRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('year', instance.year);
  writeNotNull('version', instance.version);
  return val;
}

Reaction _$ReactionFromJson(Map<String, dynamic> json) => Reaction(
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
      objectId: json['objectId'] as String?,
      objectType: json['objectType'] as String?,
      ref: json['ref'] as String?,
      theReaction: json['theReaction'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$ReactionToJson(Reaction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('id', instance.id);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('ref', instance.ref);
  writeNotNull('theReaction', instance.theReaction);
  writeNotNull('icon', instance.icon);
  return val;
}

ReactionPagination _$ReactionPaginationFromJson(Map<String, dynamic> json) =>
    ReactionPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => Reaction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ReactionPaginationToJson(ReactionPagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('numberOfRecords', instance.numberOfRecords);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('content', instance.content?.map((e) => e.toJson()).toList());
  return val;
}

ReactionRequestModel _$ReactionRequestModelFromJson(
        Map<String, dynamic> json) =>
    ReactionRequestModel(
      objectId: json['objectId'] as String?,
      objectType: json['objectType'] as String?,
      ref: json['ref'] as String?,
      theReaction: json['theReaction'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$ReactionRequestModelToJson(
    ReactionRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('ref', instance.ref);
  writeNotNull('theReaction', instance.theReaction);
  writeNotNull('icon', instance.icon);
  return val;
}

ReactionResponseObject _$ReactionResponseObjectFromJson(
        Map<String, dynamic> json) =>
    ReactionResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : Reaction.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReactionResponseObjectToJson(
    ReactionResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

ReactionResponsePagination _$ReactionResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    ReactionResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : ReactionPagination.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReactionResponsePaginationToJson(
    ReactionResponsePagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

RelatedObj _$RelatedObjFromJson(Map<String, dynamic> json) => RelatedObj(
      objectId: json['objectId'] as String?,
      objectCode: json['objectCode'] as String?,
      objectName: json['objectName'] as String?,
      objectType: json['objectType'] as String?,
      objectKeyword: json['objectKeyword'] as String?,
      objectContent: json['objectContent'] as String?,
    );

Map<String, dynamic> _$RelatedObjToJson(RelatedObj instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectCode', instance.objectCode);
  writeNotNull('objectName', instance.objectName);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('objectKeyword', instance.objectKeyword);
  writeNotNull('objectContent', instance.objectContent);
  return val;
}

RelatedObjResponseList _$RelatedObjResponseListFromJson(
        Map<String, dynamic> json) =>
    RelatedObjResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => RelatedObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RelatedObjResponseListToJson(
    RelatedObjResponseList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

RelatedTask _$RelatedTaskFromJson(Map<String, dynamic> json) => RelatedTask(
      relationType: relationTypeEnumsFromJson(json['relationType']),
      task: json['task'] == null
          ? null
          : TaskViewModel.fromJson(json['task'] as Map<String, dynamic>),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$RelatedTaskToJson(RelatedTask instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('relationType', relationTypeEnumsToJson(instance.relationType));
  writeNotNull('task', instance.task?.toJson());
  writeNotNull('note', instance.note);
  return val;
}

ReplaceTreeRequestModel _$ReplaceTreeRequestModelFromJson(
        Map<String, dynamic> json) =>
    ReplaceTreeRequestModel(
      locationId: json['locationId'] as String?,
      locationName: json['locationName'] as String?,
      parentLocationId: json['parentLocationId'] as String?,
      parentLocationName: json['parentLocationName'] as String?,
      parentPath: json['parentPath'] as String?,
      referenceId: json['referenceId'] as String?,
      referenceName: json['referenceName'] as String?,
      objectNameOld: json['objectNameOld'] as String?,
      objectNameNew: json['objectNameNew'] as String?,
      quantityMark: (json['quantityMark'] as num?)?.toDouble(),
      lotIds: (json['lotIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      productAttributeValueNew: json['productAttributeValueNew'] as String?,
      productAttributeName: json['productAttributeName'] as String?,
      productTmpIdNew: json['productTmpIdNew'] as String?,
      attributeValueNew: json['attributeValueNew'] as String?,
    );

Map<String, dynamic> _$ReplaceTreeRequestModelToJson(
    ReplaceTreeRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locationId', instance.locationId);
  writeNotNull('locationName', instance.locationName);
  writeNotNull('parentLocationId', instance.parentLocationId);
  writeNotNull('parentLocationName', instance.parentLocationName);
  writeNotNull('parentPath', instance.parentPath);
  writeNotNull('referenceId', instance.referenceId);
  writeNotNull('referenceName', instance.referenceName);
  writeNotNull('objectNameOld', instance.objectNameOld);
  writeNotNull('objectNameNew', instance.objectNameNew);
  writeNotNull('quantityMark', instance.quantityMark);
  writeNotNull('lotIds', instance.lotIds);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('productAttributeValueNew', instance.productAttributeValueNew);
  writeNotNull('productAttributeName', instance.productAttributeName);
  writeNotNull('productTmpIdNew', instance.productTmpIdNew);
  writeNotNull('attributeValueNew', instance.attributeValueNew);
  return val;
}

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
    ResContactPatchUpdateResquestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('title', instance.title);
  writeNotNull('fullname', instance.fullname);
  writeNotNull('birthday', instance.birthday?.toIso8601String());
  writeNotNull(
      'eventsObject', instance.eventsObject?.map((e) => e.toJson()).toList());
  writeNotNull('organizationsObject',
      instance.organizationsObject?.map((e) => e.toJson()).toList());
  writeNotNull('addressesObject',
      instance.addressesObject?.map((e) => e.toJson()).toList());
  writeNotNull('telephonesObject',
      instance.telephonesObject?.map((e) => e.toJson()).toList());
  writeNotNull(
      'emailObject', instance.emailObject?.map((e) => e.toJson()).toList());
  writeNotNull(
      'websiteObject', instance.websiteObject?.map((e) => e.toJson()).toList());
  writeNotNull('notes', instance.notes);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('qrCodeUrl', instance.qrCodeUrl);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('isShared', instance.isShared);
  writeNotNull('order', instance.order);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('refsObject', instance.refsObject);
  writeNotNull('id', instance.id);
  return val;
}

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
    ResContactResponseModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('title', instance.title);
  writeNotNull('fullname', instance.fullname);
  writeNotNull('birthday', instance.birthday?.toIso8601String());
  writeNotNull(
      'eventsObject', instance.eventsObject?.map((e) => e.toJson()).toList());
  writeNotNull('organizationsObject',
      instance.organizationsObject?.map((e) => e.toJson()).toList());
  writeNotNull('addressesObject',
      instance.addressesObject?.map((e) => e.toJson()).toList());
  writeNotNull('telephonesObject',
      instance.telephonesObject?.map((e) => e.toJson()).toList());
  writeNotNull(
      'emailObject', instance.emailObject?.map((e) => e.toJson()).toList());
  writeNotNull(
      'websiteObject', instance.websiteObject?.map((e) => e.toJson()).toList());
  writeNotNull('notes', instance.notes);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('qrCodeUrl', instance.qrCodeUrl);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('isShared', instance.isShared);
  writeNotNull('order', instance.order);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('id', instance.id);
  writeNotNull('refsObject', instance.refsObject);
  return val;
}

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
    ResContactResponseModelPagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('numberOfRecords', instance.numberOfRecords);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('content', instance.content?.map((e) => e.toJson()).toList());
  return val;
}

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
    ResContactResponseModelResponseList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

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
    ResContactResponseModelResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

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
    ResContactResponseModelResponsePagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

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
    ResContactUpdateResquestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('title', instance.title);
  writeNotNull('fullname', instance.fullname);
  writeNotNull('birthday', instance.birthday?.toIso8601String());
  writeNotNull(
      'eventsObject', instance.eventsObject?.map((e) => e.toJson()).toList());
  writeNotNull('organizationsObject',
      instance.organizationsObject?.map((e) => e.toJson()).toList());
  writeNotNull('addressesObject',
      instance.addressesObject?.map((e) => e.toJson()).toList());
  writeNotNull('telephonesObject',
      instance.telephonesObject?.map((e) => e.toJson()).toList());
  writeNotNull(
      'emailObject', instance.emailObject?.map((e) => e.toJson()).toList());
  writeNotNull(
      'websiteObject', instance.websiteObject?.map((e) => e.toJson()).toList());
  writeNotNull('notes', instance.notes);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('qrCodeUrl', instance.qrCodeUrl);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('isShared', instance.isShared);
  writeNotNull('order', instance.order);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('refsObject', instance.refsObject);
  return val;
}

ResponseDelete _$ResponseDeleteFromJson(Map<String, dynamic> json) =>
    ResponseDelete(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : ResponseDeleteModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseDeleteToJson(ResponseDelete instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

ResponseDeleteModel _$ResponseDeleteModelFromJson(Map<String, dynamic> json) =>
    ResponseDeleteModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ResponseDeleteModelToJson(ResponseDeleteModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  return val;
}

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

Map<String, dynamic> _$ResponseDeleteMultiToJson(ResponseDeleteMulti instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

ResponseUpdateModel _$ResponseUpdateModelFromJson(Map<String, dynamic> json) =>
    ResponseUpdateModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ResponseUpdateModelToJson(ResponseUpdateModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  return val;
}

ResponseUpdateMulti _$ResponseUpdateMultiFromJson(Map<String, dynamic> json) =>
    ResponseUpdateMulti(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  ResponseUpdateModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ResponseUpdateMultiToJson(ResponseUpdateMulti instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Routing _$RoutingFromJson(Map<String, dynamic> json) => Routing(
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
      id: json['id'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      isActive: json['isActive'] as bool?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      locationId: json['locationId'] as String?,
      locationName: json['locationName'] as String?,
      companyId: json['companyId'] as String?,
    );

Map<String, dynamic> _$RoutingToJson(Routing instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('type', instance.type);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('code', instance.code);
  writeNotNull('description', instance.description);
  writeNotNull('locationId', instance.locationId);
  writeNotNull('locationName', instance.locationName);
  writeNotNull('companyId', instance.companyId);
  return val;
}

RoutingModel _$RoutingModelFromJson(Map<String, dynamic> json) => RoutingModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      isActive: json['isActive'] as bool?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      locationId: json['locationId'] as String?,
      locationName: json['locationName'] as String?,
      companyId: json['companyId'] as String?,
      type: json['type'] as String?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      routingDetails: (json['routingDetails'] as List<dynamic>?)
              ?.map(
                  (e) => RoutingWorkcenter.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RoutingModelToJson(RoutingModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('code', instance.code);
  writeNotNull('description', instance.description);
  writeNotNull('locationId', instance.locationId);
  writeNotNull('locationName', instance.locationName);
  writeNotNull('companyId', instance.companyId);
  writeNotNull('type', instance.type);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('routingDetails',
      instance.routingDetails?.map((e) => e.toJson()).toList());
  return val;
}

RoutingModelPagination _$RoutingModelPaginationFromJson(
        Map<String, dynamic> json) =>
    RoutingModelPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => RoutingModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RoutingModelPaginationToJson(
    RoutingModelPagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('numberOfRecords', instance.numberOfRecords);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('content', instance.content?.map((e) => e.toJson()).toList());
  return val;
}

RoutingModelResponseObject _$RoutingModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    RoutingModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : RoutingModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoutingModelResponseObjectToJson(
    RoutingModelResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

RoutingModelResponsePagination _$RoutingModelResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    RoutingModelResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : RoutingModelPagination.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoutingModelResponsePaginationToJson(
    RoutingModelResponsePagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

RoutingResponseObject _$RoutingResponseObjectFromJson(
        Map<String, dynamic> json) =>
    RoutingResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : Routing.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoutingResponseObjectToJson(
    RoutingResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

RoutingWorkcenter _$RoutingWorkcenterFromJson(Map<String, dynamic> json) =>
    RoutingWorkcenter(
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
      id: json['id'] as String?,
      name: json['name'] as String?,
      workCenterId: json['workCenterId'] as String?,
      routingId: json['routingId'] as String?,
      sequence: json['sequence'] as int?,
      description: json['description'] as String?,
      companyId: json['companyId'] as String?,
      worksheet: json['worksheet'] as String?,
      timeMode: json['timeMode'] as String?,
      timeModeBatch: json['timeModeBatch'] as int?,
      timeCycleManual: (json['timeCycleManual'] as num?)?.toDouble(),
      batch: json['batch'] as String?,
      batchSize: (json['batchSize'] as num?)?.toDouble(),
      deXeDecimal: (json['deXeDecimal'] as num?)?.toDouble(),
      isLast: json['isLast'] as bool?,
    );

Map<String, dynamic> _$RoutingWorkcenterToJson(RoutingWorkcenter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('workCenterId', instance.workCenterId);
  writeNotNull('routingId', instance.routingId);
  writeNotNull('sequence', instance.sequence);
  writeNotNull('description', instance.description);
  writeNotNull('companyId', instance.companyId);
  writeNotNull('worksheet', instance.worksheet);
  writeNotNull('timeMode', instance.timeMode);
  writeNotNull('timeModeBatch', instance.timeModeBatch);
  writeNotNull('timeCycleManual', instance.timeCycleManual);
  writeNotNull('batch', instance.batch);
  writeNotNull('batchSize', instance.batchSize);
  writeNotNull('deXeDecimal', instance.deXeDecimal);
  writeNotNull('isLast', instance.isLast);
  return val;
}

SimpleNodeBaseResponseModel _$SimpleNodeBaseResponseModelFromJson(
        Map<String, dynamic> json) =>
    SimpleNodeBaseResponseModel(
      id: json['id'] as String?,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String?,
      parentId: json['parentId'] as String?,
      nodeTypeObj: nodeTypeEnumFromJson(json['nodeTypeObj']),
      createdByUserId: json['createdByUserId'] as String?,
      lastModifiedByUserId: json['lastModifiedByUserId'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      cLeft: json['c_left'] as int?,
      cRight: json['c_right'] as int?,
      cLevel: json['c_level'] as int?,
      completePath: json['completePath'] as String?,
      completeName: json['completeName'] as String?,
    );

Map<String, dynamic> _$SimpleNodeBaseResponseModelToJson(
    SimpleNodeBaseResponseModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('parentId', instance.parentId);
  writeNotNull('nodeTypeObj', nodeTypeEnumToJson(instance.nodeTypeObj));
  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('c_left', instance.cLeft);
  writeNotNull('c_right', instance.cRight);
  writeNotNull('c_level', instance.cLevel);
  writeNotNull('completePath', instance.completePath);
  writeNotNull('completeName', instance.completeName);
  return val;
}

StockMoveLine _$StockMoveLineFromJson(Map<String, dynamic> json) =>
    StockMoveLine(
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
      reference: json['reference'] as String?,
      referenceType: json['referenceType'] as String?,
      note: json['note'] as String?,
      pickingId: json['pickingId'] as String?,
      moveId: json['moveId'] as String?,
      objectId: json['objectId'] as String?,
      objectCode: json['objectCode'] as String?,
      objectType: json['objectType'] as String?,
      referenceDetailId: json['referenceDetailId'] as String?,
      unitId: json['unitId'] as String?,
      unit: json['unit'] as String?,
      productQty: (json['productQty'] as num?)?.toDouble(),
      quantityConvert: (json['quantityConvert'] as num?)?.toDouble(),
      qtyDone: (json['qtyDone'] as num?)?.toDouble(),
      locationSrcId: json['locationSrcId'] as String?,
      locationSrcName: json['locationSrcName'] as String?,
      locationDestId: json['locationDestId'] as String?,
      locationDestName: json['locationDestName'] as String?,
      state: json['state'] as String?,
      packageId: json['packageId'] as String?,
      packageLevelId: json['packageLevelId'] as int?,
      lotId: json['lotId'] as String?,
      lotName: json['lotName'] as String?,
      productionId: json['productionId'] as String?,
      productionNo: json['productionNo'] as String?,
      lotProducedQty: (json['lotProducedQty'] as num?)?.toDouble(),
      isDone: json['isDone'] as bool?,
      totalAmount: (json['totalAmount'] as num?)?.toDouble(),
      isMark: json['isMark'] as bool?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContent: json['metadataContent'] as String?,
    );

Map<String, dynamic> _$StockMoveLineToJson(StockMoveLine instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('id', instance.id);
  writeNotNull('reference', instance.reference);
  writeNotNull('referenceType', instance.referenceType);
  writeNotNull('note', instance.note);
  writeNotNull('pickingId', instance.pickingId);
  writeNotNull('moveId', instance.moveId);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectCode', instance.objectCode);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('referenceDetailId', instance.referenceDetailId);
  writeNotNull('unitId', instance.unitId);
  writeNotNull('unit', instance.unit);
  writeNotNull('productQty', instance.productQty);
  writeNotNull('quantityConvert', instance.quantityConvert);
  writeNotNull('qtyDone', instance.qtyDone);
  writeNotNull('locationSrcId', instance.locationSrcId);
  writeNotNull('locationSrcName', instance.locationSrcName);
  writeNotNull('locationDestId', instance.locationDestId);
  writeNotNull('locationDestName', instance.locationDestName);
  writeNotNull('state', instance.state);
  writeNotNull('packageId', instance.packageId);
  writeNotNull('packageLevelId', instance.packageLevelId);
  writeNotNull('lotId', instance.lotId);
  writeNotNull('lotName', instance.lotName);
  writeNotNull('productionId', instance.productionId);
  writeNotNull('productionNo', instance.productionNo);
  writeNotNull('lotProducedQty', instance.lotProducedQty);
  writeNotNull('isDone', instance.isDone);
  writeNotNull('totalAmount', instance.totalAmount);
  writeNotNull('isMark', instance.isMark);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metadataContent', instance.metadataContent);
  return val;
}

StringArrayResponseObject _$StringArrayResponseObjectFromJson(
        Map<String, dynamic> json) =>
    StringArrayResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data:
          (json['data'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
    );

Map<String, dynamic> _$StringArrayResponseObjectToJson(
    StringArrayResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data);
  return val;
}

StringResponseList _$StringResponseListFromJson(Map<String, dynamic> json) =>
    StringResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data:
          (json['data'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
    );

Map<String, dynamic> _$StringResponseListToJson(StringResponseList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data);
  return val;
}

StringResponseObject _$StringResponseObjectFromJson(
        Map<String, dynamic> json) =>
    StringResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$StringResponseObjectToJson(
    StringResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data);
  return val;
}

SysParamCategory _$SysParamCategoryFromJson(Map<String, dynamic> json) =>
    SysParamCategory(
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
      key: json['key'] as String?,
      value: json['value'] as String?,
      note: json['note'] as String?,
      isActive: json['isActive'] as bool?,
      order: json['order'] as int?,
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$SysParamCategoryToJson(SysParamCategory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('id', instance.id);
  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  writeNotNull('note', instance.note);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('order', instance.order);
  writeNotNull('isDeleted', instance.isDeleted);
  return val;
}

SysParamCategoryModel _$SysParamCategoryModelFromJson(
        Map<String, dynamic> json) =>
    SysParamCategoryModel(
      id: json['id'] as String?,
      key: json['key'] as String?,
      value: json['value'] as String?,
      note: json['note'] as String?,
      applicationId: json['applicationId'] as String?,
      isActive: json['isActive'] as bool?,
      order: json['order'] as int?,
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$SysParamCategoryModelToJson(
    SysParamCategoryModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  writeNotNull('note', instance.note);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('order', instance.order);
  writeNotNull('isDeleted', instance.isDeleted);
  return val;
}

SysParamCategoryModelPagination _$SysParamCategoryModelPaginationFromJson(
        Map<String, dynamic> json) =>
    SysParamCategoryModelPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) =>
                  SysParamCategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SysParamCategoryModelPaginationToJson(
    SysParamCategoryModelPagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('numberOfRecords', instance.numberOfRecords);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('content', instance.content?.map((e) => e.toJson()).toList());
  return val;
}

SysParamCategoryModelResponsePagination
    _$SysParamCategoryModelResponsePaginationFromJson(
            Map<String, dynamic> json) =>
        SysParamCategoryModelResponsePagination(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: json['data'] == null
              ? null
              : SysParamCategoryModelPagination.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$SysParamCategoryModelResponsePaginationToJson(
    SysParamCategoryModelResponsePagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

SysParamCategoryRequestModel _$SysParamCategoryRequestModelFromJson(
        Map<String, dynamic> json) =>
    SysParamCategoryRequestModel(
      key: json['key'] as String?,
      value: json['value'] as String?,
      note: json['note'] as String?,
      isActive: json['isActive'] as bool?,
      order: json['order'] as int?,
    );

Map<String, dynamic> _$SysParamCategoryRequestModelToJson(
    SysParamCategoryRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  writeNotNull('note', instance.note);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('order', instance.order);
  return val;
}

SysParamCategoryResponseObject _$SysParamCategoryResponseObjectFromJson(
        Map<String, dynamic> json) =>
    SysParamCategoryResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : SysParamCategory.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SysParamCategoryResponseObjectToJson(
    SysParamCategoryResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

SysParamModel _$SysParamModelFromJson(Map<String, dynamic> json) =>
    SysParamModel(
      id: json['id'] as String?,
      categoryId: json['categoryId'] as String?,
      parentId: json['parentId'] as String?,
      key: json['key'] as String?,
      value: json['value'] as String?,
      note: json['note'] as String?,
      color: json['color'] as String?,
      isActive: json['isActive'] as bool?,
      applicationId: json['applicationId'] as String?,
      order: json['order'] as int?,
      isDeleted: json['isDeleted'] as bool?,
      categoryKey: json['categoryKey'] as String?,
      category: json['category'] as String?,
      conditionFrom: (json['conditionFrom'] as num?)?.toDouble(),
      conditionTo: (json['conditionTo'] as num?)?.toDouble(),
      valueFrom: (json['valueFrom'] as num?)?.toDouble(),
      valueTo: (json['valueTo'] as num?)?.toDouble(),
      keywords: (json['keywords'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      cLeft: json['c_left'] as int?,
      cRight: json['c_right'] as int?,
      cLevel: json['c_level'] as int?,
    );

Map<String, dynamic> _$SysParamModelToJson(SysParamModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('categoryId', instance.categoryId);
  writeNotNull('parentId', instance.parentId);
  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  writeNotNull('note', instance.note);
  writeNotNull('color', instance.color);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('order', instance.order);
  writeNotNull('isDeleted', instance.isDeleted);
  writeNotNull('categoryKey', instance.categoryKey);
  writeNotNull('category', instance.category);
  writeNotNull('conditionFrom', instance.conditionFrom);
  writeNotNull('conditionTo', instance.conditionTo);
  writeNotNull('valueFrom', instance.valueFrom);
  writeNotNull('valueTo', instance.valueTo);
  writeNotNull('keywords', instance.keywords);
  writeNotNull('c_left', instance.cLeft);
  writeNotNull('c_right', instance.cRight);
  writeNotNull('c_level', instance.cLevel);
  return val;
}

SysParamModelPagination _$SysParamModelPaginationFromJson(
        Map<String, dynamic> json) =>
    SysParamModelPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => SysParamModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SysParamModelPaginationToJson(
    SysParamModelPagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('numberOfRecords', instance.numberOfRecords);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('content', instance.content?.map((e) => e.toJson()).toList());
  return val;
}

SysParamModelResponseObject _$SysParamModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    SysParamModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : SysParamModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SysParamModelResponseObjectToJson(
    SysParamModelResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

SysParamModelResponsePagination _$SysParamModelResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    SysParamModelResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : SysParamModelPagination.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SysParamModelResponsePaginationToJson(
    SysParamModelResponsePagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

SysParamRequestModel _$SysParamRequestModelFromJson(
        Map<String, dynamic> json) =>
    SysParamRequestModel(
      id: json['id'] as String?,
      categoryId: json['categoryId'] as String?,
      parentId: json['parentId'] as String?,
      key: json['key'] as String?,
      value: json['value'] as String?,
      note: json['note'] as String?,
      color: json['color'] as String?,
      isActive: json['isActive'] as bool?,
      applicationId: json['applicationId'] as String?,
      order: json['order'] as int?,
      isDeleted: json['isDeleted'] as bool?,
      categoryKey: json['categoryKey'] as String?,
      category: json['category'] as String?,
      conditionFrom: (json['conditionFrom'] as num?)?.toDouble(),
      conditionTo: (json['conditionTo'] as num?)?.toDouble(),
      valueFrom: (json['valueFrom'] as num?)?.toDouble(),
      valueTo: (json['valueTo'] as num?)?.toDouble(),
      keywords: (json['keywords'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      cLeft: json['c_left'] as int?,
      cRight: json['c_right'] as int?,
      cLevel: json['c_level'] as int?,
    );

Map<String, dynamic> _$SysParamRequestModelToJson(
    SysParamRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('categoryId', instance.categoryId);
  writeNotNull('parentId', instance.parentId);
  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  writeNotNull('note', instance.note);
  writeNotNull('color', instance.color);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('order', instance.order);
  writeNotNull('isDeleted', instance.isDeleted);
  writeNotNull('categoryKey', instance.categoryKey);
  writeNotNull('category', instance.category);
  writeNotNull('conditionFrom', instance.conditionFrom);
  writeNotNull('conditionTo', instance.conditionTo);
  writeNotNull('valueFrom', instance.valueFrom);
  writeNotNull('valueTo', instance.valueTo);
  writeNotNull('keywords', instance.keywords);
  writeNotNull('c_left', instance.cLeft);
  writeNotNull('c_right', instance.cRight);
  writeNotNull('c_level', instance.cLevel);
  return val;
}

TaskAssigneeResquestModel _$TaskAssigneeResquestModelFromJson(
        Map<String, dynamic> json) =>
    TaskAssigneeResquestModel(
      assigneeObj: (json['assigneeObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$TaskAssigneeResquestModelToJson(
    TaskAssigneeResquestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('assigneeObj', instance.assigneeObj);
  return val;
}

TaskBaseModel _$TaskBaseModelFromJson(Map<String, dynamic> json) =>
    TaskBaseModel(
      createdByUserId: json['createdByUserId'] as String?,
      lastModifiedByUserId: json['lastModifiedByUserId'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      applicationId: json['applicationId'] as String?,
      acl: json['acl'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      parentId: json['parentId'] as String?,
      parentType: json['parentType'] as String?,
      priorityObj: priorityEnumsFromJson(json['priorityObj']),
      priority: json['priority'] as int?,
      weight: json['weight'] as int?,
      rank: json['rank'] as int?,
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      labels: json['labels'] as String?,
      managementObj: (json['managementObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      management: json['management'] as String?,
      ownerObj: (json['ownerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      owner: json['owner'] as String?,
      supervisorObj: (json['supervisorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      supervisor: json['supervisor'] as String?,
      coordinatorObj: (json['coordinatorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      coordinator: json['coordinator'] as String?,
      assigneeObj: (json['assigneeObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      assignee: json['assignee'] as String?,
      viewerObj: (json['viewerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      viewer: json['viewer'] as String?,
      statusObj: pMStatusEnumsFromJson(json['statusObj']),
      status: json['status'] as int?,
      objectId: json['objectId'] as String?,
      objectType: json['objectType'] as String?,
      objectAction: json['objectAction'] as String?,
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      finishDate: json['finishDate'] == null
          ? null
          : DateTime.parse(json['finishDate'] as String),
      estimateTime: (json['estimateTime'] as num?)?.toDouble(),
      actualTime: (json['actualTime'] as num?)?.toDouble(),
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContent: json['metadataContent'] as String?,
      metaContentType: json['metaContentType'] as String?,
      order: json['order'] as int?,
      cLeft: json['c_left'] as int?,
      cRight: json['c_right'] as int?,
      cLevel: json['c_level'] as int?,
      allowToModify: json['allowToModify'] as bool?,
      allowToView: json['allowToView'] as bool?,
      allowToChangeStatus: json['allowToChangeStatus'] as bool?,
      allowToModifyCoordinator: json['allowToModifyCoordinator'] as bool?,
      allowToModifyFromDate: json['allowToModifyFromDate'] as bool?,
      allowToModifyToDate: json['allowToModifyToDate'] as bool?,
      allowToModifyFinishDate: json['allowToModifyFinishDate'] as bool?,
      relatedFolderId: json['relatedFolderId'] as String?,
      allowToCreateSubTasks: json['allowToCreateSubTasks'] as bool?,
      aclObject: json['aclObject'] == null
          ? null
          : ACLObject.fromJson(json['aclObject'] as Map<String, dynamic>),
      projectId: json['projectId'] as String?,
      code: json['code'] as String?,
      type: json['type'] as String?,
      attachment: json['attachment'] as String?,
      workflowStatus: json['workflowStatus'] as int?,
      metadata: json['metadata'] as String?,
      ref: json['ref'] as String?,
    );

Map<String, dynamic> _$TaskBaseModelToJson(TaskBaseModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('acl', instance.acl);
  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  writeNotNull('description', instance.description);
  writeNotNull('parentId', instance.parentId);
  writeNotNull('parentType', instance.parentType);
  writeNotNull('priorityObj', priorityEnumsToJson(instance.priorityObj));
  writeNotNull('priority', instance.priority);
  writeNotNull('weight', instance.weight);
  writeNotNull('rank', instance.rank);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull('labels', instance.labels);
  writeNotNull('managementObj', instance.managementObj);
  writeNotNull('management', instance.management);
  writeNotNull('ownerObj', instance.ownerObj);
  writeNotNull('owner', instance.owner);
  writeNotNull('supervisorObj', instance.supervisorObj);
  writeNotNull('supervisor', instance.supervisor);
  writeNotNull('coordinatorObj', instance.coordinatorObj);
  writeNotNull('coordinator', instance.coordinator);
  writeNotNull('assigneeObj', instance.assigneeObj);
  writeNotNull('assignee', instance.assignee);
  writeNotNull('viewerObj', instance.viewerObj);
  writeNotNull('viewer', instance.viewer);
  writeNotNull('statusObj', pMStatusEnumsToJson(instance.statusObj));
  writeNotNull('status', instance.status);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('objectAction', instance.objectAction);
  writeNotNull('fromDate', instance.fromDate?.toIso8601String());
  writeNotNull('toDate', instance.toDate?.toIso8601String());
  writeNotNull('finishDate', instance.finishDate?.toIso8601String());
  writeNotNull('estimateTime', instance.estimateTime);
  writeNotNull('actualTime', instance.actualTime);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('order', instance.order);
  writeNotNull('c_left', instance.cLeft);
  writeNotNull('c_right', instance.cRight);
  writeNotNull('c_level', instance.cLevel);
  writeNotNull('allowToModify', instance.allowToModify);
  writeNotNull('allowToView', instance.allowToView);
  writeNotNull('allowToChangeStatus', instance.allowToChangeStatus);
  writeNotNull('allowToModifyCoordinator', instance.allowToModifyCoordinator);
  writeNotNull('allowToModifyFromDate', instance.allowToModifyFromDate);
  writeNotNull('allowToModifyToDate', instance.allowToModifyToDate);
  writeNotNull('allowToModifyFinishDate', instance.allowToModifyFinishDate);
  writeNotNull('relatedFolderId', instance.relatedFolderId);
  writeNotNull('allowToCreateSubTasks', instance.allowToCreateSubTasks);
  writeNotNull('aclObject', instance.aclObject?.toJson());
  writeNotNull('projectId', instance.projectId);
  writeNotNull('code', instance.code);
  writeNotNull('type', instance.type);
  writeNotNull('attachment', instance.attachment);
  writeNotNull('workflowStatus', instance.workflowStatus);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('ref', instance.ref);
  return val;
}

TaskBaseModelResponseObject _$TaskBaseModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    TaskBaseModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : TaskBaseModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskBaseModelResponseObjectToJson(
    TaskBaseModelResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

TaskCorrdinatorResquestModel _$TaskCorrdinatorResquestModelFromJson(
        Map<String, dynamic> json) =>
    TaskCorrdinatorResquestModel(
      coordinatorObj: (json['coordinatorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$TaskCorrdinatorResquestModelToJson(
    TaskCorrdinatorResquestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('coordinatorObj', instance.coordinatorObj);
  return val;
}

TaskExternalLinkModel _$TaskExternalLinkModelFromJson(
        Map<String, dynamic> json) =>
    TaskExternalLinkModel(
      listTaskId: (json['listTaskId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      objectId: json['objectId'] as String?,
      objectType: json['objectType'] as String?,
      objectAction: json['objectAction'] as String?,
    );

Map<String, dynamic> _$TaskExternalLinkModelToJson(
    TaskExternalLinkModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('listTaskId', instance.listTaskId);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('objectAction', instance.objectAction);
  return val;
}

TaskGenerateByTempResquestModel _$TaskGenerateByTempResquestModelFromJson(
        Map<String, dynamic> json) =>
    TaskGenerateByTempResquestModel(
      templateId: json['templateId'] as String?,
      projectId: json['projectId'] as String?,
    );

Map<String, dynamic> _$TaskGenerateByTempResquestModelToJson(
    TaskGenerateByTempResquestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('templateId', instance.templateId);
  writeNotNull('projectId', instance.projectId);
  return val;
}

TaskManagementResquestModel _$TaskManagementResquestModelFromJson(
        Map<String, dynamic> json) =>
    TaskManagementResquestModel(
      managementObj: (json['managementObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$TaskManagementResquestModelToJson(
    TaskManagementResquestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('managementObj', instance.managementObj);
  return val;
}

TaskOwnerResquestModel _$TaskOwnerResquestModelFromJson(
        Map<String, dynamic> json) =>
    TaskOwnerResquestModel(
      ownerObj: (json['ownerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$TaskOwnerResquestModelToJson(
    TaskOwnerResquestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ownerObj', instance.ownerObj);
  return val;
}

TaskPatchResquestModel _$TaskPatchResquestModelFromJson(
        Map<String, dynamic> json) =>
    TaskPatchResquestModel(
      id: json['id'] as String?,
      parentId: json['parentId'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      order: json['order'] as int?,
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      finishDate: json['finishDate'] == null
          ? null
          : DateTime.parse(json['finishDate'] as String),
      estimateTime: (json['estimateTime'] as num?)?.toDouble(),
      actualTime: (json['actualTime'] as num?)?.toDouble(),
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      priorityObj: priorityEnumsFromJson(json['priorityObj']),
      weight: json['weight'] as int?,
      rank: json['rank'] as int?,
      statusObj: pMStatusEnumsFromJson(json['statusObj']),
      managementObj: (json['managementObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      ownerObj: (json['ownerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      supervisorObj: (json['supervisorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      coordinatorObj: (json['coordinatorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      assigneeObj: (json['assigneeObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      viewerObj: (json['viewerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      aclObject: json['aclObject'] == null
          ? null
          : ACLObject.fromJson(json['aclObject'] as Map<String, dynamic>),
      metaContentType: json['metaContentType'] as String?,
      projectId: json['projectId'] as String?,
      type: json['type'] as String?,
      workflowStatus: json['workflowStatus'] as int?,
      objectId: json['objectId'] as String?,
      objectAction: json['objectAction'] as String?,
      objectType: json['objectType'] as String?,
    );

Map<String, dynamic> _$TaskPatchResquestModelToJson(
    TaskPatchResquestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('parentId', instance.parentId);
  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('order', instance.order);
  writeNotNull('fromDate', instance.fromDate?.toIso8601String());
  writeNotNull('toDate', instance.toDate?.toIso8601String());
  writeNotNull('finishDate', instance.finishDate?.toIso8601String());
  writeNotNull('estimateTime', instance.estimateTime);
  writeNotNull('actualTime', instance.actualTime);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull('priorityObj', priorityEnumsToJson(instance.priorityObj));
  writeNotNull('weight', instance.weight);
  writeNotNull('rank', instance.rank);
  writeNotNull('statusObj', pMStatusEnumsToJson(instance.statusObj));
  writeNotNull('managementObj', instance.managementObj);
  writeNotNull('ownerObj', instance.ownerObj);
  writeNotNull('supervisorObj', instance.supervisorObj);
  writeNotNull('coordinatorObj', instance.coordinatorObj);
  writeNotNull('assigneeObj', instance.assigneeObj);
  writeNotNull('viewerObj', instance.viewerObj);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('aclObject', instance.aclObject?.toJson());
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('projectId', instance.projectId);
  writeNotNull('type', instance.type);
  writeNotNull('workflowStatus', instance.workflowStatus);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectAction', instance.objectAction);
  writeNotNull('objectType', instance.objectType);
  return val;
}

TaskRelationResquestModel _$TaskRelationResquestModelFromJson(
        Map<String, dynamic> json) =>
    TaskRelationResquestModel(
      relationTypeObj: relationTypeEnumsFromJson(json['relationTypeObj']),
      taskId: json['taskId'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$TaskRelationResquestModelToJson(
    TaskRelationResquestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'relationTypeObj', relationTypeEnumsToJson(instance.relationTypeObj));
  writeNotNull('taskId', instance.taskId);
  writeNotNull('note', instance.note);
  return val;
}

TaskResquestModel _$TaskResquestModelFromJson(Map<String, dynamic> json) =>
    TaskResquestModel(
      createdByUserId: json['createdByUserId'] as String?,
      lastModifiedByUserId: json['lastModifiedByUserId'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      applicationId: json['applicationId'] as String?,
      acl: json['acl'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      parentId: json['parentId'] as String?,
      parentType: json['parentType'] as String?,
      priorityObj: priorityEnumsFromJson(json['priorityObj']),
      priority: json['priority'] as int?,
      weight: json['weight'] as int?,
      rank: json['rank'] as int?,
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      labels: json['labels'] as String?,
      managementObj: (json['managementObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      management: json['management'] as String?,
      ownerObj: (json['ownerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      owner: json['owner'] as String?,
      supervisorObj: (json['supervisorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      supervisor: json['supervisor'] as String?,
      coordinatorObj: (json['coordinatorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      coordinator: json['coordinator'] as String?,
      assigneeObj: (json['assigneeObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      assignee: json['assignee'] as String?,
      viewerObj: (json['viewerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      viewer: json['viewer'] as String?,
      statusObj: pMStatusEnumsFromJson(json['statusObj']),
      status: json['status'] as int?,
      objectId: json['objectId'] as String?,
      objectType: json['objectType'] as String?,
      objectAction: json['objectAction'] as String?,
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      finishDate: json['finishDate'] == null
          ? null
          : DateTime.parse(json['finishDate'] as String),
      estimateTime: (json['estimateTime'] as num?)?.toDouble(),
      actualTime: (json['actualTime'] as num?)?.toDouble(),
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContent: json['metadataContent'] as String?,
      metaContentType: json['metaContentType'] as String?,
      order: json['order'] as int?,
      cLeft: json['c_left'] as int?,
      cRight: json['c_right'] as int?,
      cLevel: json['c_level'] as int?,
      allowToModify: json['allowToModify'] as bool?,
      allowToView: json['allowToView'] as bool?,
      allowToChangeStatus: json['allowToChangeStatus'] as bool?,
      allowToModifyCoordinator: json['allowToModifyCoordinator'] as bool?,
      allowToModifyFromDate: json['allowToModifyFromDate'] as bool?,
      allowToModifyToDate: json['allowToModifyToDate'] as bool?,
      allowToModifyFinishDate: json['allowToModifyFinishDate'] as bool?,
      relatedFolderId: json['relatedFolderId'] as String?,
      allowToCreateSubTasks: json['allowToCreateSubTasks'] as bool?,
      aclObject: json['aclObject'] == null
          ? null
          : ACLObject.fromJson(json['aclObject'] as Map<String, dynamic>),
      projectId: json['projectId'] as String?,
      code: json['code'] as String?,
      type: json['type'] as String?,
      attachment: json['attachment'] as String?,
      workflowStatus: json['workflowStatus'] as int?,
      metadata: json['metadata'] as String?,
      ref: json['ref'] as String?,
    );

Map<String, dynamic> _$TaskResquestModelToJson(TaskResquestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('acl', instance.acl);
  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  writeNotNull('description', instance.description);
  writeNotNull('parentId', instance.parentId);
  writeNotNull('parentType', instance.parentType);
  writeNotNull('priorityObj', priorityEnumsToJson(instance.priorityObj));
  writeNotNull('priority', instance.priority);
  writeNotNull('weight', instance.weight);
  writeNotNull('rank', instance.rank);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull('labels', instance.labels);
  writeNotNull('managementObj', instance.managementObj);
  writeNotNull('management', instance.management);
  writeNotNull('ownerObj', instance.ownerObj);
  writeNotNull('owner', instance.owner);
  writeNotNull('supervisorObj', instance.supervisorObj);
  writeNotNull('supervisor', instance.supervisor);
  writeNotNull('coordinatorObj', instance.coordinatorObj);
  writeNotNull('coordinator', instance.coordinator);
  writeNotNull('assigneeObj', instance.assigneeObj);
  writeNotNull('assignee', instance.assignee);
  writeNotNull('viewerObj', instance.viewerObj);
  writeNotNull('viewer', instance.viewer);
  writeNotNull('statusObj', pMStatusEnumsToJson(instance.statusObj));
  writeNotNull('status', instance.status);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('objectAction', instance.objectAction);
  writeNotNull('fromDate', instance.fromDate?.toIso8601String());
  writeNotNull('toDate', instance.toDate?.toIso8601String());
  writeNotNull('finishDate', instance.finishDate?.toIso8601String());
  writeNotNull('estimateTime', instance.estimateTime);
  writeNotNull('actualTime', instance.actualTime);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('order', instance.order);
  writeNotNull('c_left', instance.cLeft);
  writeNotNull('c_right', instance.cRight);
  writeNotNull('c_level', instance.cLevel);
  writeNotNull('allowToModify', instance.allowToModify);
  writeNotNull('allowToView', instance.allowToView);
  writeNotNull('allowToChangeStatus', instance.allowToChangeStatus);
  writeNotNull('allowToModifyCoordinator', instance.allowToModifyCoordinator);
  writeNotNull('allowToModifyFromDate', instance.allowToModifyFromDate);
  writeNotNull('allowToModifyToDate', instance.allowToModifyToDate);
  writeNotNull('allowToModifyFinishDate', instance.allowToModifyFinishDate);
  writeNotNull('relatedFolderId', instance.relatedFolderId);
  writeNotNull('allowToCreateSubTasks', instance.allowToCreateSubTasks);
  writeNotNull('aclObject', instance.aclObject?.toJson());
  writeNotNull('projectId', instance.projectId);
  writeNotNull('code', instance.code);
  writeNotNull('type', instance.type);
  writeNotNull('attachment', instance.attachment);
  writeNotNull('workflowStatus', instance.workflowStatus);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('ref', instance.ref);
  return val;
}

TaskSupervisorResquestModel _$TaskSupervisorResquestModelFromJson(
        Map<String, dynamic> json) =>
    TaskSupervisorResquestModel(
      supervisorObj: (json['supervisorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$TaskSupervisorResquestModelToJson(
    TaskSupervisorResquestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('supervisorObj', instance.supervisorObj);
  return val;
}

TaskTemplateRequestModel _$TaskTemplateRequestModelFromJson(
        Map<String, dynamic> json) =>
    TaskTemplateRequestModel(
      code: json['code'] as String?,
      parentId: json['parentId'] as String?,
    );

Map<String, dynamic> _$TaskTemplateRequestModelToJson(
    TaskTemplateRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('parentId', instance.parentId);
  return val;
}

TaskTemplateResquestModel _$TaskTemplateResquestModelFromJson(
        Map<String, dynamic> json) =>
    TaskTemplateResquestModel(
      parentId: json['parentId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String,
      description: json['description'] as String?,
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      finishDate: json['finishDate'] == null
          ? null
          : DateTime.parse(json['finishDate'] as String),
      estimateTime: (json['estimateTime'] as num?)?.toDouble(),
      actualTime: (json['actualTime'] as num?)?.toDouble(),
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      managementObj: (json['managementObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      ownerObj: (json['ownerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      supervisorObj: (json['supervisorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      coordinatorObj: (json['coordinatorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      assigneeObj: (json['assigneeObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      viewerObj: (json['viewerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      order: json['order'] as int?,
      cLeft: json['c_left'] as int?,
      cRight: json['c_right'] as int?,
      cLevel: json['c_level'] as int?,
    );

Map<String, dynamic> _$TaskTemplateResquestModelToJson(
    TaskTemplateResquestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('parentId', instance.parentId);
  writeNotNull('name', instance.name);
  val['code'] = instance.code;
  writeNotNull('description', instance.description);
  writeNotNull('fromDate', instance.fromDate?.toIso8601String());
  writeNotNull('toDate', instance.toDate?.toIso8601String());
  writeNotNull('finishDate', instance.finishDate?.toIso8601String());
  writeNotNull('estimateTime', instance.estimateTime);
  writeNotNull('actualTime', instance.actualTime);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull('managementObj', instance.managementObj);
  writeNotNull('ownerObj', instance.ownerObj);
  writeNotNull('supervisorObj', instance.supervisorObj);
  writeNotNull('coordinatorObj', instance.coordinatorObj);
  writeNotNull('assigneeObj', instance.assigneeObj);
  writeNotNull('viewerObj', instance.viewerObj);
  writeNotNull('order', instance.order);
  writeNotNull('c_left', instance.cLeft);
  writeNotNull('c_right', instance.cRight);
  writeNotNull('c_level', instance.cLevel);
  return val;
}

TaskViewModel _$TaskViewModelFromJson(Map<String, dynamic> json) =>
    TaskViewModel(
      createdByUserId: json['createdByUserId'] as String?,
      lastModifiedByUserId: json['lastModifiedByUserId'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      applicationId: json['applicationId'] as String?,
      acl: json['acl'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      parentId: json['parentId'] as String?,
      parentType: json['parentType'] as String?,
      priorityObj: priorityEnumsFromJson(json['priorityObj']),
      priority: json['priority'] as int?,
      weight: json['weight'] as int?,
      rank: json['rank'] as int?,
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      labels: json['labels'] as String?,
      managementObj: (json['managementObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      management: json['management'] as String?,
      ownerObj: (json['ownerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      owner: json['owner'] as String?,
      supervisorObj: (json['supervisorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      supervisor: json['supervisor'] as String?,
      coordinatorObj: (json['coordinatorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      coordinator: json['coordinator'] as String?,
      assigneeObj: (json['assigneeObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      assignee: json['assignee'] as String?,
      viewerObj: (json['viewerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      viewer: json['viewer'] as String?,
      statusObj: pMStatusEnumsFromJson(json['statusObj']),
      status: json['status'] as int?,
      objectId: json['objectId'] as String?,
      objectType: json['objectType'] as String?,
      objectAction: json['objectAction'] as String?,
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      finishDate: json['finishDate'] == null
          ? null
          : DateTime.parse(json['finishDate'] as String),
      estimateTime: (json['estimateTime'] as num?)?.toDouble(),
      actualTime: (json['actualTime'] as num?)?.toDouble(),
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContent: json['metadataContent'] as String?,
      metaContentType: json['metaContentType'] as String?,
      order: json['order'] as int?,
      cLeft: json['c_left'] as int?,
      cRight: json['c_right'] as int?,
      cLevel: json['c_level'] as int?,
      allowToModify: json['allowToModify'] as bool?,
      allowToView: json['allowToView'] as bool?,
      allowToChangeStatus: json['allowToChangeStatus'] as bool?,
      allowToModifyCoordinator: json['allowToModifyCoordinator'] as bool?,
      allowToModifyFromDate: json['allowToModifyFromDate'] as bool?,
      allowToModifyToDate: json['allowToModifyToDate'] as bool?,
      allowToModifyFinishDate: json['allowToModifyFinishDate'] as bool?,
      relatedFolderId: json['relatedFolderId'] as String?,
      allowToCreateSubTasks: json['allowToCreateSubTasks'] as bool?,
      aclObject: json['aclObject'] == null
          ? null
          : ACLObject.fromJson(json['aclObject'] as Map<String, dynamic>),
      projectId: json['projectId'] as String?,
      code: json['code'] as String?,
      type: json['type'] as String?,
      attachment: json['attachment'] as String?,
      workflowStatus: json['workflowStatus'] as int?,
      metadata: json['metadata'] as String?,
      ref: json['ref'] as String?,
      relatedTasks: (json['relatedTasks'] as List<dynamic>?)
              ?.map((e) => RelatedTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TaskViewModelToJson(TaskViewModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('acl', instance.acl);
  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  writeNotNull('description', instance.description);
  writeNotNull('parentId', instance.parentId);
  writeNotNull('parentType', instance.parentType);
  writeNotNull('priorityObj', priorityEnumsToJson(instance.priorityObj));
  writeNotNull('priority', instance.priority);
  writeNotNull('weight', instance.weight);
  writeNotNull('rank', instance.rank);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull('labels', instance.labels);
  writeNotNull('managementObj', instance.managementObj);
  writeNotNull('management', instance.management);
  writeNotNull('ownerObj', instance.ownerObj);
  writeNotNull('owner', instance.owner);
  writeNotNull('supervisorObj', instance.supervisorObj);
  writeNotNull('supervisor', instance.supervisor);
  writeNotNull('coordinatorObj', instance.coordinatorObj);
  writeNotNull('coordinator', instance.coordinator);
  writeNotNull('assigneeObj', instance.assigneeObj);
  writeNotNull('assignee', instance.assignee);
  writeNotNull('viewerObj', instance.viewerObj);
  writeNotNull('viewer', instance.viewer);
  writeNotNull('statusObj', pMStatusEnumsToJson(instance.statusObj));
  writeNotNull('status', instance.status);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('objectAction', instance.objectAction);
  writeNotNull('fromDate', instance.fromDate?.toIso8601String());
  writeNotNull('toDate', instance.toDate?.toIso8601String());
  writeNotNull('finishDate', instance.finishDate?.toIso8601String());
  writeNotNull('estimateTime', instance.estimateTime);
  writeNotNull('actualTime', instance.actualTime);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('order', instance.order);
  writeNotNull('c_left', instance.cLeft);
  writeNotNull('c_right', instance.cRight);
  writeNotNull('c_level', instance.cLevel);
  writeNotNull('allowToModify', instance.allowToModify);
  writeNotNull('allowToView', instance.allowToView);
  writeNotNull('allowToChangeStatus', instance.allowToChangeStatus);
  writeNotNull('allowToModifyCoordinator', instance.allowToModifyCoordinator);
  writeNotNull('allowToModifyFromDate', instance.allowToModifyFromDate);
  writeNotNull('allowToModifyToDate', instance.allowToModifyToDate);
  writeNotNull('allowToModifyFinishDate', instance.allowToModifyFinishDate);
  writeNotNull('relatedFolderId', instance.relatedFolderId);
  writeNotNull('allowToCreateSubTasks', instance.allowToCreateSubTasks);
  writeNotNull('aclObject', instance.aclObject?.toJson());
  writeNotNull('projectId', instance.projectId);
  writeNotNull('code', instance.code);
  writeNotNull('type', instance.type);
  writeNotNull('attachment', instance.attachment);
  writeNotNull('workflowStatus', instance.workflowStatus);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('ref', instance.ref);
  writeNotNull(
      'relatedTasks', instance.relatedTasks?.map((e) => e.toJson()).toList());
  return val;
}

TaskViewModelListResponseObject _$TaskViewModelListResponseObjectFromJson(
        Map<String, dynamic> json) =>
    TaskViewModelListResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => TaskViewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TaskViewModelListResponseObjectToJson(
    TaskViewModelListResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

TaskViewModelPagination _$TaskViewModelPaginationFromJson(
        Map<String, dynamic> json) =>
    TaskViewModelPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => TaskViewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TaskViewModelPaginationToJson(
    TaskViewModelPagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('numberOfRecords', instance.numberOfRecords);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('content', instance.content?.map((e) => e.toJson()).toList());
  return val;
}

TaskViewModelResponseList _$TaskViewModelResponseListFromJson(
        Map<String, dynamic> json) =>
    TaskViewModelResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => TaskViewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TaskViewModelResponseListToJson(
    TaskViewModelResponseList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

TaskViewModelResponseObject _$TaskViewModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    TaskViewModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : TaskViewModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskViewModelResponseObjectToJson(
    TaskViewModelResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

TaskViewModelResponsePagination _$TaskViewModelResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    TaskViewModelResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : TaskViewModelPagination.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskViewModelResponsePaginationToJson(
    TaskViewModelResponsePagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

TemplateResquestModel _$TemplateResquestModelFromJson(
        Map<String, dynamic> json) =>
    TemplateResquestModel(
      parentId: json['parentId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String,
      description: json['description'] as String?,
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      finishDate: json['finishDate'] == null
          ? null
          : DateTime.parse(json['finishDate'] as String),
      estimateTime: (json['estimateTime'] as num?)?.toDouble(),
      actualTime: (json['actualTime'] as num?)?.toDouble(),
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      managementObj: (json['managementObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      ownerObj: (json['ownerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      supervisorObj: (json['supervisorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      coordinatorObj: (json['coordinatorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      assigneeObj: (json['assigneeObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      viewerObj: (json['viewerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      order: json['order'] as int?,
      cLeft: json['c_left'] as int?,
      cRight: json['c_right'] as int?,
      cLevel: json['c_level'] as int?,
      templateContentObj: (json['templateContentObj'] as List<dynamic>?)
              ?.map((e) => TaskBaseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TemplateResquestModelToJson(
    TemplateResquestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('parentId', instance.parentId);
  writeNotNull('name', instance.name);
  val['code'] = instance.code;
  writeNotNull('description', instance.description);
  writeNotNull('fromDate', instance.fromDate?.toIso8601String());
  writeNotNull('toDate', instance.toDate?.toIso8601String());
  writeNotNull('finishDate', instance.finishDate?.toIso8601String());
  writeNotNull('estimateTime', instance.estimateTime);
  writeNotNull('actualTime', instance.actualTime);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull('managementObj', instance.managementObj);
  writeNotNull('ownerObj', instance.ownerObj);
  writeNotNull('supervisorObj', instance.supervisorObj);
  writeNotNull('coordinatorObj', instance.coordinatorObj);
  writeNotNull('assigneeObj', instance.assigneeObj);
  writeNotNull('viewerObj', instance.viewerObj);
  writeNotNull('order', instance.order);
  writeNotNull('c_left', instance.cLeft);
  writeNotNull('c_right', instance.cRight);
  writeNotNull('c_level', instance.cLevel);
  writeNotNull('templateContentObj',
      instance.templateContentObj?.map((e) => e.toJson()).toList());
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  return val;
}

TemplateViewModel _$TemplateViewModelFromJson(Map<String, dynamic> json) =>
    TemplateViewModel(
      parentId: json['parentId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String,
      description: json['description'] as String?,
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      finishDate: json['finishDate'] == null
          ? null
          : DateTime.parse(json['finishDate'] as String),
      estimateTime: (json['estimateTime'] as num?)?.toDouble(),
      actualTime: (json['actualTime'] as num?)?.toDouble(),
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      managementObj: (json['managementObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      ownerObj: (json['ownerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      supervisorObj: (json['supervisorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      coordinatorObj: (json['coordinatorObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      assigneeObj: (json['assigneeObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      viewerObj: (json['viewerObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      order: json['order'] as int?,
      cLeft: json['c_left'] as int?,
      cRight: json['c_right'] as int?,
      cLevel: json['c_level'] as int?,
      id: json['id'] as String?,
      templateContentObj: (json['templateContentObj'] as List<dynamic>?)
              ?.map((e) => TaskViewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TemplateViewModelToJson(TemplateViewModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('parentId', instance.parentId);
  writeNotNull('name', instance.name);
  val['code'] = instance.code;
  writeNotNull('description', instance.description);
  writeNotNull('fromDate', instance.fromDate?.toIso8601String());
  writeNotNull('toDate', instance.toDate?.toIso8601String());
  writeNotNull('finishDate', instance.finishDate?.toIso8601String());
  writeNotNull('estimateTime', instance.estimateTime);
  writeNotNull('actualTime', instance.actualTime);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull('managementObj', instance.managementObj);
  writeNotNull('ownerObj', instance.ownerObj);
  writeNotNull('supervisorObj', instance.supervisorObj);
  writeNotNull('coordinatorObj', instance.coordinatorObj);
  writeNotNull('assigneeObj', instance.assigneeObj);
  writeNotNull('viewerObj', instance.viewerObj);
  writeNotNull('order', instance.order);
  writeNotNull('c_left', instance.cLeft);
  writeNotNull('c_right', instance.cRight);
  writeNotNull('c_level', instance.cLevel);
  writeNotNull('id', instance.id);
  writeNotNull('templateContentObj',
      instance.templateContentObj?.map((e) => e.toJson()).toList());
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  return val;
}

TemplateViewModelPagination _$TemplateViewModelPaginationFromJson(
        Map<String, dynamic> json) =>
    TemplateViewModelPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map(
                  (e) => TemplateViewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TemplateViewModelPaginationToJson(
    TemplateViewModelPagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('numberOfRecords', instance.numberOfRecords);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('content', instance.content?.map((e) => e.toJson()).toList());
  return val;
}

TemplateViewModelResponseObject _$TemplateViewModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    TemplateViewModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : TemplateViewModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TemplateViewModelResponseObjectToJson(
    TemplateViewModelResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

TemplateViewModelResponsePagination
    _$TemplateViewModelResponsePaginationFromJson(Map<String, dynamic> json) =>
        TemplateViewModelResponsePagination(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: json['data'] == null
              ? null
              : TemplateViewModelPagination.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TemplateViewModelResponsePaginationToJson(
    TemplateViewModelResponsePagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

TreeBomTempModel _$TreeBomTempModelFromJson(Map<String, dynamic> json) =>
    TreeBomTempModel(
      routing: json['routing'] == null
          ? null
          : RoutingModel.fromJson(json['routing'] as Map<String, dynamic>),
      companyName: json['companyName'] as String?,
      companyId: json['companyId'] as String?,
      pickingTypeId: json['pickingTypeId'] as String?,
      readyToProduce: json['readyToProduce'] as String?,
      order: json['order'] as int?,
      type: json['type'] as String?,
      isActive: json['isActive'] as bool?,
      code: json['code'] as String?,
      deXe: (json['deXe'] as num?)?.toDouble(),
      description: json['description'] as String?,
      routingName: json['routingName'] as String?,
      routingId: json['routingId'] as String?,
      unitName: json['unitName'] as String?,
      unitId: json['unitId'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      objectType: json['objectType'] as String?,
      objectName: json['objectName'] as String?,
      objectId: json['objectId'] as String?,
      id: json['id'] as String?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      bomTempDetails: (json['bomTempDetails'] as List<dynamic>?)
              ?.map((e) => BomTempLineModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TreeBomTempModelToJson(TreeBomTempModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('routing', instance.routing?.toJson());
  writeNotNull('companyName', instance.companyName);
  writeNotNull('companyId', instance.companyId);
  writeNotNull('pickingTypeId', instance.pickingTypeId);
  writeNotNull('readyToProduce', instance.readyToProduce);
  writeNotNull('order', instance.order);
  writeNotNull('type', instance.type);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('code', instance.code);
  writeNotNull('deXe', instance.deXe);
  writeNotNull('description', instance.description);
  writeNotNull('routingName', instance.routingName);
  writeNotNull('routingId', instance.routingId);
  writeNotNull('unitName', instance.unitName);
  writeNotNull('unitId', instance.unitId);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('objectName', instance.objectName);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('id', instance.id);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('bomTempDetails',
      instance.bomTempDetails?.map((e) => e.toJson()).toList());
  return val;
}

TreeGrownCreateRequestModel _$TreeGrownCreateRequestModelFromJson(
        Map<String, dynamic> json) =>
    TreeGrownCreateRequestModel(
      locationSrcId: json['locationSrcId'] as String?,
      locationSrcName: json['locationSrcName'] as String?,
      parentLocationSrcId: json['parentLocationSrcId'] as String?,
      parentLocationSrcName: json['parentLocationSrcName'] as String?,
      parentPath: json['parentPath'] as String?,
      productAttributeValue: json['productAttributeValue'] as String?,
      productAttributeName: json['productAttributeName'] as String?,
      productTmpId: json['productTmpId'] as String?,
      productTmpName: json['productTmpName'] as String?,
      referenceSrcId: json['referenceSrcId'] as String?,
      referenceSrc: json['referenceSrc'] as String?,
      objectId: json['objectId'] as String?,
      movelineDetails: (json['movelineDetails'] as List<dynamic>?)
              ?.map((e) => StockMoveLine.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TreeGrownCreateRequestModelToJson(
    TreeGrownCreateRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locationSrcId', instance.locationSrcId);
  writeNotNull('locationSrcName', instance.locationSrcName);
  writeNotNull('parentLocationSrcId', instance.parentLocationSrcId);
  writeNotNull('parentLocationSrcName', instance.parentLocationSrcName);
  writeNotNull('parentPath', instance.parentPath);
  writeNotNull('productAttributeValue', instance.productAttributeValue);
  writeNotNull('productAttributeName', instance.productAttributeName);
  writeNotNull('productTmpId', instance.productTmpId);
  writeNotNull('productTmpName', instance.productTmpName);
  writeNotNull('referenceSrcId', instance.referenceSrcId);
  writeNotNull('referenceSrc', instance.referenceSrc);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('movelineDetails',
      instance.movelineDetails?.map((e) => e.toJson()).toList());
  return val;
}

TreePlanningCreateModel _$TreePlanningCreateModelFromJson(
        Map<String, dynamic> json) =>
    TreePlanningCreateModel(
      year: json['year'] as int?,
    );

Map<String, dynamic> _$TreePlanningCreateModelToJson(
    TreePlanningCreateModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('year', instance.year);
  return val;
}

TreeStockOnHand _$TreeStockOnHandFromJson(Map<String, dynamic> json) =>
    TreeStockOnHand(
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
      objectName: json['objectName'] as String?,
      objectId: json['objectId'] as String?,
      objectType: json['objectType'] as String?,
      productTmpId: json['productTmpId'] as String?,
      locationId: json['locationId'] as String?,
      locationName: json['locationName'] as String?,
      parentLocationId: json['parentLocationId'] as String?,
      parentLocationName: json['parentLocationName'] as String?,
      parentPath: json['parentPath'] as String?,
      unitId: json['unitId'] as String?,
      unitName: json['unitName'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataContent: json['metadataContent'] as String?,
      metaContentType: json['metaContentType'] as String?,
      referenceId: json['referenceId'] as String?,
      reference: json['reference'] as String?,
    );

Map<String, dynamic> _$TreeStockOnHandToJson(TreeStockOnHand instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('id', instance.id);
  writeNotNull('objectName', instance.objectName);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('productTmpId', instance.productTmpId);
  writeNotNull('locationId', instance.locationId);
  writeNotNull('locationName', instance.locationName);
  writeNotNull('parentLocationId', instance.parentLocationId);
  writeNotNull('parentLocationName', instance.parentLocationName);
  writeNotNull('parentPath', instance.parentPath);
  writeNotNull('unitId', instance.unitId);
  writeNotNull('unitName', instance.unitName);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('referenceId', instance.referenceId);
  writeNotNull('reference', instance.reference);
  return val;
}

TreeStockOnHandExtendQueryModel _$TreeStockOnHandExtendQueryModelFromJson(
        Map<String, dynamic> json) =>
    TreeStockOnHandExtendQueryModel(
      locationId: json['locationId'] as String?,
      productAttributeId: json['productAttributeId'] as String?,
      referenceId: json['referenceId'] as String?,
      objectId: json['objectId'] as String?,
      owner: json['owner'] as String?,
      productTmpId: json['productTmpId'] as String?,
      parentPath: json['parentPath'] as String?,
    );

Map<String, dynamic> _$TreeStockOnHandExtendQueryModelToJson(
    TreeStockOnHandExtendQueryModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locationId', instance.locationId);
  writeNotNull('productAttributeId', instance.productAttributeId);
  writeNotNull('referenceId', instance.referenceId);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('owner', instance.owner);
  writeNotNull('productTmpId', instance.productTmpId);
  writeNotNull('parentPath', instance.parentPath);
  return val;
}

TreeStockOnHandUpdateModel _$TreeStockOnHandUpdateModelFromJson(
        Map<String, dynamic> json) =>
    TreeStockOnHandUpdateModel(
      oldObjName: json['oldObjName'] as String?,
      newObjName: json['newObjName'] as String?,
      productTmpId: json['productTmpId'] as String?,
    );

Map<String, dynamic> _$TreeStockOnHandUpdateModelToJson(
    TreeStockOnHandUpdateModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('oldObjName', instance.oldObjName);
  writeNotNull('newObjName', instance.newObjName);
  writeNotNull('productTmpId', instance.productTmpId);
  return val;
}

TreeStockTransferModel _$TreeStockTransferModelFromJson(
        Map<String, dynamic> json) =>
    TreeStockTransferModel(
      locationSrcId: json['locationSrcId'] as String?,
      locationSrcName: json['locationSrcName'] as String?,
      referenceSrc: json['referenceSrc'] as String?,
      referenceSrcId: json['referenceSrcId'] as String?,
      referenceDest: json['referenceDest'] as String?,
      referenceDestId: json['referenceDestId'] as String?,
      locationDestId: json['locationDestId'] as String?,
      parentLocationDestId: json['parentLocationDestId'] as String?,
      parentPathDest: json['parentPathDest'] as String?,
      parentLocationDestName: json['parentLocationDestName'] as String?,
      locationDestName: json['locationDestName'] as String?,
      productTmpId: json['productTmpId'] as String?,
      objectType: json['objectType'] as String?,
      objectName: json['objectName'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      unitId: json['unitId'] as String?,
      unitName: json['unitName'] as String?,
      isAutoGenerateLine: json['isAutoGenerateLine'] as bool?,
      voucherType: json['voucherType'] as String?,
      isConfirm: json['isConfirm'] as bool?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      moveLineDetail: (json['moveLineDetail'] as List<dynamic>?)
              ?.map((e) => LotDetailModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TreeStockTransferModelToJson(
    TreeStockTransferModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locationSrcId', instance.locationSrcId);
  writeNotNull('locationSrcName', instance.locationSrcName);
  writeNotNull('referenceSrc', instance.referenceSrc);
  writeNotNull('referenceSrcId', instance.referenceSrcId);
  writeNotNull('referenceDest', instance.referenceDest);
  writeNotNull('referenceDestId', instance.referenceDestId);
  writeNotNull('locationDestId', instance.locationDestId);
  writeNotNull('parentLocationDestId', instance.parentLocationDestId);
  writeNotNull('parentPathDest', instance.parentPathDest);
  writeNotNull('parentLocationDestName', instance.parentLocationDestName);
  writeNotNull('locationDestName', instance.locationDestName);
  writeNotNull('productTmpId', instance.productTmpId);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('objectName', instance.objectName);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('unitId', instance.unitId);
  writeNotNull('unitName', instance.unitName);
  writeNotNull('isAutoGenerateLine', instance.isAutoGenerateLine);
  writeNotNull('voucherType', instance.voucherType);
  writeNotNull('isConfirm', instance.isConfirm);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('moveLineDetail',
      instance.moveLineDetail?.map((e) => e.toJson()).toList());
  return val;
}

UploadFileRequestModel _$UploadFileRequestModelFromJson(
        Map<String, dynamic> json) =>
    UploadFileRequestModel(
      objectId: json['objectId'] as String?,
      objectType: json['objectType'] as String?,
      relatedRoleCodeObjects: (json['relatedRoleCodeObjects'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      relatedRoleCode: json['relatedRoleCode'] as String?,
      relatedObjectIdList: (json['relatedObjectIdList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      relatedBaseCategory: json['relatedBaseCategory'] as String?,
      relatedFondId: json['relatedFondId'] as String?,
      relatedArchiveTypeId: json['relatedArchiveTypeId'] as String?,
      relatedRecordCollectionId: json['relatedRecordCollectionId'] as String?,
      relatedRecordId: json['relatedRecordId'] as String?,
      relatedProjectId: json['relatedProjectId'] as String?,
      relatedTaskId: json['relatedTaskId'] as String?,
      relatedRespartnerId: json['relatedRespartnerId'] as String?,
      relatedObject1: json['relatedObject1'] as String?,
      relatedObject1Type: json['relatedObject1Type'] as String?,
      relatedObject2: json['relatedObject2'] as String?,
      relatedObject2Type: json['relatedObject2Type'] as String?,
      id: json['id'] as String?,
      parentId: json['parentId'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      labels: json['labels'] as String?,
      imageUrl: json['imageUrl'] as String?,
      description: json['description'] as String?,
      nodeTypeObj: nodeTypeEnumFromJson(json['nodeTypeObj']),
      metaContentType: json['metaContentType'] as String?,
      metadataContentObj: (json['metadataContentObj'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metadataObj: (json['metadataObj'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      ownerId: json['ownerId'] as String?,
      isPublish: json['isPublish'] as bool?,
      isSearchable: json['isSearchable'] as bool?,
      aclObject: json['aclObject'] == null
          ? null
          : ACLObject.fromJson(json['aclObject'] as Map<String, dynamic>),
      metaContent: json['metaContent'] as String?,
      parentIds: (json['parentIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      file: json['file'] as String,
    );

Map<String, dynamic> _$UploadFileRequestModelToJson(
    UploadFileRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('objectId', instance.objectId);
  writeNotNull('objectType', instance.objectType);
  writeNotNull('relatedRoleCodeObjects', instance.relatedRoleCodeObjects);
  writeNotNull('relatedRoleCode', instance.relatedRoleCode);
  writeNotNull('relatedObjectIdList', instance.relatedObjectIdList);
  writeNotNull('relatedBaseCategory', instance.relatedBaseCategory);
  writeNotNull('relatedFondId', instance.relatedFondId);
  writeNotNull('relatedArchiveTypeId', instance.relatedArchiveTypeId);
  writeNotNull('relatedRecordCollectionId', instance.relatedRecordCollectionId);
  writeNotNull('relatedRecordId', instance.relatedRecordId);
  writeNotNull('relatedProjectId', instance.relatedProjectId);
  writeNotNull('relatedTaskId', instance.relatedTaskId);
  writeNotNull('relatedRespartnerId', instance.relatedRespartnerId);
  writeNotNull('relatedObject1', instance.relatedObject1);
  writeNotNull('relatedObject1Type', instance.relatedObject1Type);
  writeNotNull('relatedObject2', instance.relatedObject2);
  writeNotNull('relatedObject2Type', instance.relatedObject2Type);
  writeNotNull('id', instance.id);
  writeNotNull('parentId', instance.parentId);
  writeNotNull('name', instance.name);
  writeNotNull('type', instance.type);
  writeNotNull(
      'labelsObjs', instance.labelsObjs?.map((e) => e.toJson()).toList());
  writeNotNull('labels', instance.labels);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('description', instance.description);
  writeNotNull('nodeTypeObj', nodeTypeEnumToJson(instance.nodeTypeObj));
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('metadataContentObj',
      instance.metadataContentObj?.map((e) => e.toJson()).toList());
  writeNotNull(
      'metadataObj', instance.metadataObj?.map((e) => e.toJson()).toList());
  writeNotNull('ownerId', instance.ownerId);
  writeNotNull('isPublish', instance.isPublish);
  writeNotNull('isSearchable', instance.isSearchable);
  writeNotNull('aclObject', instance.aclObject?.toJson());
  writeNotNull('metaContent', instance.metaContent);
  writeNotNull('parentIds', instance.parentIds);
  val['file'] = instance.file;
  return val;
}

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => UserEntity(
      userId: json['userId'] as String?,
      userEmail: json['userEmail'] as String?,
      name: json['name'] as String?,
      userName: json['userName'] as String?,
    );

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userId', instance.userId);
  writeNotNull('userEmail', instance.userEmail);
  writeNotNull('name', instance.name);
  writeNotNull('userName', instance.userName);
  return val;
}

Website _$WebsiteFromJson(Map<String, dynamic> json) => Website(
      type:
          (json['type'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      url: json['url'] as String?,
    );

Map<String, dynamic> _$WebsiteToJson(Website instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('url', instance.url);
  return val;
}

WorkCenter _$WorkCenterFromJson(Map<String, dynamic> json) => WorkCenter(
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
      id: json['id'] as String?,
      name: json['name'] as String?,
      timeEfficiency: (json['timeEfficiency'] as num?)?.toDouble(),
      code: json['code'] as String?,
      capacity: (json['capacity'] as num?)?.toDouble(),
      costsHour: (json['costsHour'] as num?)?.toDouble(),
      timeStart: (json['timeStart'] as num?)?.toDouble(),
      timeStop: (json['timeStop'] as num?)?.toDouble(),
      workingState: json['workingState'] as String?,
      oeeTarget: (json['oeeTarget'] as num?)?.toDouble(),
      resourceId: json['resourceId'] as String?,
      companyId: json['companyId'] as String?,
      companyName: json['companyName'] as String?,
      resourceCalendarId: json['resourceCalendarId'] as String?,
      deXeDecimal: (json['deXeDecimal'] as num?)?.toDouble(),
      description: json['description'] as String?,
      order: json['order'] as int?,
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$WorkCenterToJson(WorkCenter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('timeEfficiency', instance.timeEfficiency);
  writeNotNull('code', instance.code);
  writeNotNull('capacity', instance.capacity);
  writeNotNull('costsHour', instance.costsHour);
  writeNotNull('timeStart', instance.timeStart);
  writeNotNull('timeStop', instance.timeStop);
  writeNotNull('workingState', instance.workingState);
  writeNotNull('oeeTarget', instance.oeeTarget);
  writeNotNull('resourceId', instance.resourceId);
  writeNotNull('companyId', instance.companyId);
  writeNotNull('companyName', instance.companyName);
  writeNotNull('resourceCalendarId', instance.resourceCalendarId);
  writeNotNull('deXeDecimal', instance.deXeDecimal);
  writeNotNull('description', instance.description);
  writeNotNull('order', instance.order);
  writeNotNull('isActive', instance.isActive);
  return val;
}

WorkCenterModel _$WorkCenterModelFromJson(Map<String, dynamic> json) =>
    WorkCenterModel(
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
      id: json['id'] as String?,
      name: json['name'] as String?,
      timeEfficiency: (json['timeEfficiency'] as num?)?.toDouble(),
      code: json['code'] as String?,
      capacity: (json['capacity'] as num?)?.toDouble(),
      costsHour: (json['costsHour'] as num?)?.toDouble(),
      timeStart: (json['timeStart'] as num?)?.toDouble(),
      timeStop: (json['timeStop'] as num?)?.toDouble(),
      workingState: json['workingState'] as String?,
      oeeTarget: (json['oeeTarget'] as num?)?.toDouble(),
      resourceId: json['resourceId'] as String?,
      companyId: json['companyId'] as String?,
      companyName: json['companyName'] as String?,
      resourceCalendarId: json['resourceCalendarId'] as String?,
      deXeDecimal: (json['deXeDecimal'] as num?)?.toDouble(),
      description: json['description'] as String?,
      order: json['order'] as int?,
      isActive: json['isActive'] as bool?,
      timeStartString: json['timeStartString'] as String?,
      timeStopString: json['timeStopString'] as String?,
    );

Map<String, dynamic> _$WorkCenterModelToJson(WorkCenterModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('timeEfficiency', instance.timeEfficiency);
  writeNotNull('code', instance.code);
  writeNotNull('capacity', instance.capacity);
  writeNotNull('costsHour', instance.costsHour);
  writeNotNull('timeStart', instance.timeStart);
  writeNotNull('timeStop', instance.timeStop);
  writeNotNull('workingState', instance.workingState);
  writeNotNull('oeeTarget', instance.oeeTarget);
  writeNotNull('resourceId', instance.resourceId);
  writeNotNull('companyId', instance.companyId);
  writeNotNull('companyName', instance.companyName);
  writeNotNull('resourceCalendarId', instance.resourceCalendarId);
  writeNotNull('deXeDecimal', instance.deXeDecimal);
  writeNotNull('description', instance.description);
  writeNotNull('order', instance.order);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('timeStartString', instance.timeStartString);
  writeNotNull('timeStopString', instance.timeStopString);
  return val;
}

WorkCenterModelResponseObject _$WorkCenterModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    WorkCenterModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : WorkCenterModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WorkCenterModelResponseObjectToJson(
    WorkCenterModelResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

WorkCenterPagination _$WorkCenterPaginationFromJson(
        Map<String, dynamic> json) =>
    WorkCenterPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => WorkCenter.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$WorkCenterPaginationToJson(
    WorkCenterPagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('numberOfRecords', instance.numberOfRecords);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('content', instance.content?.map((e) => e.toJson()).toList());
  return val;
}

WorkCenterResponseObject _$WorkCenterResponseObjectFromJson(
        Map<String, dynamic> json) =>
    WorkCenterResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : WorkCenter.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WorkCenterResponseObjectToJson(
    WorkCenterResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

WorkCenterResponsePagination _$WorkCenterResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    WorkCenterResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : WorkCenterPagination.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WorkCenterResponsePaginationToJson(
    WorkCenterResponsePagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

WorkOrder _$WorkOrderFromJson(Map<String, dynamic> json) => WorkOrder(
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
      id: json['id'] as String?,
      name: json['name'] as String?,
      workCenterId: json['workCenterId'] as String?,
      productionId: json['productionId'] as String?,
      objectId: json['objectId'] as String?,
      productionAvailability: json['productionAvailability'] as String?,
      qtyProduced: (json['qtyProduced'] as num?)?.toDouble(),
      qtyProducing: (json['qtyProducing'] as num?)?.toDouble(),
      state: json['state'] as String?,
      datePlannedStart: json['datePlannedStart'] == null
          ? null
          : DateTime.parse(json['datePlannedStart'] as String),
      datePlannedFinished: json['datePlannedFinished'] == null
          ? null
          : DateTime.parse(json['datePlannedFinished'] as String),
      dateStart: json['dateStart'] == null
          ? null
          : DateTime.parse(json['dateStart'] as String),
      dateFinished: json['dateFinished'] == null
          ? null
          : DateTime.parse(json['dateFinished'] as String),
      durationExpected: (json['durationExpected'] as num?)?.toDouble(),
      duration: (json['duration'] as num?)?.toDouble(),
      durationUnit: (json['durationUnit'] as num?)?.toDouble(),
      durationPercent: json['durationPercent'] as int?,
      operationId: json['operationId'] as String?,
      finalLotId: json['finalLotId'] as String?,
      nextWorkOrderId: json['nextWorkOrderId'] as String?,
      productionDate: json['productionDate'] == null
          ? null
          : DateTime.parse(json['productionDate'] as String),
      capacity: (json['capacity'] as num?)?.toDouble(),
      machineId: json['machineId'] as String?,
      operatorId: json['operatorId'] as String?,
      semiFinishedProductId: json['semiFinishedProductId'] as String?,
      semiFinishedProductUnitId: json['semiFinishedProductUnitId'] as String?,
      qtySemiFinishedProduct:
          (json['qtySemiFinishedProduct'] as num?)?.toDouble(),
      description: json['description'] as String?,
      totalQtyPlanned: (json['totalQtyPlanned'] as num?)?.toDouble(),
      convertToKgResult: (json['convertToKgResult'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WorkOrderToJson(WorkOrder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('workCenterId', instance.workCenterId);
  writeNotNull('productionId', instance.productionId);
  writeNotNull('objectId', instance.objectId);
  writeNotNull('productionAvailability', instance.productionAvailability);
  writeNotNull('qtyProduced', instance.qtyProduced);
  writeNotNull('qtyProducing', instance.qtyProducing);
  writeNotNull('state', instance.state);
  writeNotNull(
      'datePlannedStart', instance.datePlannedStart?.toIso8601String());
  writeNotNull(
      'datePlannedFinished', instance.datePlannedFinished?.toIso8601String());
  writeNotNull('dateStart', instance.dateStart?.toIso8601String());
  writeNotNull('dateFinished', instance.dateFinished?.toIso8601String());
  writeNotNull('durationExpected', instance.durationExpected);
  writeNotNull('duration', instance.duration);
  writeNotNull('durationUnit', instance.durationUnit);
  writeNotNull('durationPercent', instance.durationPercent);
  writeNotNull('operationId', instance.operationId);
  writeNotNull('finalLotId', instance.finalLotId);
  writeNotNull('nextWorkOrderId', instance.nextWorkOrderId);
  writeNotNull('productionDate', instance.productionDate?.toIso8601String());
  writeNotNull('capacity', instance.capacity);
  writeNotNull('machineId', instance.machineId);
  writeNotNull('operatorId', instance.operatorId);
  writeNotNull('semiFinishedProductId', instance.semiFinishedProductId);
  writeNotNull('semiFinishedProductUnitId', instance.semiFinishedProductUnitId);
  writeNotNull('qtySemiFinishedProduct', instance.qtySemiFinishedProduct);
  writeNotNull('description', instance.description);
  writeNotNull('totalQtyPlanned', instance.totalQtyPlanned);
  writeNotNull('convertToKgResult', instance.convertToKgResult);
  return val;
}

WorkOrderPagination _$WorkOrderPaginationFromJson(Map<String, dynamic> json) =>
    WorkOrderPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => WorkOrder.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$WorkOrderPaginationToJson(WorkOrderPagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('numberOfRecords', instance.numberOfRecords);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('content', instance.content?.map((e) => e.toJson()).toList());
  return val;
}

WorkOrderPlanning _$WorkOrderPlanningFromJson(Map<String, dynamic> json) =>
    WorkOrderPlanning(
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
      id: json['id'] as String?,
      workOrderId: json['workOrderId'] as String?,
      workingTimeId: json['workingTimeId'] as String?,
      qtyPlanning: (json['qtyPlanning'] as num?)?.toDouble(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$WorkOrderPlanningToJson(WorkOrderPlanning instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('id', instance.id);
  writeNotNull('workOrderId', instance.workOrderId);
  writeNotNull('workingTimeId', instance.workingTimeId);
  writeNotNull('qtyPlanning', instance.qtyPlanning);
  writeNotNull('status', instance.status);
  return val;
}

WorkOrderPlanningPagination _$WorkOrderPlanningPaginationFromJson(
        Map<String, dynamic> json) =>
    WorkOrderPlanningPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map(
                  (e) => WorkOrderPlanning.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$WorkOrderPlanningPaginationToJson(
    WorkOrderPlanningPagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('numberOfRecords', instance.numberOfRecords);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('content', instance.content?.map((e) => e.toJson()).toList());
  return val;
}

WorkOrderPlanningResponseObject _$WorkOrderPlanningResponseObjectFromJson(
        Map<String, dynamic> json) =>
    WorkOrderPlanningResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : WorkOrderPlanning.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WorkOrderPlanningResponseObjectToJson(
    WorkOrderPlanningResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

WorkOrderPlanningResponsePagination
    _$WorkOrderPlanningResponsePaginationFromJson(Map<String, dynamic> json) =>
        WorkOrderPlanningResponsePagination(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: json['data'] == null
              ? null
              : WorkOrderPlanningPagination.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WorkOrderPlanningResponsePaginationToJson(
    WorkOrderPlanningResponsePagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

WorkOrderResponseObject _$WorkOrderResponseObjectFromJson(
        Map<String, dynamic> json) =>
    WorkOrderResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : WorkOrder.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WorkOrderResponseObjectToJson(
    WorkOrderResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

WorkOrderResponsePagination _$WorkOrderResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    WorkOrderResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : WorkOrderPagination.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WorkOrderResponsePaginationToJson(
    WorkOrderResponsePagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

WorkflowEntity _$WorkflowEntityFromJson(Map<String, dynamic> json) =>
    WorkflowEntity(
      documentId: json['documentId'] as String?,
      workflowCommand: json['workflowCommand'] as String?,
      workflowCode: json['workflowCode'] as String?,
      commandName: json['commandName'] as String?,
      classifier: json['classifier'] as int?,
      applicationId: json['applicationId'] as String?,
    );

Map<String, dynamic> _$WorkflowEntityToJson(WorkflowEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('documentId', instance.documentId);
  writeNotNull('workflowCommand', instance.workflowCommand);
  writeNotNull('workflowCode', instance.workflowCode);
  writeNotNull('commandName', instance.commandName);
  writeNotNull('classifier', instance.classifier);
  writeNotNull('applicationId', instance.applicationId);
  return val;
}

WorkflowFinaceUpdateModel _$WorkflowFinaceUpdateModelFromJson(
        Map<String, dynamic> json) =>
    WorkflowFinaceUpdateModel(
      documentId: json['documentId'] as String?,
      workflowState: json['workflowState'] as String?,
      workflowStatus: json['workflowStatus'] as String?,
      isInitial: json['isInitial'] as bool?,
    );

Map<String, dynamic> _$WorkflowFinaceUpdateModelToJson(
    WorkflowFinaceUpdateModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('documentId', instance.documentId);
  writeNotNull('workflowState', instance.workflowState);
  writeNotNull('workflowStatus', instance.workflowStatus);
  writeNotNull('isInitial', instance.isInitial);
  return val;
}

WorkflowUpdateModel _$WorkflowUpdateModelFromJson(Map<String, dynamic> json) =>
    WorkflowUpdateModel(
      documentId: json['documentId'] as String?,
      workflowState: json['workflowState'] as String?,
      workflowStatus: json['workflowStatus'] as String?,
      isInitial: json['isInitial'] as bool?,
    );

Map<String, dynamic> _$WorkflowUpdateModelToJson(WorkflowUpdateModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('documentId', instance.documentId);
  writeNotNull('workflowState', instance.workflowState);
  writeNotNull('workflowStatus', instance.workflowStatus);
  writeNotNull('isInitial', instance.isInitial);
  return val;
}

WorkingTime _$WorkingTimeFromJson(Map<String, dynamic> json) => WorkingTime(
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
      id: json['id'] as String?,
      shiftId: json['shiftId'] as String?,
      workingDate: json['workingDate'] == null
          ? null
          : DateTime.parse(json['workingDate'] as String),
      workingHours: json['workingHours'] as int?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$WorkingTimeToJson(WorkingTime instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdByUserId', instance.createdByUserId);
  writeNotNull('lastModifiedByUserId', instance.lastModifiedByUserId);
  writeNotNull(
      'lastModifiedOnDate', instance.lastModifiedOnDate?.toIso8601String());
  writeNotNull('createdOnDate', instance.createdOnDate?.toIso8601String());
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('metadataContentObjs',
      instance.metadataContentObjs?.map((e) => e.toJson()).toList());
  writeNotNull('metaContentType', instance.metaContentType);
  writeNotNull('metadataContent', instance.metadataContent);
  writeNotNull('id', instance.id);
  writeNotNull('shiftId', instance.shiftId);
  writeNotNull('workingDate', instance.workingDate?.toIso8601String());
  writeNotNull('workingHours', instance.workingHours);
  writeNotNull('description', instance.description);
  return val;
}

WorkingTimeResponseList _$WorkingTimeResponseListFromJson(
        Map<String, dynamic> json) =>
    WorkingTimeResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => WorkingTime.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$WorkingTimeResponseListToJson(
    WorkingTimeResponseList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

WorkingTimeResponseObject _$WorkingTimeResponseObjectFromJson(
        Map<String, dynamic> json) =>
    WorkingTimeResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : WorkingTime.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WorkingTimeResponseObjectToJson(
    WorkingTimeResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', codeToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('totalTime', instance.totalTime);
  writeNotNull('data', instance.data?.toJson());
  return val;
}
