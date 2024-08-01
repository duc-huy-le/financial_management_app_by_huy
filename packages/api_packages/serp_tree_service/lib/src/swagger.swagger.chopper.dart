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
  Future<Response<BomTempResponsePagination>> _v1BomTempGet(
      {int? currentPage, int? pageSize, String? type, String? queryString}) {
    final $url = '/v1/bom-temp';
    final $params = <String, dynamic>{
      'currentPage': currentPage,
      'pageSize': pageSize,
      'type': type,
      'queryString': queryString
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<BomTempResponsePagination, BomTempResponsePagination>($request);
  }

  @override
  Future<Response<BomTempModelResponseObject>> _v1BomTempPost(
      {TreeBomTempModel? body}) {
    final $url = '/v1/bom-temp';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<BomTempModelResponseObject, BomTempModelResponseObject>($request);
  }

  @override
  Future<Response<BomTempResponseObject>> _v1BomTempIdGet(
      {required String? id}) {
    final $url = '/v1/bom-temp/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BomTempResponseObject, BomTempResponseObject>($request);
  }

  @override
  Future<Response<BomTempResponseObject>> _v1BomTempIdPut(
      {required String? id, TreeBomTempModel? body}) {
    final $url = '/v1/bom-temp/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<BomTempResponseObject, BomTempResponseObject>($request);
  }

  @override
  Future<Response<BomTempResponseList>> _v1BomTempDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/bom-temp/delete/many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BomTempResponseList, BomTempResponseList>($request);
  }

  @override
  Future<Response<List<String>>>
      _v1BomTempGetListProductProductAvailableDeletePost({List<String>? body}) {
    final $url = '/v1/bom-temp/get-list-product-product-available-delete';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<List<String>, String>($request);
  }

  @override
  Future<Response<CommentResponseObject>> _v1CommentIdGet(
      {required String? id}) {
    final $url = '/v1/comment/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<CommentResponseObject, CommentResponseObject>($request);
  }

  @override
  Future<Response<CommentResponseObject>> _v1CommentIdPut(
      {required String? id, CommentRequestModel? body}) {
    final $url = '/v1/comment/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<CommentResponseObject, CommentResponseObject>($request);
  }

  @override
  Future<Response<CommentResponseObject>> _v1CommentIdDelete(
      {required String? id}) {
    final $url = '/v1/comment/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<CommentResponseObject, CommentResponseObject>($request);
  }

  @override
  Future<Response<CommentResponsePagination>> _v1CommentGet(
      {String? objectId,
      int? page,
      int? size,
      String? sort,
      String? queryString,
      String? filter}) {
    final $url = '/v1/comment';
    final $params = <String, dynamic>{
      'objectId': objectId,
      'page': page,
      'size': size,
      'sort': sort,
      'queryString': queryString,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<CommentResponsePagination, CommentResponsePagination>($request);
  }

  @override
  Future<Response<CommentResponseObject>> _v1CommentPost(
      {CommentRequestModel? body}) {
    final $url = '/v1/comment';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<CommentResponseObject, CommentResponseObject>($request);
  }

  @override
  Future<Response<CommentResponseObject>> _v1CommentIdStatusPut(
      {required String? id, CommentStatusRequestModel? body}) {
    final $url = '/v1/comment/${id}/status';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<CommentResponseObject, CommentResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1CommentDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/comment/delete/many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<dynamic>> _v1DownloadGet({String? token}) {
    final $url = '/v1/download';
    final $params = <String, dynamic>{'token': token};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1DownloadIdGet(
      {required String? id, String? token}) {
    final $url = '/v1/download/${id}';
    final $params = <String, dynamic>{'token': token};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1DownloadIdLinkPost(
      {required String? id, FileDownloadRequestModel? body}) {
    final $url = '/v1/download/${id}/link';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1DownloadLinksByParentPost(
      {String? parentId, FileDownloadRequestModel? body}) {
    final $url = '/v1/download/linksByParent';
    final $params = <String, dynamic>{'parentId': parentId};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1DownloadLinksPost(
      {FilesDownloadRequestModel? body}) {
    final $url = '/v1/download/links';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<FileResponseModelResponseList>> _v1FilesGet(
      {String? relatedObjectId, String? parentId, bool? getOriginUrl}) {
    final $url = '/v1/files';
    final $params = <String, dynamic>{
      'relatedObjectId': relatedObjectId,
      'parentId': parentId,
      'getOriginUrl': getOriginUrl
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<FileResponseModelResponseList,
        FileResponseModelResponseList>($request);
  }

  @override
  Future<Response<FileResponseModelResponseObject>> _v1FilesPost(
      {required List<String>? file,
      String? metaContent,
      List<String>? parentIds,
      String? id,
      String? parentId,
      String? name,
      String? type,
      List<LabelsObj>? labelsObjs,
      String? labels,
      String? imageUrl,
      String? description,
      Object? nodeTypeObj,
      String? metaContentType,
      List<MetadataValue>? metadataContentObj,
      List<MetadataValue>? metadataObj,
      String? ownerId,
      bool? isPublish,
      bool? isSearchable,
      String? aCLObjectObjectId,
      List<ACLItem>? aCLObjectACLItems,
      String? objectId,
      String? objectType,
      List<String>? relatedRoleCodeObjects,
      String? relatedRoleCode,
      List<String>? relatedObjectIdList,
      String? relatedBaseCategory,
      String? relatedFondId,
      String? relatedArchiveTypeId,
      String? relatedRecordCollectionId,
      String? relatedRecordId,
      String? relatedProjectId,
      String? relatedTaskId,
      String? relatedRespartnerId,
      String? relatedObject1,
      String? relatedObject1Type,
      String? relatedObject2,
      String? relatedObject2Type}) {
    final $url = '/v1/files';
    final $body = <String, dynamic>{
      'File': file,
      'MetaContent': metaContent,
      'ParentIds': parentIds,
      'Id': id,
      'ParentId': parentId,
      'Name': name,
      'Type': type,
      'LabelsObjs': labelsObjs,
      'Labels': labels,
      'ImageUrl': imageUrl,
      'Description': description,
      'NodeTypeObj': nodeTypeObj,
      'MetaContentType': metaContentType,
      'MetadataContentObj': metadataContentObj,
      'MetadataObj': metadataObj,
      'OwnerId': ownerId,
      'IsPublish': isPublish,
      'IsSearchable': isSearchable,
      'ACLObject.ObjectId': aCLObjectObjectId,
      'ACLObject.ACLItems': aCLObjectACLItems,
      'ObjectId': objectId,
      'ObjectType': objectType,
      'RelatedRoleCodeObjects': relatedRoleCodeObjects,
      'RelatedRoleCode': relatedRoleCode,
      'RelatedObjectIdList': relatedObjectIdList,
      'RelatedBaseCategory': relatedBaseCategory,
      'RelatedFondId': relatedFondId,
      'RelatedArchiveTypeId': relatedArchiveTypeId,
      'RelatedRecordCollectionId': relatedRecordCollectionId,
      'RelatedRecordId': relatedRecordId,
      'RelatedProjectId': relatedProjectId,
      'RelatedTaskId': relatedTaskId,
      'RelatedRespartnerId': relatedRespartnerId,
      'RelatedObject1': relatedObject1,
      'RelatedObject1Type': relatedObject1Type,
      'RelatedObject2': relatedObject2,
      'RelatedObject2Type': relatedObject2Type
    };
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<FileResponseModelResponseObject,
        FileResponseModelResponseObject>($request);
  }

  @override
  Future<Response<FileResponseModelResponsePagination>> _v1FilesAllGet(
      {String? parentId,
      String? relatedObjectId,
      int? page,
      int? size,
      String? filter,
      String? sort}) {
    final $url = '/v1/files/all';
    final $params = <String, dynamic>{
      'parentId': parentId,
      'relatedObjectId': relatedObjectId,
      'page': page,
      'size': size,
      'filter': filter,
      'sort': sort
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<FileResponseModelResponsePagination,
        FileResponseModelResponsePagination>($request);
  }

  @override
  Future<Response<FileResponseModelResponsePagination>> _v1FilesFilterGet(
      {int? page, int? size, String? filter, String? sort}) {
    final $url = '/v1/files/filter';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'filter': filter,
      'sort': sort
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<FileResponseModelResponsePagination,
        FileResponseModelResponsePagination>($request);
  }

  @override
  Future<Response<FileResponseModelResponseObject>> _v1FilesIdGet(
      {required String? id, bool? getOriginUrl}) {
    final $url = '/v1/files/${id}';
    final $params = <String, dynamic>{'getOriginUrl': getOriginUrl};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<FileResponseModelResponseObject,
        FileResponseModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseDelete>> _v1FilesIdDelete({required String? id}) {
    final $url = '/v1/files/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ResponseDelete, ResponseDelete>($request);
  }

  @override
  Future<Response<FileResponseModelResponseObject>> _v1FilesIdPut(
      {required String? id, ModifyFileRequestModel? body}) {
    final $url = '/v1/files/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<FileResponseModelResponseObject,
        FileResponseModelResponseObject>($request);
  }

  @override
  Future<Response<FileResponseModelResponseObject>> _v1FilesIdPatch(
      {required String? id, PatchUpdateFileRequestModel? body}) {
    final $url = '/v1/files/${id}';
    final $body = body;
    final $request = Request('PATCH', $url, client.baseUrl, body: $body);
    return client.send<FileResponseModelResponseObject,
        FileResponseModelResponseObject>($request);
  }

  @override
  Future<Response<FileResponseModelResponseObject>>
      _v1NodesParentIdFilesByNameNameGet(
          {required String? parentId,
          required String? name,
          bool? getOriginUrl}) {
    final $url = '/v1/nodes/${parentId}/files/by-name/${name}';
    final $params = <String, dynamic>{'getOriginUrl': getOriginUrl};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<FileResponseModelResponseObject,
        FileResponseModelResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>>
      _v1NodesParentIdFilesByNameNameIsNameExistGet(
          {required String? parentId, required String? name}) {
    final $url = '/v1/nodes/${parentId}/files/by-name/${name}/is-name-exist';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<ResponseDeleteMulti>> _v1FilesDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/files/delete/many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ResponseDeleteMulti, ResponseDeleteMulti>($request);
  }

  @override
  Future<Response<ACLObjectResponseList>> _v1FilesIdAclGet(
      {required String? id}) {
    final $url = '/v1/files/${id}/acl';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ACLObjectResponseList, ACLObjectResponseList>($request);
  }

  @override
  Future<Response<ACLObjectResponseList>> _v1FilesIdAclPut(
      {required String? id, ACLObject? body}) {
    final $url = '/v1/files/${id}/acl';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ACLObjectResponseList, ACLObjectResponseList>($request);
  }

  @override
  Future<Response<ACLObjectResponseList>> _v1FilesMultipleObjectIdObjectIdPatch(
      {required String? objectId, List<String>? body}) {
    final $url = '/v1/files/multiple/objectId/${objectId}';
    final $body = body;
    final $request = Request('PATCH', $url, client.baseUrl, body: $body);
    return client.send<ACLObjectResponseList, ACLObjectResponseList>($request);
  }

  @override
  Future<Response<ACLObjectResponseList>> _v1FilesMultiplePatch(
      {List<PatchUpdateFileRequestModel>? body}) {
    final $url = '/v1/files/multiple';
    final $body = body;
    final $request = Request('PATCH', $url, client.baseUrl, body: $body);
    return client.send<ACLObjectResponseList, ACLObjectResponseList>($request);
  }

  @override
  Future<Response<FileResponseModelResponseList>> _v1FilesMultiplePost(
      {required List<String>? files,
      String? metaContent,
      List<String>? parentIds,
      String? id,
      String? parentId,
      String? name,
      String? type,
      List<LabelsObj>? labelsObjs,
      String? labels,
      String? imageUrl,
      String? description,
      Object? nodeTypeObj,
      String? metaContentType,
      List<MetadataValue>? metadataContentObj,
      List<MetadataValue>? metadataObj,
      String? ownerId,
      bool? isPublish,
      bool? isSearchable,
      String? aCLObjectObjectId,
      List<ACLItem>? aCLObjectACLItems,
      String? objectId,
      String? objectType,
      List<String>? relatedRoleCodeObjects,
      String? relatedRoleCode,
      List<String>? relatedObjectIdList,
      String? relatedBaseCategory,
      String? relatedFondId,
      String? relatedArchiveTypeId,
      String? relatedRecordCollectionId,
      String? relatedRecordId,
      String? relatedProjectId,
      String? relatedTaskId,
      String? relatedRespartnerId,
      String? relatedObject1,
      String? relatedObject1Type,
      String? relatedObject2,
      String? relatedObject2Type}) {
    final $url = '/v1/files/multiple';
    final $body = <String, dynamic>{
      'Files': files,
      'MetaContent': metaContent,
      'ParentIds': parentIds,
      'Id': id,
      'ParentId': parentId,
      'Name': name,
      'Type': type,
      'LabelsObjs': labelsObjs,
      'Labels': labels,
      'ImageUrl': imageUrl,
      'Description': description,
      'NodeTypeObj': nodeTypeObj,
      'MetaContentType': metaContentType,
      'MetadataContentObj': metadataContentObj,
      'MetadataObj': metadataObj,
      'OwnerId': ownerId,
      'IsPublish': isPublish,
      'IsSearchable': isSearchable,
      'ACLObject.ObjectId': aCLObjectObjectId,
      'ACLObject.ACLItems': aCLObjectACLItems,
      'ObjectId': objectId,
      'ObjectType': objectType,
      'RelatedRoleCodeObjects': relatedRoleCodeObjects,
      'RelatedRoleCode': relatedRoleCode,
      'RelatedObjectIdList': relatedObjectIdList,
      'RelatedBaseCategory': relatedBaseCategory,
      'RelatedFondId': relatedFondId,
      'RelatedArchiveTypeId': relatedArchiveTypeId,
      'RelatedRecordCollectionId': relatedRecordCollectionId,
      'RelatedRecordId': relatedRecordId,
      'RelatedProjectId': relatedProjectId,
      'RelatedTaskId': relatedTaskId,
      'RelatedRespartnerId': relatedRespartnerId,
      'RelatedObject1': relatedObject1,
      'RelatedObject1Type': relatedObject1Type,
      'RelatedObject2': relatedObject2,
      'RelatedObject2Type': relatedObject2Type
    };
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<FileResponseModelResponseList,
        FileResponseModelResponseList>($request);
  }

  @override
  Future<Response<ACLObjectResponseList>> _v1FilesMultipleParentPatch(
      {List<PatchUpdateFilesParentRequestModel>? body}) {
    final $url = '/v1/files/multiple/parent';
    final $body = body;
    final $request = Request('PATCH', $url, client.baseUrl, body: $body);
    return client.send<ACLObjectResponseList, ACLObjectResponseList>($request);
  }

  @override
  Future<Response<ACLObjectResponseList>> _v1FilesMultipleMetadataPatch(
      {List<PatchUpdateFilesMetadataRequestModel>? body}) {
    final $url = '/v1/files/multiple/metadata';
    final $body = body;
    final $request = Request('PATCH', $url, client.baseUrl, body: $body);
    return client.send<ACLObjectResponseList, ACLObjectResponseList>($request);
  }

  @override
  Future<Response<StringResponseList>> _v1FilesIdRelatedObjectGet(
      {required String? id, String? relatedObjectId}) {
    final $url = '/v1/files/${id}/related-object';
    final $params = <String, dynamic>{'relatedObjectId': relatedObjectId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<StringResponseList, StringResponseList>($request);
  }

  @override
  Future<Response<StringResponseList>> _v1FilesIdRelatedObjectPost(
      {required String? id, String? relatedObjectId}) {
    final $url = '/v1/files/${id}/related-object';
    final $params = <String, dynamic>{'relatedObjectId': relatedObjectId};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<StringResponseList, StringResponseList>($request);
  }

  @override
  Future<Response<StringResponseList>>
      _v1FilesIdRelatedObjectRelatedObjectIdDelete(
          {required String? id, required String? relatedObjectId}) {
    final $url = '/v1/files/${id}/related-object/${relatedObjectId}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<StringResponseList, StringResponseList>($request);
  }

  @override
  Future<Response<FileResponseModelResponseList>>
      _v1FilesMultipleRelatedObjectsPost({List<FileObjectsRelation>? body}) {
    final $url = '/v1/files/multiple/related-objects';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<FileResponseModelResponseList,
        FileResponseModelResponseList>($request);
  }

  @override
  Future<Response<FileResponseModelResponseList>>
      _v1FilesMultipleRelatedObjectsPut({List<FileObjectsRelation>? body}) {
    final $url = '/v1/files/multiple/related-objects';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<FileResponseModelResponseList,
        FileResponseModelResponseList>($request);
  }

  @override
  Future<Response<FileResponseModelResponseList>> _v1FilesManyPost(
      {List<UploadFileRequestModel>? models}) {
    final $url = '/v1/files/many';
    final $body = <String, dynamic>{'models': models};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<FileResponseModelResponseList,
        FileResponseModelResponseList>($request);
  }

  @override
  Future<Response<FinanceInYearModelResponseObject>> _v1FinanceYearGet(
      {required int? year,
      int? version,
      List<String>? locationId,
      String? objectGroup}) {
    final $url = '/v1/finance/${year}';
    final $params = <String, dynamic>{
      'version': version,
      'locationId': locationId,
      'objectGroup': objectGroup
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<FinanceInYearModelResponseObject,
        FinanceInYearModelResponseObject>($request);
  }

  @override
  Future<Response<FinanceInYearModelResponseObject>>
      _v1FinanceYearLatestVersionGet(
          {required int? year, List<String>? locationId, String? objectGroup}) {
    final $url = '/v1/finance/${year}/latest-version';
    final $params = <String, dynamic>{
      'locationId': locationId,
      'objectGroup': objectGroup
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<FinanceInYearModelResponseObject,
        FinanceInYearModelResponseObject>($request);
  }

  @override
  Future<Response<FinanceResponseObject>> _v1FinanceApprovedYearPatch(
      {required int? year, int? version}) {
    final $url = '/v1/finance/approved/${year}';
    final $params = <String, dynamic>{'version': version};
    final $request =
        Request('PATCH', $url, client.baseUrl, parameters: $params);
    return client.send<FinanceResponseObject, FinanceResponseObject>($request);
  }

  @override
  Future<Response<FinanceResponseObject>> _v1FinanceAdjustedYearPatch(
      {required int? year, int? version}) {
    final $url = '/v1/finance/adjusted/${year}';
    final $params = <String, dynamic>{'version': version};
    final $request =
        Request('PATCH', $url, client.baseUrl, parameters: $params);
    return client.send<FinanceResponseObject, FinanceResponseObject>($request);
  }

  @override
  Future<Response<FinanceByLocationResponseObject>> _v1FinanceYearLocationIdGet(
      {required String? locationId, required int? year, int? version}) {
    final $url = '/v1/finance/${year}/${locationId}';
    final $params = <String, dynamic>{'version': version};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<FinanceByLocationResponseObject,
        FinanceByLocationResponseObject>($request);
  }

  @override
  Future<Response<FinanceByAttributeResponseObject>>
      _v1FinanceFinanceByAttributeGet(
          {String? locationId,
          String? attributeId,
          int? year,
          String? objectGroup,
          int? version}) {
    final $url = '/v1/finance/finance-by-attribute';
    final $params = <String, dynamic>{
      'locationId': locationId,
      'attributeId': attributeId,
      'year': year,
      'objectGroup': objectGroup,
      'version': version
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<FinanceByAttributeResponseObject,
        FinanceByAttributeResponseObject>($request);
  }

  @override
  Future<Response<dynamic>> _v1FinanceExportFileYearGet(
      {required int? year,
      int? version,
      List<String>? locationId,
      String? objectGroup}) {
    final $url = '/v1/finance/export-file/${year}';
    final $params = <String, dynamic>{
      'version': version,
      'locationId': locationId,
      'objectGroup': objectGroup
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<FinanceResponseObject>> _v1FinanceWorkflowUpdateIdPut(
      {required String? id, WorkflowFinaceUpdateModel? body}) {
    final $url = '/v1/finance/workflow-update/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<FinanceResponseObject, FinanceResponseObject>($request);
  }

  @override
  Future<Response<dynamic>> _v1FinanceListVersionYearGet({required int? year}) {
    final $url = '/v1/finance/list-version/${year}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ProductionMasterResponseObject>> _v1FinanceUpdateIdPost(
      {required String? id, Finance? body}) {
    final $url = '/v1/finance/update/${id}';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ProductionMasterResponseObject,
        ProductionMasterResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1FinanceSendEmailPost(
      {EmailBodyRequestModel? body}) {
    final $url = '/v1/finance/send-email';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreeHealthCheckGet() {
    final $url = '/v1/tree/health/check';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreeHealthDbcheckGet() {
    final $url = '/v1/tree/health/dbcheck';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ResponseUpdateMulti>> _v1IndexerTriggerPut() {
    final $url = '/v1/indexer/trigger';
    final $request = Request('PUT', $url, client.baseUrl);
    return client.send<ResponseUpdateMulti, ResponseUpdateMulti>($request);
  }

  @override
  Future<Response<ResponseUpdateMulti>> _v1IndexerTriggerIdGet(
      {required String? id}) {
    final $url = '/v1/indexer/trigger/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ResponseUpdateMulti, ResponseUpdateMulti>($request);
  }

  @override
  Future<Response<ObjectResponsePagination>> _v1LogsPost(
      {LogQueryModel? body}) {
    final $url = '/v1/logs';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<ObjectResponsePagination, ObjectResponsePagination>($request);
  }

  @override
  Future<Response<ObjectResponseObject>> _v1LogsIdGet({required String? id}) {
    final $url = '/v1/logs/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ObjectResponseObject, ObjectResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1LogsDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/logs/delete-many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<RoutingModelResponsePagination>> _v1NotebookGet(
      {int? currentPage, int? pageSize, String? type, String? queryString}) {
    final $url = '/v1/notebook';
    final $params = <String, dynamic>{
      'currentPage': currentPage,
      'pageSize': pageSize,
      'type': type,
      'queryString': queryString
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<RoutingModelResponsePagination,
        RoutingModelResponsePagination>($request);
  }

  @override
  Future<Response<RoutingModelResponseObject>> _v1NotebookPost(
      {RoutingModel? body}) {
    final $url = '/v1/notebook';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<RoutingModelResponseObject, RoutingModelResponseObject>($request);
  }

  @override
  Future<Response<RoutingResponseObject>> _v1NotebookIdGet(
      {required String? id}) {
    final $url = '/v1/notebook/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RoutingResponseObject, RoutingResponseObject>($request);
  }

  @override
  Future<Response<RoutingResponseObject>> _v1NotebookIdPut(
      {required String? id, RoutingModel? body}) {
    final $url = '/v1/notebook/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<RoutingResponseObject, RoutingResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1NotebookDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/notebook/delete/many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1NotebookCodeIsCodeAvailableGet(
      {required String? code, String? id}) {
    final $url = '/v1/notebook/${code}/is-code-available';
    final $params = <String, dynamic>{'id': id};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<PlanLaborModelResponseObject>> _v1PlanLaborProtectionIdGet(
      {required String? id}) {
    final $url = '/v1/plan-labor-protection/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<PlanLaborModelResponseObject,
        PlanLaborModelResponseObject>($request);
  }

  @override
  Future<Response<PlanLaborModelResponseObject>> _v1PlanLaborProtectionIdPut(
      {required String? id, PlanLaborModel? body}) {
    final $url = '/v1/plan-labor-protection/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<PlanLaborModelResponseObject,
        PlanLaborModelResponseObject>($request);
  }

  @override
  Future<Response<List<String>>>
      _v1PlanLaborProtectionGetListBaseCategoryAvailableDeletePost(
          {List<String>? body}) {
    final $url =
        '/v1/plan-labor-protection/get-list-base-category-available-delete';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<List<String>, String>($request);
  }

  @override
  Future<Response<PlanningResponseListModelResponseObject>>
      _v1PlanningPlanYearGet({required int? year, int? version}) {
    final $url = '/v1/planning/plan-${year}';
    final $params = <String, dynamic>{'version': version};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<PlanningResponseListModelResponseObject,
        PlanningResponseListModelResponseObject>($request);
  }

  @override
  Future<Response<dynamic>> _v1PlanningPlanYearPost({required int? year}) {
    final $url = '/v1/planning/plan-${year}';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<PlanningResponseListModelResponseObject>>
      _v1PlanningYearLatestVersionGet({required int? year}) {
    final $url = '/v1/planning/${year}/latest-version';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<PlanningResponseListModelResponseObject,
        PlanningResponseListModelResponseObject>($request);
  }

  @override
  Future<Response<PlanningModelOldResponseListResponseObject>>
      _v1PlanningYearLocationSrcIdGet(
          {required String? locationSrcId, required int? year, int? version}) {
    final $url = '/v1/planning/${year}/${locationSrcId}';
    final $params = <String, dynamic>{'version': version};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<PlanningModelOldResponseListResponseObject,
        PlanningModelOldResponseListResponseObject>($request);
  }

  @override
  Future<Response<PlanningModelResponseObject>> _v1PlanningIdGet(
      {required String? id}) {
    final $url = '/v1/planning/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<PlanningModelResponseObject,
        PlanningModelResponseObject>($request);
  }

  @override
  Future<Response<PlanningModelResponseObject>> _v1PlanningIdPut(
      {required String? id, PlanningModel? body}) {
    final $url = '/v1/planning/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<PlanningModelResponseObject,
        PlanningModelResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1PlanningApprovedIdVersionPatch(
      {required String? id, required int? version}) {
    final $url = '/v1/planning/approved/${id}/${version}';
    final $request = Request('PATCH', $url, client.baseUrl);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1PlanningAdjustIdVersionPatch(
      {required String? id, required int? version}) {
    final $url = '/v1/planning/adjust/${id}/${version}';
    final $request = Request('PATCH', $url, client.baseUrl);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<ProductionMasterResponseObject>> _v1PlanningCloneByYearPost(
      {PlanningCloneRequestModel? body}) {
    final $url = '/v1/planning/clone-by-year';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ProductionMasterResponseObject,
        ProductionMasterResponseObject>($request);
  }

  @override
  Future<Response<ProductionMasterResponseObject>>
      _v1PlanningCreateWithVersionPost({TreePlanningCreateModel? body}) {
    final $url = '/v1/planning/create-with-version';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ProductionMasterResponseObject,
        ProductionMasterResponseObject>($request);
  }

  @override
  Future<Response<ProductionMasterResponseObject>>
      _v1PlanningWorkflowUpdateIdPut(
          {required String? id, WorkflowUpdateModel? body}) {
    final $url = '/v1/planning/workflow-update/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ProductionMasterResponseObject,
        ProductionMasterResponseObject>($request);
  }

  @override
  Future<Response<ProductionMasterResponseObject>>
      _v1PlanningProductionMasterIdPost(
          {required String? id, ProductionMaster? body}) {
    final $url = '/v1/planning/production-master/${id}';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ProductionMasterResponseObject,
        ProductionMasterResponseObject>($request);
  }

  @override
  Future<Response<ProjectTaskPlanningResponseModel>>
      _v1PlanningCreateProjectPost({ProjectTaskPlanningCreateModel? body}) {
    final $url = '/v1/planning/create-project';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ProjectTaskPlanningResponseModel,
        ProjectTaskPlanningResponseModel>($request);
  }

  @override
  Future<Response<ProductionMasterResponseObject>> _v1PlanningReCreatePost(
      {ReCreatePlanningRequestModel? body}) {
    final $url = '/v1/planning/re-create';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ProductionMasterResponseObject,
        ProductionMasterResponseObject>($request);
  }

  @override
  Future<Response<ProductionResponsePagination>> _v1ProductionGet(
      {int? currentPage, int? pageSize, String? type, String? queryString}) {
    final $url = '/v1/production';
    final $params = <String, dynamic>{
      'currentPage': currentPage,
      'pageSize': pageSize,
      'type': type,
      'queryString': queryString
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ProductionResponsePagination,
        ProductionResponsePagination>($request);
  }

  @override
  Future<Response<ProductionResponseObject>> _v1ProductionPost(
      {Production? body}) {
    final $url = '/v1/production';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<ProductionResponseObject, ProductionResponseObject>($request);
  }

  @override
  Future<Response<ProductionResponseObject>> _v1ProductionIdGet(
      {required String? id}) {
    final $url = '/v1/production/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<ProductionResponseObject, ProductionResponseObject>($request);
  }

  @override
  Future<Response<ProductionResponseObject>> _v1ProductionIdPut(
      {required String? id, Production? body}) {
    final $url = '/v1/production/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client
        .send<ProductionResponseObject, ProductionResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1ProductionDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/production/delete/many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<ProjectViewModelResponsePagination>> _v1ProjectsGet(
      {String? parentId,
      String? refObjectId,
      List<String>? owners,
      int? page,
      int? size,
      String? sort,
      String? filter}) {
    final $url = '/v1/projects';
    final $params = <String, dynamic>{
      'parentId': parentId,
      'refObjectId': refObjectId,
      'owners': owners,
      'page': page,
      'size': size,
      'sort': sort,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ProjectViewModelResponsePagination,
        ProjectViewModelResponsePagination>($request);
  }

  @override
  Future<Response<ProjectViewModelResponseObject>> _v1ProjectsPost(
      {ProjectResquestModel? body}) {
    final $url = '/v1/projects';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ProjectViewModelResponseObject,
        ProjectViewModelResponseObject>($request);
  }

  @override
  Future<Response<ProjectViewModelResponseObject>> _v1ProjectsBycodeCodeGet(
      {required String? code}) {
    final $url = '/v1/projects/bycode/${code}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ProjectViewModelResponseObject,
        ProjectViewModelResponseObject>($request);
  }

  @override
  Future<Response<ProjectViewModelResponseObject>>
      _v1ProjectsRelatedObjectIdGet({required String? id}) {
    final $url = '/v1/projects/related-object/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ProjectViewModelResponseObject,
        ProjectViewModelResponseObject>($request);
  }

  @override
  Future<Response<ProjectViewModelResponseObject>> _v1ProjectsIdGet(
      {required String? id}) {
    final $url = '/v1/projects/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ProjectViewModelResponseObject,
        ProjectViewModelResponseObject>($request);
  }

  @override
  Future<Response<ProjectViewModelResponseObject>> _v1ProjectsIdPut(
      {required String? id, ProjectResquestModel? body}) {
    final $url = '/v1/projects/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ProjectViewModelResponseObject,
        ProjectViewModelResponseObject>($request);
  }

  @override
  Future<Response<ProjectViewModelResponseObject>> _v1ProjectsIdPatch(
      {required String? id, ProjectPatchResquestModel? body}) {
    final $url = '/v1/projects/${id}';
    final $body = body;
    final $request = Request('PATCH', $url, client.baseUrl, body: $body);
    return client.send<ProjectViewModelResponseObject,
        ProjectViewModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseDelete>> _v1ProjectsIdDelete({required String? id}) {
    final $url = '/v1/projects/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ResponseDelete, ResponseDelete>($request);
  }

  @override
  Future<Response<ProjectViewModelResponseObject>> _v1ProjectsIdStatusPut(
      {required String? id, dynamic body}) {
    final $url = '/v1/projects/${id}/status';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ProjectViewModelResponseObject,
        ProjectViewModelResponseObject>($request);
  }

  @override
  Future<Response<ProjectViewModelResponseObject>> _v1ProjectsIdOrderPut(
      {required String? id, int? body}) {
    final $url = '/v1/projects/${id}/order';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ProjectViewModelResponseObject,
        ProjectViewModelResponseObject>($request);
  }

  @override
  Future<Response<ProjectViewModelResponseObject>> _v1ProjectsIdParentPut(
      {required String? id, ProjectUpdateParentModel? body}) {
    final $url = '/v1/projects/${id}/parent';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ProjectViewModelResponseObject,
        ProjectViewModelResponseObject>($request);
  }

  @override
  Future<Response<ProjectViewModelResponseList>> _v1ProjectsManyPatch(
      {List<ProjectPatchResquestModel>? body}) {
    final $url = '/v1/projects/many';
    final $body = body;
    final $request = Request('PATCH', $url, client.baseUrl, body: $body);
    return client.send<ProjectViewModelResponseList,
        ProjectViewModelResponseList>($request);
  }

  @override
  Future<Response<ResponseDelete>> _v1ProjectsByCodeCodeDelete(
      {required String? code}) {
    final $url = '/v1/projects/by-code/${code}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ResponseDelete, ResponseDelete>($request);
  }

  @override
  Future<Response<ResponseDeleteMulti>> _v1ProjectsDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/projects/delete-many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ResponseDeleteMulti, ResponseDeleteMulti>($request);
  }

  @override
  Future<Response<ResponseDeleteMulti>> _v1ProjectsDeleteManyByCodePost(
      {List<String>? body}) {
    final $url = '/v1/projects/delete-many-by-code';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ResponseDeleteMulti, ResponseDeleteMulti>($request);
  }

  @override
  Future<Response<ProjectViewModelResponseObject>> _v1ProjectsIdTasksGet(
      {required String? id,
      int? page,
      int? size,
      String? sort,
      String? filter}) {
    final $url = '/v1/projects/${id}/tasks';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ProjectViewModelResponseObject,
        ProjectViewModelResponseObject>($request);
  }

  @override
  Future<Response<PMProjectResponseObject>> _v1ProjectsIdClonePost(
      {required String? id, ProjectCloneRequestModel? body}) {
    final $url = '/v1/projects/${id}/clone';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<PMProjectResponseObject, PMProjectResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponseList>>
      _v1ProjectsGenerateTaskByTemplatePost(
          {TaskGenerateByTempResquestModel? body}) {
    final $url = '/v1/projects/generate-task-by-template';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<TaskViewModelResponseList, TaskViewModelResponseList>($request);
  }

  @override
  Future<Response<ResponseUpdateMulti>> _v1ProjectsReorderJobTriggerPut() {
    final $url = '/v1/projects/reorder-job/trigger';
    final $request = Request('PUT', $url, client.baseUrl);
    return client.send<ResponseUpdateMulti, ResponseUpdateMulti>($request);
  }

  @override
  Future<Response<ResponseUpdateMulti>> _v1ProjectsJobIdGet(
      {required String? id}) {
    final $url = '/v1/projects/job/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ResponseUpdateMulti, ResponseUpdateMulti>($request);
  }

  @override
  Future<Response<QRResponseModelResponsePagination>> _v1QrcodesGet(
      {List<String>? relatedObject,
      int? page,
      int? size,
      String? sort,
      String? filter}) {
    final $url = '/v1/qrcodes';
    final $params = <String, dynamic>{
      'relatedObject': relatedObject,
      'page': page,
      'size': size,
      'sort': sort,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<QRResponseModelResponsePagination,
        QRResponseModelResponsePagination>($request);
  }

  @override
  Future<Response<QRResponseModelResponseObject>> _v1QrcodesPost(
      {QRCodeRequestModel? body}) {
    final $url = '/v1/qrcodes';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<QRResponseModelResponseObject,
        QRResponseModelResponseObject>($request);
  }

  @override
  Future<Response<QRResponseModelResponseList>> _v1QrcodesIdGet(
      {required String? id}) {
    final $url = '/v1/qrcodes/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<QRResponseModelResponseList,
        QRResponseModelResponseList>($request);
  }

  @override
  Future<Response<QRResponseModelResponseObject>> _v1QrcodesIdPut(
      {required String? id, QRCodeRequestModel? body}) {
    final $url = '/v1/qrcodes/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<QRResponseModelResponseObject,
        QRResponseModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseDelete>> _v1QrcodesIdDelete({required String? id}) {
    final $url = '/v1/qrcodes/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ResponseDelete, ResponseDelete>($request);
  }

  @override
  Future<Response<RelatedObjResponseList>> _v1QrcodesIdRelatedObjectsGet(
      {required String? id}) {
    final $url = '/v1/qrcodes/${id}/related-objects';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<RelatedObjResponseList, RelatedObjResponseList>($request);
  }

  @override
  Future<Response<QRResponseModelResponseList>> _v1QrcodesManyPost(
      {List<QRCodeRequestModel>? body}) {
    final $url = '/v1/qrcodes/many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<QRResponseModelResponseList,
        QRResponseModelResponseList>($request);
  }

  @override
  Future<Response<QRResponseModelResponseList>> _v1QrcodesGetByLotIdLotIdGet(
      {required String? lotId}) {
    final $url = '/v1/qrcodes/get-by-lotId/${lotId}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<QRResponseModelResponseList,
        QRResponseModelResponseList>($request);
  }

  @override
  Future<Response<QRResponseModelResponseList>>
      _v1QrcodesGetByQrcodeIdReferenceIdProductTpmIdAttributeIdGet(
          {required String? referenceId,
          required String? productTpmId,
          required String? attributeId}) {
    final $url =
        '/v1/qrcodes/get-by-qrcodeId/${referenceId}/${productTpmId}/${attributeId}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<QRResponseModelResponseList,
        QRResponseModelResponseList>($request);
  }

  @override
  Future<Response<ResponseDeleteMulti>> _v1QrcodesDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/qrcodes/delete-many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ResponseDeleteMulti, ResponseDeleteMulti>($request);
  }

  @override
  Future<Response<ReactionResponseObject>> _v1ReactionIdGet(
      {required String? id}) {
    final $url = '/v1/reaction/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<ReactionResponseObject, ReactionResponseObject>($request);
  }

  @override
  Future<Response<ReactionResponseObject>> _v1ReactionIdPut(
      {required String? id, ReactionRequestModel? body}) {
    final $url = '/v1/reaction/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client
        .send<ReactionResponseObject, ReactionResponseObject>($request);
  }

  @override
  Future<Response<ReactionResponseObject>> _v1ReactionIdDelete(
      {required String? id}) {
    final $url = '/v1/reaction/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client
        .send<ReactionResponseObject, ReactionResponseObject>($request);
  }

  @override
  Future<Response<ReactionResponsePagination>> _v1ReactionGet(
      {String? objectId,
      String? objectIds,
      int? page,
      int? size,
      String? sort,
      String? queryString,
      String? filter}) {
    final $url = '/v1/reaction';
    final $params = <String, dynamic>{
      'objectId': objectId,
      'objectIds': objectIds,
      'page': page,
      'size': size,
      'sort': sort,
      'queryString': queryString,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<ReactionResponsePagination, ReactionResponsePagination>($request);
  }

  @override
  Future<Response<ReactionResponseObject>> _v1ReactionPost(
      {ReactionRequestModel? body}) {
    final $url = '/v1/reaction';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<ReactionResponseObject, ReactionResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1ReactionDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/reaction/delete/many';
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
  Future<Response<Int64ResponseObject>> _v1SettingsMaxFileSizeGet() {
    final $url = '/v1/settings/max-file-size';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Int64ResponseObject, Int64ResponseObject>($request);
  }

  @override
  Future<Response<StringArrayResponseObject>> _v1SettingsSupportTypesGet() {
    final $url = '/v1/settings/support-types';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<StringArrayResponseObject, StringArrayResponseObject>($request);
  }

  @override
  Future<Response<StringResponseObject>> _v1SettingsStorageProviderGet() {
    final $url = '/v1/settings/storage-provider';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<StringResponseObject, StringResponseObject>($request);
  }

  @override
  Future<Response<SysParamModelResponsePagination>> _v1SysParamsGet(
      {int? page, int? size, String? sort, String? filter}) {
    final $url = '/v1/sys-params';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<SysParamModelResponsePagination,
        SysParamModelResponsePagination>($request);
  }

  @override
  Future<Response<SysParamModelResponseObject>> _v1SysParamsPost(
      {SysParamRequestModel? body}) {
    final $url = '/v1/sys-params';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<SysParamModelResponseObject,
        SysParamModelResponseObject>($request);
  }

  @override
  Future<Response<SysParamModelResponsePagination>> _v1UiSettingsParamsGet(
      {String? applicationId,
      int? page,
      int? size,
      String? sort,
      String? filter}) {
    final $url = '/v1/ui-settings-params';
    final $params = <String, dynamic>{
      'applicationId': applicationId,
      'page': page,
      'size': size,
      'sort': sort,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<SysParamModelResponsePagination,
        SysParamModelResponsePagination>($request);
  }

  @override
  Future<Response<SysParamModelResponsePagination>>
      _v1SysParamsCategoryParamsGet(
          {required String? category,
          int? page,
          int? size,
          String? sort,
          String? parentAppId,
          String? filter}) {
    final $url = '/v1/sys-params/${category}/params';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
      'parentAppId': parentAppId,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<SysParamModelResponsePagination,
        SysParamModelResponsePagination>($request);
  }

  @override
  Future<Response<SysParamModelResponseObject>> _v1SysParamsIdGet(
      {required String? id}) {
    final $url = '/v1/sys-params/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SysParamModelResponseObject,
        SysParamModelResponseObject>($request);
  }

  @override
  Future<Response<SysParamModelResponseObject>> _v1SysParamsIdPut(
      {required String? id, SysParamRequestModel? body}) {
    final $url = '/v1/sys-params/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<SysParamModelResponseObject,
        SysParamModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseDelete>> _v1SysParamsIdDelete({required String? id}) {
    final $url = '/v1/sys-params/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ResponseDelete, ResponseDelete>($request);
  }

  @override
  Future<Response<SysParamModelResponseObject>> _v1SysParamsByKeyParamKeyGet(
      {required String? paramKey}) {
    final $url = '/v1/sys-params/by-key/${paramKey}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SysParamModelResponseObject,
        SysParamModelResponseObject>($request);
  }

  @override
  Future<Response<SysParamModelResponseObject>>
      _v1SysParamsByValueParamValueGet({required String? paramValue}) {
    final $url = '/v1/sys-params/by-value/${paramValue}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SysParamModelResponseObject,
        SysParamModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseDeleteMulti>> _v1SysParamsDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/sys-params/delete/many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ResponseDeleteMulti, ResponseDeleteMulti>($request);
  }

  @override
  Future<Response<SysParamCategoryModelResponsePagination>>
      _v1SysParamCategoriesGet(
          {int? page, int? size, String? sort, String? filter}) {
    final $url = '/v1/sys-param-categories';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<SysParamCategoryModelResponsePagination,
        SysParamCategoryModelResponsePagination>($request);
  }

  @override
  Future<Response<SysParamCategoryResponseObject>> _v1SysParamCategoriesPost(
      {SysParamCategoryModel? body}) {
    final $url = '/v1/sys-param-categories';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<SysParamCategoryResponseObject,
        SysParamCategoryResponseObject>($request);
  }

  @override
  Future<Response<SysParamCategoryResponseObject>> _v1SysParamCategoriesIdGet(
      {required String? id}) {
    final $url = '/v1/sys-param-categories/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SysParamCategoryResponseObject,
        SysParamCategoryResponseObject>($request);
  }

  @override
  Future<Response<SysParamCategoryResponseObject>> _v1SysParamCategoriesIdPut(
      {required String? id, SysParamCategoryRequestModel? body}) {
    final $url = '/v1/sys-param-categories/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<SysParamCategoryResponseObject,
        SysParamCategoryResponseObject>($request);
  }

  @override
  Future<Response<SysParamCategoryResponseObject>>
      _v1SysParamCategoriesIdDelete({required String? id}) {
    final $url = '/v1/sys-param-categories/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<SysParamCategoryResponseObject,
        SysParamCategoryResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1SysParamCategoriesDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/sys-param-categories/delete/many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponsePagination>> _v1TasksGet(
      {String? projectId,
      String? refObjectId,
      String? parentAppId,
      String? refType,
      String? refAction,
      List<String>? types,
      List<dynamic>? statusObjs,
      List<String>? userObj,
      List<String>? managementObj,
      List<String>? ownerObj,
      List<String>? supervisorObj,
      List<String>? coordinatorObj,
      List<String>? assigneeObj,
      String? dateFrom,
      String? dateTo,
      int? page,
      int? size,
      String? sort,
      String? filter}) {
    final $url = '/v1/tasks';
    final $params = <String, dynamic>{
      'projectId': projectId,
      'refObjectId': refObjectId,
      'parentAppId': parentAppId,
      'refType': refType,
      'refAction': refAction,
      'types': types,
      'statusObjs': statusObjs,
      'userObj': userObj,
      'managementObj': managementObj,
      'ownerObj': ownerObj,
      'supervisorObj': supervisorObj,
      'coordinatorObj': coordinatorObj,
      'assigneeObj': assigneeObj,
      'dateFrom': dateFrom,
      'dateTo': dateTo,
      'page': page,
      'size': size,
      'sort': sort,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<TaskViewModelResponsePagination,
        TaskViewModelResponsePagination>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>> _v1TasksPost(
      {TaskResquestModel? body}) {
    final $url = '/v1/tasks';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>> _v1TasksBycodeCodeGet(
      {required String? code}) {
    final $url = '/v1/tasks/bycode/${code}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>> _v1TasksIdGet(
      {required String? id}) {
    final $url = '/v1/tasks/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>> _v1TasksIdPut(
      {required String? id, TaskResquestModel? body}) {
    final $url = '/v1/tasks/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>> _v1TasksIdPatch(
      {required String? id, TaskPatchResquestModel? body}) {
    final $url = '/v1/tasks/${id}';
    final $body = body;
    final $request = Request('PATCH', $url, client.baseUrl, body: $body);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseDelete>> _v1TasksIdDelete({required String? id}) {
    final $url = '/v1/tasks/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ResponseDelete, ResponseDelete>($request);
  }

  @override
  Future<Response<TaskViewModelResponsePagination>>
      _v1TasksGetByProjectProjectIdGet(
          {required String? projectId,
          int? page,
          int? size,
          String? sort,
          String? filter}) {
    final $url = '/v1/tasks/get-by-project/${projectId}';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<TaskViewModelResponsePagination,
        TaskViewModelResponsePagination>($request);
  }

  @override
  Future<Response<TaskViewModelResponseList>> _v1TasksManyPost(
      {List<TaskResquestModel>? body}) {
    final $url = '/v1/tasks/many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<TaskViewModelResponseList, TaskViewModelResponseList>($request);
  }

  @override
  Future<Response<TaskViewModelResponseList>> _v1TasksManyPatch(
      {List<TaskPatchResquestModel>? body}) {
    final $url = '/v1/tasks/many';
    final $body = body;
    final $request = Request('PATCH', $url, client.baseUrl, body: $body);
    return client
        .send<TaskViewModelResponseList, TaskViewModelResponseList>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>> _v1TasksParentTaskIdSubtasksGet(
      {required String? parentTaskId,
      int? page,
      int? size,
      String? sort,
      String? filter}) {
    final $url = '/v1/tasks/${parentTaskId}/subtasks';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>>
      _v1TasksParentTaskIdSubtasksPost(
          {required String? parentTaskId, TaskResquestModel? body}) {
    final $url = '/v1/tasks/${parentTaskId}/subtasks';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>>
      _v1TasksParentTaskIdSubtasksManyPost(
          {required String? parentTaskId, List<TaskResquestModel>? body}) {
    final $url = '/v1/tasks/${parentTaskId}/subtasks/many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseDelete>> _v1TasksParentTaskIdSubtasksLinkIdDelete(
      {required String? parentTaskId, required int? linkId}) {
    final $url = '/v1/tasks/${parentTaskId}/subtasks/${linkId}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ResponseDelete, ResponseDelete>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>> _v1TasksTaskIdLinksGet(
      {required String? taskId}) {
    final $url = '/v1/tasks/${taskId}/links';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>> _v1TasksTaskIdLinksPost(
      {required String? taskId, TaskRelationResquestModel? body}) {
    final $url = '/v1/tasks/${taskId}/links';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>> _v1TasksTaskIdLinksLinkIdDelete(
      {required String? taskId, required int? linkId}) {
    final $url = '/v1/tasks/${taskId}/links/${linkId}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>> _v1TasksIdManagementPut(
      {required String? id, TaskManagementResquestModel? body}) {
    final $url = '/v1/tasks/${id}/management';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<GuidListResponseObject>> _v1TasksIdOwnerPut(
      {required String? id, TaskOwnerResquestModel? body}) {
    final $url = '/v1/tasks/${id}/owner';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client
        .send<GuidListResponseObject, GuidListResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>> _v1TasksIdSupervisorPut(
      {required String? id, TaskSupervisorResquestModel? body}) {
    final $url = '/v1/tasks/${id}/supervisor';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>> _v1TasksIdCoordinatorPut(
      {required String? id, TaskCorrdinatorResquestModel? body}) {
    final $url = '/v1/tasks/${id}/coordinator';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>> _v1TasksIdAssigneePut(
      {required String? id, TaskAssigneeResquestModel? body}) {
    final $url = '/v1/tasks/${id}/assignee';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>> _v1TasksIdStatusPut(
      {required String? id, dynamic body}) {
    final $url = '/v1/tasks/${id}/status';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>> _v1TasksIdOrderPut(
      {required String? id, int? body}) {
    final $url = '/v1/tasks/${id}/order';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseDelete>> _v1TasksByCodeCodeDelete(
      {required String? code}) {
    final $url = '/v1/tasks/by-code/${code}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ResponseDelete, ResponseDelete>($request);
  }

  @override
  Future<Response<ResponseDeleteMulti>> _v1TasksDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/tasks/delete-many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ResponseDeleteMulti, ResponseDeleteMulti>($request);
  }

  @override
  Future<Response<ResponseDeleteMulti>> _v1TasksDeleteManyByCodePost(
      {List<String>? body}) {
    final $url = '/v1/tasks/delete-many-by-code';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ResponseDeleteMulti, ResponseDeleteMulti>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>> _v1TasksLinkExternalObjectPut(
      {TaskExternalLinkModel? body}) {
    final $url = '/v1/tasks/link-external-object';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>>
      _v1TasksTaskIdUnlinkExternalObjectPut({required String? taskId}) {
    final $url = '/v1/tasks/${taskId}/unlink-external-object';
    final $request = Request('PUT', $url, client.baseUrl);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>>
      _v1TasksObjectIdExternalLinksGet(
          {required String? objectId, String? parentAppId}) {
    final $url = '/v1/tasks/${objectId}/external-links';
    final $params = <String, dynamic>{'parentAppId': parentAppId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>> _v1TasksMarkTaskDonePut(
      {TaskExternalLinkModel? body}) {
    final $url = '/v1/tasks/mark-task-done';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseUpdateMulti>> _v1TasksReorderJobTriggerPut(
      {String? projectId}) {
    final $url = '/v1/tasks/reorder-job/trigger';
    final $params = <String, dynamic>{'projectId': projectId};
    final $request = Request('PUT', $url, client.baseUrl, parameters: $params);
    return client.send<ResponseUpdateMulti, ResponseUpdateMulti>($request);
  }

  @override
  Future<Response<ResponseUpdateMulti>> _v1TasksJobIdGet(
      {required String? id}) {
    final $url = '/v1/tasks/job/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ResponseUpdateMulti, ResponseUpdateMulti>($request);
  }

  @override
  Future<Response<TemplateViewModelResponsePagination>> _v1TemplateGet(
      {int? page, int? size, String? sort, String? filter}) {
    final $url = '/v1/template';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
      'filter': filter
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<TemplateViewModelResponsePagination,
        TemplateViewModelResponsePagination>($request);
  }

  @override
  Future<Response<TemplateViewModelResponseObject>> _v1TemplatePost(
      {TemplateResquestModel? body}) {
    final $url = '/v1/template';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<TemplateViewModelResponseObject,
        TemplateViewModelResponseObject>($request);
  }

  @override
  Future<Response<TemplateViewModelResponseObject>> _v1TemplateIdGet(
      {required String? id}) {
    final $url = '/v1/template/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<TemplateViewModelResponseObject,
        TemplateViewModelResponseObject>($request);
  }

  @override
  Future<Response<TemplateViewModelResponseObject>> _v1TemplateIdPut(
      {required String? id, TemplateResquestModel? body}) {
    final $url = '/v1/template/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<TemplateViewModelResponseObject,
        TemplateViewModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseDelete>> _v1TemplateIdDelete({required String? id}) {
    final $url = '/v1/template/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ResponseDelete, ResponseDelete>($request);
  }

  @override
  Future<Response<TaskViewModelResponseList>> _v1TemplateIdTasksGet(
      {required String? id}) {
    final $url = '/v1/template/${id}/tasks';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<TaskViewModelResponseList, TaskViewModelResponseList>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>> _v1TemplateIdTasksPost(
      {required String? id, String? taskId, TaskBaseModel? body}) {
    final $url = '/v1/template/${id}/tasks';
    final $params = <String, dynamic>{'taskId': taskId};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, parameters: $params);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelListResponseObject>> _v1TemplateIdTasksPut(
      {required String? id, List<TaskBaseModel>? body}) {
    final $url = '/v1/template/${id}/tasks';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<TaskViewModelListResponseObject,
        TaskViewModelListResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponseList>> _v1TemplateBycodeCodeGet(
      {required String? code}) {
    final $url = '/v1/template/bycode/${code}';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<TaskViewModelResponseList, TaskViewModelResponseList>($request);
  }

  @override
  Future<Response<TaskViewModelResponseObject>> _v1TemplateIdTasksTaskIdGet(
      {required String? id, required String? taskId}) {
    final $url = '/v1/template/${id}/tasks/${taskId}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<TaskViewModelResponseObject,
        TaskViewModelResponseObject>($request);
  }

  @override
  Future<Response<TaskBaseModelResponseObject>> _v1TemplateIdTasksTaskIdPut(
      {required String? id, required String? taskId, TaskBaseModel? body}) {
    final $url = '/v1/template/${id}/tasks/${taskId}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<TaskBaseModelResponseObject,
        TaskBaseModelResponseObject>($request);
  }

  @override
  Future<Response<TaskBaseModelResponseObject>> _v1TemplateIdTasksTaskIdPatch(
      {required String? id,
      required String? taskId,
      TaskPatchResquestModel? body}) {
    final $url = '/v1/template/${id}/tasks/${taskId}';
    final $body = body;
    final $request = Request('PATCH', $url, client.baseUrl, body: $body);
    return client.send<TaskBaseModelResponseObject,
        TaskBaseModelResponseObject>($request);
  }

  @override
  Future<Response<ResponseDeleteMulti>> _v1TemplateDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/template/delete-many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ResponseDeleteMulti, ResponseDeleteMulti>($request);
  }

  @override
  Future<Response<TemplateViewModelResponseObject>> _v1TemplateIdClonePost(
      {required String? id, TaskTemplateRequestModel? body}) {
    final $url = '/v1/template/${id}/clone';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<TemplateViewModelResponseObject,
        TemplateViewModelResponseObject>($request);
  }

  @override
  Future<Response<TemplateViewModelResponseObject>>
      _v1TasksTaskIdExportTemplatePost(
          {required String? taskId, TaskTemplateResquestModel? body}) {
    final $url = '/v1/tasks/${taskId}/export-template';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<TemplateViewModelResponseObject,
        TemplateViewModelResponseObject>($request);
  }

  @override
  Future<Response<TemplateViewModelResponseObject>>
      _v1TasksTaskIdExportTaskTemplatePost(
          {required String? taskId, TaskTemplateResquestModel? body}) {
    final $url = '/v1/tasks/${taskId}/export-task-template';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<TemplateViewModelResponseObject,
        TemplateViewModelResponseObject>($request);
  }

  @override
  Future<Response<TemplateViewModelResponseObject>>
      _v1TasksTaskIdExportChildrenTasksTemplatePost(
          {required String? taskId, TaskTemplateResquestModel? body}) {
    final $url = '/v1/tasks/${taskId}/export-children-tasks-template';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<TemplateViewModelResponseObject,
        TemplateViewModelResponseObject>($request);
  }

  @override
  Future<Response<TaskViewModelResponseList>>
      _v1ProjectsProjectIdImportTemplatePost(
          {required String? projectId, ImportTaskRequestModel? body}) {
    final $url = '/v1/projects/${projectId}/import-template';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<TaskViewModelResponseList, TaskViewModelResponseList>($request);
  }

  @override
  Future<Response<TaskViewModelResponseList>>
      _v1TasksParentTaskIdImportTemplatePost(
          {required String? parentTaskId, ImportTaskRequestModel? body}) {
    final $url = '/v1/tasks/${parentTaskId}/import-template';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<TaskViewModelResponseList, TaskViewModelResponseList>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingPost(
      {CreateTreePickingDetailModel? body}) {
    final $url = '/v1/tree-picking';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingGet(
      {String? queryString, String? productTmpId, String? referenceId}) {
    final $url = '/v1/tree-picking';
    final $params = <String, dynamic>{
      'queryString': queryString,
      'productTmpId': productTmpId,
      'referenceId': referenceId
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingCreateLotPost(
      {CreateTreePickingLotRequestModel? body}) {
    final $url = '/v1/tree-picking/create-lot';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingGetChildQuantityGet(
      {String? locationId, String? objectId, String? referenceId}) {
    final $url = '/v1/tree-picking/get-child-quantity';
    final $params = <String, dynamic>{
      'locationId': locationId,
      'objectId': objectId,
      'referenceId': referenceId
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingDetailGet(
      {String? locationId, String? objectId, String? referenceId}) {
    final $url = '/v1/tree-picking/detail';
    final $params = <String, dynamic>{
      'locationId': locationId,
      'objectId': objectId,
      'referenceId': referenceId
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingConfirmPickingPost(
      {List<String>? body}) {
    final $url = '/v1/tree-picking/confirm-picking';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingTreeTransferPost(
      {TreeStockTransferModel? body}) {
    final $url = '/v1/tree-picking/tree-transfer';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingTreeGrownPost(
      {TreeGrownCreateRequestModel? body}) {
    final $url = '/v1/tree-picking/tree-grown';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingTreeGrowthLotIdGet(
      {required String? lotId}) {
    final $url = '/v1/tree-picking/tree-growth/${lotId}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingTreeTransferHistoryLotIdGet(
      {required String? lotId}) {
    final $url = '/v1/tree-picking/tree-transfer-history/${lotId}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingTreeAdjustmentPost(
      {CreateTreeInventoryAdjustmentRequest? body}) {
    final $url = '/v1/tree-picking/tree-adjustment';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingStockLotLotIdPut(
      {required String? lotId,
      bool? isMark,
      String? lotName,
      String? description}) {
    final $url = '/v1/tree-picking/stock-lot/${lotId}';
    final $params = <String, dynamic>{
      'isMark': isMark,
      'lotName': lotName,
      'description': description
    };
    final $request = Request('PUT', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingDeleteTreePost(
      {TreeStockTransferModel? body}) {
    final $url = '/v1/tree-picking/delete-tree';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingMarkTreeDiePost(
      {TreeStockTransferModel? body}) {
    final $url = '/v1/tree-picking/mark-tree-die';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingReplaceTreePost(
      {ReplaceTreeRequestModel? body}) {
    final $url = '/v1/tree-picking/replace-tree';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingExportFileReferencePost(
      {TreeStockOnHandExtendQueryModel? body}) {
    final $url = '/v1/tree-picking/export-file/reference';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingExportFileLocationGet(
      {String? statusId}) {
    final $url = '/v1/tree-picking/export-file/location';
    final $params = <String, dynamic>{'statusId': statusId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingExportFileGroupTreeGet(
      {String? referenceId}) {
    final $url = '/v1/tree-picking/export-file/group-tree';
    final $params = <String, dynamic>{'referenceId': referenceId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingReportGroupTreeGet(
      {String? referenceId}) {
    final $url = '/v1/tree-picking/report-group-tree';
    final $params = <String, dynamic>{'referenceId': referenceId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingReportDistributedTreeGet() {
    final $url = '/v1/tree-picking/report-distributed-tree';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingReportByGroupTreeGet(
      {String? productAttributeId}) {
    final $url = '/v1/tree-picking/report-by-group-tree';
    final $params = <String, dynamic>{'productAttributeId': productAttributeId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingExportFileDistributedTreeGet() {
    final $url = '/v1/tree-picking/export-file/distributed-tree';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingExportFileByGroupTreeGet(
      {String? productAttributeId}) {
    final $url = '/v1/tree-picking/export-file/by-group-tree';
    final $params = <String, dynamic>{'productAttributeId': productAttributeId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1TreePickingGetTreeQuanlityByOwnerGet() {
    final $url = '/v1/tree-picking/get-tree-quanlity-by-owner';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<TreeStockOnHand>>> _v1TreeStockOnHandUpdateObjnamePost(
      {TreeStockOnHandUpdateModel? body}) {
    final $url = '/v1/tree-stock-on-hand/update-objname';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<List<TreeStockOnHand>, TreeStockOnHand>($request);
  }

  @override
  Future<Response<List<String>>>
      _v1TreeStockOnHandGetListProductTemplateAvailableDeletePost(
          {List<String>? body}) {
    final $url =
        '/v1/tree-stock-on-hand/get-list-product-template-available-delete';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<List<String>, String>($request);
  }

  @override
  Future<Response<FileResponseModelResponseObject>> _v1UploadImagePost(
      {required List<String>? file}) {
    final $url = '/v1/upload/image';
    final $body = <String, dynamic>{'File': file};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<FileResponseModelResponseObject,
        FileResponseModelResponseObject>($request);
  }

  @override
  Future<Response<FileResponseModelResponseList>> _v1UploadPost(
      {required List<String>? file}) {
    final $url = '/v1/upload';
    final $body = <String, dynamic>{'File': file};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<FileResponseModelResponseList,
        FileResponseModelResponseList>($request);
  }

  @override
  Future<Response<FileResponseModelResponseList>> _v1UploadMultiplePost(
      {required List<String>? file}) {
    final $url = '/v1/upload/multiple';
    final $body = <String, dynamic>{'File': file};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<FileResponseModelResponseList,
        FileResponseModelResponseList>($request);
  }

  @override
  Future<Response<WorkCenterResponsePagination>> _v1WorkCenterGet(
      {int? currentPage, int? pageSize, String? type, String? queryString}) {
    final $url = '/v1/work-center';
    final $params = <String, dynamic>{
      'currentPage': currentPage,
      'pageSize': pageSize,
      'type': type,
      'queryString': queryString
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<WorkCenterResponsePagination,
        WorkCenterResponsePagination>($request);
  }

  @override
  Future<Response<WorkCenterModelResponseObject>> _v1WorkCenterPost(
      {WorkCenter? body}) {
    final $url = '/v1/work-center';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<WorkCenterModelResponseObject,
        WorkCenterModelResponseObject>($request);
  }

  @override
  Future<Response<WorkCenterModelResponseObject>> _v1WorkCenterIdGet(
      {required String? id}) {
    final $url = '/v1/work-center/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<WorkCenterModelResponseObject,
        WorkCenterModelResponseObject>($request);
  }

  @override
  Future<Response<WorkCenterResponseObject>> _v1WorkCenterIdPut(
      {required String? id, WorkCenter? body}) {
    final $url = '/v1/work-center/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client
        .send<WorkCenterResponseObject, WorkCenterResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1WorkCenterDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/work-center/delete/many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>>
      _v1WorkCenterCheckCodeAvailableCodeGet(
          {required String? code, String? id}) {
    final $url = '/v1/work-center/check-code-available/${code}';
    final $params = <String, dynamic>{'id': id};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<WorkingTimeResponseList>> _v1WorkingTimeGet({int? year}) {
    final $url = '/v1/working-time';
    final $params = <String, dynamic>{'year': year};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<WorkingTimeResponseList, WorkingTimeResponseList>($request);
  }

  @override
  Future<Response<WorkingTimeResponseObject>> _v1WorkingTimePost(
      {WorkingTime? body}) {
    final $url = '/v1/working-time';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<WorkingTimeResponseObject, WorkingTimeResponseObject>($request);
  }

  @override
  Future<Response<WorkingTimeResponseObject>> _v1WorkingTimeIdGet(
      {required String? id}) {
    final $url = '/v1/working-time/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<WorkingTimeResponseObject, WorkingTimeResponseObject>($request);
  }

  @override
  Future<Response<WorkingTimeResponseObject>> _v1WorkingTimeIdPut(
      {required String? id, WorkingTime? body}) {
    final $url = '/v1/working-time/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client
        .send<WorkingTimeResponseObject, WorkingTimeResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1WorkingTimeDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/working-time/delete/many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<WorkOrderResponsePagination>> _v1WorkOrderGet(
      {int? currentPage, int? pageSize, String? type, String? queryString}) {
    final $url = '/v1/work-order';
    final $params = <String, dynamic>{
      'currentPage': currentPage,
      'pageSize': pageSize,
      'type': type,
      'queryString': queryString
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<WorkOrderResponsePagination,
        WorkOrderResponsePagination>($request);
  }

  @override
  Future<Response<WorkOrderResponseObject>> _v1WorkOrderPost(
      {WorkOrder? body}) {
    final $url = '/v1/work-order';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<WorkOrderResponseObject, WorkOrderResponseObject>($request);
  }

  @override
  Future<Response<WorkOrderResponseObject>> _v1WorkOrderIdGet(
      {required String? id}) {
    final $url = '/v1/work-order/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<WorkOrderResponseObject, WorkOrderResponseObject>($request);
  }

  @override
  Future<Response<WorkOrderResponseObject>> _v1WorkOrderIdPut(
      {required String? id, WorkOrder? body}) {
    final $url = '/v1/work-order/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client
        .send<WorkOrderResponseObject, WorkOrderResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1WorkOrderDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/work-order/delete/many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<dynamic>> _v1WorkOrderCreateManyPost(
      {CreateWorkOrderRequestModel? body}) {
    final $url = '/v1/work-order/create-many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<WorkOrderPlanningResponsePagination>> _v1WorkOrderPlanningGet(
      {int? currentPage, int? pageSize, String? type, String? queryString}) {
    final $url = '/v1/work-order-planning';
    final $params = <String, dynamic>{
      'currentPage': currentPage,
      'pageSize': pageSize,
      'type': type,
      'queryString': queryString
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<WorkOrderPlanningResponsePagination,
        WorkOrderPlanningResponsePagination>($request);
  }

  @override
  Future<Response<WorkOrderPlanningResponseObject>> _v1WorkOrderPlanningPost(
      {WorkOrderPlanning? body}) {
    final $url = '/v1/work-order-planning';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<WorkOrderPlanningResponseObject,
        WorkOrderPlanningResponseObject>($request);
  }

  @override
  Future<Response<WorkOrderPlanningResponseObject>> _v1WorkOrderPlanningIdGet(
      {required String? id}) {
    final $url = '/v1/work-order-planning/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<WorkOrderPlanningResponseObject,
        WorkOrderPlanningResponseObject>($request);
  }

  @override
  Future<Response<WorkOrderPlanningResponseObject>> _v1WorkOrderPlanningIdPut(
      {required String? id, WorkOrderPlanning? body}) {
    final $url = '/v1/work-order-planning/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<WorkOrderPlanningResponseObject,
        WorkOrderPlanningResponseObject>($request);
  }

  @override
  Future<Response<BooleanResponseObject>> _v1WorkOrderPlanningDeleteManyPost(
      {List<String>? body}) {
    final $url = '/v1/work-order-planning/delete/many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BooleanResponseObject, BooleanResponseObject>($request);
  }

  @override
  Future<Response<dynamic>> _v1WorkOrderPlanningCreateManyPost(
      {List<WorkOrderPlanning>? body}) {
    final $url = '/v1/work-order-planning/create-many';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
