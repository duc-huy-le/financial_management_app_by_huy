// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicationCreateModel _$ApplicationCreateModelFromJson(
        Map<String, dynamic> json) =>
    ApplicationCreateModel(
      parentId: json['parentId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      id: json['id'] as String?,
      templateApp: json['templateApp'] as String?,
    );

Map<String, dynamic> _$ApplicationCreateModelToJson(
        ApplicationCreateModel instance) =>
    <String, dynamic>{
      'parentId': instance.parentId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'id': instance.id,
      'templateApp': instance.templateApp,
    };

ApplicationModel _$ApplicationModelFromJson(Map<String, dynamic> json) =>
    ApplicationModel(
      parentId: json['parentId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      id: json['id'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
    );

Map<String, dynamic> _$ApplicationModelToJson(ApplicationModel instance) =>
    <String, dynamic>{
      'parentId': instance.parentId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'id': instance.id,
      'lastModifiedOnDate': instance.lastModifiedOnDate?.toIso8601String(),
      'createdOnDate': instance.createdOnDate?.toIso8601String(),
    };

ApplicationModelPagination _$ApplicationModelPaginationFromJson(
        Map<String, dynamic> json) =>
    ApplicationModelPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => ApplicationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ApplicationModelPaginationToJson(
        ApplicationModelPagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'numberOfRecords': instance.numberOfRecords,
      'totalRecords': instance.totalRecords,
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };

ApplicationModelResponseList _$ApplicationModelResponseListFromJson(
        Map<String, dynamic> json) =>
    ApplicationModelResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ApplicationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ApplicationModelResponseListToJson(
        ApplicationModelResponseList instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

ApplicationModelResponseObject _$ApplicationModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    ApplicationModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : ApplicationModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApplicationModelResponseObjectToJson(
        ApplicationModelResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

ApplicationModelResponsePagination _$ApplicationModelResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    ApplicationModelResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : ApplicationModelPagination.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApplicationModelResponsePaginationToJson(
        ApplicationModelResponsePagination instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

ApplicationUpdateModel _$ApplicationUpdateModelFromJson(
        Map<String, dynamic> json) =>
    ApplicationUpdateModel(
      parentId: json['parentId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ApplicationUpdateModelToJson(
        ApplicationUpdateModel instance) =>
    <String, dynamic>{
      'parentId': instance.parentId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'id': instance.id,
    };

BaseNavigationModel _$BaseNavigationModelFromJson(Map<String, dynamic> json) =>
    BaseNavigationModel(
      applicationId: json['applicationId'] as String?,
      id: json['id'] as String?,
      createdByUserId: json['createdByUserId'] as String?,
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      lastModifiedByUserId: json['lastModifiedByUserId'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      code: json['code'] as String?,
      name: json['name'] as String?,
      idPath: json['idPath'] as String?,
      path: json['path'] as String?,
      level: json['level'] as int?,
      order: json['order'] as int?,
      isActive: json['isActive'] as bool?,
      status: json['status'] as bool?,
      positionObj: positionEnumFromJson(json['positionObj']),
    );

Map<String, dynamic> _$BaseNavigationModelToJson(
        BaseNavigationModel instance) =>
    <String, dynamic>{
      'applicationId': instance.applicationId,
      'id': instance.id,
      'createdByUserId': instance.createdByUserId,
      'createdOnDate': instance.createdOnDate?.toIso8601String(),
      'lastModifiedByUserId': instance.lastModifiedByUserId,
      'lastModifiedOnDate': instance.lastModifiedOnDate?.toIso8601String(),
      'code': instance.code,
      'name': instance.name,
      'idPath': instance.idPath,
      'path': instance.path,
      'level': instance.level,
      'order': instance.order,
      'isActive': instance.isActive,
      'status': instance.status,
      'positionObj': positionEnumToJson(instance.positionObj),
    };

BaseRightModelOfUser _$BaseRightModelOfUserFromJson(
        Map<String, dynamic> json) =>
    BaseRightModelOfUser(
      applicationId: json['applicationId'] as String?,
      id: json['id'] as String?,
      createdByUserId: json['createdByUserId'] as String?,
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      lastModifiedByUserId: json['lastModifiedByUserId'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      code: json['code'] as String?,
      name: json['name'] as String?,
      enable: json['enable'] as bool?,
      inherited: json['inherited'] as bool?,
      inheritedFromRoles: json['inheritedFromRoles'] as String?,
      listRole: (json['listRole'] as List<dynamic>?)
              ?.map((e) => BaseRoleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      listRoleId: (json['listRoleId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$BaseRightModelOfUserToJson(
        BaseRightModelOfUser instance) =>
    <String, dynamic>{
      'applicationId': instance.applicationId,
      'id': instance.id,
      'createdByUserId': instance.createdByUserId,
      'createdOnDate': instance.createdOnDate?.toIso8601String(),
      'lastModifiedByUserId': instance.lastModifiedByUserId,
      'lastModifiedOnDate': instance.lastModifiedOnDate?.toIso8601String(),
      'code': instance.code,
      'name': instance.name,
      'enable': instance.enable,
      'inherited': instance.inherited,
      'inheritedFromRoles': instance.inheritedFromRoles,
      'listRole': instance.listRole?.map((e) => e.toJson()).toList(),
      'listRoleId': instance.listRoleId,
    };

BaseRoleModel _$BaseRoleModelFromJson(Map<String, dynamic> json) =>
    BaseRoleModel(
      id: json['id'] as String?,
      parentId: json['parentId'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      isSystem: json['isSystem'] as bool?,
      autoAssignment: json['autoAssignment'] as bool?,
      order: json['order'] as int?,
      applicationId: json['applicationId'] as String?,
    );

Map<String, dynamic> _$BaseRoleModelToJson(BaseRoleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'code': instance.code,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'isSystem': instance.isSystem,
      'autoAssignment': instance.autoAssignment,
      'order': instance.order,
      'applicationId': instance.applicationId,
    };

BaseUserModel _$BaseUserModelFromJson(Map<String, dynamic> json) =>
    BaseUserModel(
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      name: json['name'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      applicationId: json['applicationId'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      typeObj: userTypeEnumFromJson(json['typeObj']),
      isActive: json['isActive'] as bool?,
      userDetail: json['userDetail'] == null
          ? null
          : UserDetail.fromJson(json['userDetail'] as Map<String, dynamic>),
      isSuperUser: json['isSuperUser'] as bool?,
      forceChangePassword: json['forceChangePassword'] as bool?,
      settingValues: json['settingValues'] == null
          ? null
          : Settings.fromJson(json['settingValues'] as Map<String, dynamic>),
      lastActivityDate: json['lastActivityDate'] == null
          ? null
          : DateTime.parse(json['lastActivityDate'] as String),
      groupType: json['groupType'] as String?,
      groupId: json['groupId'] as String?,
      groupName: json['groupName'] as String?,
      userProfile: json['userProfile'] as String?,
      userProfile2: json['userProfile2'] as String?,
    );

Map<String, dynamic> _$BaseUserModelToJson(BaseUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'applicationId': instance.applicationId,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'typeObj': userTypeEnumToJson(instance.typeObj),
      'isActive': instance.isActive,
      'userDetail': instance.userDetail?.toJson(),
      'isSuperUser': instance.isSuperUser,
      'forceChangePassword': instance.forceChangePassword,
      'settingValues': instance.settingValues?.toJson(),
      'lastActivityDate': instance.lastActivityDate?.toIso8601String(),
      'groupType': instance.groupType,
      'groupId': instance.groupId,
      'groupName': instance.groupName,
      'userProfile': instance.userProfile,
      'userProfile2': instance.userProfile2,
    };

BaseUserModelListResponseObject _$BaseUserModelListResponseObjectFromJson(
        Map<String, dynamic> json) =>
    BaseUserModelListResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => BaseUserModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$BaseUserModelListResponseObjectToJson(
        BaseUserModelListResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

BaseUserModelResponseList _$BaseUserModelResponseListFromJson(
        Map<String, dynamic> json) =>
    BaseUserModelResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => BaseUserModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$BaseUserModelResponseListToJson(
        BaseUserModelResponseList instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

BaseUserModelResponseObject _$BaseUserModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    BaseUserModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : BaseUserModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BaseUserModelResponseObjectToJson(
        BaseUserModelResponseObject instance) =>
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

NavigationCreateRequestModel _$NavigationCreateRequestModelFromJson(
        Map<String, dynamic> json) =>
    NavigationCreateRequestModel(
      parentCode: json['parentCode'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      status: json['status'] as bool?,
      order: json['order'] as int?,
      urlRewrite: json['urlRewrite'] as String?,
      isActive: json['isActive'] as bool?,
      iconClass: json['iconClass'] as String?,
      positionObj: positionEnumFromJson(json['positionObj']),
      rightCodeObj: (json['rightCodeObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      subUrl: json['subUrl'] as String?,
    );

Map<String, dynamic> _$NavigationCreateRequestModelToJson(
        NavigationCreateRequestModel instance) =>
    <String, dynamic>{
      'parentCode': instance.parentCode,
      'code': instance.code,
      'name': instance.name,
      'status': instance.status,
      'order': instance.order,
      'urlRewrite': instance.urlRewrite,
      'isActive': instance.isActive,
      'iconClass': instance.iconClass,
      'positionObj': positionEnumToJson(instance.positionObj),
      'rightCodeObj': instance.rightCodeObj,
      'subUrl': instance.subUrl,
    };

NavigationModel _$NavigationModelFromJson(Map<String, dynamic> json) =>
    NavigationModel(
      applicationId: json['applicationId'] as String?,
      id: json['id'] as String?,
      createdByUserId: json['createdByUserId'] as String?,
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      lastModifiedByUserId: json['lastModifiedByUserId'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      code: json['code'] as String?,
      name: json['name'] as String?,
      idPath: json['idPath'] as String?,
      path: json['path'] as String?,
      level: json['level'] as int?,
      order: json['order'] as int?,
      isActive: json['isActive'] as bool?,
      status: json['status'] as bool?,
      positionObj: positionEnumFromJson(json['positionObj']),
      parentId: json['parentId'] as String?,
      parentCode: json['parentCode'] as String?,
      urlRewrite: json['urlRewrite'] as String?,
      iconClass: json['iconClass'] as String?,
      subChild: (json['subChild'] as List<dynamic>?)
              ?.map((e) => NavigationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      rightCodeObj: (json['rightCodeObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      subUrl: json['subUrl'] as String?,
    );

Map<String, dynamic> _$NavigationModelToJson(NavigationModel instance) =>
    <String, dynamic>{
      'applicationId': instance.applicationId,
      'id': instance.id,
      'createdByUserId': instance.createdByUserId,
      'createdOnDate': instance.createdOnDate?.toIso8601String(),
      'lastModifiedByUserId': instance.lastModifiedByUserId,
      'lastModifiedOnDate': instance.lastModifiedOnDate?.toIso8601String(),
      'code': instance.code,
      'name': instance.name,
      'idPath': instance.idPath,
      'path': instance.path,
      'level': instance.level,
      'order': instance.order,
      'isActive': instance.isActive,
      'status': instance.status,
      'positionObj': positionEnumToJson(instance.positionObj),
      'parentId': instance.parentId,
      'parentCode': instance.parentCode,
      'urlRewrite': instance.urlRewrite,
      'iconClass': instance.iconClass,
      'subChild': instance.subChild?.map((e) => e.toJson()).toList(),
      'rightCodeObj': instance.rightCodeObj,
      'subUrl': instance.subUrl,
    };

NavigationModelIListResponseObject _$NavigationModelIListResponseObjectFromJson(
        Map<String, dynamic> json) =>
    NavigationModelIListResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => NavigationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$NavigationModelIListResponseObjectToJson(
        NavigationModelIListResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

NavigationModelPagination _$NavigationModelPaginationFromJson(
        Map<String, dynamic> json) =>
    NavigationModelPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => NavigationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$NavigationModelPaginationToJson(
        NavigationModelPagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'numberOfRecords': instance.numberOfRecords,
      'totalRecords': instance.totalRecords,
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };

NavigationModelResponseList _$NavigationModelResponseListFromJson(
        Map<String, dynamic> json) =>
    NavigationModelResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => NavigationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$NavigationModelResponseListToJson(
        NavigationModelResponseList instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

NavigationModelResponseObject _$NavigationModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    NavigationModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : NavigationModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NavigationModelResponseObjectToJson(
        NavigationModelResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

NavigationModelResponsePagination _$NavigationModelResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    NavigationModelResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : NavigationModelPagination.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NavigationModelResponsePaginationToJson(
        NavigationModelResponsePagination instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

NavigationUpdateRequestModel _$NavigationUpdateRequestModelFromJson(
        Map<String, dynamic> json) =>
    NavigationUpdateRequestModel(
      parentCode: json['parentCode'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      status: json['status'] as bool?,
      order: json['order'] as int?,
      urlRewrite: json['urlRewrite'] as String?,
      isActive: json['isActive'] as bool?,
      iconClass: json['iconClass'] as String?,
      positionObj: positionEnumFromJson(json['positionObj']),
      rightCodeObj: (json['rightCodeObj'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      parentModel: json['parentModel'] == null
          ? null
          : BaseNavigationModel.fromJson(
              json['parentModel'] as Map<String, dynamic>),
      fromSubNavigation: json['fromSubNavigation'] as String?,
      subUrl: json['subUrl'] as String?,
    );

Map<String, dynamic> _$NavigationUpdateRequestModelToJson(
        NavigationUpdateRequestModel instance) =>
    <String, dynamic>{
      'parentCode': instance.parentCode,
      'code': instance.code,
      'name': instance.name,
      'status': instance.status,
      'order': instance.order,
      'urlRewrite': instance.urlRewrite,
      'isActive': instance.isActive,
      'iconClass': instance.iconClass,
      'positionObj': positionEnumToJson(instance.positionObj),
      'rightCodeObj': instance.rightCodeObj,
      'parentModel': instance.parentModel?.toJson(),
      'fromSubNavigation': instance.fromSubNavigation,
      'subUrl': instance.subUrl,
    };

Response$ _$Response$FromJson(Map<String, dynamic> json) => Response$(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
    );

Map<String, dynamic> _$Response$ToJson(Response$ instance) => <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
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

ResponseUpdate _$ResponseUpdateFromJson(Map<String, dynamic> json) =>
    ResponseUpdate(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : ResponseUpdateModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseUpdateToJson(ResponseUpdate instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

ResponseUpdateModel _$ResponseUpdateModelFromJson(Map<String, dynamic> json) =>
    ResponseUpdateModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ResponseUpdateModelToJson(
        ResponseUpdateModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

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

Map<String, dynamic> _$ResponseUpdateMultiToJson(
        ResponseUpdateMulti instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

RightDetailModel _$RightDetailModelFromJson(Map<String, dynamic> json) =>
    RightDetailModel(
      applicationId: json['applicationId'] as String?,
      id: json['id'] as String?,
      createdByUserId: json['createdByUserId'] as String?,
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      lastModifiedByUserId: json['lastModifiedByUserId'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      code: json['code'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      groupCode: json['groupCode'] as String?,
      status: json['status'] as bool?,
      isSystem: json['isSystem'] as bool?,
      order: json['order'] as int?,
      listUser: (json['listUser'] as List<dynamic>?)
              ?.map((e) => BaseUserModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      listRole: (json['listRole'] as List<dynamic>?)
              ?.map((e) => BaseRoleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RightDetailModelToJson(RightDetailModel instance) =>
    <String, dynamic>{
      'applicationId': instance.applicationId,
      'id': instance.id,
      'createdByUserId': instance.createdByUserId,
      'createdOnDate': instance.createdOnDate?.toIso8601String(),
      'lastModifiedByUserId': instance.lastModifiedByUserId,
      'lastModifiedOnDate': instance.lastModifiedOnDate?.toIso8601String(),
      'code': instance.code,
      'name': instance.name,
      'description': instance.description,
      'groupCode': instance.groupCode,
      'status': instance.status,
      'isSystem': instance.isSystem,
      'order': instance.order,
      'listUser': instance.listUser?.map((e) => e.toJson()).toList(),
      'listRole': instance.listRole?.map((e) => e.toJson()).toList(),
    };

RightDetailModelListResponseObject _$RightDetailModelListResponseObjectFromJson(
        Map<String, dynamic> json) =>
    RightDetailModelListResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => RightDetailModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RightDetailModelListResponseObjectToJson(
        RightDetailModelListResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

RightGroupModel _$RightGroupModelFromJson(Map<String, dynamic> json) =>
    RightGroupModel(
      groupCode: json['groupCode'] as String?,
      rights: (json['rights'] as List<dynamic>?)
              ?.map((e) => RightModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RightGroupModelToJson(RightGroupModel instance) =>
    <String, dynamic>{
      'groupCode': instance.groupCode,
      'rights': instance.rights?.map((e) => e.toJson()).toList(),
    };

RightGroupModelListResponseObject _$RightGroupModelListResponseObjectFromJson(
        Map<String, dynamic> json) =>
    RightGroupModelListResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => RightGroupModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RightGroupModelListResponseObjectToJson(
        RightGroupModelListResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

RightMapRoleRequestModel _$RightMapRoleRequestModelFromJson(
        Map<String, dynamic> json) =>
    RightMapRoleRequestModel(
      roleId: json['roleId'] as String?,
      rightId: json['rightId'] as String?,
    );

Map<String, dynamic> _$RightMapRoleRequestModelToJson(
        RightMapRoleRequestModel instance) =>
    <String, dynamic>{
      'roleId': instance.roleId,
      'rightId': instance.rightId,
    };

RightMapRoleResponseModel _$RightMapRoleResponseModelFromJson(
        Map<String, dynamic> json) =>
    RightMapRoleResponseModel(
      id: json['id'] as num?,
      roleId: json['roleId'] as String?,
      rightId: json['rightId'] as String?,
    );

Map<String, dynamic> _$RightMapRoleResponseModelToJson(
        RightMapRoleResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roleId': instance.roleId,
      'rightId': instance.rightId,
    };

RightMapRoleResponseModelResponseList
    _$RightMapRoleResponseModelResponseListFromJson(
            Map<String, dynamic> json) =>
        RightMapRoleResponseModelResponseList(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) => RightMapRoleResponseModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$RightMapRoleResponseModelResponseListToJson(
        RightMapRoleResponseModelResponseList instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

RightModel _$RightModelFromJson(Map<String, dynamic> json) => RightModel(
      applicationId: json['applicationId'] as String?,
      id: json['id'] as String?,
      createdByUserId: json['createdByUserId'] as String?,
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      lastModifiedByUserId: json['lastModifiedByUserId'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      code: json['code'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      groupCode: json['groupCode'] as String?,
      status: json['status'] as bool?,
      isSystem: json['isSystem'] as bool?,
      order: json['order'] as int?,
    );

Map<String, dynamic> _$RightModelToJson(RightModel instance) =>
    <String, dynamic>{
      'applicationId': instance.applicationId,
      'id': instance.id,
      'createdByUserId': instance.createdByUserId,
      'createdOnDate': instance.createdOnDate?.toIso8601String(),
      'lastModifiedByUserId': instance.lastModifiedByUserId,
      'lastModifiedOnDate': instance.lastModifiedOnDate?.toIso8601String(),
      'code': instance.code,
      'name': instance.name,
      'description': instance.description,
      'groupCode': instance.groupCode,
      'status': instance.status,
      'isSystem': instance.isSystem,
      'order': instance.order,
    };

RightModelListResponseObject _$RightModelListResponseObjectFromJson(
        Map<String, dynamic> json) =>
    RightModelListResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => RightModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RightModelListResponseObjectToJson(
        RightModelListResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

RightModelPagination _$RightModelPaginationFromJson(
        Map<String, dynamic> json) =>
    RightModelPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => RightModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RightModelPaginationToJson(
        RightModelPagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'numberOfRecords': instance.numberOfRecords,
      'totalRecords': instance.totalRecords,
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };

RightModelResponseList _$RightModelResponseListFromJson(
        Map<String, dynamic> json) =>
    RightModelResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => RightModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RightModelResponseListToJson(
        RightModelResponseList instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

RightModelResponseObject _$RightModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    RightModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : RightModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RightModelResponseObjectToJson(
        RightModelResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

RightModelResponsePagination _$RightModelResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    RightModelResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : RightModelPagination.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RightModelResponsePaginationToJson(
        RightModelResponsePagination instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

RoleCreateModel _$RoleCreateModelFromJson(Map<String, dynamic> json) =>
    RoleCreateModel(
      id: json['id'] as String?,
      parentId: json['parentId'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      isSystem: json['isSystem'] as bool?,
      autoAssignment: json['autoAssignment'] as bool?,
      order: json['order'] as int?,
      applicationId: json['applicationId'] as String?,
      description: json['description'] as String?,
      listAddRightId: (json['listAddRightId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      listAddUserId: (json['listAddUserId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$RoleCreateModelToJson(RoleCreateModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'code': instance.code,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'isSystem': instance.isSystem,
      'autoAssignment': instance.autoAssignment,
      'order': instance.order,
      'applicationId': instance.applicationId,
      'description': instance.description,
      'listAddRightId': instance.listAddRightId,
      'listAddUserId': instance.listAddUserId,
    };

RoleDetailModel _$RoleDetailModelFromJson(Map<String, dynamic> json) =>
    RoleDetailModel(
      id: json['id'] as String?,
      parentId: json['parentId'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      isSystem: json['isSystem'] as bool?,
      autoAssignment: json['autoAssignment'] as bool?,
      order: json['order'] as int?,
      applicationId: json['applicationId'] as String?,
      description: json['description'] as String?,
      listRights: (json['listRights'] as List<dynamic>?)
              ?.map((e) => RightModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      listUser: (json['listUser'] as List<dynamic>?)
              ?.map((e) => BaseUserModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RoleDetailModelToJson(RoleDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'code': instance.code,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'isSystem': instance.isSystem,
      'autoAssignment': instance.autoAssignment,
      'order': instance.order,
      'applicationId': instance.applicationId,
      'description': instance.description,
      'listRights': instance.listRights?.map((e) => e.toJson()).toList(),
      'listUser': instance.listUser?.map((e) => e.toJson()).toList(),
    };

RoleDetailModelListResponseObject _$RoleDetailModelListResponseObjectFromJson(
        Map<String, dynamic> json) =>
    RoleDetailModelListResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => RoleDetailModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RoleDetailModelListResponseObjectToJson(
        RoleDetailModelListResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

RoleDetailModelResponseObject _$RoleDetailModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    RoleDetailModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : RoleDetailModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoleDetailModelResponseObjectToJson(
        RoleDetailModelResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

RoleModel _$RoleModelFromJson(Map<String, dynamic> json) => RoleModel(
      id: json['id'] as String?,
      parentId: json['parentId'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      isSystem: json['isSystem'] as bool?,
      autoAssignment: json['autoAssignment'] as bool?,
      order: json['order'] as int?,
      applicationId: json['applicationId'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$RoleModelToJson(RoleModel instance) => <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'code': instance.code,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'isSystem': instance.isSystem,
      'autoAssignment': instance.autoAssignment,
      'order': instance.order,
      'applicationId': instance.applicationId,
      'description': instance.description,
    };

RoleModelListResponseObject _$RoleModelListResponseObjectFromJson(
        Map<String, dynamic> json) =>
    RoleModelListResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => RoleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RoleModelListResponseObjectToJson(
        RoleModelListResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

RoleModelPagination _$RoleModelPaginationFromJson(Map<String, dynamic> json) =>
    RoleModelPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => RoleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RoleModelPaginationToJson(
        RoleModelPagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'numberOfRecords': instance.numberOfRecords,
      'totalRecords': instance.totalRecords,
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };

RoleModelResponseList _$RoleModelResponseListFromJson(
        Map<String, dynamic> json) =>
    RoleModelResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => RoleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RoleModelResponseListToJson(
        RoleModelResponseList instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

RoleModelResponseObject _$RoleModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    RoleModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : RoleModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoleModelResponseObjectToJson(
        RoleModelResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

RoleModelResponsePagination _$RoleModelResponsePaginationFromJson(
        Map<String, dynamic> json) =>
    RoleModelResponsePagination(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : RoleModelPagination.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoleModelResponsePaginationToJson(
        RoleModelResponsePagination instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

RoleSimpleInfoResponseModel _$RoleSimpleInfoResponseModelFromJson(
        Map<String, dynamic> json) =>
    RoleSimpleInfoResponseModel(
      id: json['id'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RoleSimpleInfoResponseModelToJson(
        RoleSimpleInfoResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
    };

RoleSimpleInfoResponseModelPagination
    _$RoleSimpleInfoResponseModelPaginationFromJson(
            Map<String, dynamic> json) =>
        RoleSimpleInfoResponseModelPagination(
          currentPage: json['currentPage'] as int?,
          totalPages: json['totalPages'] as int?,
          pageSize: json['pageSize'] as int?,
          numberOfRecords: json['numberOfRecords'] as int?,
          totalRecords: json['totalRecords'] as int?,
          content: (json['content'] as List<dynamic>?)
                  ?.map((e) => RoleSimpleInfoResponseModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$RoleSimpleInfoResponseModelPaginationToJson(
        RoleSimpleInfoResponseModelPagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'numberOfRecords': instance.numberOfRecords,
      'totalRecords': instance.totalRecords,
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };

RoleSimpleInfoResponseModelResponsePagination
    _$RoleSimpleInfoResponseModelResponsePaginationFromJson(
            Map<String, dynamic> json) =>
        RoleSimpleInfoResponseModelResponsePagination(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: json['data'] == null
              ? null
              : RoleSimpleInfoResponseModelPagination.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$RoleSimpleInfoResponseModelResponsePaginationToJson(
        RoleSimpleInfoResponseModelResponsePagination instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

RoleUpdateModel _$RoleUpdateModelFromJson(Map<String, dynamic> json) =>
    RoleUpdateModel(
      id: json['id'] as String?,
      parentId: json['parentId'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      isSystem: json['isSystem'] as bool?,
      autoAssignment: json['autoAssignment'] as bool?,
      order: json['order'] as int?,
      applicationId: json['applicationId'] as String?,
      description: json['description'] as String?,
      listAddRightId: (json['listAddRightId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      listAddUserId: (json['listAddUserId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      listDeleteRightId: (json['listDeleteRightId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      listDeleteUserId: (json['listDeleteUserId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$RoleUpdateModelToJson(RoleUpdateModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'code': instance.code,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'isSystem': instance.isSystem,
      'autoAssignment': instance.autoAssignment,
      'order': instance.order,
      'applicationId': instance.applicationId,
      'description': instance.description,
      'listAddRightId': instance.listAddRightId,
      'listAddUserId': instance.listAddUserId,
      'listDeleteRightId': instance.listDeleteRightId,
      'listDeleteUserId': instance.listDeleteUserId,
    };

Settings _$SettingsFromJson(Map<String, dynamic> json) => Settings(
      language: json['language'] as String?,
      sidebarColor: json['sidebarColor'] as String?,
      sidebarBackground: json['sidebarBackground'] as String?,
    );

Map<String, dynamic> _$SettingsToJson(Settings instance) => <String, dynamic>{
      'language': instance.language,
      'sidebarColor': instance.sidebarColor,
      'sidebarBackground': instance.sidebarBackground,
    };

SimpleRightModel _$SimpleRightModelFromJson(Map<String, dynamic> json) =>
    SimpleRightModel(
      id: json['id'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      groupCode: json['groupCode'] as String?,
      status: json['status'] as bool?,
      isSystem: json['isSystem'] as bool?,
      order: json['order'] as int?,
    );

Map<String, dynamic> _$SimpleRightModelToJson(SimpleRightModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'description': instance.description,
      'groupCode': instance.groupCode,
      'status': instance.status,
      'isSystem': instance.isSystem,
      'order': instance.order,
    };

SimpleRightModelListResponseObject _$SimpleRightModelListResponseObjectFromJson(
        Map<String, dynamic> json) =>
    SimpleRightModelListResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => SimpleRightModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SimpleRightModelListResponseObjectToJson(
        SimpleRightModelListResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

StringResponseList _$StringResponseListFromJson(Map<String, dynamic> json) =>
    StringResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data:
          (json['data'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
    );

Map<String, dynamic> _$StringResponseListToJson(StringResponseList instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data,
    };

SystemApplication _$SystemApplicationFromJson(Map<String, dynamic> json) =>
    SystemApplication(
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
      code: json['code'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      demo: json['demo'] as String?,
      parentId: json['parentId'] as String?,
      metadata: json['metadata'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      cLeft: json['c_left'] as int?,
      cRight: json['c_right'] as int?,
      cLevel: json['c_level'] as int?,
    );

Map<String, dynamic> _$SystemApplicationToJson(SystemApplication instance) =>
    <String, dynamic>{
      'createdByUserId': instance.createdByUserId,
      'lastModifiedByUserId': instance.lastModifiedByUserId,
      'lastModifiedOnDate': instance.lastModifiedOnDate?.toIso8601String(),
      'createdOnDate': instance.createdOnDate?.toIso8601String(),
      'applicationId': instance.applicationId,
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'description': instance.description,
      'demo': instance.demo,
      'parentId': instance.parentId,
      'metadata': instance.metadata,
      'isDeleted': instance.isDeleted,
      'c_left': instance.cLeft,
      'c_right': instance.cRight,
      'c_level': instance.cLevel,
    };

SystemApplicationResponseList _$SystemApplicationResponseListFromJson(
        Map<String, dynamic> json) =>
    SystemApplicationResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => SystemApplication.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SystemApplicationResponseListToJson(
        SystemApplicationResponseList instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

UserBaseModel _$UserBaseModelFromJson(Map<String, dynamic> json) =>
    UserBaseModel(
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      name: json['name'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      applicationId: json['applicationId'] as String?,
    );

Map<String, dynamic> _$UserBaseModelToJson(UserBaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'applicationId': instance.applicationId,
    };

UserBaseModelListResponseObject _$UserBaseModelListResponseObjectFromJson(
        Map<String, dynamic> json) =>
    UserBaseModelListResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => UserBaseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UserBaseModelListResponseObjectToJson(
        UserBaseModelListResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

UserChangePasswordRequest _$UserChangePasswordRequestFromJson(
        Map<String, dynamic> json) =>
    UserChangePasswordRequest(
      newPassword: json['newPassword'] as String?,
      confirmPassword: json['confirmPassword'] as String?,
    );

Map<String, dynamic> _$UserChangePasswordRequestToJson(
        UserChangePasswordRequest instance) =>
    <String, dynamic>{
      'newPassword': instance.newPassword,
      'confirmPassword': instance.confirmPassword,
    };

UserCreateModel _$UserCreateModelFromJson(Map<String, dynamic> json) =>
    UserCreateModel(
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      isActive: json['isActive'] as bool?,
      typeObj: userTypeEnumFromJson(json['typeObj']),
      password: json['password'] as String?,
      userDetail: json['userDetail'] == null
          ? null
          : UserDetail.fromJson(json['userDetail'] as Map<String, dynamic>),
      groupType: json['groupType'] as String?,
      groupId: json['groupId'] as String?,
      groupName: json['groupName'] as String?,
      listRoleIds: (json['listRoleIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      applicationId: json['applicationId'] as String?,
      userProfile: json['userProfile'] == null
          ? null
          : UserProfile.fromJson(json['userProfile'] as Map<String, dynamic>),
      userProfile2: json['userProfile2'] == null
          ? null
          : UserProfile2.fromJson(json['userProfile2'] as Map<String, dynamic>),
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UserCreateModelToJson(UserCreateModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'avatarUrl': instance.avatarUrl,
      'isActive': instance.isActive,
      'typeObj': userTypeEnumToJson(instance.typeObj),
      'password': instance.password,
      'userDetail': instance.userDetail?.toJson(),
      'groupType': instance.groupType,
      'groupId': instance.groupId,
      'groupName': instance.groupName,
      'listRoleIds': instance.listRoleIds,
      'applicationId': instance.applicationId,
      'userProfile': instance.userProfile?.toJson(),
      'userProfile2': instance.userProfile2?.toJson(),
      'labelsObjs': instance.labelsObjs?.map((e) => e.toJson()).toList(),
    };

UserDetail _$UserDetailFromJson(Map<String, dynamic> json) => UserDetail(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      fullName: json['fullName'] as String?,
      title: json['title'] as String?,
      gender: json['gender'] as int?,
      birthdate: json['birthdate'] == null
          ? null
          : DateTime.parse(json['birthdate'] as String),
      country: json['country'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      postalCode: json['postalCode'] as String?,
      aboutMe: json['aboutMe'] as String?,
    );

Map<String, dynamic> _$UserDetailToJson(UserDetail instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'fullName': instance.fullName,
      'title': instance.title,
      'gender': instance.gender,
      'birthdate': instance.birthdate?.toIso8601String(),
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'postalCode': instance.postalCode,
      'aboutMe': instance.aboutMe,
    };

UserMapRoleRequestModel _$UserMapRoleRequestModelFromJson(
        Map<String, dynamic> json) =>
    UserMapRoleRequestModel(
      roleId: json['roleId'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$UserMapRoleRequestModelToJson(
        UserMapRoleRequestModel instance) =>
    <String, dynamic>{
      'roleId': instance.roleId,
      'userId': instance.userId,
    };

UserMapRoleResponseModel _$UserMapRoleResponseModelFromJson(
        Map<String, dynamic> json) =>
    UserMapRoleResponseModel(
      id: json['id'] as num?,
      roleId: json['roleId'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$UserMapRoleResponseModelToJson(
        UserMapRoleResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roleId': instance.roleId,
      'userId': instance.userId,
    };

UserMapRoleResponseModelResponseList
    _$UserMapRoleResponseModelResponseListFromJson(Map<String, dynamic> json) =>
        UserMapRoleResponseModelResponseList(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) => UserMapRoleResponseModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$UserMapRoleResponseModelResponseListToJson(
        UserMapRoleResponseModelResponseList instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
    };

UserPasswordModel _$UserPasswordModelFromJson(Map<String, dynamic> json) =>
    UserPasswordModel(
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      name: json['name'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      applicationId: json['applicationId'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      typeObj: userTypeEnumFromJson(json['typeObj']),
      isActive: json['isActive'] as bool?,
      userDetail: json['userDetail'] == null
          ? null
          : UserDetail.fromJson(json['userDetail'] as Map<String, dynamic>),
      isSuperUser: json['isSuperUser'] as bool?,
      forceChangePassword: json['forceChangePassword'] as bool?,
      settingValues: json['settingValues'] == null
          ? null
          : Settings.fromJson(json['settingValues'] as Map<String, dynamic>),
      lastActivityDate: json['lastActivityDate'] == null
          ? null
          : DateTime.parse(json['lastActivityDate'] as String),
      groupType: json['groupType'] as String?,
      groupId: json['groupId'] as String?,
      groupName: json['groupName'] as String?,
      userProfile: json['userProfile'] as String?,
      userProfile2: json['userProfile2'] as String?,
      password: json['password'] as String?,
      passwordSalt: json['passwordSalt'] as String?,
    );

Map<String, dynamic> _$UserPasswordModelToJson(UserPasswordModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'applicationId': instance.applicationId,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'typeObj': userTypeEnumToJson(instance.typeObj),
      'isActive': instance.isActive,
      'userDetail': instance.userDetail?.toJson(),
      'isSuperUser': instance.isSuperUser,
      'forceChangePassword': instance.forceChangePassword,
      'settingValues': instance.settingValues?.toJson(),
      'lastActivityDate': instance.lastActivityDate?.toIso8601String(),
      'groupType': instance.groupType,
      'groupId': instance.groupId,
      'groupName': instance.groupName,
      'userProfile': instance.userProfile,
      'userProfile2': instance.userProfile2,
      'password': instance.password,
      'passwordSalt': instance.passwordSalt,
    };

UserPasswordModelListResponseObject
    _$UserPasswordModelListResponseObjectFromJson(Map<String, dynamic> json) =>
        UserPasswordModelListResponseObject(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) =>
                      UserPasswordModel.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$UserPasswordModelListResponseObjectToJson(
        UserPasswordModelListResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

UserPasswordModelResponseObject _$UserPasswordModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    UserPasswordModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : UserPasswordModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserPasswordModelResponseObjectToJson(
        UserPasswordModelResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

UserPatchUpdateRequestModel _$UserPatchUpdateRequestModelFromJson(
        Map<String, dynamic> json) =>
    UserPatchUpdateRequestModel(
      typeObj: userTypeEnumFromJson(json['typeObj']),
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      forceChangePassword: json['forceChangePassword'] as bool?,
      isActive: json['isActive'] as bool?,
      userDetail: json['userDetail'] == null
          ? null
          : UserDetail.fromJson(json['userDetail'] as Map<String, dynamic>),
      settingValues: json['settingValues'] == null
          ? null
          : Settings.fromJson(json['settingValues'] as Map<String, dynamic>),
      userProfile: json['userProfile'] == null
          ? null
          : UserProfile.fromJson(json['userProfile'] as Map<String, dynamic>),
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UserPatchUpdateRequestModelToJson(
        UserPatchUpdateRequestModel instance) =>
    <String, dynamic>{
      'typeObj': userTypeEnumToJson(instance.typeObj),
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'forceChangePassword': instance.forceChangePassword,
      'isActive': instance.isActive,
      'userDetail': instance.userDetail?.toJson(),
      'settingValues': instance.settingValues?.toJson(),
      'userProfile': instance.userProfile?.toJson(),
      'labelsObjs': instance.labelsObjs?.map((e) => e.toJson()).toList(),
    };

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => UserProfile(
      customerType: json['customerType'] as String?,
      companyName: json['companyName'] as String?,
      taxNo: json['taxNo'] as String?,
      idNumber: json['idNumber'] as String?,
      address: json['address'] as String?,
      headquarters: json['headquarters'] as String?,
      districts: json['districts'] as String?,
      wards: json['wards'] as String?,
    );

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) =>
    <String, dynamic>{
      'customerType': instance.customerType,
      'companyName': instance.companyName,
      'taxNo': instance.taxNo,
      'idNumber': instance.idNumber,
      'address': instance.address,
      'headquarters': instance.headquarters,
      'districts': instance.districts,
      'wards': instance.wards,
    };

UserProfile2 _$UserProfile2FromJson(Map<String, dynamic> json) => UserProfile2(
      orgId: json['orgId'] as String?,
      orgCode: json['orgCode'] as String?,
      orgName: json['orgName'] as String?,
    );

Map<String, dynamic> _$UserProfile2ToJson(UserProfile2 instance) =>
    <String, dynamic>{
      'orgId': instance.orgId,
      'orgCode': instance.orgCode,
      'orgName': instance.orgName,
    };

UserResponseModel _$UserResponseModelFromJson(Map<String, dynamic> json) =>
    UserResponseModel(
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      name: json['name'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      applicationId: json['applicationId'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      typeObj: userTypeEnumFromJson(json['typeObj']),
      isActive: json['isActive'] as bool?,
      userDetail: json['userDetail'] == null
          ? null
          : UserDetail.fromJson(json['userDetail'] as Map<String, dynamic>),
      settingValues: json['settingValues'] == null
          ? null
          : Settings.fromJson(json['settingValues'] as Map<String, dynamic>),
      lastActivityDate: json['lastActivityDate'] == null
          ? null
          : DateTime.parse(json['lastActivityDate'] as String),
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      forceChangePassword: json['forceChangePassword'] as bool?,
      groupName: json['groupName'] as String?,
    );

Map<String, dynamic> _$UserResponseModelToJson(UserResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'applicationId': instance.applicationId,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'typeObj': userTypeEnumToJson(instance.typeObj),
      'isActive': instance.isActive,
      'userDetail': instance.userDetail?.toJson(),
      'settingValues': instance.settingValues?.toJson(),
      'lastActivityDate': instance.lastActivityDate?.toIso8601String(),
      'metadataContentObjs':
          instance.metadataContentObjs?.map((e) => e.toJson()).toList(),
      'forceChangePassword': instance.forceChangePassword,
      'groupName': instance.groupName,
    };

UserResponseModelPagination _$UserResponseModelPaginationFromJson(
        Map<String, dynamic> json) =>
    UserResponseModelPagination(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      pageSize: json['pageSize'] as int?,
      numberOfRecords: json['numberOfRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
      content: (json['content'] as List<dynamic>?)
              ?.map(
                  (e) => UserResponseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UserResponseModelPaginationToJson(
        UserResponseModelPagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'numberOfRecords': instance.numberOfRecords,
      'totalRecords': instance.totalRecords,
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };

UserResponseModelResponseList _$UserResponseModelResponseListFromJson(
        Map<String, dynamic> json) =>
    UserResponseModelResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => UserResponseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UserResponseModelResponseListToJson(
        UserResponseModelResponseList instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

UserResponseModelResponsePagination
    _$UserResponseModelResponsePaginationFromJson(Map<String, dynamic> json) =>
        UserResponseModelResponsePagination(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: json['data'] == null
              ? null
              : UserResponseModelPagination.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserResponseModelResponsePaginationToJson(
        UserResponseModelResponsePagination instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

UserRoleDetailModel _$UserRoleDetailModelFromJson(Map<String, dynamic> json) =>
    UserRoleDetailModel(
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      name: json['name'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      applicationId: json['applicationId'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      typeObj: userTypeEnumFromJson(json['typeObj']),
      isActive: json['isActive'] as bool?,
      userDetail: json['userDetail'] == null
          ? null
          : UserDetail.fromJson(json['userDetail'] as Map<String, dynamic>),
      isSuperUser: json['isSuperUser'] as bool?,
      forceChangePassword: json['forceChangePassword'] as bool?,
      settingValues: json['settingValues'] == null
          ? null
          : Settings.fromJson(json['settingValues'] as Map<String, dynamic>),
      lastActivityDate: json['lastActivityDate'] == null
          ? null
          : DateTime.parse(json['lastActivityDate'] as String),
      groupType: json['groupType'] as String?,
      groupId: json['groupId'] as String?,
      groupName: json['groupName'] as String?,
      userProfile: json['userProfile'] as String?,
      userProfile2: json['userProfile2'] as String?,
      password: json['password'] as String?,
      passwordSalt: json['passwordSalt'] as String?,
      rights: (json['rights'] as List<dynamic>?)
              ?.map((e) => RightModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      roles: (json['roles'] as List<dynamic>?)
              ?.map((e) => RoleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      listRight: (json['listRight'] as List<dynamic>?)
              ?.map((e) =>
                  BaseRightModelOfUser.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      listRole: (json['listRole'] as List<dynamic>?)
              ?.map((e) => BaseRoleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UserRoleDetailModelToJson(
        UserRoleDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'applicationId': instance.applicationId,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'typeObj': userTypeEnumToJson(instance.typeObj),
      'isActive': instance.isActive,
      'userDetail': instance.userDetail?.toJson(),
      'isSuperUser': instance.isSuperUser,
      'forceChangePassword': instance.forceChangePassword,
      'settingValues': instance.settingValues?.toJson(),
      'lastActivityDate': instance.lastActivityDate?.toIso8601String(),
      'groupType': instance.groupType,
      'groupId': instance.groupId,
      'groupName': instance.groupName,
      'userProfile': instance.userProfile,
      'userProfile2': instance.userProfile2,
      'password': instance.password,
      'passwordSalt': instance.passwordSalt,
      'rights': instance.rights?.map((e) => e.toJson()).toList(),
      'roles': instance.roles?.map((e) => e.toJson()).toList(),
      'listRight': instance.listRight?.map((e) => e.toJson()).toList(),
      'listRole': instance.listRole?.map((e) => e.toJson()).toList(),
    };

UserRoleDetailModelResponseObject _$UserRoleDetailModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    UserRoleDetailModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : UserRoleDetailModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserRoleDetailModelResponseObjectToJson(
        UserRoleDetailModelResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

UserSimpleInfoResponseModel _$UserSimpleInfoResponseModelFromJson(
        Map<String, dynamic> json) =>
    UserSimpleInfoResponseModel(
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      name: json['name'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      applicationId: json['applicationId'] as String?,
    );

Map<String, dynamic> _$UserSimpleInfoResponseModelToJson(
        UserSimpleInfoResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'applicationId': instance.applicationId,
    };

UserSimpleInfoResponseModelPagination
    _$UserSimpleInfoResponseModelPaginationFromJson(
            Map<String, dynamic> json) =>
        UserSimpleInfoResponseModelPagination(
          currentPage: json['currentPage'] as int?,
          totalPages: json['totalPages'] as int?,
          pageSize: json['pageSize'] as int?,
          numberOfRecords: json['numberOfRecords'] as int?,
          totalRecords: json['totalRecords'] as int?,
          content: (json['content'] as List<dynamic>?)
                  ?.map((e) => UserSimpleInfoResponseModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$UserSimpleInfoResponseModelPaginationToJson(
        UserSimpleInfoResponseModelPagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'numberOfRecords': instance.numberOfRecords,
      'totalRecords': instance.totalRecords,
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };

UserSimpleInfoResponseModelResponseObject
    _$UserSimpleInfoResponseModelResponseObjectFromJson(
            Map<String, dynamic> json) =>
        UserSimpleInfoResponseModelResponseObject(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: json['data'] == null
              ? null
              : UserSimpleInfoResponseModel.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserSimpleInfoResponseModelResponseObjectToJson(
        UserSimpleInfoResponseModelResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

UserSimpleInfoResponseModelResponsePagination
    _$UserSimpleInfoResponseModelResponsePaginationFromJson(
            Map<String, dynamic> json) =>
        UserSimpleInfoResponseModelResponsePagination(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: json['data'] == null
              ? null
              : UserSimpleInfoResponseModelPagination.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserSimpleInfoResponseModelResponsePaginationToJson(
        UserSimpleInfoResponseModelResponsePagination instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

UserUpdateRequestModel _$UserUpdateRequestModelFromJson(
        Map<String, dynamic> json) =>
    UserUpdateRequestModel(
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      isActive: json['isActive'] as bool?,
      typeObj: userTypeEnumFromJson(json['typeObj']),
      type: json['type'] as int?,
      password: json['password'] as String?,
      userDetail: json['userDetail'] == null
          ? null
          : UserDetail.fromJson(json['userDetail'] as Map<String, dynamic>),
      settingValues: json['settingValues'] == null
          ? null
          : Settings.fromJson(json['settingValues'] as Map<String, dynamic>),
      groupId: json['groupId'] as String?,
      groupName: json['groupName'] as String?,
      listAddRightId: (json['listAddRightId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      listAddRoleId: (json['listAddRoleId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      listDeleteRightId: (json['listDeleteRightId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      listDeleteRoleId: (json['listDeleteRoleId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      applicationId: json['applicationId'] as String?,
      userProfile: json['userProfile'] == null
          ? null
          : UserProfile.fromJson(json['userProfile'] as Map<String, dynamic>),
      userProfile2: json['userProfile2'] == null
          ? null
          : UserProfile2.fromJson(json['userProfile2'] as Map<String, dynamic>),
      labelsObjs: (json['labelsObjs'] as List<dynamic>?)
              ?.map((e) => LabelsObj.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UserUpdateRequestModelToJson(
        UserUpdateRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'avatarUrl': instance.avatarUrl,
      'isActive': instance.isActive,
      'typeObj': userTypeEnumToJson(instance.typeObj),
      'type': instance.type,
      'password': instance.password,
      'userDetail': instance.userDetail?.toJson(),
      'settingValues': instance.settingValues?.toJson(),
      'groupId': instance.groupId,
      'groupName': instance.groupName,
      'listAddRightId': instance.listAddRightId,
      'listAddRoleId': instance.listAddRoleId,
      'listDeleteRightId': instance.listDeleteRightId,
      'listDeleteRoleId': instance.listDeleteRoleId,
      'applicationId': instance.applicationId,
      'userProfile': instance.userProfile?.toJson(),
      'userProfile2': instance.userProfile2?.toJson(),
      'labelsObjs': instance.labelsObjs?.map((e) => e.toJson()).toList(),
    };

UsersByApplicationResponseModel _$UsersByApplicationResponseModelFromJson(
        Map<String, dynamic> json) =>
    UsersByApplicationResponseModel(
      parentId: json['parentId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      id: json['id'] as String?,
      lastModifiedOnDate: json['lastModifiedOnDate'] == null
          ? null
          : DateTime.parse(json['lastModifiedOnDate'] as String),
      createdOnDate: json['createdOnDate'] == null
          ? null
          : DateTime.parse(json['createdOnDate'] as String),
      listUsers: (json['listUsers'] as List<dynamic>?)
              ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UsersByApplicationResponseModelToJson(
        UsersByApplicationResponseModel instance) =>
    <String, dynamic>{
      'parentId': instance.parentId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'id': instance.id,
      'lastModifiedOnDate': instance.lastModifiedOnDate?.toIso8601String(),
      'createdOnDate': instance.createdOnDate?.toIso8601String(),
      'listUsers': instance.listUsers?.map((e) => e.toJson()).toList(),
    };

UsersByApplicationResponseModelResponseList
    _$UsersByApplicationResponseModelResponseListFromJson(
            Map<String, dynamic> json) =>
        UsersByApplicationResponseModelResponseList(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) => UsersByApplicationResponseModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$UsersByApplicationResponseModelResponseListToJson(
        UsersByApplicationResponseModelResponseList instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

Wso2Result _$Wso2ResultFromJson(Map<String, dynamic> json) => Wso2Result(
      accessToken: json['access_token'] as String?,
      refreshToken: json['refresh_token'] as String?,
      idToken: json['id_token'] as String?,
      expiresIn: json['expires_in'] as int?,
      startTime: json['start_time'] as String?,
      expiresTime: json['expires_time'] as String?,
      tokenType: json['token_type'] as String?,
      userInfo: json['userInfo'] == null
          ? null
          : Wso2UserInfo.fromJson(json['userInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Wso2ResultToJson(Wso2Result instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'id_token': instance.idToken,
      'expires_in': instance.expiresIn,
      'start_time': instance.startTime,
      'expires_time': instance.expiresTime,
      'token_type': instance.tokenType,
      'userInfo': instance.userInfo?.toJson(),
    };

Wso2ResultResponseObject _$Wso2ResultResponseObjectFromJson(
        Map<String, dynamic> json) =>
    Wso2ResultResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : Wso2Result.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Wso2ResultResponseObjectToJson(
        Wso2ResultResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

Wso2UserInfo _$Wso2UserInfoFromJson(Map<String, dynamic> json) => Wso2UserInfo(
      userId: json['user_id'] as String?,
      userName: json['user_name'] as String?,
      displayName: json['display_name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$Wso2UserInfoToJson(Wso2UserInfo instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user_name': instance.userName,
      'display_name': instance.displayName,
      'email': instance.email,
    };

Wso2UserInfoResponseObject _$Wso2UserInfoResponseObjectFromJson(
        Map<String, dynamic> json) =>
    Wso2UserInfoResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : Wso2UserInfo.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Wso2UserInfoResponseObjectToJson(
        Wso2UserInfoResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };
