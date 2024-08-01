// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountResponseModel _$AccountResponseModelFromJson(
        Map<String, dynamic> json) =>
    AccountResponseModel(
      id: json['id'] as String?,
      applicationId: json['applicationId'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      title: json['title'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      postalCode: json['postalCode'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      forceChangePassword: json['forceChangePassword'] as bool?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      rights: (json['rights'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      applications: (json['applications'] as List<dynamic>?)
              ?.map((e) => ApplicationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      navigations: (json['navigations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      settings: json['settings'] == null
          ? null
          : Settings.fromJson(json['settings'] as Map<String, dynamic>),
      userDetail: json['userDetail'] == null
          ? null
          : UserDetail.fromJson(json['userDetail'] as Map<String, dynamic>),
      isSuperUser: json['isSuperUser'] as bool?,
      token: json['token'] as String?,
      fbToken: json['fbToken'] as String?,
      userProfile: json['userProfile'] as String?,
      userProfile2: json['userProfile2'] as String?,
      userProfile3: json['userProfile3'] as String?,
      metadataContentObjs: (json['metadataContentObjs'] as List<dynamic>?)
              ?.map((e) => MetadataValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AccountResponseModelToJson(
        AccountResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'applicationId': instance.applicationId,
      'email': instance.email,
      'username': instance.username,
      'title': instance.title,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'postalCode': instance.postalCode,
      'avatarUrl': instance.avatarUrl,
      'forceChangePassword': instance.forceChangePassword,
      'roles': instance.roles,
      'rights': instance.rights,
      'applications': instance.applications?.map((e) => e.toJson()).toList(),
      'navigations': instance.navigations,
      'settings': instance.settings?.toJson(),
      'userDetail': instance.userDetail?.toJson(),
      'isSuperUser': instance.isSuperUser,
      'token': instance.token,
      'fbToken': instance.fbToken,
      'userProfile': instance.userProfile,
      'userProfile2': instance.userProfile2,
      'userProfile3': instance.userProfile3,
      'metadataContentObjs':
          instance.metadataContentObjs?.map((e) => e.toJson()).toList(),
    };

AccountResponseModelResponseObject _$AccountResponseModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    AccountResponseModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : AccountResponseModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountResponseModelResponseObjectToJson(
        AccountResponseModelResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
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

FirebaseSettings _$FirebaseSettingsFromJson(Map<String, dynamic> json) =>
    FirebaseSettings(
      apiKey: json['apiKey'] as String?,
      projectId: json['projectId'] as String?,
      messagingSenderId: json['messagingSenderId'] as String?,
      appId: json['appId'] as String?,
    );

Map<String, dynamic> _$FirebaseSettingsToJson(FirebaseSettings instance) =>
    <String, dynamic>{
      'apiKey': instance.apiKey,
      'projectId': instance.projectId,
      'messagingSenderId': instance.messagingSenderId,
      'appId': instance.appId,
    };

FirebaseSettingsResponseObject _$FirebaseSettingsResponseObjectFromJson(
        Map<String, dynamic> json) =>
    FirebaseSettingsResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : FirebaseSettings.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FirebaseSettingsResponseObjectToJson(
        FirebaseSettingsResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

GoogleLoginRequestModel _$GoogleLoginRequestModelFromJson(
        Map<String, dynamic> json) =>
    GoogleLoginRequestModel(
      code: json['code'] as String?,
      accessToken: json['accessToken'] as String?,
      returnUrl: json['returnUrl'] as String?,
      applicationCode: json['applicationCode'] as String?,
    );

Map<String, dynamic> _$GoogleLoginRequestModelToJson(
        GoogleLoginRequestModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'accessToken': instance.accessToken,
      'returnUrl': instance.returnUrl,
      'applicationCode': instance.applicationCode,
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

LoginRequestModel _$LoginRequestModelFromJson(Map<String, dynamic> json) =>
    LoginRequestModel(
      username: json['username'] as String?,
      password: json['password'] as String?,
      applicationCode: json['applicationCode'] as String?,
      rememberMe: json['rememberMe'] as bool?,
    );

Map<String, dynamic> _$LoginRequestModelToJson(LoginRequestModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'applicationCode': instance.applicationCode,
      'rememberMe': instance.rememberMe,
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

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) =>
    RegisterModel(
      userName: json['userName'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      birthdate: json['birthdate'] == null
          ? null
          : DateTime.parse(json['birthdate'] as String),
      phoneNumber: json['phoneNumber'] as String?,
      userProfile: json['userProfile'] == null
          ? null
          : UserProfile.fromJson(json['userProfile'] as Map<String, dynamic>),
      userProfile2: json['userProfile2'] == null
          ? null
          : UserProfile2.fromJson(json['userProfile2'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterModelToJson(RegisterModel instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'fullName': instance.fullName,
      'email': instance.email,
      'password': instance.password,
      'avatarUrl': instance.avatarUrl,
      'birthdate': instance.birthdate?.toIso8601String(),
      'phoneNumber': instance.phoneNumber,
      'userProfile': instance.userProfile?.toJson(),
      'userProfile2': instance.userProfile2?.toJson(),
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

RoleSimpleInfoResponseModelListResponseObject
    _$RoleSimpleInfoResponseModelListResponseObjectFromJson(
            Map<String, dynamic> json) =>
        RoleSimpleInfoResponseModelListResponseObject(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) => RoleSimpleInfoResponseModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$RoleSimpleInfoResponseModelListResponseObjectToJson(
        RoleSimpleInfoResponseModelListResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

RoleSimpleInfoResponseModelResponseList
    _$RoleSimpleInfoResponseModelResponseListFromJson(
            Map<String, dynamic> json) =>
        RoleSimpleInfoResponseModelResponseList(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) => RoleSimpleInfoResponseModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$RoleSimpleInfoResponseModelResponseListToJson(
        RoleSimpleInfoResponseModelResponseList instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
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

StringResponseObject _$StringResponseObjectFromJson(
        Map<String, dynamic> json) =>
    StringResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$StringResponseObjectToJson(
        StringResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data,
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

UserBaseModelResponseObject _$UserBaseModelResponseObjectFromJson(
        Map<String, dynamic> json) =>
    UserBaseModelResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : UserBaseModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserBaseModelResponseObjectToJson(
        UserBaseModelResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

UserChangePasswordModel _$UserChangePasswordModelFromJson(
        Map<String, dynamic> json) =>
    UserChangePasswordModel(
      oldPassword: json['oldPassword'] as String,
      newPassword: json['newPassword'] as String,
      confirmPassword: json['confirmPassword'] as String,
    );

Map<String, dynamic> _$UserChangePasswordModelToJson(
        UserChangePasswordModel instance) =>
    <String, dynamic>{
      'oldPassword': instance.oldPassword,
      'newPassword': instance.newPassword,
      'confirmPassword': instance.confirmPassword,
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

UserFirebaseToken _$UserFirebaseTokenFromJson(Map<String, dynamic> json) =>
    UserFirebaseToken(
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
      userId: json['userId'] as String?,
      messagingToken: json['messagingToken'] as String?,
      userAgent: json['userAgent'] as String?,
    );

Map<String, dynamic> _$UserFirebaseTokenToJson(UserFirebaseToken instance) =>
    <String, dynamic>{
      'createdByUserId': instance.createdByUserId,
      'lastModifiedByUserId': instance.lastModifiedByUserId,
      'lastModifiedOnDate': instance.lastModifiedOnDate?.toIso8601String(),
      'createdOnDate': instance.createdOnDate?.toIso8601String(),
      'applicationId': instance.applicationId,
      'id': instance.id,
      'userId': instance.userId,
      'messagingToken': instance.messagingToken,
      'userAgent': instance.userAgent,
    };

UserFirebaseTokenResponseList _$UserFirebaseTokenResponseListFromJson(
        Map<String, dynamic> json) =>
    UserFirebaseTokenResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => UserFirebaseToken.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UserFirebaseTokenResponseListToJson(
        UserFirebaseTokenResponseList instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

UserFirebaseTokenResponseObject _$UserFirebaseTokenResponseObjectFromJson(
        Map<String, dynamic> json) =>
    UserFirebaseTokenResponseObject(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: json['data'] == null
          ? null
          : UserFirebaseToken.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserFirebaseTokenResponseObjectToJson(
        UserFirebaseTokenResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.toJson(),
    };

UserInfoResponseModel _$UserInfoResponseModelFromJson(
        Map<String, dynamic> json) =>
    UserInfoResponseModel(
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
    );

Map<String, dynamic> _$UserInfoResponseModelToJson(
        UserInfoResponseModel instance) =>
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
    };

UserInfoResponseModelResponseList _$UserInfoResponseModelResponseListFromJson(
        Map<String, dynamic> json) =>
    UserInfoResponseModelResponseList(
      code: codeFromJson(json['code']),
      message: json['message'] as String?,
      totalTime: json['totalTime'] as num?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  UserInfoResponseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UserInfoResponseModelResponseListToJson(
        UserInfoResponseModelResponseList instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
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

UserRecoverPasswordModel _$UserRecoverPasswordModelFromJson(
        Map<String, dynamic> json) =>
    UserRecoverPasswordModel(
      token: json['token'] as String,
      newPassword: json['newPassword'] as String,
      confirmPassword: json['confirmPassword'] as String,
    );

Map<String, dynamic> _$UserRecoverPasswordModelToJson(
        UserRecoverPasswordModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'newPassword': instance.newPassword,
      'confirmPassword': instance.confirmPassword,
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

UserSimpleInfoResponseModelListResponseObject
    _$UserSimpleInfoResponseModelListResponseObjectFromJson(
            Map<String, dynamic> json) =>
        UserSimpleInfoResponseModelListResponseObject(
          code: codeFromJson(json['code']),
          message: json['message'] as String?,
          totalTime: json['totalTime'] as num?,
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) => UserSimpleInfoResponseModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$UserSimpleInfoResponseModelListResponseObjectToJson(
        UserSimpleInfoResponseModelListResponseObject instance) =>
    <String, dynamic>{
      'code': codeToJson(instance.code),
      'message': instance.message,
      'totalTime': instance.totalTime,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

UserTokenResquestModel _$UserTokenResquestModelFromJson(
        Map<String, dynamic> json) =>
    UserTokenResquestModel(
      userId: json['userId'] as String?,
      userAgent: json['userAgent'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$UserTokenResquestModelToJson(
        UserTokenResquestModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userAgent': instance.userAgent,
      'token': instance.token,
    };

UserUpdateProfileRequestModel _$UserUpdateProfileRequestModelFromJson(
        Map<String, dynamic> json) =>
    UserUpdateProfileRequestModel(
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      userDetail: json['userDetail'] == null
          ? null
          : UserDetail.fromJson(json['userDetail'] as Map<String, dynamic>),
      settingValues: json['settingValues'] == null
          ? null
          : Settings.fromJson(json['settingValues'] as Map<String, dynamic>),
      userProfile: json['userProfile'] == null
          ? null
          : UserProfile.fromJson(json['userProfile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateProfileRequestModelToJson(
        UserUpdateProfileRequestModel instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'userDetail': instance.userDetail?.toJson(),
      'settingValues': instance.settingValues?.toJson(),
      'userProfile': instance.userProfile?.toJson(),
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
