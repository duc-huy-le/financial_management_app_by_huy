// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';
import 'swagger.enums.swagger.dart' as enums;

part 'swagger.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class AccountResponseModel {
  AccountResponseModel({
    this.id,
    this.applicationId,
    this.email,
    this.username,
    this.title,
    this.firstName,
    this.lastName,
    this.name,
    this.phoneNumber,
    this.postalCode,
    this.avatarUrl,
    this.forceChangePassword,
    this.roles,
    this.rights,
    this.applications,
    this.navigations,
    this.settings,
    this.userDetail,
    this.isSuperUser,
    this.token,
    this.fbToken,
    this.userProfile,
    this.userProfile2,
    this.userProfile3,
    this.metadataContentObjs,
  });

  factory AccountResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AccountResponseModelFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'applicationId')
  final String? applicationId;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'username')
  final String? username;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'postalCode')
  final String? postalCode;
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @JsonKey(name: 'forceChangePassword')
  final bool? forceChangePassword;
  @JsonKey(name: 'roles', defaultValue: <String>[])
  final List<String>? roles;
  @JsonKey(name: 'rights', defaultValue: <String>[])
  final List<String>? rights;
  @JsonKey(name: 'applications', defaultValue: <ApplicationModel>[])
  final List<ApplicationModel>? applications;
  @JsonKey(name: 'navigations', defaultValue: <String>[])
  final List<String>? navigations;
  @JsonKey(name: 'settings')
  final Settings? settings;
  @JsonKey(name: 'userDetail')
  final UserDetail? userDetail;
  @JsonKey(name: 'isSuperUser')
  final bool? isSuperUser;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'fbToken')
  final String? fbToken;
  @JsonKey(name: 'userProfile')
  final String? userProfile;
  @JsonKey(name: 'userProfile2')
  final String? userProfile2;
  @JsonKey(name: 'userProfile3')
  final String? userProfile3;
  @JsonKey(name: 'metadataContentObjs', defaultValue: <MetadataValue>[])
  final List<MetadataValue>? metadataContentObjs;
  static const fromJsonFactory = _$AccountResponseModelFromJson;
  static const toJsonFactory = _$AccountResponseModelToJson;
  Map<String, dynamic> toJson() => _$AccountResponseModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountResponseModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.forceChangePassword, forceChangePassword) ||
                const DeepCollectionEquality()
                    .equals(other.forceChangePassword, forceChangePassword)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)) &&
            (identical(other.rights, rights) ||
                const DeepCollectionEquality().equals(other.rights, rights)) &&
            (identical(other.applications, applications) ||
                const DeepCollectionEquality()
                    .equals(other.applications, applications)) &&
            (identical(other.navigations, navigations) ||
                const DeepCollectionEquality()
                    .equals(other.navigations, navigations)) &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)) &&
            (identical(other.userDetail, userDetail) ||
                const DeepCollectionEquality()
                    .equals(other.userDetail, userDetail)) &&
            (identical(other.isSuperUser, isSuperUser) ||
                const DeepCollectionEquality()
                    .equals(other.isSuperUser, isSuperUser)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.fbToken, fbToken) ||
                const DeepCollectionEquality()
                    .equals(other.fbToken, fbToken)) &&
            (identical(other.userProfile, userProfile) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile, userProfile)) &&
            (identical(other.userProfile2, userProfile2) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile2, userProfile2)) &&
            (identical(other.userProfile3, userProfile3) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile3, userProfile3)) &&
            (identical(other.metadataContentObjs, metadataContentObjs) ||
                const DeepCollectionEquality()
                    .equals(other.metadataContentObjs, metadataContentObjs)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(forceChangePassword) ^
      const DeepCollectionEquality().hash(roles) ^
      const DeepCollectionEquality().hash(rights) ^
      const DeepCollectionEquality().hash(applications) ^
      const DeepCollectionEquality().hash(navigations) ^
      const DeepCollectionEquality().hash(settings) ^
      const DeepCollectionEquality().hash(userDetail) ^
      const DeepCollectionEquality().hash(isSuperUser) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(fbToken) ^
      const DeepCollectionEquality().hash(userProfile) ^
      const DeepCollectionEquality().hash(userProfile2) ^
      const DeepCollectionEquality().hash(userProfile3) ^
      const DeepCollectionEquality().hash(metadataContentObjs) ^
      runtimeType.hashCode;
}

extension $AccountResponseModelExtension on AccountResponseModel {
  AccountResponseModel copyWith(
      {String? id,
      String? applicationId,
      String? email,
      String? username,
      String? title,
      String? firstName,
      String? lastName,
      String? name,
      String? phoneNumber,
      String? postalCode,
      String? avatarUrl,
      bool? forceChangePassword,
      List<String>? roles,
      List<String>? rights,
      List<ApplicationModel>? applications,
      List<String>? navigations,
      Settings? settings,
      UserDetail? userDetail,
      bool? isSuperUser,
      String? token,
      String? fbToken,
      String? userProfile,
      String? userProfile2,
      String? userProfile3,
      List<MetadataValue>? metadataContentObjs}) {
    return AccountResponseModel(
        id: id ?? this.id,
        applicationId: applicationId ?? this.applicationId,
        email: email ?? this.email,
        username: username ?? this.username,
        title: title ?? this.title,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        name: name ?? this.name,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        postalCode: postalCode ?? this.postalCode,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        forceChangePassword: forceChangePassword ?? this.forceChangePassword,
        roles: roles ?? this.roles,
        rights: rights ?? this.rights,
        applications: applications ?? this.applications,
        navigations: navigations ?? this.navigations,
        settings: settings ?? this.settings,
        userDetail: userDetail ?? this.userDetail,
        isSuperUser: isSuperUser ?? this.isSuperUser,
        token: token ?? this.token,
        fbToken: fbToken ?? this.fbToken,
        userProfile: userProfile ?? this.userProfile,
        userProfile2: userProfile2 ?? this.userProfile2,
        userProfile3: userProfile3 ?? this.userProfile3,
        metadataContentObjs: metadataContentObjs ?? this.metadataContentObjs);
  }
}

@JsonSerializable(explicitToJson: true)
class AccountResponseModelResponseObject {
  AccountResponseModelResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory AccountResponseModelResponseObject.fromJson(
          Map<String, dynamic> json) =>
      _$AccountResponseModelResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final AccountResponseModel? data;
  static const fromJsonFactory = _$AccountResponseModelResponseObjectFromJson;
  static const toJsonFactory = _$AccountResponseModelResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$AccountResponseModelResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountResponseModelResponseObject &&
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

extension $AccountResponseModelResponseObjectExtension
    on AccountResponseModelResponseObject {
  AccountResponseModelResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      AccountResponseModel? data}) {
    return AccountResponseModelResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ApplicationModel {
  ApplicationModel({
    this.parentId,
    this.name,
    this.code,
    this.description,
    this.id,
    this.lastModifiedOnDate,
    this.createdOnDate,
  });

  factory ApplicationModel.fromJson(Map<String, dynamic> json) =>
      _$ApplicationModelFromJson(json);

  @JsonKey(name: 'parentId')
  final String? parentId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'lastModifiedOnDate')
  final DateTime? lastModifiedOnDate;
  @JsonKey(name: 'createdOnDate')
  final DateTime? createdOnDate;
  static const fromJsonFactory = _$ApplicationModelFromJson;
  static const toJsonFactory = _$ApplicationModelToJson;
  Map<String, dynamic> toJson() => _$ApplicationModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApplicationModel &&
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
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lastModifiedOnDate, lastModifiedOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedOnDate, lastModifiedOnDate)) &&
            (identical(other.createdOnDate, createdOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdOnDate, createdOnDate)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(lastModifiedOnDate) ^
      const DeepCollectionEquality().hash(createdOnDate) ^
      runtimeType.hashCode;
}

extension $ApplicationModelExtension on ApplicationModel {
  ApplicationModel copyWith(
      {String? parentId,
      String? name,
      String? code,
      String? description,
      String? id,
      DateTime? lastModifiedOnDate,
      DateTime? createdOnDate}) {
    return ApplicationModel(
        parentId: parentId ?? this.parentId,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        id: id ?? this.id,
        lastModifiedOnDate: lastModifiedOnDate ?? this.lastModifiedOnDate,
        createdOnDate: createdOnDate ?? this.createdOnDate);
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
class FirebaseSettings {
  FirebaseSettings({
    this.apiKey,
    this.projectId,
    this.messagingSenderId,
    this.appId,
  });

  factory FirebaseSettings.fromJson(Map<String, dynamic> json) =>
      _$FirebaseSettingsFromJson(json);

  @JsonKey(name: 'apiKey')
  final String? apiKey;
  @JsonKey(name: 'projectId')
  final String? projectId;
  @JsonKey(name: 'messagingSenderId')
  final String? messagingSenderId;
  @JsonKey(name: 'appId')
  final String? appId;
  static const fromJsonFactory = _$FirebaseSettingsFromJson;
  static const toJsonFactory = _$FirebaseSettingsToJson;
  Map<String, dynamic> toJson() => _$FirebaseSettingsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FirebaseSettings &&
            (identical(other.apiKey, apiKey) ||
                const DeepCollectionEquality().equals(other.apiKey, apiKey)) &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)) &&
            (identical(other.messagingSenderId, messagingSenderId) ||
                const DeepCollectionEquality()
                    .equals(other.messagingSenderId, messagingSenderId)) &&
            (identical(other.appId, appId) ||
                const DeepCollectionEquality().equals(other.appId, appId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(apiKey) ^
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(messagingSenderId) ^
      const DeepCollectionEquality().hash(appId) ^
      runtimeType.hashCode;
}

extension $FirebaseSettingsExtension on FirebaseSettings {
  FirebaseSettings copyWith(
      {String? apiKey,
      String? projectId,
      String? messagingSenderId,
      String? appId}) {
    return FirebaseSettings(
        apiKey: apiKey ?? this.apiKey,
        projectId: projectId ?? this.projectId,
        messagingSenderId: messagingSenderId ?? this.messagingSenderId,
        appId: appId ?? this.appId);
  }
}

@JsonSerializable(explicitToJson: true)
class FirebaseSettingsResponseObject {
  FirebaseSettingsResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory FirebaseSettingsResponseObject.fromJson(Map<String, dynamic> json) =>
      _$FirebaseSettingsResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final FirebaseSettings? data;
  static const fromJsonFactory = _$FirebaseSettingsResponseObjectFromJson;
  static const toJsonFactory = _$FirebaseSettingsResponseObjectToJson;
  Map<String, dynamic> toJson() => _$FirebaseSettingsResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FirebaseSettingsResponseObject &&
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

extension $FirebaseSettingsResponseObjectExtension
    on FirebaseSettingsResponseObject {
  FirebaseSettingsResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      FirebaseSettings? data}) {
    return FirebaseSettingsResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class GoogleLoginRequestModel {
  GoogleLoginRequestModel({
    this.code,
    this.accessToken,
    this.returnUrl,
    this.applicationCode,
  });

  factory GoogleLoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$GoogleLoginRequestModelFromJson(json);

  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'accessToken')
  final String? accessToken;
  @JsonKey(name: 'returnUrl')
  final String? returnUrl;
  @JsonKey(name: 'applicationCode')
  final String? applicationCode;
  static const fromJsonFactory = _$GoogleLoginRequestModelFromJson;
  static const toJsonFactory = _$GoogleLoginRequestModelToJson;
  Map<String, dynamic> toJson() => _$GoogleLoginRequestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GoogleLoginRequestModel &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.returnUrl, returnUrl) ||
                const DeepCollectionEquality()
                    .equals(other.returnUrl, returnUrl)) &&
            (identical(other.applicationCode, applicationCode) ||
                const DeepCollectionEquality()
                    .equals(other.applicationCode, applicationCode)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(returnUrl) ^
      const DeepCollectionEquality().hash(applicationCode) ^
      runtimeType.hashCode;
}

extension $GoogleLoginRequestModelExtension on GoogleLoginRequestModel {
  GoogleLoginRequestModel copyWith(
      {String? code,
      String? accessToken,
      String? returnUrl,
      String? applicationCode}) {
    return GoogleLoginRequestModel(
        code: code ?? this.code,
        accessToken: accessToken ?? this.accessToken,
        returnUrl: returnUrl ?? this.returnUrl,
        applicationCode: applicationCode ?? this.applicationCode);
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
class LoginRequestModel {
  LoginRequestModel({
    this.username,
    this.password,
    this.applicationCode,
    this.rememberMe,
  });

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);

  @JsonKey(name: 'username')
  final String? username;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'applicationCode')
  final String? applicationCode;
  @JsonKey(name: 'rememberMe')
  final bool? rememberMe;
  static const fromJsonFactory = _$LoginRequestModelFromJson;
  static const toJsonFactory = _$LoginRequestModelToJson;
  Map<String, dynamic> toJson() => _$LoginRequestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginRequestModel &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.applicationCode, applicationCode) ||
                const DeepCollectionEquality()
                    .equals(other.applicationCode, applicationCode)) &&
            (identical(other.rememberMe, rememberMe) ||
                const DeepCollectionEquality()
                    .equals(other.rememberMe, rememberMe)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(applicationCode) ^
      const DeepCollectionEquality().hash(rememberMe) ^
      runtimeType.hashCode;
}

extension $LoginRequestModelExtension on LoginRequestModel {
  LoginRequestModel copyWith(
      {String? username,
      String? password,
      String? applicationCode,
      bool? rememberMe}) {
    return LoginRequestModel(
        username: username ?? this.username,
        password: password ?? this.password,
        applicationCode: applicationCode ?? this.applicationCode,
        rememberMe: rememberMe ?? this.rememberMe);
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
class NavigationModel {
  NavigationModel({
    this.applicationId,
    this.id,
    this.createdByUserId,
    this.createdOnDate,
    this.lastModifiedByUserId,
    this.lastModifiedOnDate,
    this.code,
    this.name,
    this.idPath,
    this.path,
    this.level,
    this.order,
    this.isActive,
    this.status,
    this.positionObj,
    this.parentId,
    this.parentCode,
    this.urlRewrite,
    this.iconClass,
    this.subChild,
    this.rightCodeObj,
    this.subUrl,
  });

  factory NavigationModel.fromJson(Map<String, dynamic> json) =>
      _$NavigationModelFromJson(json);

  @JsonKey(name: 'applicationId')
  final String? applicationId;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'createdByUserId')
  final String? createdByUserId;
  @JsonKey(name: 'createdOnDate')
  final DateTime? createdOnDate;
  @JsonKey(name: 'lastModifiedByUserId')
  final String? lastModifiedByUserId;
  @JsonKey(name: 'lastModifiedOnDate')
  final DateTime? lastModifiedOnDate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'idPath')
  final String? idPath;
  @JsonKey(name: 'path')
  final String? path;
  @JsonKey(name: 'level')
  final int? level;
  @JsonKey(name: 'order')
  final int? order;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @JsonKey(name: 'status')
  final bool? status;
  @JsonKey(
      name: 'positionObj',
      toJson: positionEnumToJson,
      fromJson: positionEnumFromJson)
  final enums.PositionEnum? positionObj;
  @JsonKey(name: 'parentId')
  final String? parentId;
  @JsonKey(name: 'parentCode')
  final String? parentCode;
  @JsonKey(name: 'urlRewrite')
  final String? urlRewrite;
  @JsonKey(name: 'iconClass')
  final String? iconClass;
  @JsonKey(name: 'subChild', defaultValue: <NavigationModel>[])
  final List<NavigationModel>? subChild;
  @JsonKey(name: 'rightCodeObj', defaultValue: <String>[])
  final List<String>? rightCodeObj;
  @JsonKey(name: 'subUrl')
  final String? subUrl;
  static const fromJsonFactory = _$NavigationModelFromJson;
  static const toJsonFactory = _$NavigationModelToJson;
  Map<String, dynamic> toJson() => _$NavigationModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationModel &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdByUserId, createdByUserId) ||
                const DeepCollectionEquality()
                    .equals(other.createdByUserId, createdByUserId)) &&
            (identical(other.createdOnDate, createdOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdOnDate, createdOnDate)) &&
            (identical(other.lastModifiedByUserId, lastModifiedByUserId) ||
                const DeepCollectionEquality().equals(
                    other.lastModifiedByUserId, lastModifiedByUserId)) &&
            (identical(other.lastModifiedOnDate, lastModifiedOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedOnDate, lastModifiedOnDate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.idPath, idPath) ||
                const DeepCollectionEquality().equals(other.idPath, idPath)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.positionObj, positionObj) ||
                const DeepCollectionEquality()
                    .equals(other.positionObj, positionObj)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.parentCode, parentCode) ||
                const DeepCollectionEquality()
                    .equals(other.parentCode, parentCode)) &&
            (identical(other.urlRewrite, urlRewrite) ||
                const DeepCollectionEquality()
                    .equals(other.urlRewrite, urlRewrite)) &&
            (identical(other.iconClass, iconClass) ||
                const DeepCollectionEquality()
                    .equals(other.iconClass, iconClass)) &&
            (identical(other.subChild, subChild) ||
                const DeepCollectionEquality()
                    .equals(other.subChild, subChild)) &&
            (identical(other.rightCodeObj, rightCodeObj) ||
                const DeepCollectionEquality()
                    .equals(other.rightCodeObj, rightCodeObj)) &&
            (identical(other.subUrl, subUrl) ||
                const DeepCollectionEquality().equals(other.subUrl, subUrl)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdByUserId) ^
      const DeepCollectionEquality().hash(createdOnDate) ^
      const DeepCollectionEquality().hash(lastModifiedByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedOnDate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(idPath) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(positionObj) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(parentCode) ^
      const DeepCollectionEquality().hash(urlRewrite) ^
      const DeepCollectionEquality().hash(iconClass) ^
      const DeepCollectionEquality().hash(subChild) ^
      const DeepCollectionEquality().hash(rightCodeObj) ^
      const DeepCollectionEquality().hash(subUrl) ^
      runtimeType.hashCode;
}

extension $NavigationModelExtension on NavigationModel {
  NavigationModel copyWith(
      {String? applicationId,
      String? id,
      String? createdByUserId,
      DateTime? createdOnDate,
      String? lastModifiedByUserId,
      DateTime? lastModifiedOnDate,
      String? code,
      String? name,
      String? idPath,
      String? path,
      int? level,
      int? order,
      bool? isActive,
      bool? status,
      enums.PositionEnum? positionObj,
      String? parentId,
      String? parentCode,
      String? urlRewrite,
      String? iconClass,
      List<NavigationModel>? subChild,
      List<String>? rightCodeObj,
      String? subUrl}) {
    return NavigationModel(
        applicationId: applicationId ?? this.applicationId,
        id: id ?? this.id,
        createdByUserId: createdByUserId ?? this.createdByUserId,
        createdOnDate: createdOnDate ?? this.createdOnDate,
        lastModifiedByUserId: lastModifiedByUserId ?? this.lastModifiedByUserId,
        lastModifiedOnDate: lastModifiedOnDate ?? this.lastModifiedOnDate,
        code: code ?? this.code,
        name: name ?? this.name,
        idPath: idPath ?? this.idPath,
        path: path ?? this.path,
        level: level ?? this.level,
        order: order ?? this.order,
        isActive: isActive ?? this.isActive,
        status: status ?? this.status,
        positionObj: positionObj ?? this.positionObj,
        parentId: parentId ?? this.parentId,
        parentCode: parentCode ?? this.parentCode,
        urlRewrite: urlRewrite ?? this.urlRewrite,
        iconClass: iconClass ?? this.iconClass,
        subChild: subChild ?? this.subChild,
        rightCodeObj: rightCodeObj ?? this.rightCodeObj,
        subUrl: subUrl ?? this.subUrl);
  }
}

@JsonSerializable(explicitToJson: true)
class NavigationModelResponseList {
  NavigationModelResponseList({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory NavigationModelResponseList.fromJson(Map<String, dynamic> json) =>
      _$NavigationModelResponseListFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data', defaultValue: <NavigationModel>[])
  final List<NavigationModel>? data;
  static const fromJsonFactory = _$NavigationModelResponseListFromJson;
  static const toJsonFactory = _$NavigationModelResponseListToJson;
  Map<String, dynamic> toJson() => _$NavigationModelResponseListToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationModelResponseList &&
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

extension $NavigationModelResponseListExtension on NavigationModelResponseList {
  NavigationModelResponseList copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<NavigationModel>? data}) {
    return NavigationModelResponseList(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RegisterModel {
  RegisterModel({
    this.userName,
    this.fullName,
    this.email,
    this.password,
    this.avatarUrl,
    this.birthdate,
    this.phoneNumber,
    this.userProfile,
    this.userProfile2,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);

  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'fullName')
  final String? fullName;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @JsonKey(name: 'birthdate')
  final DateTime? birthdate;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'userProfile')
  final UserProfile? userProfile;
  @JsonKey(name: 'userProfile2')
  final UserProfile2? userProfile2;
  static const fromJsonFactory = _$RegisterModelFromJson;
  static const toJsonFactory = _$RegisterModelToJson;
  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterModel &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.birthdate, birthdate) ||
                const DeepCollectionEquality()
                    .equals(other.birthdate, birthdate)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.userProfile, userProfile) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile, userProfile)) &&
            (identical(other.userProfile2, userProfile2) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile2, userProfile2)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(birthdate) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(userProfile) ^
      const DeepCollectionEquality().hash(userProfile2) ^
      runtimeType.hashCode;
}

extension $RegisterModelExtension on RegisterModel {
  RegisterModel copyWith(
      {String? userName,
      String? fullName,
      String? email,
      String? password,
      String? avatarUrl,
      DateTime? birthdate,
      String? phoneNumber,
      UserProfile? userProfile,
      UserProfile2? userProfile2}) {
    return RegisterModel(
        userName: userName ?? this.userName,
        fullName: fullName ?? this.fullName,
        email: email ?? this.email,
        password: password ?? this.password,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        birthdate: birthdate ?? this.birthdate,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        userProfile: userProfile ?? this.userProfile,
        userProfile2: userProfile2 ?? this.userProfile2);
  }
}

@JsonSerializable(explicitToJson: true)
class Response$ {
  Response$({
    this.code,
    this.message,
    this.totalTime,
  });

  factory Response$.fromJson(Map<String, dynamic> json) =>
      _$Response$FromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  static const fromJsonFactory = _$Response$FromJson;
  static const toJsonFactory = _$Response$ToJson;
  Map<String, dynamic> toJson() => _$Response$ToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Response$ &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(totalTime) ^
      runtimeType.hashCode;
}

extension $Response$Extension on Response$ {
  Response$ copyWith({enums.Code? code, String? message, num? totalTime}) {
    return Response$(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime);
  }
}

@JsonSerializable(explicitToJson: true)
class ResponseUpdate {
  ResponseUpdate({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory ResponseUpdate.fromJson(Map<String, dynamic> json) =>
      _$ResponseUpdateFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final ResponseUpdateModel? data;
  static const fromJsonFactory = _$ResponseUpdateFromJson;
  static const toJsonFactory = _$ResponseUpdateToJson;
  Map<String, dynamic> toJson() => _$ResponseUpdateToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResponseUpdate &&
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

extension $ResponseUpdateExtension on ResponseUpdate {
  ResponseUpdate copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      ResponseUpdateModel? data}) {
    return ResponseUpdate(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ResponseUpdateModel {
  ResponseUpdateModel({
    this.id,
    this.name,
  });

  factory ResponseUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseUpdateModelFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ResponseUpdateModelFromJson;
  static const toJsonFactory = _$ResponseUpdateModelToJson;
  Map<String, dynamic> toJson() => _$ResponseUpdateModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResponseUpdateModel &&
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

extension $ResponseUpdateModelExtension on ResponseUpdateModel {
  ResponseUpdateModel copyWith({String? id, String? name}) {
    return ResponseUpdateModel(id: id ?? this.id, name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class RightModel {
  RightModel({
    this.applicationId,
    this.id,
    this.createdByUserId,
    this.createdOnDate,
    this.lastModifiedByUserId,
    this.lastModifiedOnDate,
    this.code,
    this.name,
    this.description,
    this.groupCode,
    this.status,
    this.isSystem,
    this.order,
  });

  factory RightModel.fromJson(Map<String, dynamic> json) =>
      _$RightModelFromJson(json);

  @JsonKey(name: 'applicationId')
  final String? applicationId;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'createdByUserId')
  final String? createdByUserId;
  @JsonKey(name: 'createdOnDate')
  final DateTime? createdOnDate;
  @JsonKey(name: 'lastModifiedByUserId')
  final String? lastModifiedByUserId;
  @JsonKey(name: 'lastModifiedOnDate')
  final DateTime? lastModifiedOnDate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'groupCode')
  final String? groupCode;
  @JsonKey(name: 'status')
  final bool? status;
  @JsonKey(name: 'isSystem')
  final bool? isSystem;
  @JsonKey(name: 'order')
  final int? order;
  static const fromJsonFactory = _$RightModelFromJson;
  static const toJsonFactory = _$RightModelToJson;
  Map<String, dynamic> toJson() => _$RightModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RightModel &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdByUserId, createdByUserId) ||
                const DeepCollectionEquality()
                    .equals(other.createdByUserId, createdByUserId)) &&
            (identical(other.createdOnDate, createdOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdOnDate, createdOnDate)) &&
            (identical(other.lastModifiedByUserId, lastModifiedByUserId) ||
                const DeepCollectionEquality().equals(
                    other.lastModifiedByUserId, lastModifiedByUserId)) &&
            (identical(other.lastModifiedOnDate, lastModifiedOnDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedOnDate, lastModifiedOnDate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.groupCode, groupCode) ||
                const DeepCollectionEquality()
                    .equals(other.groupCode, groupCode)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.isSystem, isSystem) ||
                const DeepCollectionEquality()
                    .equals(other.isSystem, isSystem)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdByUserId) ^
      const DeepCollectionEquality().hash(createdOnDate) ^
      const DeepCollectionEquality().hash(lastModifiedByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedOnDate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(groupCode) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(isSystem) ^
      const DeepCollectionEquality().hash(order) ^
      runtimeType.hashCode;
}

extension $RightModelExtension on RightModel {
  RightModel copyWith(
      {String? applicationId,
      String? id,
      String? createdByUserId,
      DateTime? createdOnDate,
      String? lastModifiedByUserId,
      DateTime? lastModifiedOnDate,
      String? code,
      String? name,
      String? description,
      String? groupCode,
      bool? status,
      bool? isSystem,
      int? order}) {
    return RightModel(
        applicationId: applicationId ?? this.applicationId,
        id: id ?? this.id,
        createdByUserId: createdByUserId ?? this.createdByUserId,
        createdOnDate: createdOnDate ?? this.createdOnDate,
        lastModifiedByUserId: lastModifiedByUserId ?? this.lastModifiedByUserId,
        lastModifiedOnDate: lastModifiedOnDate ?? this.lastModifiedOnDate,
        code: code ?? this.code,
        name: name ?? this.name,
        description: description ?? this.description,
        groupCode: groupCode ?? this.groupCode,
        status: status ?? this.status,
        isSystem: isSystem ?? this.isSystem,
        order: order ?? this.order);
  }
}

@JsonSerializable(explicitToJson: true)
class RightModelListResponseObject {
  RightModelListResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory RightModelListResponseObject.fromJson(Map<String, dynamic> json) =>
      _$RightModelListResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data', defaultValue: <RightModel>[])
  final List<RightModel>? data;
  static const fromJsonFactory = _$RightModelListResponseObjectFromJson;
  static const toJsonFactory = _$RightModelListResponseObjectToJson;
  Map<String, dynamic> toJson() => _$RightModelListResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RightModelListResponseObject &&
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

extension $RightModelListResponseObjectExtension
    on RightModelListResponseObject {
  RightModelListResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<RightModel>? data}) {
    return RightModelListResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleModel {
  RoleModel({
    this.id,
    this.parentId,
    this.code,
    this.name,
    this.imageUrl,
    this.isSystem,
    this.autoAssignment,
    this.order,
    this.applicationId,
    this.description,
  });

  factory RoleModel.fromJson(Map<String, dynamic> json) =>
      _$RoleModelFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'parentId')
  final String? parentId;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @JsonKey(name: 'isSystem')
  final bool? isSystem;
  @JsonKey(name: 'autoAssignment')
  final bool? autoAssignment;
  @JsonKey(name: 'order')
  final int? order;
  @JsonKey(name: 'applicationId')
  final String? applicationId;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$RoleModelFromJson;
  static const toJsonFactory = _$RoleModelToJson;
  Map<String, dynamic> toJson() => _$RoleModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.isSystem, isSystem) ||
                const DeepCollectionEquality()
                    .equals(other.isSystem, isSystem)) &&
            (identical(other.autoAssignment, autoAssignment) ||
                const DeepCollectionEquality()
                    .equals(other.autoAssignment, autoAssignment)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(isSystem) ^
      const DeepCollectionEquality().hash(autoAssignment) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $RoleModelExtension on RoleModel {
  RoleModel copyWith(
      {String? id,
      String? parentId,
      String? code,
      String? name,
      String? imageUrl,
      bool? isSystem,
      bool? autoAssignment,
      int? order,
      String? applicationId,
      String? description}) {
    return RoleModel(
        id: id ?? this.id,
        parentId: parentId ?? this.parentId,
        code: code ?? this.code,
        name: name ?? this.name,
        imageUrl: imageUrl ?? this.imageUrl,
        isSystem: isSystem ?? this.isSystem,
        autoAssignment: autoAssignment ?? this.autoAssignment,
        order: order ?? this.order,
        applicationId: applicationId ?? this.applicationId,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleModelListResponseObject {
  RoleModelListResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory RoleModelListResponseObject.fromJson(Map<String, dynamic> json) =>
      _$RoleModelListResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data', defaultValue: <RoleModel>[])
  final List<RoleModel>? data;
  static const fromJsonFactory = _$RoleModelListResponseObjectFromJson;
  static const toJsonFactory = _$RoleModelListResponseObjectToJson;
  Map<String, dynamic> toJson() => _$RoleModelListResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleModelListResponseObject &&
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

extension $RoleModelListResponseObjectExtension on RoleModelListResponseObject {
  RoleModelListResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<RoleModel>? data}) {
    return RoleModelListResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleSimpleInfoResponseModel {
  RoleSimpleInfoResponseModel({
    this.id,
    this.code,
    this.name,
  });

  factory RoleSimpleInfoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RoleSimpleInfoResponseModelFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$RoleSimpleInfoResponseModelFromJson;
  static const toJsonFactory = _$RoleSimpleInfoResponseModelToJson;
  Map<String, dynamic> toJson() => _$RoleSimpleInfoResponseModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleSimpleInfoResponseModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $RoleSimpleInfoResponseModelExtension on RoleSimpleInfoResponseModel {
  RoleSimpleInfoResponseModel copyWith(
      {String? id, String? code, String? name}) {
    return RoleSimpleInfoResponseModel(
        id: id ?? this.id, code: code ?? this.code, name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleSimpleInfoResponseModelListResponseObject {
  RoleSimpleInfoResponseModelListResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory RoleSimpleInfoResponseModelListResponseObject.fromJson(
          Map<String, dynamic> json) =>
      _$RoleSimpleInfoResponseModelListResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data', defaultValue: <RoleSimpleInfoResponseModel>[])
  final List<RoleSimpleInfoResponseModel>? data;
  static const fromJsonFactory =
      _$RoleSimpleInfoResponseModelListResponseObjectFromJson;
  static const toJsonFactory =
      _$RoleSimpleInfoResponseModelListResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$RoleSimpleInfoResponseModelListResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleSimpleInfoResponseModelListResponseObject &&
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

extension $RoleSimpleInfoResponseModelListResponseObjectExtension
    on RoleSimpleInfoResponseModelListResponseObject {
  RoleSimpleInfoResponseModelListResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<RoleSimpleInfoResponseModel>? data}) {
    return RoleSimpleInfoResponseModelListResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleSimpleInfoResponseModelResponseList {
  RoleSimpleInfoResponseModelResponseList({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory RoleSimpleInfoResponseModelResponseList.fromJson(
          Map<String, dynamic> json) =>
      _$RoleSimpleInfoResponseModelResponseListFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data', defaultValue: <RoleSimpleInfoResponseModel>[])
  final List<RoleSimpleInfoResponseModel>? data;
  static const fromJsonFactory =
      _$RoleSimpleInfoResponseModelResponseListFromJson;
  static const toJsonFactory = _$RoleSimpleInfoResponseModelResponseListToJson;
  Map<String, dynamic> toJson() =>
      _$RoleSimpleInfoResponseModelResponseListToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleSimpleInfoResponseModelResponseList &&
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

extension $RoleSimpleInfoResponseModelResponseListExtension
    on RoleSimpleInfoResponseModelResponseList {
  RoleSimpleInfoResponseModelResponseList copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<RoleSimpleInfoResponseModel>? data}) {
    return RoleSimpleInfoResponseModelResponseList(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class Settings {
  Settings({
    this.language,
    this.sidebarColor,
    this.sidebarBackground,
  });

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);

  @JsonKey(name: 'language')
  final String? language;
  @JsonKey(name: 'sidebarColor')
  final String? sidebarColor;
  @JsonKey(name: 'sidebarBackground')
  final String? sidebarBackground;
  static const fromJsonFactory = _$SettingsFromJson;
  static const toJsonFactory = _$SettingsToJson;
  Map<String, dynamic> toJson() => _$SettingsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Settings &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.sidebarColor, sidebarColor) ||
                const DeepCollectionEquality()
                    .equals(other.sidebarColor, sidebarColor)) &&
            (identical(other.sidebarBackground, sidebarBackground) ||
                const DeepCollectionEquality()
                    .equals(other.sidebarBackground, sidebarBackground)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(sidebarColor) ^
      const DeepCollectionEquality().hash(sidebarBackground) ^
      runtimeType.hashCode;
}

extension $SettingsExtension on Settings {
  Settings copyWith(
      {String? language, String? sidebarColor, String? sidebarBackground}) {
    return Settings(
        language: language ?? this.language,
        sidebarColor: sidebarColor ?? this.sidebarColor,
        sidebarBackground: sidebarBackground ?? this.sidebarBackground);
  }
}

@JsonSerializable(explicitToJson: true)
class StringResponseObject {
  StringResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory StringResponseObject.fromJson(Map<String, dynamic> json) =>
      _$StringResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final String? data;
  static const fromJsonFactory = _$StringResponseObjectFromJson;
  static const toJsonFactory = _$StringResponseObjectToJson;
  Map<String, dynamic> toJson() => _$StringResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StringResponseObject &&
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

extension $StringResponseObjectExtension on StringResponseObject {
  StringResponseObject copyWith(
      {enums.Code? code, String? message, num? totalTime, String? data}) {
    return StringResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class UserBaseModel {
  UserBaseModel({
    this.id,
    this.userName,
    this.name,
    this.avatarUrl,
    this.applicationId,
  });

  factory UserBaseModel.fromJson(Map<String, dynamic> json) =>
      _$UserBaseModelFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @JsonKey(name: 'applicationId')
  final String? applicationId;
  static const fromJsonFactory = _$UserBaseModelFromJson;
  static const toJsonFactory = _$UserBaseModelToJson;
  Map<String, dynamic> toJson() => _$UserBaseModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserBaseModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(applicationId) ^
      runtimeType.hashCode;
}

extension $UserBaseModelExtension on UserBaseModel {
  UserBaseModel copyWith(
      {String? id,
      String? userName,
      String? name,
      String? avatarUrl,
      String? applicationId}) {
    return UserBaseModel(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        name: name ?? this.name,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        applicationId: applicationId ?? this.applicationId);
  }
}

@JsonSerializable(explicitToJson: true)
class UserBaseModelResponseObject {
  UserBaseModelResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory UserBaseModelResponseObject.fromJson(Map<String, dynamic> json) =>
      _$UserBaseModelResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final UserBaseModel? data;
  static const fromJsonFactory = _$UserBaseModelResponseObjectFromJson;
  static const toJsonFactory = _$UserBaseModelResponseObjectToJson;
  Map<String, dynamic> toJson() => _$UserBaseModelResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserBaseModelResponseObject &&
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

extension $UserBaseModelResponseObjectExtension on UserBaseModelResponseObject {
  UserBaseModelResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      UserBaseModel? data}) {
    return UserBaseModelResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class UserChangePasswordModel {
  UserChangePasswordModel({
    required this.oldPassword,
    required this.newPassword,
    required this.confirmPassword,
  });

  factory UserChangePasswordModel.fromJson(Map<String, dynamic> json) =>
      _$UserChangePasswordModelFromJson(json);

  @JsonKey(name: 'oldPassword')
  final String oldPassword;
  @JsonKey(name: 'newPassword')
  final String newPassword;
  @JsonKey(name: 'confirmPassword')
  final String confirmPassword;
  static const fromJsonFactory = _$UserChangePasswordModelFromJson;
  static const toJsonFactory = _$UserChangePasswordModelToJson;
  Map<String, dynamic> toJson() => _$UserChangePasswordModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserChangePasswordModel &&
            (identical(other.oldPassword, oldPassword) ||
                const DeepCollectionEquality()
                    .equals(other.oldPassword, oldPassword)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(oldPassword) ^
      const DeepCollectionEquality().hash(newPassword) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      runtimeType.hashCode;
}

extension $UserChangePasswordModelExtension on UserChangePasswordModel {
  UserChangePasswordModel copyWith(
      {String? oldPassword, String? newPassword, String? confirmPassword}) {
    return UserChangePasswordModel(
        oldPassword: oldPassword ?? this.oldPassword,
        newPassword: newPassword ?? this.newPassword,
        confirmPassword: confirmPassword ?? this.confirmPassword);
  }
}

@JsonSerializable(explicitToJson: true)
class UserDetail {
  UserDetail({
    this.firstName,
    this.lastName,
    this.fullName,
    this.title,
    this.gender,
    this.birthdate,
    this.country,
    this.city,
    this.address,
    this.postalCode,
    this.aboutMe,
  });

  factory UserDetail.fromJson(Map<String, dynamic> json) =>
      _$UserDetailFromJson(json);

  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'fullName')
  final String? fullName;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'gender')
  final int? gender;
  @JsonKey(name: 'birthdate')
  final DateTime? birthdate;
  @JsonKey(name: 'country')
  final String? country;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'postalCode')
  final String? postalCode;
  @JsonKey(name: 'aboutMe')
  final String? aboutMe;
  static const fromJsonFactory = _$UserDetailFromJson;
  static const toJsonFactory = _$UserDetailToJson;
  Map<String, dynamic> toJson() => _$UserDetailToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserDetail &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.birthdate, birthdate) ||
                const DeepCollectionEquality()
                    .equals(other.birthdate, birthdate)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.aboutMe, aboutMe) ||
                const DeepCollectionEquality().equals(other.aboutMe, aboutMe)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(birthdate) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(aboutMe) ^
      runtimeType.hashCode;
}

extension $UserDetailExtension on UserDetail {
  UserDetail copyWith(
      {String? firstName,
      String? lastName,
      String? fullName,
      String? title,
      int? gender,
      DateTime? birthdate,
      String? country,
      String? city,
      String? address,
      String? postalCode,
      String? aboutMe}) {
    return UserDetail(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        fullName: fullName ?? this.fullName,
        title: title ?? this.title,
        gender: gender ?? this.gender,
        birthdate: birthdate ?? this.birthdate,
        country: country ?? this.country,
        city: city ?? this.city,
        address: address ?? this.address,
        postalCode: postalCode ?? this.postalCode,
        aboutMe: aboutMe ?? this.aboutMe);
  }
}

@JsonSerializable(explicitToJson: true)
class UserFirebaseToken {
  UserFirebaseToken({
    this.createdByUserId,
    this.lastModifiedByUserId,
    this.lastModifiedOnDate,
    this.createdOnDate,
    this.applicationId,
    this.id,
    this.userId,
    this.messagingToken,
    this.userAgent,
  });

  factory UserFirebaseToken.fromJson(Map<String, dynamic> json) =>
      _$UserFirebaseTokenFromJson(json);

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
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'messagingToken')
  final String? messagingToken;
  @JsonKey(name: 'userAgent')
  final String? userAgent;
  static const fromJsonFactory = _$UserFirebaseTokenFromJson;
  static const toJsonFactory = _$UserFirebaseTokenToJson;
  Map<String, dynamic> toJson() => _$UserFirebaseTokenToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserFirebaseToken &&
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
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.messagingToken, messagingToken) ||
                const DeepCollectionEquality()
                    .equals(other.messagingToken, messagingToken)) &&
            (identical(other.userAgent, userAgent) ||
                const DeepCollectionEquality()
                    .equals(other.userAgent, userAgent)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedByUserId) ^
      const DeepCollectionEquality().hash(lastModifiedOnDate) ^
      const DeepCollectionEquality().hash(createdOnDate) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(messagingToken) ^
      const DeepCollectionEquality().hash(userAgent) ^
      runtimeType.hashCode;
}

extension $UserFirebaseTokenExtension on UserFirebaseToken {
  UserFirebaseToken copyWith(
      {String? createdByUserId,
      String? lastModifiedByUserId,
      DateTime? lastModifiedOnDate,
      DateTime? createdOnDate,
      String? applicationId,
      String? id,
      String? userId,
      String? messagingToken,
      String? userAgent}) {
    return UserFirebaseToken(
        createdByUserId: createdByUserId ?? this.createdByUserId,
        lastModifiedByUserId: lastModifiedByUserId ?? this.lastModifiedByUserId,
        lastModifiedOnDate: lastModifiedOnDate ?? this.lastModifiedOnDate,
        createdOnDate: createdOnDate ?? this.createdOnDate,
        applicationId: applicationId ?? this.applicationId,
        id: id ?? this.id,
        userId: userId ?? this.userId,
        messagingToken: messagingToken ?? this.messagingToken,
        userAgent: userAgent ?? this.userAgent);
  }
}

@JsonSerializable(explicitToJson: true)
class UserFirebaseTokenResponseList {
  UserFirebaseTokenResponseList({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory UserFirebaseTokenResponseList.fromJson(Map<String, dynamic> json) =>
      _$UserFirebaseTokenResponseListFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data', defaultValue: <UserFirebaseToken>[])
  final List<UserFirebaseToken>? data;
  static const fromJsonFactory = _$UserFirebaseTokenResponseListFromJson;
  static const toJsonFactory = _$UserFirebaseTokenResponseListToJson;
  Map<String, dynamic> toJson() => _$UserFirebaseTokenResponseListToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserFirebaseTokenResponseList &&
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

extension $UserFirebaseTokenResponseListExtension
    on UserFirebaseTokenResponseList {
  UserFirebaseTokenResponseList copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<UserFirebaseToken>? data}) {
    return UserFirebaseTokenResponseList(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class UserFirebaseTokenResponseObject {
  UserFirebaseTokenResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory UserFirebaseTokenResponseObject.fromJson(Map<String, dynamic> json) =>
      _$UserFirebaseTokenResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final UserFirebaseToken? data;
  static const fromJsonFactory = _$UserFirebaseTokenResponseObjectFromJson;
  static const toJsonFactory = _$UserFirebaseTokenResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$UserFirebaseTokenResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserFirebaseTokenResponseObject &&
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

extension $UserFirebaseTokenResponseObjectExtension
    on UserFirebaseTokenResponseObject {
  UserFirebaseTokenResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      UserFirebaseToken? data}) {
    return UserFirebaseTokenResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class UserInfoResponseModel {
  UserInfoResponseModel({
    this.id,
    this.userName,
    this.name,
    this.avatarUrl,
    this.applicationId,
    this.email,
    this.phoneNumber,
    this.typeObj,
    this.isActive,
    this.userDetail,
    this.settingValues,
    this.lastActivityDate,
    this.metadataContentObjs,
  });

  factory UserInfoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoResponseModelFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @JsonKey(name: 'applicationId')
  final String? applicationId;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(
      name: 'typeObj',
      toJson: userTypeEnumToJson,
      fromJson: userTypeEnumFromJson)
  final enums.UserTypeEnum? typeObj;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @JsonKey(name: 'userDetail')
  final UserDetail? userDetail;
  @JsonKey(name: 'settingValues')
  final Settings? settingValues;
  @JsonKey(name: 'lastActivityDate')
  final DateTime? lastActivityDate;
  @JsonKey(name: 'metadataContentObjs', defaultValue: <MetadataValue>[])
  final List<MetadataValue>? metadataContentObjs;
  static const fromJsonFactory = _$UserInfoResponseModelFromJson;
  static const toJsonFactory = _$UserInfoResponseModelToJson;
  Map<String, dynamic> toJson() => _$UserInfoResponseModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserInfoResponseModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.typeObj, typeObj) ||
                const DeepCollectionEquality()
                    .equals(other.typeObj, typeObj)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.userDetail, userDetail) ||
                const DeepCollectionEquality()
                    .equals(other.userDetail, userDetail)) &&
            (identical(other.settingValues, settingValues) ||
                const DeepCollectionEquality()
                    .equals(other.settingValues, settingValues)) &&
            (identical(other.lastActivityDate, lastActivityDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastActivityDate, lastActivityDate)) &&
            (identical(other.metadataContentObjs, metadataContentObjs) ||
                const DeepCollectionEquality()
                    .equals(other.metadataContentObjs, metadataContentObjs)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(typeObj) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(userDetail) ^
      const DeepCollectionEquality().hash(settingValues) ^
      const DeepCollectionEquality().hash(lastActivityDate) ^
      const DeepCollectionEquality().hash(metadataContentObjs) ^
      runtimeType.hashCode;
}

extension $UserInfoResponseModelExtension on UserInfoResponseModel {
  UserInfoResponseModel copyWith(
      {String? id,
      String? userName,
      String? name,
      String? avatarUrl,
      String? applicationId,
      String? email,
      String? phoneNumber,
      enums.UserTypeEnum? typeObj,
      bool? isActive,
      UserDetail? userDetail,
      Settings? settingValues,
      DateTime? lastActivityDate,
      List<MetadataValue>? metadataContentObjs}) {
    return UserInfoResponseModel(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        name: name ?? this.name,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        applicationId: applicationId ?? this.applicationId,
        email: email ?? this.email,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        typeObj: typeObj ?? this.typeObj,
        isActive: isActive ?? this.isActive,
        userDetail: userDetail ?? this.userDetail,
        settingValues: settingValues ?? this.settingValues,
        lastActivityDate: lastActivityDate ?? this.lastActivityDate,
        metadataContentObjs: metadataContentObjs ?? this.metadataContentObjs);
  }
}

@JsonSerializable(explicitToJson: true)
class UserInfoResponseModelResponseList {
  UserInfoResponseModelResponseList({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory UserInfoResponseModelResponseList.fromJson(
          Map<String, dynamic> json) =>
      _$UserInfoResponseModelResponseListFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data', defaultValue: <UserInfoResponseModel>[])
  final List<UserInfoResponseModel>? data;
  static const fromJsonFactory = _$UserInfoResponseModelResponseListFromJson;
  static const toJsonFactory = _$UserInfoResponseModelResponseListToJson;
  Map<String, dynamic> toJson() =>
      _$UserInfoResponseModelResponseListToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserInfoResponseModelResponseList &&
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

extension $UserInfoResponseModelResponseListExtension
    on UserInfoResponseModelResponseList {
  UserInfoResponseModelResponseList copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<UserInfoResponseModel>? data}) {
    return UserInfoResponseModelResponseList(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class UserPasswordModel {
  UserPasswordModel({
    this.id,
    this.userName,
    this.name,
    this.avatarUrl,
    this.applicationId,
    this.email,
    this.phoneNumber,
    this.typeObj,
    this.isActive,
    this.userDetail,
    this.isSuperUser,
    this.forceChangePassword,
    this.settingValues,
    this.lastActivityDate,
    this.groupType,
    this.groupId,
    this.groupName,
    this.userProfile,
    this.userProfile2,
    this.password,
    this.passwordSalt,
  });

  factory UserPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$UserPasswordModelFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @JsonKey(name: 'applicationId')
  final String? applicationId;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(
      name: 'typeObj',
      toJson: userTypeEnumToJson,
      fromJson: userTypeEnumFromJson)
  final enums.UserTypeEnum? typeObj;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @JsonKey(name: 'userDetail')
  final UserDetail? userDetail;
  @JsonKey(name: 'isSuperUser')
  final bool? isSuperUser;
  @JsonKey(name: 'forceChangePassword')
  final bool? forceChangePassword;
  @JsonKey(name: 'settingValues')
  final Settings? settingValues;
  @JsonKey(name: 'lastActivityDate')
  final DateTime? lastActivityDate;
  @JsonKey(name: 'groupType')
  final String? groupType;
  @JsonKey(name: 'groupId')
  final String? groupId;
  @JsonKey(name: 'groupName')
  final String? groupName;
  @JsonKey(name: 'userProfile')
  final String? userProfile;
  @JsonKey(name: 'userProfile2')
  final String? userProfile2;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'passwordSalt')
  final String? passwordSalt;
  static const fromJsonFactory = _$UserPasswordModelFromJson;
  static const toJsonFactory = _$UserPasswordModelToJson;
  Map<String, dynamic> toJson() => _$UserPasswordModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserPasswordModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.typeObj, typeObj) ||
                const DeepCollectionEquality()
                    .equals(other.typeObj, typeObj)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.userDetail, userDetail) ||
                const DeepCollectionEquality()
                    .equals(other.userDetail, userDetail)) &&
            (identical(other.isSuperUser, isSuperUser) ||
                const DeepCollectionEquality()
                    .equals(other.isSuperUser, isSuperUser)) &&
            (identical(other.forceChangePassword, forceChangePassword) ||
                const DeepCollectionEquality()
                    .equals(other.forceChangePassword, forceChangePassword)) &&
            (identical(other.settingValues, settingValues) ||
                const DeepCollectionEquality()
                    .equals(other.settingValues, settingValues)) &&
            (identical(other.lastActivityDate, lastActivityDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastActivityDate, lastActivityDate)) &&
            (identical(other.groupType, groupType) ||
                const DeepCollectionEquality()
                    .equals(other.groupType, groupType)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.userProfile, userProfile) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile, userProfile)) &&
            (identical(other.userProfile2, userProfile2) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile2, userProfile2)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.passwordSalt, passwordSalt) ||
                const DeepCollectionEquality()
                    .equals(other.passwordSalt, passwordSalt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(typeObj) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(userDetail) ^
      const DeepCollectionEquality().hash(isSuperUser) ^
      const DeepCollectionEquality().hash(forceChangePassword) ^
      const DeepCollectionEquality().hash(settingValues) ^
      const DeepCollectionEquality().hash(lastActivityDate) ^
      const DeepCollectionEquality().hash(groupType) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(userProfile) ^
      const DeepCollectionEquality().hash(userProfile2) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordSalt) ^
      runtimeType.hashCode;
}

extension $UserPasswordModelExtension on UserPasswordModel {
  UserPasswordModel copyWith(
      {String? id,
      String? userName,
      String? name,
      String? avatarUrl,
      String? applicationId,
      String? email,
      String? phoneNumber,
      enums.UserTypeEnum? typeObj,
      bool? isActive,
      UserDetail? userDetail,
      bool? isSuperUser,
      bool? forceChangePassword,
      Settings? settingValues,
      DateTime? lastActivityDate,
      String? groupType,
      String? groupId,
      String? groupName,
      String? userProfile,
      String? userProfile2,
      String? password,
      String? passwordSalt}) {
    return UserPasswordModel(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        name: name ?? this.name,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        applicationId: applicationId ?? this.applicationId,
        email: email ?? this.email,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        typeObj: typeObj ?? this.typeObj,
        isActive: isActive ?? this.isActive,
        userDetail: userDetail ?? this.userDetail,
        isSuperUser: isSuperUser ?? this.isSuperUser,
        forceChangePassword: forceChangePassword ?? this.forceChangePassword,
        settingValues: settingValues ?? this.settingValues,
        lastActivityDate: lastActivityDate ?? this.lastActivityDate,
        groupType: groupType ?? this.groupType,
        groupId: groupId ?? this.groupId,
        groupName: groupName ?? this.groupName,
        userProfile: userProfile ?? this.userProfile,
        userProfile2: userProfile2 ?? this.userProfile2,
        password: password ?? this.password,
        passwordSalt: passwordSalt ?? this.passwordSalt);
  }
}

@JsonSerializable(explicitToJson: true)
class UserPasswordModelResponseObject {
  UserPasswordModelResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory UserPasswordModelResponseObject.fromJson(Map<String, dynamic> json) =>
      _$UserPasswordModelResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data')
  final UserPasswordModel? data;
  static const fromJsonFactory = _$UserPasswordModelResponseObjectFromJson;
  static const toJsonFactory = _$UserPasswordModelResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$UserPasswordModelResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserPasswordModelResponseObject &&
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

extension $UserPasswordModelResponseObjectExtension
    on UserPasswordModelResponseObject {
  UserPasswordModelResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      UserPasswordModel? data}) {
    return UserPasswordModelResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class UserProfile {
  UserProfile({
    this.customerType,
    this.companyName,
    this.taxNo,
    this.idNumber,
    this.address,
    this.headquarters,
    this.districts,
    this.wards,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  @JsonKey(name: 'customerType')
  final String? customerType;
  @JsonKey(name: 'companyName')
  final String? companyName;
  @JsonKey(name: 'taxNo')
  final String? taxNo;
  @JsonKey(name: 'idNumber')
  final String? idNumber;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'headquarters')
  final String? headquarters;
  @JsonKey(name: 'districts')
  final String? districts;
  @JsonKey(name: 'wards')
  final String? wards;
  static const fromJsonFactory = _$UserProfileFromJson;
  static const toJsonFactory = _$UserProfileToJson;
  Map<String, dynamic> toJson() => _$UserProfileToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserProfile &&
            (identical(other.customerType, customerType) ||
                const DeepCollectionEquality()
                    .equals(other.customerType, customerType)) &&
            (identical(other.companyName, companyName) ||
                const DeepCollectionEquality()
                    .equals(other.companyName, companyName)) &&
            (identical(other.taxNo, taxNo) ||
                const DeepCollectionEquality().equals(other.taxNo, taxNo)) &&
            (identical(other.idNumber, idNumber) ||
                const DeepCollectionEquality()
                    .equals(other.idNumber, idNumber)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.headquarters, headquarters) ||
                const DeepCollectionEquality()
                    .equals(other.headquarters, headquarters)) &&
            (identical(other.districts, districts) ||
                const DeepCollectionEquality()
                    .equals(other.districts, districts)) &&
            (identical(other.wards, wards) ||
                const DeepCollectionEquality().equals(other.wards, wards)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customerType) ^
      const DeepCollectionEquality().hash(companyName) ^
      const DeepCollectionEquality().hash(taxNo) ^
      const DeepCollectionEquality().hash(idNumber) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(headquarters) ^
      const DeepCollectionEquality().hash(districts) ^
      const DeepCollectionEquality().hash(wards) ^
      runtimeType.hashCode;
}

extension $UserProfileExtension on UserProfile {
  UserProfile copyWith(
      {String? customerType,
      String? companyName,
      String? taxNo,
      String? idNumber,
      String? address,
      String? headquarters,
      String? districts,
      String? wards}) {
    return UserProfile(
        customerType: customerType ?? this.customerType,
        companyName: companyName ?? this.companyName,
        taxNo: taxNo ?? this.taxNo,
        idNumber: idNumber ?? this.idNumber,
        address: address ?? this.address,
        headquarters: headquarters ?? this.headquarters,
        districts: districts ?? this.districts,
        wards: wards ?? this.wards);
  }
}

@JsonSerializable(explicitToJson: true)
class UserProfile2 {
  UserProfile2({
    this.orgId,
    this.orgCode,
    this.orgName,
  });

  factory UserProfile2.fromJson(Map<String, dynamic> json) =>
      _$UserProfile2FromJson(json);

  @JsonKey(name: 'orgId')
  final String? orgId;
  @JsonKey(name: 'orgCode')
  final String? orgCode;
  @JsonKey(name: 'orgName')
  final String? orgName;
  static const fromJsonFactory = _$UserProfile2FromJson;
  static const toJsonFactory = _$UserProfile2ToJson;
  Map<String, dynamic> toJson() => _$UserProfile2ToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserProfile2 &&
            (identical(other.orgId, orgId) ||
                const DeepCollectionEquality().equals(other.orgId, orgId)) &&
            (identical(other.orgCode, orgCode) ||
                const DeepCollectionEquality()
                    .equals(other.orgCode, orgCode)) &&
            (identical(other.orgName, orgName) ||
                const DeepCollectionEquality().equals(other.orgName, orgName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orgId) ^
      const DeepCollectionEquality().hash(orgCode) ^
      const DeepCollectionEquality().hash(orgName) ^
      runtimeType.hashCode;
}

extension $UserProfile2Extension on UserProfile2 {
  UserProfile2 copyWith({String? orgId, String? orgCode, String? orgName}) {
    return UserProfile2(
        orgId: orgId ?? this.orgId,
        orgCode: orgCode ?? this.orgCode,
        orgName: orgName ?? this.orgName);
  }
}

@JsonSerializable(explicitToJson: true)
class UserRecoverPasswordModel {
  UserRecoverPasswordModel({
    required this.token,
    required this.newPassword,
    required this.confirmPassword,
  });

  factory UserRecoverPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$UserRecoverPasswordModelFromJson(json);

  @JsonKey(name: 'token')
  final String token;
  @JsonKey(name: 'newPassword')
  final String newPassword;
  @JsonKey(name: 'confirmPassword')
  final String confirmPassword;
  static const fromJsonFactory = _$UserRecoverPasswordModelFromJson;
  static const toJsonFactory = _$UserRecoverPasswordModelToJson;
  Map<String, dynamic> toJson() => _$UserRecoverPasswordModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserRecoverPasswordModel &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(newPassword) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      runtimeType.hashCode;
}

extension $UserRecoverPasswordModelExtension on UserRecoverPasswordModel {
  UserRecoverPasswordModel copyWith(
      {String? token, String? newPassword, String? confirmPassword}) {
    return UserRecoverPasswordModel(
        token: token ?? this.token,
        newPassword: newPassword ?? this.newPassword,
        confirmPassword: confirmPassword ?? this.confirmPassword);
  }
}

@JsonSerializable(explicitToJson: true)
class UserSimpleInfoResponseModel {
  UserSimpleInfoResponseModel({
    this.id,
    this.userName,
    this.name,
    this.avatarUrl,
    this.applicationId,
  });

  factory UserSimpleInfoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserSimpleInfoResponseModelFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @JsonKey(name: 'applicationId')
  final String? applicationId;
  static const fromJsonFactory = _$UserSimpleInfoResponseModelFromJson;
  static const toJsonFactory = _$UserSimpleInfoResponseModelToJson;
  Map<String, dynamic> toJson() => _$UserSimpleInfoResponseModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserSimpleInfoResponseModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(applicationId) ^
      runtimeType.hashCode;
}

extension $UserSimpleInfoResponseModelExtension on UserSimpleInfoResponseModel {
  UserSimpleInfoResponseModel copyWith(
      {String? id,
      String? userName,
      String? name,
      String? avatarUrl,
      String? applicationId}) {
    return UserSimpleInfoResponseModel(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        name: name ?? this.name,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        applicationId: applicationId ?? this.applicationId);
  }
}

@JsonSerializable(explicitToJson: true)
class UserSimpleInfoResponseModelListResponseObject {
  UserSimpleInfoResponseModelListResponseObject({
    this.code,
    this.message,
    this.totalTime,
    this.data,
  });

  factory UserSimpleInfoResponseModelListResponseObject.fromJson(
          Map<String, dynamic> json) =>
      _$UserSimpleInfoResponseModelListResponseObjectFromJson(json);

  @JsonKey(name: 'code', toJson: codeToJson, fromJson: codeFromJson)
  final enums.Code? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'totalTime')
  final num? totalTime;
  @JsonKey(name: 'data', defaultValue: <UserSimpleInfoResponseModel>[])
  final List<UserSimpleInfoResponseModel>? data;
  static const fromJsonFactory =
      _$UserSimpleInfoResponseModelListResponseObjectFromJson;
  static const toJsonFactory =
      _$UserSimpleInfoResponseModelListResponseObjectToJson;
  Map<String, dynamic> toJson() =>
      _$UserSimpleInfoResponseModelListResponseObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserSimpleInfoResponseModelListResponseObject &&
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

extension $UserSimpleInfoResponseModelListResponseObjectExtension
    on UserSimpleInfoResponseModelListResponseObject {
  UserSimpleInfoResponseModelListResponseObject copyWith(
      {enums.Code? code,
      String? message,
      num? totalTime,
      List<UserSimpleInfoResponseModel>? data}) {
    return UserSimpleInfoResponseModelListResponseObject(
        code: code ?? this.code,
        message: message ?? this.message,
        totalTime: totalTime ?? this.totalTime,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class UserTokenResquestModel {
  UserTokenResquestModel({
    this.userId,
    this.userAgent,
    this.token,
  });

  factory UserTokenResquestModel.fromJson(Map<String, dynamic> json) =>
      _$UserTokenResquestModelFromJson(json);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'userAgent')
  final String? userAgent;
  @JsonKey(name: 'token')
  final String? token;
  static const fromJsonFactory = _$UserTokenResquestModelFromJson;
  static const toJsonFactory = _$UserTokenResquestModelToJson;
  Map<String, dynamic> toJson() => _$UserTokenResquestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserTokenResquestModel &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userAgent, userAgent) ||
                const DeepCollectionEquality()
                    .equals(other.userAgent, userAgent)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userAgent) ^
      const DeepCollectionEquality().hash(token) ^
      runtimeType.hashCode;
}

extension $UserTokenResquestModelExtension on UserTokenResquestModel {
  UserTokenResquestModel copyWith(
      {String? userId, String? userAgent, String? token}) {
    return UserTokenResquestModel(
        userId: userId ?? this.userId,
        userAgent: userAgent ?? this.userAgent,
        token: token ?? this.token);
  }
}

@JsonSerializable(explicitToJson: true)
class UserUpdateProfileRequestModel {
  UserUpdateProfileRequestModel({
    this.phoneNumber,
    this.email,
    this.name,
    this.avatarUrl,
    this.userDetail,
    this.settingValues,
    this.userProfile,
  });

  factory UserUpdateProfileRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateProfileRequestModelFromJson(json);

  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @JsonKey(name: 'userDetail')
  final UserDetail? userDetail;
  @JsonKey(name: 'settingValues')
  final Settings? settingValues;
  @JsonKey(name: 'userProfile')
  final UserProfile? userProfile;
  static const fromJsonFactory = _$UserUpdateProfileRequestModelFromJson;
  static const toJsonFactory = _$UserUpdateProfileRequestModelToJson;
  Map<String, dynamic> toJson() => _$UserUpdateProfileRequestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserUpdateProfileRequestModel &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.userDetail, userDetail) ||
                const DeepCollectionEquality()
                    .equals(other.userDetail, userDetail)) &&
            (identical(other.settingValues, settingValues) ||
                const DeepCollectionEquality()
                    .equals(other.settingValues, settingValues)) &&
            (identical(other.userProfile, userProfile) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile, userProfile)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(userDetail) ^
      const DeepCollectionEquality().hash(settingValues) ^
      const DeepCollectionEquality().hash(userProfile) ^
      runtimeType.hashCode;
}

extension $UserUpdateProfileRequestModelExtension
    on UserUpdateProfileRequestModel {
  UserUpdateProfileRequestModel copyWith(
      {String? phoneNumber,
      String? email,
      String? name,
      String? avatarUrl,
      UserDetail? userDetail,
      Settings? settingValues,
      UserProfile? userProfile}) {
    return UserUpdateProfileRequestModel(
        phoneNumber: phoneNumber ?? this.phoneNumber,
        email: email ?? this.email,
        name: name ?? this.name,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        userDetail: userDetail ?? this.userDetail,
        settingValues: settingValues ?? this.settingValues,
        userProfile: userProfile ?? this.userProfile);
  }
}

@JsonSerializable(explicitToJson: true)
class UserUpdateRequestModel {
  UserUpdateRequestModel({
    this.id,
    this.userName,
    this.name,
    this.phoneNumber,
    this.email,
    this.avatarUrl,
    this.isActive,
    this.typeObj,
    this.type,
    this.password,
    this.userDetail,
    this.settingValues,
    this.groupId,
    this.groupName,
    this.listAddRightId,
    this.listAddRoleId,
    this.listDeleteRightId,
    this.listDeleteRoleId,
    this.applicationId,
    this.userProfile,
    this.userProfile2,
    this.labelsObjs,
  });

  factory UserUpdateRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateRequestModelFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @JsonKey(
      name: 'typeObj',
      toJson: userTypeEnumToJson,
      fromJson: userTypeEnumFromJson)
  final enums.UserTypeEnum? typeObj;
  @JsonKey(name: 'type')
  final int? type;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'userDetail')
  final UserDetail? userDetail;
  @JsonKey(name: 'settingValues')
  final Settings? settingValues;
  @JsonKey(name: 'groupId')
  final String? groupId;
  @JsonKey(name: 'groupName')
  final String? groupName;
  @JsonKey(name: 'listAddRightId', defaultValue: <String>[])
  final List<String>? listAddRightId;
  @JsonKey(name: 'listAddRoleId', defaultValue: <String>[])
  final List<String>? listAddRoleId;
  @JsonKey(name: 'listDeleteRightId', defaultValue: <String>[])
  final List<String>? listDeleteRightId;
  @JsonKey(name: 'listDeleteRoleId', defaultValue: <String>[])
  final List<String>? listDeleteRoleId;
  @JsonKey(name: 'applicationId')
  final String? applicationId;
  @JsonKey(name: 'userProfile')
  final UserProfile? userProfile;
  @JsonKey(name: 'userProfile2')
  final UserProfile2? userProfile2;
  @JsonKey(name: 'labelsObjs', defaultValue: <LabelsObj>[])
  final List<LabelsObj>? labelsObjs;
  static const fromJsonFactory = _$UserUpdateRequestModelFromJson;
  static const toJsonFactory = _$UserUpdateRequestModelToJson;
  Map<String, dynamic> toJson() => _$UserUpdateRequestModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserUpdateRequestModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.typeObj, typeObj) ||
                const DeepCollectionEquality()
                    .equals(other.typeObj, typeObj)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.userDetail, userDetail) ||
                const DeepCollectionEquality()
                    .equals(other.userDetail, userDetail)) &&
            (identical(other.settingValues, settingValues) ||
                const DeepCollectionEquality()
                    .equals(other.settingValues, settingValues)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.listAddRightId, listAddRightId) ||
                const DeepCollectionEquality()
                    .equals(other.listAddRightId, listAddRightId)) &&
            (identical(other.listAddRoleId, listAddRoleId) ||
                const DeepCollectionEquality()
                    .equals(other.listAddRoleId, listAddRoleId)) &&
            (identical(other.listDeleteRightId, listDeleteRightId) ||
                const DeepCollectionEquality()
                    .equals(other.listDeleteRightId, listDeleteRightId)) &&
            (identical(other.listDeleteRoleId, listDeleteRoleId) ||
                const DeepCollectionEquality()
                    .equals(other.listDeleteRoleId, listDeleteRoleId)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.userProfile, userProfile) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile, userProfile)) &&
            (identical(other.userProfile2, userProfile2) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile2, userProfile2)) &&
            (identical(other.labelsObjs, labelsObjs) ||
                const DeepCollectionEquality()
                    .equals(other.labelsObjs, labelsObjs)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(typeObj) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(userDetail) ^
      const DeepCollectionEquality().hash(settingValues) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(listAddRightId) ^
      const DeepCollectionEquality().hash(listAddRoleId) ^
      const DeepCollectionEquality().hash(listDeleteRightId) ^
      const DeepCollectionEquality().hash(listDeleteRoleId) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(userProfile) ^
      const DeepCollectionEquality().hash(userProfile2) ^
      const DeepCollectionEquality().hash(labelsObjs) ^
      runtimeType.hashCode;
}

extension $UserUpdateRequestModelExtension on UserUpdateRequestModel {
  UserUpdateRequestModel copyWith(
      {String? id,
      String? userName,
      String? name,
      String? phoneNumber,
      String? email,
      String? avatarUrl,
      bool? isActive,
      enums.UserTypeEnum? typeObj,
      int? type,
      String? password,
      UserDetail? userDetail,
      Settings? settingValues,
      String? groupId,
      String? groupName,
      List<String>? listAddRightId,
      List<String>? listAddRoleId,
      List<String>? listDeleteRightId,
      List<String>? listDeleteRoleId,
      String? applicationId,
      UserProfile? userProfile,
      UserProfile2? userProfile2,
      List<LabelsObj>? labelsObjs}) {
    return UserUpdateRequestModel(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        name: name ?? this.name,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        email: email ?? this.email,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        isActive: isActive ?? this.isActive,
        typeObj: typeObj ?? this.typeObj,
        type: type ?? this.type,
        password: password ?? this.password,
        userDetail: userDetail ?? this.userDetail,
        settingValues: settingValues ?? this.settingValues,
        groupId: groupId ?? this.groupId,
        groupName: groupName ?? this.groupName,
        listAddRightId: listAddRightId ?? this.listAddRightId,
        listAddRoleId: listAddRoleId ?? this.listAddRoleId,
        listDeleteRightId: listDeleteRightId ?? this.listDeleteRightId,
        listDeleteRoleId: listDeleteRoleId ?? this.listDeleteRoleId,
        applicationId: applicationId ?? this.applicationId,
        userProfile: userProfile ?? this.userProfile,
        userProfile2: userProfile2 ?? this.userProfile2,
        labelsObjs: labelsObjs ?? this.labelsObjs);
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

int? positionEnumToJson(enums.PositionEnum? positionEnum) {
  return enums.$PositionEnumMap[positionEnum];
}

enums.PositionEnum positionEnumFromJson(
  Object? positionEnum, [
  enums.PositionEnum? defaultValue,
]) {
  if (positionEnum is int) {
    return enums.$PositionEnumMap.entries
        .firstWhere((element) => element.value == positionEnum,
            orElse: () =>
                const MapEntry(enums.PositionEnum.swaggerGeneratedUnknown, 0))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$PositionEnumMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.PositionEnum.swaggerGeneratedUnknown;
}

List<int> positionEnumListToJson(List<enums.PositionEnum>? positionEnum) {
  if (positionEnum == null) {
    return [];
  }

  return positionEnum.map((e) => enums.$PositionEnumMap[e]!).toList();
}

List<enums.PositionEnum> positionEnumListFromJson(
  List? positionEnum, [
  List<enums.PositionEnum>? defaultValue,
]) {
  if (positionEnum == null) {
    return defaultValue ?? [];
  }

  return positionEnum.map((e) => positionEnumFromJson(e.toString())).toList();
}

int? userTypeEnumToJson(enums.UserTypeEnum? userTypeEnum) {
  return enums.$UserTypeEnumMap[userTypeEnum];
}

enums.UserTypeEnum userTypeEnumFromJson(
  Object? userTypeEnum, [
  enums.UserTypeEnum? defaultValue,
]) {
  if (userTypeEnum is int) {
    return enums.$UserTypeEnumMap.entries
        .firstWhere((element) => element.value == userTypeEnum,
            orElse: () =>
                const MapEntry(enums.UserTypeEnum.swaggerGeneratedUnknown, 0))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$UserTypeEnumMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.UserTypeEnum.swaggerGeneratedUnknown;
}

List<int> userTypeEnumListToJson(List<enums.UserTypeEnum>? userTypeEnum) {
  if (userTypeEnum == null) {
    return [];
  }

  return userTypeEnum.map((e) => enums.$UserTypeEnumMap[e]!).toList();
}

List<enums.UserTypeEnum> userTypeEnumListFromJson(
  List? userTypeEnum, [
  List<enums.UserTypeEnum>? defaultValue,
]) {
  if (userTypeEnum == null) {
    return defaultValue ?? [];
  }

  return userTypeEnum.map((e) => userTypeEnumFromJson(e.toString())).toList();
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
