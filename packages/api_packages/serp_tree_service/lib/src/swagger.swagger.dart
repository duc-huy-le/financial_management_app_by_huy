import 'swagger.enums.swagger.dart';
import 'swagger.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'package:chopper/chopper.dart' as chopper;
import 'swagger.enums.swagger.dart' as enums;
export 'swagger.enums.swagger.dart';
export 'swagger.models.swagger.dart';

part 'swagger.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Swagger extends ChopperService {
  static Swagger create(
      {ChopperClient? client,
      Authenticator? authenticator,
      String? baseUrl,
      Iterable<dynamic>? interceptors}) {
    if (client != null) {
      return _$Swagger(client);
    }

    final newClient = ChopperClient(
        services: [_$Swagger()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? 'http://');
    return _$Swagger(newClient);
  }

  ///
  ///@param type
  ///@param parentId
  ///@param parentAppId
  ///@param recursive
  ///@param statusObj
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  Future<chopper.Response<BaseCategoryViewModelResponsePagination>>
      v1CategoryGet(
          {String? type,
          String? parentId,
          String? parentAppId,
          bool? recursive,
          Object? statusObj,
          int? page,
          int? size,
          String? sort,
          String? filter}) {
    generatedMapping.putIfAbsent(BaseCategoryViewModelResponsePagination,
        () => BaseCategoryViewModelResponsePagination.fromJsonFactory);

    return _v1CategoryGet(
        type: type,
        parentId: parentId,
        parentAppId: parentAppId,
        recursive: recursive,
        statusObj: statusObj,
        page: page,
        size: size,
        sort: sort,
        filter: filter);
  }

  ///
  ///@param type
  ///@param parentId
  ///@param parentAppId
  ///@param recursive
  ///@param statusObj
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  @Get(path: '/v1/category')
  Future<chopper.Response<BaseCategoryViewModelResponsePagination>>
      _v1CategoryGet(
          {@Query('type') String? type,
          @Query('parentId') String? parentId,
          @Query('parentAppId') String? parentAppId,
          @Query('recursive') bool? recursive,
          @Query('statusObj') Object? statusObj,
          @Query('page') int? page,
          @Query('size') int? size,
          @Query('sort') String? sort,
          @Query('filter') String? filter});

  ///
  ///@param type
  ///@param parentId
  ///@param parentAppId
  ///@param recursive
  ///@param statusObj
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  Future<chopper.Response<BaseCategoryViewModelResponsePagination>>
      v1CategoryTypeGet(
          {required String? type,
          String? parentId,
          String? parentAppId,
          bool? recursive,
          Object? statusObj,
          int? page,
          int? size,
          String? sort,
          String? filter}) {
    generatedMapping.putIfAbsent(BaseCategoryViewModelResponsePagination,
        () => BaseCategoryViewModelResponsePagination.fromJsonFactory);

    return _v1CategoryTypeGet(
        type: type,
        parentId: parentId,
        parentAppId: parentAppId,
        recursive: recursive,
        statusObj: statusObj,
        page: page,
        size: size,
        sort: sort,
        filter: filter);
  }

  ///
  ///@param type
  ///@param parentId
  ///@param parentAppId
  ///@param recursive
  ///@param statusObj
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  @Get(path: '/v1/category/{type}')
  Future<chopper.Response<BaseCategoryViewModelResponsePagination>>
      _v1CategoryTypeGet(
          {@Path('type') required String? type,
          @Query('parentId') String? parentId,
          @Query('parentAppId') String? parentAppId,
          @Query('recursive') bool? recursive,
          @Query('statusObj') Object? statusObj,
          @Query('page') int? page,
          @Query('size') int? size,
          @Query('sort') String? sort,
          @Query('filter') String? filter});

  ///
  ///@param type
  ///@param body
  Future<chopper.Response<BaseCategoryResponseObject>> v1CategoryTypePost(
      {required String? type, CategoryRequestModel? body}) {
    generatedMapping.putIfAbsent(
        CategoryRequestModel, () => CategoryRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(BaseCategoryResponseObject,
        () => BaseCategoryResponseObject.fromJsonFactory);

    return _v1CategoryTypePost(type: type, body: body);
  }

  ///
  ///@param type
  ///@param body
  @Post(path: '/v1/category/{type}')
  Future<chopper.Response<BaseCategoryResponseObject>> _v1CategoryTypePost(
      {@Path('type') required String? type,
      @Body() CategoryRequestModel? body});

  ///
  ///@param type
  Future<chopper.Response<BaseCategoryResponsePagination>>
      v1CategoryTypeTreeGet({required String? type}) {
    generatedMapping.putIfAbsent(BaseCategoryResponsePagination,
        () => BaseCategoryResponsePagination.fromJsonFactory);

    return _v1CategoryTypeTreeGet(type: type);
  }

  ///
  ///@param type
  @Get(path: '/v1/category/{type}/tree')
  Future<chopper.Response<BaseCategoryResponsePagination>>
      _v1CategoryTypeTreeGet({@Path('type') required String? type});

  ///
  ///@param type
  ///@param id
  Future<chopper.Response<BaseCategoryResponseObject>> v1CategoryTypeIdGet(
      {required String? type, required String? id}) {
    generatedMapping.putIfAbsent(BaseCategoryResponseObject,
        () => BaseCategoryResponseObject.fromJsonFactory);

    return _v1CategoryTypeIdGet(type: type, id: id);
  }

  ///
  ///@param type
  ///@param id
  @Get(path: '/v1/category/{type}/{id}')
  Future<chopper.Response<BaseCategoryResponseObject>> _v1CategoryTypeIdGet(
      {@Path('type') required String? type, @Path('id') required String? id});

  ///
  ///@param type
  ///@param id
  ///@param body
  Future<chopper.Response<BaseCategoryViewModelResponseObject>>
      v1CategoryTypeIdPut(
          {required String? type,
          required String? id,
          CategoryRequestModel? body}) {
    generatedMapping.putIfAbsent(
        CategoryRequestModel, () => CategoryRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(BaseCategoryViewModelResponseObject,
        () => BaseCategoryViewModelResponseObject.fromJsonFactory);

    return _v1CategoryTypeIdPut(type: type, id: id, body: body);
  }

  ///
  ///@param type
  ///@param id
  ///@param body
  @Put(path: '/v1/category/{type}/{id}')
  Future<chopper.Response<BaseCategoryViewModelResponseObject>>
      _v1CategoryTypeIdPut(
          {@Path('type') required String? type,
          @Path('id') required String? id,
          @Body() CategoryRequestModel? body});

  ///
  ///@param id
  ///@param type
  ///@param body
  Future<chopper.Response<BaseCategoryResponseObject>> v1CategoryTypeIdPatch(
      {required String? id,
      required String? type,
      CategoryPatchRequestModel? body}) {
    generatedMapping.putIfAbsent(CategoryPatchRequestModel,
        () => CategoryPatchRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(BaseCategoryResponseObject,
        () => BaseCategoryResponseObject.fromJsonFactory);

    return _v1CategoryTypeIdPatch(id: id, type: type, body: body);
  }

  ///
  ///@param id
  ///@param type
  ///@param body
  @Patch(path: '/v1/category/{type}/{id}')
  Future<chopper.Response<BaseCategoryResponseObject>> _v1CategoryTypeIdPatch(
      {@Path('id') required String? id,
      @Path('type') required String? type,
      @Body() CategoryPatchRequestModel? body});

  ///
  ///@param type
  ///@param id
  Future<chopper.Response<ResponseDelete>> v1CategoryTypeIdDelete(
      {required String? type, required String? id}) {
    generatedMapping.putIfAbsent(
        ResponseDelete, () => ResponseDelete.fromJsonFactory);

    return _v1CategoryTypeIdDelete(type: type, id: id);
  }

  ///
  ///@param type
  ///@param id
  @Delete(path: '/v1/category/{type}/{id}')
  Future<chopper.Response<ResponseDelete>> _v1CategoryTypeIdDelete(
      {@Path('type') required String? type, @Path('id') required String? id});

  ///
  ///@param type
  ///@param body
  Future<chopper.Response<BaseCategoryViewModelResponseObject>>
      v1CategoryTypeReorderPut(
          {required String? type, List<CategoryOrderModel>? body}) {
    generatedMapping.putIfAbsent(BaseCategoryViewModelResponseObject,
        () => BaseCategoryViewModelResponseObject.fromJsonFactory);

    return _v1CategoryTypeReorderPut(type: type, body: body);
  }

  ///
  ///@param type
  ///@param body
  @Put(path: '/v1/category/{type}/reorder')
  Future<chopper.Response<BaseCategoryViewModelResponseObject>>
      _v1CategoryTypeReorderPut(
          {@Path('type') required String? type,
          @Body() List<CategoryOrderModel>? body});

  ///
  ///@param type
  ///@param body
  Future<chopper.Response<ResponseDeleteMulti>> v1CategoryTypeDeleteManyPost(
      {required String? type, List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseDeleteMulti, () => ResponseDeleteMulti.fromJsonFactory);

    return _v1CategoryTypeDeleteManyPost(type: type, body: body);
  }

  ///
  ///@param type
  ///@param body
  @Post(path: '/v1/category/{type}/delete/many')
  Future<chopper.Response<ResponseDeleteMulti>> _v1CategoryTypeDeleteManyPost(
      {@Path('type') required String? type, @Body() List<String>? body});

  ///
  ///@param type
  ///@param alias
  Future<chopper.Response<BooleanResponseObject>>
      v1CategoryTypeAliasIsAvailableGet(
          {required String? type, required String? alias}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1CategoryTypeAliasIsAvailableGet(type: type, alias: alias);
  }

  ///
  ///@param type
  ///@param alias
  @Get(path: '/v1/category/{type}/{alias}/is-available')
  Future<chopper.Response<BooleanResponseObject>>
      _v1CategoryTypeAliasIsAvailableGet(
          {@Path('type') required String? type,
          @Path('alias') required String? alias});

  ///
  ///@param File
  ///@param Type
  Future<chopper.Response> v1CategoryDownloadValidateFilePost(
      {List<String>? file, String? type}) {
    return _v1CategoryDownloadValidateFilePost(file: file, type: type);
  }

  ///
  ///@param File
  ///@param Type
  @Post(path: '/v1/category/download-validate-file', optionalBody: true)
  Future<chopper.Response> _v1CategoryDownloadValidateFilePost(
      {@Field('File') List<String>? file, @Field('Type') String? type});

  ///
  ///@param File
  ///@param Type
  Future<chopper.Response> v1CategoryValidateExcelPost(
      {List<String>? file, String? type}) {
    return _v1CategoryValidateExcelPost(file: file, type: type);
  }

  ///
  ///@param File
  ///@param Type
  @Post(path: '/v1/category/validate-excel', optionalBody: true)
  Future<chopper.Response> _v1CategoryValidateExcelPost(
      {@Field('File') List<String>? file, @Field('Type') String? type});

  ///
  ///@param File
  ///@param Type
  Future<chopper.Response> v1CategoryImportFilePost(
      {List<String>? file, String? type}) {
    return _v1CategoryImportFilePost(file: file, type: type);
  }

  ///
  ///@param File
  ///@param Type
  @Post(path: '/v1/category/import-file', optionalBody: true)
  Future<chopper.Response> _v1CategoryImportFilePost(
      {@Field('File') List<String>? file, @Field('Type') String? type});

  ///Gets filter bom temps.
  ///@param currentPage
  ///@param pageSize
  ///@param type
  ///@param queryString
  Future<chopper.Response<BomTempResponsePagination>> v1BomTempGet(
      {int? currentPage, int? pageSize, String? type, String? queryString}) {
    generatedMapping.putIfAbsent(BomTempResponsePagination,
        () => BomTempResponsePagination.fromJsonFactory);

    return _v1BomTempGet(
        currentPage: currentPage,
        pageSize: pageSize,
        type: type,
        queryString: queryString);
  }

  ///Gets filter bom temps.
  ///@param currentPage
  ///@param pageSize
  ///@param type
  ///@param queryString
  @Get(path: '/v1/bom-temp')
  Future<chopper.Response<BomTempResponsePagination>> _v1BomTempGet(
      {@Query('currentPage') int? currentPage,
      @Query('pageSize') int? pageSize,
      @Query('type') String? type,
      @Query('queryString') String? queryString});

  ///Creates a bom temp.
  ///@param body The bom temp request model.
  Future<chopper.Response<BomTempModelResponseObject>> v1BomTempPost(
      {TreeBomTempModel? body}) {
    generatedMapping.putIfAbsent(
        TreeBomTempModel, () => TreeBomTempModel.fromJsonFactory);
    generatedMapping.putIfAbsent(BomTempModelResponseObject,
        () => BomTempModelResponseObject.fromJsonFactory);

    return _v1BomTempPost(body: body);
  }

  ///Creates a bom temp.
  ///@param body The bom temp request model.
  @Post(path: '/v1/bom-temp')
  Future<chopper.Response<BomTempModelResponseObject>> _v1BomTempPost(
      {@Body() TreeBomTempModel? body});

  ///Gets a bom temp.
  ///@param id The bom temp id.
  Future<chopper.Response<BomTempResponseObject>> v1BomTempIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        BomTempResponseObject, () => BomTempResponseObject.fromJsonFactory);

    return _v1BomTempIdGet(id: id);
  }

  ///Gets a bom temp.
  ///@param id The bom temp id.
  @Get(path: '/v1/bom-temp/{id}')
  Future<chopper.Response<BomTempResponseObject>> _v1BomTempIdGet(
      {@Path('id') required String? id});

  ///Edits a bomtemps.
  ///@param id
  ///@param body
  Future<chopper.Response<BomTempResponseObject>> v1BomTempIdPut(
      {required String? id, TreeBomTempModel? body}) {
    generatedMapping.putIfAbsent(
        TreeBomTempModel, () => TreeBomTempModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        BomTempResponseObject, () => BomTempResponseObject.fromJsonFactory);

    return _v1BomTempIdPut(id: id, body: body);
  }

  ///Edits a bomtemps.
  ///@param id
  ///@param body
  @Put(path: '/v1/bom-temp/{id}')
  Future<chopper.Response<BomTempResponseObject>> _v1BomTempIdPut(
      {@Path('id') required String? id, @Body() TreeBomTempModel? body});

  ///Deletes many bom temps.
  ///@param body The reader bom temp ids.
  Future<chopper.Response<BomTempResponseList>> v1BomTempDeleteManyPost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        BomTempResponseList, () => BomTempResponseList.fromJsonFactory);

    return _v1BomTempDeleteManyPost(body: body);
  }

  ///Deletes many bom temps.
  ///@param body The reader bom temp ids.
  @Post(path: '/v1/bom-temp/delete/many')
  Future<chopper.Response<BomTempResponseList>> _v1BomTempDeleteManyPost(
      {@Body() List<String>? body});

  ///
  ///@param body
  Future<chopper.Response<List<String>>>
      v1BomTempGetListProductProductAvailableDeletePost({List<String>? body}) {
    return _v1BomTempGetListProductProductAvailableDeletePost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/bom-temp/get-list-product-product-available-delete')
  Future<chopper.Response<List<String>>>
      _v1BomTempGetListProductProductAvailableDeletePost(
          {@Body() List<String>? body});

  ///
  ///@param id
  Future<chopper.Response<CommentResponseObject>> v1CommentIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        CommentResponseObject, () => CommentResponseObject.fromJsonFactory);

    return _v1CommentIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/comment/{id}')
  Future<chopper.Response<CommentResponseObject>> _v1CommentIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<CommentResponseObject>> v1CommentIdPut(
      {required String? id, CommentRequestModel? body}) {
    generatedMapping.putIfAbsent(
        CommentRequestModel, () => CommentRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        CommentResponseObject, () => CommentResponseObject.fromJsonFactory);

    return _v1CommentIdPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/comment/{id}')
  Future<chopper.Response<CommentResponseObject>> _v1CommentIdPut(
      {@Path('id') required String? id, @Body() CommentRequestModel? body});

  ///
  ///@param id
  Future<chopper.Response<CommentResponseObject>> v1CommentIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        CommentResponseObject, () => CommentResponseObject.fromJsonFactory);

    return _v1CommentIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/comment/{id}')
  Future<chopper.Response<CommentResponseObject>> _v1CommentIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param objectId
  ///@param page
  ///@param size
  ///@param sort
  ///@param queryString
  ///@param filter
  Future<chopper.Response<CommentResponsePagination>> v1CommentGet(
      {String? objectId,
      int? page,
      int? size,
      String? sort,
      String? queryString,
      String? filter}) {
    generatedMapping.putIfAbsent(CommentResponsePagination,
        () => CommentResponsePagination.fromJsonFactory);

    return _v1CommentGet(
        objectId: objectId,
        page: page,
        size: size,
        sort: sort,
        queryString: queryString,
        filter: filter);
  }

  ///
  ///@param objectId
  ///@param page
  ///@param size
  ///@param sort
  ///@param queryString
  ///@param filter
  @Get(path: '/v1/comment')
  Future<chopper.Response<CommentResponsePagination>> _v1CommentGet(
      {@Query('objectId') String? objectId,
      @Query('page') int? page,
      @Query('size') int? size,
      @Query('sort') String? sort,
      @Query('queryString') String? queryString,
      @Query('filter') String? filter});

  ///
  ///@param body
  Future<chopper.Response<CommentResponseObject>> v1CommentPost(
      {CommentRequestModel? body}) {
    generatedMapping.putIfAbsent(
        CommentRequestModel, () => CommentRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        CommentResponseObject, () => CommentResponseObject.fromJsonFactory);

    return _v1CommentPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/comment')
  Future<chopper.Response<CommentResponseObject>> _v1CommentPost(
      {@Body() CommentRequestModel? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<CommentResponseObject>> v1CommentIdStatusPut(
      {required String? id, CommentStatusRequestModel? body}) {
    generatedMapping.putIfAbsent(CommentStatusRequestModel,
        () => CommentStatusRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        CommentResponseObject, () => CommentResponseObject.fromJsonFactory);

    return _v1CommentIdStatusPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/comment/{id}/status')
  Future<chopper.Response<CommentResponseObject>> _v1CommentIdStatusPut(
      {@Path('id') required String? id,
      @Body() CommentStatusRequestModel? body});

  ///
  ///@param body
  Future<chopper.Response<BooleanResponseObject>> v1CommentDeleteManyPost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1CommentDeleteManyPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/comment/delete/many')
  Future<chopper.Response<BooleanResponseObject>> _v1CommentDeleteManyPost(
      {@Body() List<String>? body});

  ///
  ///@param token
  Future<chopper.Response> v1DownloadGet({String? token}) {
    return _v1DownloadGet(token: token);
  }

  ///
  ///@param token
  @Get(path: '/v1/download')
  Future<chopper.Response> _v1DownloadGet({@Query('token') String? token});

  ///
  ///@param id
  ///@param token
  Future<chopper.Response> v1DownloadIdGet(
      {required String? id, String? token}) {
    return _v1DownloadIdGet(id: id, token: token);
  }

  ///
  ///@param id
  ///@param token
  @Get(path: '/v1/download/{id}')
  Future<chopper.Response> _v1DownloadIdGet(
      {@Path('id') required String? id, @Query('token') String? token});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response> v1DownloadIdLinkPost(
      {required String? id, FileDownloadRequestModel? body}) {
    generatedMapping.putIfAbsent(FileDownloadRequestModel,
        () => FileDownloadRequestModel.fromJsonFactory);

    return _v1DownloadIdLinkPost(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Post(path: '/v1/download/{id}/link')
  Future<chopper.Response> _v1DownloadIdLinkPost(
      {@Path('id') required String? id,
      @Body() FileDownloadRequestModel? body});

  ///
  ///@param parentId
  ///@param body
  Future<chopper.Response> v1DownloadLinksByParentPost(
      {String? parentId, FileDownloadRequestModel? body}) {
    generatedMapping.putIfAbsent(FileDownloadRequestModel,
        () => FileDownloadRequestModel.fromJsonFactory);

    return _v1DownloadLinksByParentPost(parentId: parentId, body: body);
  }

  ///
  ///@param parentId
  ///@param body
  @Post(path: '/v1/download/linksByParent')
  Future<chopper.Response> _v1DownloadLinksByParentPost(
      {@Query('parentId') String? parentId,
      @Body() FileDownloadRequestModel? body});

  ///
  ///@param body
  Future<chopper.Response> v1DownloadLinksPost(
      {FilesDownloadRequestModel? body}) {
    generatedMapping.putIfAbsent(FilesDownloadRequestModel,
        () => FilesDownloadRequestModel.fromJsonFactory);

    return _v1DownloadLinksPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/download/links')
  Future<chopper.Response> _v1DownloadLinksPost(
      {@Body() FilesDownloadRequestModel? body});

  ///
  ///@param relatedObjectId
  ///@param parentId
  ///@param getOriginUrl
  Future<chopper.Response<FileResponseModelResponseList>> v1FilesGet(
      {String? relatedObjectId, String? parentId, bool? getOriginUrl}) {
    generatedMapping.putIfAbsent(FileResponseModelResponseList,
        () => FileResponseModelResponseList.fromJsonFactory);

    return _v1FilesGet(
        relatedObjectId: relatedObjectId,
        parentId: parentId,
        getOriginUrl: getOriginUrl);
  }

  ///
  ///@param relatedObjectId
  ///@param parentId
  ///@param getOriginUrl
  @Get(path: '/v1/files')
  Future<chopper.Response<FileResponseModelResponseList>> _v1FilesGet(
      {@Query('relatedObjectId') String? relatedObjectId,
      @Query('parentId') String? parentId,
      @Query('getOriginUrl') bool? getOriginUrl});

  ///
  ///@param File
  ///@param MetaContent
  ///@param ParentIds
  ///@param Id
  ///@param ParentId
  ///@param Name
  ///@param Type
  ///@param LabelsObjs
  ///@param Labels
  ///@param ImageUrl
  ///@param Description
  ///@param NodeTypeObj
  ///@param MetaContentType
  ///@param MetadataContentObj
  ///@param MetadataObj
  ///@param OwnerId
  ///@param IsPublish
  ///@param IsSearchable
  ///@param ACLObject.ObjectId
  ///@param ACLObject.ACLItems
  ///@param ObjectId
  ///@param ObjectType
  ///@param RelatedRoleCodeObjects
  ///@param RelatedRoleCode
  ///@param RelatedObjectIdList
  ///@param RelatedBaseCategory
  ///@param RelatedFondId
  ///@param RelatedArchiveTypeId
  ///@param RelatedRecordCollectionId
  ///@param RelatedRecordId
  ///@param RelatedProjectId
  ///@param RelatedTaskId
  ///@param RelatedRespartnerId
  ///@param RelatedObject1
  ///@param RelatedObject1Type
  ///@param RelatedObject2
  ///@param RelatedObject2Type
  Future<chopper.Response<FileResponseModelResponseObject>> v1FilesPost(
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
    generatedMapping.putIfAbsent(LabelsObj, () => LabelsObj.fromJsonFactory);
    generatedMapping.putIfAbsent(
        MetadataValue, () => MetadataValue.fromJsonFactory);
    generatedMapping.putIfAbsent(ACLItem, () => ACLItem.fromJsonFactory);
    generatedMapping.putIfAbsent(FileResponseModelResponseObject,
        () => FileResponseModelResponseObject.fromJsonFactory);

    return _v1FilesPost(
        file: file,
        metaContent: metaContent,
        parentIds: parentIds,
        id: id,
        parentId: parentId,
        name: name,
        type: type,
        labelsObjs: labelsObjs,
        labels: labels,
        imageUrl: imageUrl,
        description: description,
        nodeTypeObj: nodeTypeObj,
        metaContentType: metaContentType,
        metadataContentObj: metadataContentObj,
        metadataObj: metadataObj,
        ownerId: ownerId,
        isPublish: isPublish,
        isSearchable: isSearchable,
        aCLObjectObjectId: aCLObjectObjectId,
        aCLObjectACLItems: aCLObjectACLItems,
        objectId: objectId,
        objectType: objectType,
        relatedRoleCodeObjects: relatedRoleCodeObjects,
        relatedRoleCode: relatedRoleCode,
        relatedObjectIdList: relatedObjectIdList,
        relatedBaseCategory: relatedBaseCategory,
        relatedFondId: relatedFondId,
        relatedArchiveTypeId: relatedArchiveTypeId,
        relatedRecordCollectionId: relatedRecordCollectionId,
        relatedRecordId: relatedRecordId,
        relatedProjectId: relatedProjectId,
        relatedTaskId: relatedTaskId,
        relatedRespartnerId: relatedRespartnerId,
        relatedObject1: relatedObject1,
        relatedObject1Type: relatedObject1Type,
        relatedObject2: relatedObject2,
        relatedObject2Type: relatedObject2Type);
  }

  ///
  ///@param File
  ///@param MetaContent
  ///@param ParentIds
  ///@param Id
  ///@param ParentId
  ///@param Name
  ///@param Type
  ///@param LabelsObjs
  ///@param Labels
  ///@param ImageUrl
  ///@param Description
  ///@param NodeTypeObj
  ///@param MetaContentType
  ///@param MetadataContentObj
  ///@param MetadataObj
  ///@param OwnerId
  ///@param IsPublish
  ///@param IsSearchable
  ///@param ACLObject.ObjectId
  ///@param ACLObject.ACLItems
  ///@param ObjectId
  ///@param ObjectType
  ///@param RelatedRoleCodeObjects
  ///@param RelatedRoleCode
  ///@param RelatedObjectIdList
  ///@param RelatedBaseCategory
  ///@param RelatedFondId
  ///@param RelatedArchiveTypeId
  ///@param RelatedRecordCollectionId
  ///@param RelatedRecordId
  ///@param RelatedProjectId
  ///@param RelatedTaskId
  ///@param RelatedRespartnerId
  ///@param RelatedObject1
  ///@param RelatedObject1Type
  ///@param RelatedObject2
  ///@param RelatedObject2Type
  @Post(path: '/v1/files', optionalBody: true)
  Future<chopper.Response<FileResponseModelResponseObject>> _v1FilesPost(
      {@Field('File') required List<String>? file,
      @Field('MetaContent') String? metaContent,
      @Field('ParentIds') List<String>? parentIds,
      @Field('Id') String? id,
      @Field('ParentId') String? parentId,
      @Field('Name') String? name,
      @Field('Type') String? type,
      @Field('LabelsObjs') List<LabelsObj>? labelsObjs,
      @Field('Labels') String? labels,
      @Field('ImageUrl') String? imageUrl,
      @Field('Description') String? description,
      @Field('NodeTypeObj') Object? nodeTypeObj,
      @Field('MetaContentType') String? metaContentType,
      @Field('MetadataContentObj') List<MetadataValue>? metadataContentObj,
      @Field('MetadataObj') List<MetadataValue>? metadataObj,
      @Field('OwnerId') String? ownerId,
      @Field('IsPublish') bool? isPublish,
      @Field('IsSearchable') bool? isSearchable,
      @Field('ACLObject.ObjectId') String? aCLObjectObjectId,
      @Field('ACLObject.ACLItems') List<ACLItem>? aCLObjectACLItems,
      @Field('ObjectId') String? objectId,
      @Field('ObjectType') String? objectType,
      @Field('RelatedRoleCodeObjects') List<String>? relatedRoleCodeObjects,
      @Field('RelatedRoleCode') String? relatedRoleCode,
      @Field('RelatedObjectIdList') List<String>? relatedObjectIdList,
      @Field('RelatedBaseCategory') String? relatedBaseCategory,
      @Field('RelatedFondId') String? relatedFondId,
      @Field('RelatedArchiveTypeId') String? relatedArchiveTypeId,
      @Field('RelatedRecordCollectionId') String? relatedRecordCollectionId,
      @Field('RelatedRecordId') String? relatedRecordId,
      @Field('RelatedProjectId') String? relatedProjectId,
      @Field('RelatedTaskId') String? relatedTaskId,
      @Field('RelatedRespartnerId') String? relatedRespartnerId,
      @Field('RelatedObject1') String? relatedObject1,
      @Field('RelatedObject1Type') String? relatedObject1Type,
      @Field('RelatedObject2') String? relatedObject2,
      @Field('RelatedObject2Type') String? relatedObject2Type});

  ///
  ///@param parentId
  ///@param relatedObjectId
  ///@param page
  ///@param size
  ///@param filter
  ///@param sort
  Future<chopper.Response<FileResponseModelResponsePagination>> v1FilesAllGet(
      {String? parentId,
      String? relatedObjectId,
      int? page,
      int? size,
      String? filter,
      String? sort}) {
    generatedMapping.putIfAbsent(FileResponseModelResponsePagination,
        () => FileResponseModelResponsePagination.fromJsonFactory);

    return _v1FilesAllGet(
        parentId: parentId,
        relatedObjectId: relatedObjectId,
        page: page,
        size: size,
        filter: filter,
        sort: sort);
  }

  ///
  ///@param parentId
  ///@param relatedObjectId
  ///@param page
  ///@param size
  ///@param filter
  ///@param sort
  @Get(path: '/v1/files/all')
  Future<chopper.Response<FileResponseModelResponsePagination>> _v1FilesAllGet(
      {@Query('parentId') String? parentId,
      @Query('relatedObjectId') String? relatedObjectId,
      @Query('page') int? page,
      @Query('size') int? size,
      @Query('filter') String? filter,
      @Query('sort') String? sort});

  ///
  ///@param page
  ///@param size
  ///@param filter
  ///@param sort
  Future<chopper.Response<FileResponseModelResponsePagination>>
      v1FilesFilterGet({int? page, int? size, String? filter, String? sort}) {
    generatedMapping.putIfAbsent(FileResponseModelResponsePagination,
        () => FileResponseModelResponsePagination.fromJsonFactory);

    return _v1FilesFilterGet(
        page: page, size: size, filter: filter, sort: sort);
  }

  ///
  ///@param page
  ///@param size
  ///@param filter
  ///@param sort
  @Get(path: '/v1/files/filter')
  Future<chopper.Response<FileResponseModelResponsePagination>>
      _v1FilesFilterGet(
          {@Query('page') int? page,
          @Query('size') int? size,
          @Query('filter') String? filter,
          @Query('sort') String? sort});

  ///
  ///@param id
  ///@param getOriginUrl
  Future<chopper.Response<FileResponseModelResponseObject>> v1FilesIdGet(
      {required String? id, bool? getOriginUrl}) {
    generatedMapping.putIfAbsent(FileResponseModelResponseObject,
        () => FileResponseModelResponseObject.fromJsonFactory);

    return _v1FilesIdGet(id: id, getOriginUrl: getOriginUrl);
  }

  ///
  ///@param id
  ///@param getOriginUrl
  @Get(path: '/v1/files/{id}')
  Future<chopper.Response<FileResponseModelResponseObject>> _v1FilesIdGet(
      {@Path('id') required String? id,
      @Query('getOriginUrl') bool? getOriginUrl});

  ///
  ///@param id
  Future<chopper.Response<ResponseDelete>> v1FilesIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ResponseDelete, () => ResponseDelete.fromJsonFactory);

    return _v1FilesIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/files/{id}')
  Future<chopper.Response<ResponseDelete>> _v1FilesIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<FileResponseModelResponseObject>> v1FilesIdPut(
      {required String? id, ModifyFileRequestModel? body}) {
    generatedMapping.putIfAbsent(
        ModifyFileRequestModel, () => ModifyFileRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(FileResponseModelResponseObject,
        () => FileResponseModelResponseObject.fromJsonFactory);

    return _v1FilesIdPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/files/{id}')
  Future<chopper.Response<FileResponseModelResponseObject>> _v1FilesIdPut(
      {@Path('id') required String? id, @Body() ModifyFileRequestModel? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<FileResponseModelResponseObject>> v1FilesIdPatch(
      {required String? id, PatchUpdateFileRequestModel? body}) {
    generatedMapping.putIfAbsent(PatchUpdateFileRequestModel,
        () => PatchUpdateFileRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(FileResponseModelResponseObject,
        () => FileResponseModelResponseObject.fromJsonFactory);

    return _v1FilesIdPatch(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Patch(path: '/v1/files/{id}')
  Future<chopper.Response<FileResponseModelResponseObject>> _v1FilesIdPatch(
      {@Path('id') required String? id,
      @Body() PatchUpdateFileRequestModel? body});

  ///
  ///@param parentId
  ///@param name
  ///@param getOriginUrl
  Future<chopper.Response<FileResponseModelResponseObject>>
      v1NodesParentIdFilesByNameNameGet(
          {required String? parentId,
          required String? name,
          bool? getOriginUrl}) {
    generatedMapping.putIfAbsent(FileResponseModelResponseObject,
        () => FileResponseModelResponseObject.fromJsonFactory);

    return _v1NodesParentIdFilesByNameNameGet(
        parentId: parentId, name: name, getOriginUrl: getOriginUrl);
  }

  ///
  ///@param parentId
  ///@param name
  ///@param getOriginUrl
  @Get(path: '/v1/nodes/{parentId}/files/by-name/{name}')
  Future<chopper.Response<FileResponseModelResponseObject>>
      _v1NodesParentIdFilesByNameNameGet(
          {@Path('parentId') required String? parentId,
          @Path('name') required String? name,
          @Query('getOriginUrl') bool? getOriginUrl});

  ///
  ///@param parentId
  ///@param name
  Future<chopper.Response<BooleanResponseObject>>
      v1NodesParentIdFilesByNameNameIsNameExistGet(
          {required String? parentId, required String? name}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1NodesParentIdFilesByNameNameIsNameExistGet(
        parentId: parentId, name: name);
  }

  ///
  ///@param parentId
  ///@param name
  @Get(path: '/v1/nodes/{parentId}/files/by-name/{name}/is-name-exist')
  Future<chopper.Response<BooleanResponseObject>>
      _v1NodesParentIdFilesByNameNameIsNameExistGet(
          {@Path('parentId') required String? parentId,
          @Path('name') required String? name});

  ///
  ///@param body
  Future<chopper.Response<ResponseDeleteMulti>> v1FilesDeleteManyPost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseDeleteMulti, () => ResponseDeleteMulti.fromJsonFactory);

    return _v1FilesDeleteManyPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/files/delete/many')
  Future<chopper.Response<ResponseDeleteMulti>> _v1FilesDeleteManyPost(
      {@Body() List<String>? body});

  ///
  ///@param id
  Future<chopper.Response<ACLObjectResponseList>> v1FilesIdAclGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ACLObjectResponseList, () => ACLObjectResponseList.fromJsonFactory);

    return _v1FilesIdAclGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/files/{id}/acl')
  Future<chopper.Response<ACLObjectResponseList>> _v1FilesIdAclGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ACLObjectResponseList>> v1FilesIdAclPut(
      {required String? id, ACLObject? body}) {
    generatedMapping.putIfAbsent(ACLObject, () => ACLObject.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ACLObjectResponseList, () => ACLObjectResponseList.fromJsonFactory);

    return _v1FilesIdAclPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/files/{id}/acl')
  Future<chopper.Response<ACLObjectResponseList>> _v1FilesIdAclPut(
      {@Path('id') required String? id, @Body() ACLObject? body});

  ///
  ///@param objectId
  ///@param body
  Future<chopper.Response<ACLObjectResponseList>>
      v1FilesMultipleObjectIdObjectIdPatch(
          {required String? objectId, List<String>? body}) {
    generatedMapping.putIfAbsent(
        ACLObjectResponseList, () => ACLObjectResponseList.fromJsonFactory);

    return _v1FilesMultipleObjectIdObjectIdPatch(
        objectId: objectId, body: body);
  }

  ///
  ///@param objectId
  ///@param body
  @Patch(path: '/v1/files/multiple/objectId/{objectId}')
  Future<chopper.Response<ACLObjectResponseList>>
      _v1FilesMultipleObjectIdObjectIdPatch(
          {@Path('objectId') required String? objectId,
          @Body() List<String>? body});

  ///
  ///@param body
  Future<chopper.Response<ACLObjectResponseList>> v1FilesMultiplePatch(
      {List<PatchUpdateFileRequestModel>? body}) {
    generatedMapping.putIfAbsent(
        ACLObjectResponseList, () => ACLObjectResponseList.fromJsonFactory);

    return _v1FilesMultiplePatch(body: body);
  }

  ///
  ///@param body
  @Patch(path: '/v1/files/multiple')
  Future<chopper.Response<ACLObjectResponseList>> _v1FilesMultiplePatch(
      {@Body() List<PatchUpdateFileRequestModel>? body});

  ///
  ///@param Files
  ///@param MetaContent
  ///@param ParentIds
  ///@param Id
  ///@param ParentId
  ///@param Name
  ///@param Type
  ///@param LabelsObjs
  ///@param Labels
  ///@param ImageUrl
  ///@param Description
  ///@param NodeTypeObj
  ///@param MetaContentType
  ///@param MetadataContentObj
  ///@param MetadataObj
  ///@param OwnerId
  ///@param IsPublish
  ///@param IsSearchable
  ///@param ACLObject.ObjectId
  ///@param ACLObject.ACLItems
  ///@param ObjectId
  ///@param ObjectType
  ///@param RelatedRoleCodeObjects
  ///@param RelatedRoleCode
  ///@param RelatedObjectIdList
  ///@param RelatedBaseCategory
  ///@param RelatedFondId
  ///@param RelatedArchiveTypeId
  ///@param RelatedRecordCollectionId
  ///@param RelatedRecordId
  ///@param RelatedProjectId
  ///@param RelatedTaskId
  ///@param RelatedRespartnerId
  ///@param RelatedObject1
  ///@param RelatedObject1Type
  ///@param RelatedObject2
  ///@param RelatedObject2Type
  Future<chopper.Response<FileResponseModelResponseList>> v1FilesMultiplePost(
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
    generatedMapping.putIfAbsent(LabelsObj, () => LabelsObj.fromJsonFactory);
    generatedMapping.putIfAbsent(
        MetadataValue, () => MetadataValue.fromJsonFactory);
    generatedMapping.putIfAbsent(ACLItem, () => ACLItem.fromJsonFactory);
    generatedMapping.putIfAbsent(FileResponseModelResponseList,
        () => FileResponseModelResponseList.fromJsonFactory);

    return _v1FilesMultiplePost(
        files: files,
        metaContent: metaContent,
        parentIds: parentIds,
        id: id,
        parentId: parentId,
        name: name,
        type: type,
        labelsObjs: labelsObjs,
        labels: labels,
        imageUrl: imageUrl,
        description: description,
        nodeTypeObj: nodeTypeObj,
        metaContentType: metaContentType,
        metadataContentObj: metadataContentObj,
        metadataObj: metadataObj,
        ownerId: ownerId,
        isPublish: isPublish,
        isSearchable: isSearchable,
        aCLObjectObjectId: aCLObjectObjectId,
        aCLObjectACLItems: aCLObjectACLItems,
        objectId: objectId,
        objectType: objectType,
        relatedRoleCodeObjects: relatedRoleCodeObjects,
        relatedRoleCode: relatedRoleCode,
        relatedObjectIdList: relatedObjectIdList,
        relatedBaseCategory: relatedBaseCategory,
        relatedFondId: relatedFondId,
        relatedArchiveTypeId: relatedArchiveTypeId,
        relatedRecordCollectionId: relatedRecordCollectionId,
        relatedRecordId: relatedRecordId,
        relatedProjectId: relatedProjectId,
        relatedTaskId: relatedTaskId,
        relatedRespartnerId: relatedRespartnerId,
        relatedObject1: relatedObject1,
        relatedObject1Type: relatedObject1Type,
        relatedObject2: relatedObject2,
        relatedObject2Type: relatedObject2Type);
  }

  ///
  ///@param Files
  ///@param MetaContent
  ///@param ParentIds
  ///@param Id
  ///@param ParentId
  ///@param Name
  ///@param Type
  ///@param LabelsObjs
  ///@param Labels
  ///@param ImageUrl
  ///@param Description
  ///@param NodeTypeObj
  ///@param MetaContentType
  ///@param MetadataContentObj
  ///@param MetadataObj
  ///@param OwnerId
  ///@param IsPublish
  ///@param IsSearchable
  ///@param ACLObject.ObjectId
  ///@param ACLObject.ACLItems
  ///@param ObjectId
  ///@param ObjectType
  ///@param RelatedRoleCodeObjects
  ///@param RelatedRoleCode
  ///@param RelatedObjectIdList
  ///@param RelatedBaseCategory
  ///@param RelatedFondId
  ///@param RelatedArchiveTypeId
  ///@param RelatedRecordCollectionId
  ///@param RelatedRecordId
  ///@param RelatedProjectId
  ///@param RelatedTaskId
  ///@param RelatedRespartnerId
  ///@param RelatedObject1
  ///@param RelatedObject1Type
  ///@param RelatedObject2
  ///@param RelatedObject2Type
  @Post(path: '/v1/files/multiple', optionalBody: true)
  Future<chopper.Response<FileResponseModelResponseList>> _v1FilesMultiplePost(
      {@Field('Files') required List<String>? files,
      @Field('MetaContent') String? metaContent,
      @Field('ParentIds') List<String>? parentIds,
      @Field('Id') String? id,
      @Field('ParentId') String? parentId,
      @Field('Name') String? name,
      @Field('Type') String? type,
      @Field('LabelsObjs') List<LabelsObj>? labelsObjs,
      @Field('Labels') String? labels,
      @Field('ImageUrl') String? imageUrl,
      @Field('Description') String? description,
      @Field('NodeTypeObj') Object? nodeTypeObj,
      @Field('MetaContentType') String? metaContentType,
      @Field('MetadataContentObj') List<MetadataValue>? metadataContentObj,
      @Field('MetadataObj') List<MetadataValue>? metadataObj,
      @Field('OwnerId') String? ownerId,
      @Field('IsPublish') bool? isPublish,
      @Field('IsSearchable') bool? isSearchable,
      @Field('ACLObject.ObjectId') String? aCLObjectObjectId,
      @Field('ACLObject.ACLItems') List<ACLItem>? aCLObjectACLItems,
      @Field('ObjectId') String? objectId,
      @Field('ObjectType') String? objectType,
      @Field('RelatedRoleCodeObjects') List<String>? relatedRoleCodeObjects,
      @Field('RelatedRoleCode') String? relatedRoleCode,
      @Field('RelatedObjectIdList') List<String>? relatedObjectIdList,
      @Field('RelatedBaseCategory') String? relatedBaseCategory,
      @Field('RelatedFondId') String? relatedFondId,
      @Field('RelatedArchiveTypeId') String? relatedArchiveTypeId,
      @Field('RelatedRecordCollectionId') String? relatedRecordCollectionId,
      @Field('RelatedRecordId') String? relatedRecordId,
      @Field('RelatedProjectId') String? relatedProjectId,
      @Field('RelatedTaskId') String? relatedTaskId,
      @Field('RelatedRespartnerId') String? relatedRespartnerId,
      @Field('RelatedObject1') String? relatedObject1,
      @Field('RelatedObject1Type') String? relatedObject1Type,
      @Field('RelatedObject2') String? relatedObject2,
      @Field('RelatedObject2Type') String? relatedObject2Type});

  ///
  ///@param body
  Future<chopper.Response<ACLObjectResponseList>> v1FilesMultipleParentPatch(
      {List<PatchUpdateFilesParentRequestModel>? body}) {
    generatedMapping.putIfAbsent(
        ACLObjectResponseList, () => ACLObjectResponseList.fromJsonFactory);

    return _v1FilesMultipleParentPatch(body: body);
  }

  ///
  ///@param body
  @Patch(path: '/v1/files/multiple/parent')
  Future<chopper.Response<ACLObjectResponseList>> _v1FilesMultipleParentPatch(
      {@Body() List<PatchUpdateFilesParentRequestModel>? body});

  ///
  ///@param body
  Future<chopper.Response<ACLObjectResponseList>> v1FilesMultipleMetadataPatch(
      {List<PatchUpdateFilesMetadataRequestModel>? body}) {
    generatedMapping.putIfAbsent(
        ACLObjectResponseList, () => ACLObjectResponseList.fromJsonFactory);

    return _v1FilesMultipleMetadataPatch(body: body);
  }

  ///
  ///@param body
  @Patch(path: '/v1/files/multiple/metadata')
  Future<chopper.Response<ACLObjectResponseList>> _v1FilesMultipleMetadataPatch(
      {@Body() List<PatchUpdateFilesMetadataRequestModel>? body});

  ///
  ///@param id
  ///@param relatedObjectId
  Future<chopper.Response<StringResponseList>> v1FilesIdRelatedObjectGet(
      {required String? id, String? relatedObjectId}) {
    generatedMapping.putIfAbsent(
        StringResponseList, () => StringResponseList.fromJsonFactory);

    return _v1FilesIdRelatedObjectGet(id: id, relatedObjectId: relatedObjectId);
  }

  ///
  ///@param id
  ///@param relatedObjectId
  @Get(path: '/v1/files/{id}/related-object')
  Future<chopper.Response<StringResponseList>> _v1FilesIdRelatedObjectGet(
      {@Path('id') required String? id,
      @Query('relatedObjectId') String? relatedObjectId});

  ///
  ///@param id
  ///@param relatedObjectId
  Future<chopper.Response<StringResponseList>> v1FilesIdRelatedObjectPost(
      {required String? id, String? relatedObjectId}) {
    generatedMapping.putIfAbsent(
        StringResponseList, () => StringResponseList.fromJsonFactory);

    return _v1FilesIdRelatedObjectPost(
        id: id, relatedObjectId: relatedObjectId);
  }

  ///
  ///@param id
  ///@param relatedObjectId
  @Post(path: '/v1/files/{id}/related-object', optionalBody: true)
  Future<chopper.Response<StringResponseList>> _v1FilesIdRelatedObjectPost(
      {@Path('id') required String? id,
      @Query('relatedObjectId') String? relatedObjectId});

  ///
  ///@param id
  ///@param relatedObjectId
  Future<chopper.Response<StringResponseList>>
      v1FilesIdRelatedObjectRelatedObjectIdDelete(
          {required String? id, required String? relatedObjectId}) {
    generatedMapping.putIfAbsent(
        StringResponseList, () => StringResponseList.fromJsonFactory);

    return _v1FilesIdRelatedObjectRelatedObjectIdDelete(
        id: id, relatedObjectId: relatedObjectId);
  }

  ///
  ///@param id
  ///@param relatedObjectId
  @Delete(path: '/v1/files/{id}/related-object/{relatedObjectId}')
  Future<chopper.Response<StringResponseList>>
      _v1FilesIdRelatedObjectRelatedObjectIdDelete(
          {@Path('id') required String? id,
          @Path('relatedObjectId') required String? relatedObjectId});

  ///
  ///@param body
  Future<chopper.Response<FileResponseModelResponseList>>
      v1FilesMultipleRelatedObjectsPost({List<FileObjectsRelation>? body}) {
    generatedMapping.putIfAbsent(FileResponseModelResponseList,
        () => FileResponseModelResponseList.fromJsonFactory);

    return _v1FilesMultipleRelatedObjectsPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/files/multiple/related-objects')
  Future<chopper.Response<FileResponseModelResponseList>>
      _v1FilesMultipleRelatedObjectsPost(
          {@Body() List<FileObjectsRelation>? body});

  ///
  ///@param body
  Future<chopper.Response<FileResponseModelResponseList>>
      v1FilesMultipleRelatedObjectsPut({List<FileObjectsRelation>? body}) {
    generatedMapping.putIfAbsent(FileResponseModelResponseList,
        () => FileResponseModelResponseList.fromJsonFactory);

    return _v1FilesMultipleRelatedObjectsPut(body: body);
  }

  ///
  ///@param body
  @Put(path: '/v1/files/multiple/related-objects')
  Future<chopper.Response<FileResponseModelResponseList>>
      _v1FilesMultipleRelatedObjectsPut(
          {@Body() List<FileObjectsRelation>? body});

  ///
  ///@param models
  Future<chopper.Response<FileResponseModelResponseList>> v1FilesManyPost(
      {List<UploadFileRequestModel>? models}) {
    generatedMapping.putIfAbsent(
        UploadFileRequestModel, () => UploadFileRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(FileResponseModelResponseList,
        () => FileResponseModelResponseList.fromJsonFactory);

    return _v1FilesManyPost(models: models);
  }

  ///
  ///@param models
  @Post(path: '/v1/files/many', optionalBody: true)
  Future<chopper.Response<FileResponseModelResponseList>> _v1FilesManyPost(
      {@Field('models') List<UploadFileRequestModel>? models});

  ///Ngân sách theo năm.
  ///@param year
  ///@param version
  ///@param locationId
  ///@param objectGroup
  Future<chopper.Response<FinanceInYearModelResponseObject>> v1FinanceYearGet(
      {required int? year,
      int? version,
      List<String>? locationId,
      String? objectGroup}) {
    generatedMapping.putIfAbsent(FinanceInYearModelResponseObject,
        () => FinanceInYearModelResponseObject.fromJsonFactory);

    return _v1FinanceYearGet(
        year: year,
        version: version,
        locationId: locationId,
        objectGroup: objectGroup);
  }

  ///Ngân sách theo năm.
  ///@param year
  ///@param version
  ///@param locationId
  ///@param objectGroup
  @Get(path: '/v1/finance/{year}')
  Future<chopper.Response<FinanceInYearModelResponseObject>> _v1FinanceYearGet(
      {@Path('year') required int? year,
      @Query('version') int? version,
      @Query('locationId') List<String>? locationId,
      @Query('objectGroup') String? objectGroup});

  ///
  ///@param year Năm
  ///@param locationId Dự án thành phần
  ///@param objectGroup Nhóm thành phần
  Future<chopper.Response<FinanceInYearModelResponseObject>>
      v1FinanceYearLatestVersionGet(
          {required int? year, List<String>? locationId, String? objectGroup}) {
    generatedMapping.putIfAbsent(FinanceInYearModelResponseObject,
        () => FinanceInYearModelResponseObject.fromJsonFactory);

    return _v1FinanceYearLatestVersionGet(
        year: year, locationId: locationId, objectGroup: objectGroup);
  }

  ///
  ///@param year Năm
  ///@param locationId Dự án thành phần
  ///@param objectGroup Nhóm thành phần
  @Get(path: '/v1/finance/{year}/latest-version')
  Future<chopper.Response<FinanceInYearModelResponseObject>>
      _v1FinanceYearLatestVersionGet(
          {@Path('year') required int? year,
          @Query('locationId') List<String>? locationId,
          @Query('objectGroup') String? objectGroup});

  ///Cập nhập trạng thái ngân sách
  ///@param year Năm
  ///@param version Phiên bản
  Future<chopper.Response<FinanceResponseObject>> v1FinanceApprovedYearPatch(
      {required int? year, int? version}) {
    generatedMapping.putIfAbsent(
        FinanceResponseObject, () => FinanceResponseObject.fromJsonFactory);

    return _v1FinanceApprovedYearPatch(year: year, version: version);
  }

  ///Cập nhập trạng thái ngân sách
  ///@param year Năm
  ///@param version Phiên bản
  @Patch(path: '/v1/finance/approved/{year}', optionalBody: true)
  Future<chopper.Response<FinanceResponseObject>> _v1FinanceApprovedYearPatch(
      {@Path('year') required int? year, @Query('version') int? version});

  ///Hiệu chỉnh ngân sách.
  ///@param year Năm
  ///@param version Phiên bản
  Future<chopper.Response<FinanceResponseObject>> v1FinanceAdjustedYearPatch(
      {required int? year, int? version}) {
    generatedMapping.putIfAbsent(
        FinanceResponseObject, () => FinanceResponseObject.fromJsonFactory);

    return _v1FinanceAdjustedYearPatch(year: year, version: version);
  }

  ///Hiệu chỉnh ngân sách.
  ///@param year Năm
  ///@param version Phiên bản
  @Patch(path: '/v1/finance/adjusted/{year}', optionalBody: true)
  Future<chopper.Response<FinanceResponseObject>> _v1FinanceAdjustedYearPatch(
      {@Path('year') required int? year, @Query('version') int? version});

  ///Ngân sách theo năm và dự án thành phần.
  ///@param locationId Dự án thành phần
  ///@param year Năm
  ///@param version Phiên bản
  Future<chopper.Response<FinanceByLocationResponseObject>>
      v1FinanceYearLocationIdGet(
          {required String? locationId, required int? year, int? version}) {
    generatedMapping.putIfAbsent(FinanceByLocationResponseObject,
        () => FinanceByLocationResponseObject.fromJsonFactory);

    return _v1FinanceYearLocationIdGet(
        locationId: locationId, year: year, version: version);
  }

  ///Ngân sách theo năm và dự án thành phần.
  ///@param locationId Dự án thành phần
  ///@param year Năm
  ///@param version Phiên bản
  @Get(path: '/v1/finance/{year}/{locationId}')
  Future<chopper.Response<FinanceByLocationResponseObject>>
      _v1FinanceYearLocationIdGet(
          {@Path('locationId') required String? locationId,
          @Path('year') required int? year,
          @Query('version') int? version});

  ///Ngân sách theo nhóm cây.
  ///@param locationId Dự án thành phần
  ///@param attributeId Nhóm cây id.
  ///@param year Năm
  ///@param objectGroup Nhóm thành phần
  ///@param version Phiên bản
  Future<chopper.Response<FinanceByAttributeResponseObject>>
      v1FinanceFinanceByAttributeGet(
          {String? locationId,
          String? attributeId,
          int? year,
          String? objectGroup,
          int? version}) {
    generatedMapping.putIfAbsent(FinanceByAttributeResponseObject,
        () => FinanceByAttributeResponseObject.fromJsonFactory);

    return _v1FinanceFinanceByAttributeGet(
        locationId: locationId,
        attributeId: attributeId,
        year: year,
        objectGroup: objectGroup,
        version: version);
  }

  ///Ngân sách theo nhóm cây.
  ///@param locationId Dự án thành phần
  ///@param attributeId Nhóm cây id.
  ///@param year Năm
  ///@param objectGroup Nhóm thành phần
  ///@param version Phiên bản
  @Get(path: '/v1/finance/finance-by-attribute')
  Future<chopper.Response<FinanceByAttributeResponseObject>>
      _v1FinanceFinanceByAttributeGet(
          {@Query('locationId') String? locationId,
          @Query('attributeId') String? attributeId,
          @Query('year') int? year,
          @Query('objectGroup') String? objectGroup,
          @Query('version') int? version});

  ///Xuất excel kế hoạch ngân sách.
  ///@param year
  ///@param version
  ///@param locationId
  ///@param objectGroup
  Future<chopper.Response> v1FinanceExportFileYearGet(
      {required int? year,
      int? version,
      List<String>? locationId,
      String? objectGroup}) {
    return _v1FinanceExportFileYearGet(
        year: year,
        version: version,
        locationId: locationId,
        objectGroup: objectGroup);
  }

  ///Xuất excel kế hoạch ngân sách.
  ///@param year
  ///@param version
  ///@param locationId
  ///@param objectGroup
  @Get(path: '/v1/finance/export-file/{year}')
  Future<chopper.Response> _v1FinanceExportFileYearGet(
      {@Path('year') required int? year,
      @Query('version') int? version,
      @Query('locationId') List<String>? locationId,
      @Query('objectGroup') String? objectGroup});

  ///Update wf trên db finance
  ///@param id
  ///@param body
  Future<chopper.Response<FinanceResponseObject>> v1FinanceWorkflowUpdateIdPut(
      {required String? id, WorkflowFinaceUpdateModel? body}) {
    generatedMapping.putIfAbsent(WorkflowFinaceUpdateModel,
        () => WorkflowFinaceUpdateModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        FinanceResponseObject, () => FinanceResponseObject.fromJsonFactory);

    return _v1FinanceWorkflowUpdateIdPut(id: id, body: body);
  }

  ///Update wf trên db finance
  ///@param id
  ///@param body
  @Put(path: '/v1/finance/workflow-update/{id}')
  Future<chopper.Response<FinanceResponseObject>> _v1FinanceWorkflowUpdateIdPut(
      {@Path('id') required String? id,
      @Body() WorkflowFinaceUpdateModel? body});

  ///
  ///@param year
  Future<chopper.Response> v1FinanceListVersionYearGet({required int? year}) {
    return _v1FinanceListVersionYearGet(year: year);
  }

  ///
  ///@param year
  @Get(path: '/v1/finance/list-version/{year}')
  Future<chopper.Response> _v1FinanceListVersionYearGet(
      {@Path('year') required int? year});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ProductionMasterResponseObject>>
      v1FinanceUpdateIdPost({required String? id, Finance? body}) {
    generatedMapping.putIfAbsent(Finance, () => Finance.fromJsonFactory);
    generatedMapping.putIfAbsent(ProductionMasterResponseObject,
        () => ProductionMasterResponseObject.fromJsonFactory);

    return _v1FinanceUpdateIdPost(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Post(path: '/v1/finance/update/{id}')
  Future<chopper.Response<ProductionMasterResponseObject>>
      _v1FinanceUpdateIdPost(
          {@Path('id') required String? id, @Body() Finance? body});

  ///Send email
  ///@param body
  Future<chopper.Response<BooleanResponseObject>> v1FinanceSendEmailPost(
      {EmailBodyRequestModel? body}) {
    generatedMapping.putIfAbsent(
        EmailBodyRequestModel, () => EmailBodyRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1FinanceSendEmailPost(body: body);
  }

  ///Send email
  ///@param body
  @Post(path: '/v1/finance/send-email')
  Future<chopper.Response<BooleanResponseObject>> _v1FinanceSendEmailPost(
      {@Body() EmailBodyRequestModel? body});

  ///The health check api.
  Future<chopper.Response> v1TreeHealthCheckGet() {
    return _v1TreeHealthCheckGet();
  }

  ///The health check api.
  @Get(path: '/v1/tree/health/check')
  Future<chopper.Response> _v1TreeHealthCheckGet();

  ///The database health check api.
  Future<chopper.Response> v1TreeHealthDbcheckGet() {
    return _v1TreeHealthDbcheckGet();
  }

  ///The database health check api.
  @Get(path: '/v1/tree/health/dbcheck')
  Future<chopper.Response> _v1TreeHealthDbcheckGet();

  ///
  Future<chopper.Response<ResponseUpdateMulti>> v1IndexerTriggerPut() {
    generatedMapping.putIfAbsent(
        ResponseUpdateMulti, () => ResponseUpdateMulti.fromJsonFactory);

    return _v1IndexerTriggerPut();
  }

  ///
  @Put(path: '/v1/indexer/trigger', optionalBody: true)
  Future<chopper.Response<ResponseUpdateMulti>> _v1IndexerTriggerPut();

  ///
  ///@param id
  Future<chopper.Response<ResponseUpdateMulti>> v1IndexerTriggerIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ResponseUpdateMulti, () => ResponseUpdateMulti.fromJsonFactory);

    return _v1IndexerTriggerIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/indexer/trigger/{id}')
  Future<chopper.Response<ResponseUpdateMulti>> _v1IndexerTriggerIdGet(
      {@Path('id') required String? id});

  ///
  ///@param body
  Future<chopper.Response<ObjectResponsePagination>> v1LogsPost(
      {LogQueryModel? body}) {
    generatedMapping.putIfAbsent(
        LogQueryModel, () => LogQueryModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ObjectResponsePagination,
        () => ObjectResponsePagination.fromJsonFactory);

    return _v1LogsPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/logs')
  Future<chopper.Response<ObjectResponsePagination>> _v1LogsPost(
      {@Body() LogQueryModel? body});

  ///
  ///@param id
  Future<chopper.Response<ObjectResponseObject>> v1LogsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ObjectResponseObject, () => ObjectResponseObject.fromJsonFactory);

    return _v1LogsIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/logs/{id}')
  Future<chopper.Response<ObjectResponseObject>> _v1LogsIdGet(
      {@Path('id') required String? id});

  ///
  ///@param body
  Future<chopper.Response<BooleanResponseObject>> v1LogsDeleteManyPost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1LogsDeleteManyPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/logs/delete-many')
  Future<chopper.Response<BooleanResponseObject>> _v1LogsDeleteManyPost(
      {@Body() List<String>? body});

  ///Gets filter notebook.
  ///@param currentPage
  ///@param pageSize
  ///@param type
  ///@param queryString
  Future<chopper.Response<RoutingModelResponsePagination>> v1NotebookGet(
      {int? currentPage, int? pageSize, String? type, String? queryString}) {
    generatedMapping.putIfAbsent(RoutingModelResponsePagination,
        () => RoutingModelResponsePagination.fromJsonFactory);

    return _v1NotebookGet(
        currentPage: currentPage,
        pageSize: pageSize,
        type: type,
        queryString: queryString);
  }

  ///Gets filter notebook.
  ///@param currentPage
  ///@param pageSize
  ///@param type
  ///@param queryString
  @Get(path: '/v1/notebook')
  Future<chopper.Response<RoutingModelResponsePagination>> _v1NotebookGet(
      {@Query('currentPage') int? currentPage,
      @Query('pageSize') int? pageSize,
      @Query('type') String? type,
      @Query('queryString') String? queryString});

  ///Creates a notebook.
  ///@param body The notebook request model.
  Future<chopper.Response<RoutingModelResponseObject>> v1NotebookPost(
      {RoutingModel? body}) {
    generatedMapping.putIfAbsent(
        RoutingModel, () => RoutingModel.fromJsonFactory);
    generatedMapping.putIfAbsent(RoutingModelResponseObject,
        () => RoutingModelResponseObject.fromJsonFactory);

    return _v1NotebookPost(body: body);
  }

  ///Creates a notebook.
  ///@param body The notebook request model.
  @Post(path: '/v1/notebook')
  Future<chopper.Response<RoutingModelResponseObject>> _v1NotebookPost(
      {@Body() RoutingModel? body});

  ///Gets a notebook.
  ///@param id The notebook id.
  Future<chopper.Response<RoutingResponseObject>> v1NotebookIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        RoutingResponseObject, () => RoutingResponseObject.fromJsonFactory);

    return _v1NotebookIdGet(id: id);
  }

  ///Gets a notebook.
  ///@param id The notebook id.
  @Get(path: '/v1/notebook/{id}')
  Future<chopper.Response<RoutingResponseObject>> _v1NotebookIdGet(
      {@Path('id') required String? id});

  ///Updates a notebook.
  ///@param id
  ///@param body
  Future<chopper.Response<RoutingResponseObject>> v1NotebookIdPut(
      {required String? id, RoutingModel? body}) {
    generatedMapping.putIfAbsent(
        RoutingModel, () => RoutingModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        RoutingResponseObject, () => RoutingResponseObject.fromJsonFactory);

    return _v1NotebookIdPut(id: id, body: body);
  }

  ///Updates a notebook.
  ///@param id
  ///@param body
  @Put(path: '/v1/notebook/{id}')
  Future<chopper.Response<RoutingResponseObject>> _v1NotebookIdPut(
      {@Path('id') required String? id, @Body() RoutingModel? body});

  ///Deletes many notebook.
  ///@param body The notebook ids.
  Future<chopper.Response<BooleanResponseObject>> v1NotebookDeleteManyPost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1NotebookDeleteManyPost(body: body);
  }

  ///Deletes many notebook.
  ///@param body The notebook ids.
  @Post(path: '/v1/notebook/delete/many')
  Future<chopper.Response<BooleanResponseObject>> _v1NotebookDeleteManyPost(
      {@Body() List<String>? body});

  ///Checks code is available or not.
  ///@param code The notebook code.
  ///@param id The notebook id.
  Future<chopper.Response<BooleanResponseObject>>
      v1NotebookCodeIsCodeAvailableGet({required String? code, String? id}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1NotebookCodeIsCodeAvailableGet(code: code, id: id);
  }

  ///Checks code is available or not.
  ///@param code The notebook code.
  ///@param id The notebook id.
  @Get(path: '/v1/notebook/{code}/is-code-available')
  Future<chopper.Response<BooleanResponseObject>>
      _v1NotebookCodeIsCodeAvailableGet(
          {@Path('code') required String? code, @Query('id') String? id});

  ///Get by id
  ///@param id
  Future<chopper.Response<PlanLaborModelResponseObject>>
      v1PlanLaborProtectionIdGet({required String? id}) {
    generatedMapping.putIfAbsent(PlanLaborModelResponseObject,
        () => PlanLaborModelResponseObject.fromJsonFactory);

    return _v1PlanLaborProtectionIdGet(id: id);
  }

  ///Get by id
  ///@param id
  @Get(path: '/v1/plan-labor-protection/{id}')
  Future<chopper.Response<PlanLaborModelResponseObject>>
      _v1PlanLaborProtectionIdGet({@Path('id') required String? id});

  ///Update by id
  ///@param id
  ///@param body
  Future<chopper.Response<PlanLaborModelResponseObject>>
      v1PlanLaborProtectionIdPut({required String? id, PlanLaborModel? body}) {
    generatedMapping.putIfAbsent(
        PlanLaborModel, () => PlanLaborModel.fromJsonFactory);
    generatedMapping.putIfAbsent(PlanLaborModelResponseObject,
        () => PlanLaborModelResponseObject.fromJsonFactory);

    return _v1PlanLaborProtectionIdPut(id: id, body: body);
  }

  ///Update by id
  ///@param id
  ///@param body
  @Put(path: '/v1/plan-labor-protection/{id}')
  Future<chopper.Response<PlanLaborModelResponseObject>>
      _v1PlanLaborProtectionIdPut(
          {@Path('id') required String? id, @Body() PlanLaborModel? body});

  ///
  ///@param body
  Future<chopper.Response<List<String>>>
      v1PlanLaborProtectionGetListBaseCategoryAvailableDeletePost(
          {List<String>? body}) {
    return _v1PlanLaborProtectionGetListBaseCategoryAvailableDeletePost(
        body: body);
  }

  ///
  ///@param body
  @Post(
      path: '/v1/plan-labor-protection/get-list-base-category-available-delete')
  Future<chopper.Response<List<String>>>
      _v1PlanLaborProtectionGetListBaseCategoryAvailableDeletePost(
          {@Body() List<String>? body});

  ///Lấy kế hoạch theo năm.
  ///@param year
  ///@param version
  Future<chopper.Response<PlanningResponseListModelResponseObject>>
      v1PlanningPlanYearGet({required int? year, int? version}) {
    generatedMapping.putIfAbsent(PlanningResponseListModelResponseObject,
        () => PlanningResponseListModelResponseObject.fromJsonFactory);

    return _v1PlanningPlanYearGet(year: year, version: version);
  }

  ///Lấy kế hoạch theo năm.
  ///@param year
  ///@param version
  @Get(path: '/v1/planning/plan-{year}')
  Future<chopper.Response<PlanningResponseListModelResponseObject>>
      _v1PlanningPlanYearGet(
          {@Path('year') required int? year, @Query('version') int? version});

  ///Tạo kế hoạch năm.
  ///@param year
  Future<chopper.Response> v1PlanningPlanYearPost({required int? year}) {
    return _v1PlanningPlanYearPost(year: year);
  }

  ///Tạo kế hoạch năm.
  ///@param year
  @Post(path: '/v1/planning/plan-{year}', optionalBody: true)
  Future<chopper.Response> _v1PlanningPlanYearPost(
      {@Path('year') required int? year});

  ///
  ///@param year
  Future<chopper.Response<PlanningResponseListModelResponseObject>>
      v1PlanningYearLatestVersionGet({required int? year}) {
    generatedMapping.putIfAbsent(PlanningResponseListModelResponseObject,
        () => PlanningResponseListModelResponseObject.fromJsonFactory);

    return _v1PlanningYearLatestVersionGet(year: year);
  }

  ///
  ///@param year
  @Get(path: '/v1/planning/{year}/latest-version')
  Future<chopper.Response<PlanningResponseListModelResponseObject>>
      _v1PlanningYearLatestVersionGet({@Path('year') required int? year});

  ///Tìm kế hoạch theo dự án thành phần.
  ///@param locationSrcId
  ///@param year
  ///@param version
  Future<chopper.Response<PlanningModelOldResponseListResponseObject>>
      v1PlanningYearLocationSrcIdGet(
          {required String? locationSrcId, required int? year, int? version}) {
    generatedMapping.putIfAbsent(PlanningModelOldResponseListResponseObject,
        () => PlanningModelOldResponseListResponseObject.fromJsonFactory);

    return _v1PlanningYearLocationSrcIdGet(
        locationSrcId: locationSrcId, year: year, version: version);
  }

  ///Tìm kế hoạch theo dự án thành phần.
  ///@param locationSrcId
  ///@param year
  ///@param version
  @Get(path: '/v1/planning/{year}/{locationSrcId}')
  Future<chopper.Response<PlanningModelOldResponseListResponseObject>>
      _v1PlanningYearLocationSrcIdGet(
          {@Path('locationSrcId') required String? locationSrcId,
          @Path('year') required int? year,
          @Query('version') int? version});

  ///Gets a production.
  ///@param id
  Future<chopper.Response<PlanningModelResponseObject>> v1PlanningIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(PlanningModelResponseObject,
        () => PlanningModelResponseObject.fromJsonFactory);

    return _v1PlanningIdGet(id: id);
  }

  ///Gets a production.
  ///@param id
  @Get(path: '/v1/planning/{id}')
  Future<chopper.Response<PlanningModelResponseObject>> _v1PlanningIdGet(
      {@Path('id') required String? id});

  ///Edit planning.
  ///@param id
  ///@param body
  Future<chopper.Response<PlanningModelResponseObject>> v1PlanningIdPut(
      {required String? id, PlanningModel? body}) {
    generatedMapping.putIfAbsent(
        PlanningModel, () => PlanningModel.fromJsonFactory);
    generatedMapping.putIfAbsent(PlanningModelResponseObject,
        () => PlanningModelResponseObject.fromJsonFactory);

    return _v1PlanningIdPut(id: id, body: body);
  }

  ///Edit planning.
  ///@param id
  ///@param body
  @Put(path: '/v1/planning/{id}')
  Future<chopper.Response<PlanningModelResponseObject>> _v1PlanningIdPut(
      {@Path('id') required String? id, @Body() PlanningModel? body});

  ///Duyệt kế hoạch của năm.
  ///@param id
  ///@param version
  Future<chopper.Response<BooleanResponseObject>>
      v1PlanningApprovedIdVersionPatch(
          {required String? id, required int? version}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1PlanningApprovedIdVersionPatch(id: id, version: version);
  }

  ///Duyệt kế hoạch của năm.
  ///@param id
  ///@param version
  @Patch(path: '/v1/planning/approved/{id}/{version}', optionalBody: true)
  Future<chopper.Response<BooleanResponseObject>>
      _v1PlanningApprovedIdVersionPatch(
          {@Path('id') required String? id,
          @Path('version') required int? version});

  ///Hiệu chỉnh kế hoạch.
  ///@param id
  ///@param version
  Future<chopper.Response<BooleanResponseObject>>
      v1PlanningAdjustIdVersionPatch(
          {required String? id, required int? version}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1PlanningAdjustIdVersionPatch(id: id, version: version);
  }

  ///Hiệu chỉnh kế hoạch.
  ///@param id
  ///@param version
  @Patch(path: '/v1/planning/adjust/{id}/{version}', optionalBody: true)
  Future<chopper.Response<BooleanResponseObject>>
      _v1PlanningAdjustIdVersionPatch(
          {@Path('id') required String? id,
          @Path('version') required int? version});

  ///Sao chép kế hoạch năm
  ///@param body
  Future<chopper.Response<ProductionMasterResponseObject>>
      v1PlanningCloneByYearPost({PlanningCloneRequestModel? body}) {
    generatedMapping.putIfAbsent(PlanningCloneRequestModel,
        () => PlanningCloneRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ProductionMasterResponseObject,
        () => ProductionMasterResponseObject.fromJsonFactory);

    return _v1PlanningCloneByYearPost(body: body);
  }

  ///Sao chép kế hoạch năm
  ///@param body
  @Post(path: '/v1/planning/clone-by-year')
  Future<chopper.Response<ProductionMasterResponseObject>>
      _v1PlanningCloneByYearPost({@Body() PlanningCloneRequestModel? body});

  ///
  ///@param body
  Future<chopper.Response<ProductionMasterResponseObject>>
      v1PlanningCreateWithVersionPost({TreePlanningCreateModel? body}) {
    generatedMapping.putIfAbsent(
        TreePlanningCreateModel, () => TreePlanningCreateModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ProductionMasterResponseObject,
        () => ProductionMasterResponseObject.fromJsonFactory);

    return _v1PlanningCreateWithVersionPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/planning/create-with-version')
  Future<chopper.Response<ProductionMasterResponseObject>>
      _v1PlanningCreateWithVersionPost({@Body() TreePlanningCreateModel? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ProductionMasterResponseObject>>
      v1PlanningWorkflowUpdateIdPut(
          {required String? id, WorkflowUpdateModel? body}) {
    generatedMapping.putIfAbsent(
        WorkflowUpdateModel, () => WorkflowUpdateModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ProductionMasterResponseObject,
        () => ProductionMasterResponseObject.fromJsonFactory);

    return _v1PlanningWorkflowUpdateIdPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/planning/workflow-update/{id}')
  Future<chopper.Response<ProductionMasterResponseObject>>
      _v1PlanningWorkflowUpdateIdPut(
          {@Path('id') required String? id, @Body() WorkflowUpdateModel? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ProductionMasterResponseObject>>
      v1PlanningProductionMasterIdPost(
          {required String? id, ProductionMaster? body}) {
    generatedMapping.putIfAbsent(
        ProductionMaster, () => ProductionMaster.fromJsonFactory);
    generatedMapping.putIfAbsent(ProductionMasterResponseObject,
        () => ProductionMasterResponseObject.fromJsonFactory);

    return _v1PlanningProductionMasterIdPost(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Post(path: '/v1/planning/production-master/{id}')
  Future<chopper.Response<ProductionMasterResponseObject>>
      _v1PlanningProductionMasterIdPost(
          {@Path('id') required String? id, @Body() ProductionMaster? body});

  ///
  ///@param body
  Future<chopper.Response<ProjectTaskPlanningResponseModel>>
      v1PlanningCreateProjectPost({ProjectTaskPlanningCreateModel? body}) {
    generatedMapping.putIfAbsent(ProjectTaskPlanningCreateModel,
        () => ProjectTaskPlanningCreateModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ProjectTaskPlanningResponseModel,
        () => ProjectTaskPlanningResponseModel.fromJsonFactory);

    return _v1PlanningCreateProjectPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/planning/create-project')
  Future<chopper.Response<ProjectTaskPlanningResponseModel>>
      _v1PlanningCreateProjectPost(
          {@Body() ProjectTaskPlanningCreateModel? body});

  ///
  ///@param body
  Future<chopper.Response<ProductionMasterResponseObject>>
      v1PlanningReCreatePost({ReCreatePlanningRequestModel? body}) {
    generatedMapping.putIfAbsent(ReCreatePlanningRequestModel,
        () => ReCreatePlanningRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ProductionMasterResponseObject,
        () => ProductionMasterResponseObject.fromJsonFactory);

    return _v1PlanningReCreatePost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/planning/re-create')
  Future<chopper.Response<ProductionMasterResponseObject>>
      _v1PlanningReCreatePost({@Body() ReCreatePlanningRequestModel? body});

  ///Gets filter productions.
  ///@param currentPage
  ///@param pageSize
  ///@param type
  ///@param queryString
  Future<chopper.Response<ProductionResponsePagination>> v1ProductionGet(
      {int? currentPage, int? pageSize, String? type, String? queryString}) {
    generatedMapping.putIfAbsent(ProductionResponsePagination,
        () => ProductionResponsePagination.fromJsonFactory);

    return _v1ProductionGet(
        currentPage: currentPage,
        pageSize: pageSize,
        type: type,
        queryString: queryString);
  }

  ///Gets filter productions.
  ///@param currentPage
  ///@param pageSize
  ///@param type
  ///@param queryString
  @Get(path: '/v1/production')
  Future<chopper.Response<ProductionResponsePagination>> _v1ProductionGet(
      {@Query('currentPage') int? currentPage,
      @Query('pageSize') int? pageSize,
      @Query('type') String? type,
      @Query('queryString') String? queryString});

  ///Creates a production.
  ///@param body The production request model.
  Future<chopper.Response<ProductionResponseObject>> v1ProductionPost(
      {Production? body}) {
    generatedMapping.putIfAbsent(Production, () => Production.fromJsonFactory);
    generatedMapping.putIfAbsent(ProductionResponseObject,
        () => ProductionResponseObject.fromJsonFactory);

    return _v1ProductionPost(body: body);
  }

  ///Creates a production.
  ///@param body The production request model.
  @Post(path: '/v1/production')
  Future<chopper.Response<ProductionResponseObject>> _v1ProductionPost(
      {@Body() Production? body});

  ///Gets a production.
  ///@param id The production id.
  Future<chopper.Response<ProductionResponseObject>> v1ProductionIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(ProductionResponseObject,
        () => ProductionResponseObject.fromJsonFactory);

    return _v1ProductionIdGet(id: id);
  }

  ///Gets a production.
  ///@param id The production id.
  @Get(path: '/v1/production/{id}')
  Future<chopper.Response<ProductionResponseObject>> _v1ProductionIdGet(
      {@Path('id') required String? id});

  ///Edits production.
  ///@param id
  ///@param body
  Future<chopper.Response<ProductionResponseObject>> v1ProductionIdPut(
      {required String? id, Production? body}) {
    generatedMapping.putIfAbsent(Production, () => Production.fromJsonFactory);
    generatedMapping.putIfAbsent(ProductionResponseObject,
        () => ProductionResponseObject.fromJsonFactory);

    return _v1ProductionIdPut(id: id, body: body);
  }

  ///Edits production.
  ///@param id
  ///@param body
  @Put(path: '/v1/production/{id}')
  Future<chopper.Response<ProductionResponseObject>> _v1ProductionIdPut(
      {@Path('id') required String? id, @Body() Production? body});

  ///Deletes many productions.
  ///@param body The reader production ids.
  Future<chopper.Response<BooleanResponseObject>> v1ProductionDeleteManyPost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1ProductionDeleteManyPost(body: body);
  }

  ///Deletes many productions.
  ///@param body The reader production ids.
  @Post(path: '/v1/production/delete/many')
  Future<chopper.Response<BooleanResponseObject>> _v1ProductionDeleteManyPost(
      {@Body() List<String>? body});

  ///
  ///@param parentId
  ///@param refObjectId
  ///@param owners
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  Future<chopper.Response<ProjectViewModelResponsePagination>> v1ProjectsGet(
      {String? parentId,
      String? refObjectId,
      List<String>? owners,
      int? page,
      int? size,
      String? sort,
      String? filter}) {
    generatedMapping.putIfAbsent(ProjectViewModelResponsePagination,
        () => ProjectViewModelResponsePagination.fromJsonFactory);

    return _v1ProjectsGet(
        parentId: parentId,
        refObjectId: refObjectId,
        owners: owners,
        page: page,
        size: size,
        sort: sort,
        filter: filter);
  }

  ///
  ///@param parentId
  ///@param refObjectId
  ///@param owners
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  @Get(path: '/v1/projects')
  Future<chopper.Response<ProjectViewModelResponsePagination>> _v1ProjectsGet(
      {@Query('parentId') String? parentId,
      @Query('refObjectId') String? refObjectId,
      @Query('owners') List<String>? owners,
      @Query('page') int? page,
      @Query('size') int? size,
      @Query('sort') String? sort,
      @Query('filter') String? filter});

  ///
  ///@param body
  Future<chopper.Response<ProjectViewModelResponseObject>> v1ProjectsPost(
      {ProjectResquestModel? body}) {
    generatedMapping.putIfAbsent(
        ProjectResquestModel, () => ProjectResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ProjectViewModelResponseObject,
        () => ProjectViewModelResponseObject.fromJsonFactory);

    return _v1ProjectsPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/projects')
  Future<chopper.Response<ProjectViewModelResponseObject>> _v1ProjectsPost(
      {@Body() ProjectResquestModel? body});

  ///
  ///@param code
  Future<chopper.Response<ProjectViewModelResponseObject>>
      v1ProjectsBycodeCodeGet({required String? code}) {
    generatedMapping.putIfAbsent(ProjectViewModelResponseObject,
        () => ProjectViewModelResponseObject.fromJsonFactory);

    return _v1ProjectsBycodeCodeGet(code: code);
  }

  ///
  ///@param code
  @Get(path: '/v1/projects/bycode/{code}')
  Future<chopper.Response<ProjectViewModelResponseObject>>
      _v1ProjectsBycodeCodeGet({@Path('code') required String? code});

  ///
  ///@param id
  Future<chopper.Response<ProjectViewModelResponseObject>>
      v1ProjectsRelatedObjectIdGet({required String? id}) {
    generatedMapping.putIfAbsent(ProjectViewModelResponseObject,
        () => ProjectViewModelResponseObject.fromJsonFactory);

    return _v1ProjectsRelatedObjectIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/projects/related-object/{id}')
  Future<chopper.Response<ProjectViewModelResponseObject>>
      _v1ProjectsRelatedObjectIdGet({@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<ProjectViewModelResponseObject>> v1ProjectsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(ProjectViewModelResponseObject,
        () => ProjectViewModelResponseObject.fromJsonFactory);

    return _v1ProjectsIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/projects/{id}')
  Future<chopper.Response<ProjectViewModelResponseObject>> _v1ProjectsIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ProjectViewModelResponseObject>> v1ProjectsIdPut(
      {required String? id, ProjectResquestModel? body}) {
    generatedMapping.putIfAbsent(
        ProjectResquestModel, () => ProjectResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ProjectViewModelResponseObject,
        () => ProjectViewModelResponseObject.fromJsonFactory);

    return _v1ProjectsIdPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/projects/{id}')
  Future<chopper.Response<ProjectViewModelResponseObject>> _v1ProjectsIdPut(
      {@Path('id') required String? id, @Body() ProjectResquestModel? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ProjectViewModelResponseObject>> v1ProjectsIdPatch(
      {required String? id, ProjectPatchResquestModel? body}) {
    generatedMapping.putIfAbsent(ProjectPatchResquestModel,
        () => ProjectPatchResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ProjectViewModelResponseObject,
        () => ProjectViewModelResponseObject.fromJsonFactory);

    return _v1ProjectsIdPatch(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Patch(path: '/v1/projects/{id}')
  Future<chopper.Response<ProjectViewModelResponseObject>> _v1ProjectsIdPatch(
      {@Path('id') required String? id,
      @Body() ProjectPatchResquestModel? body});

  ///
  ///@param id
  Future<chopper.Response<ResponseDelete>> v1ProjectsIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ResponseDelete, () => ResponseDelete.fromJsonFactory);

    return _v1ProjectsIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/projects/{id}')
  Future<chopper.Response<ResponseDelete>> _v1ProjectsIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ProjectViewModelResponseObject>>
      v1ProjectsIdStatusPut({required String? id, enums.PMStatusEnums? body}) {
    generatedMapping.putIfAbsent(ProjectViewModelResponseObject,
        () => ProjectViewModelResponseObject.fromJsonFactory);

    return _v1ProjectsIdStatusPut(
        id: id, body: enums.$PMStatusEnumsMap[body]?.toString());
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/projects/{id}/status')
  Future<chopper.Response<ProjectViewModelResponseObject>>
      _v1ProjectsIdStatusPut(
          {@Path('id') required String? id, @Body() dynamic body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ProjectViewModelResponseObject>> v1ProjectsIdOrderPut(
      {required String? id, int? body}) {
    generatedMapping.putIfAbsent(ProjectViewModelResponseObject,
        () => ProjectViewModelResponseObject.fromJsonFactory);

    return _v1ProjectsIdOrderPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/projects/{id}/order')
  Future<chopper.Response<ProjectViewModelResponseObject>>
      _v1ProjectsIdOrderPut(
          {@Path('id') required String? id, @Body() int? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ProjectViewModelResponseObject>>
      v1ProjectsIdParentPut(
          {required String? id, ProjectUpdateParentModel? body}) {
    generatedMapping.putIfAbsent(ProjectUpdateParentModel,
        () => ProjectUpdateParentModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ProjectViewModelResponseObject,
        () => ProjectViewModelResponseObject.fromJsonFactory);

    return _v1ProjectsIdParentPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/projects/{id}/parent')
  Future<chopper.Response<ProjectViewModelResponseObject>>
      _v1ProjectsIdParentPut(
          {@Path('id') required String? id,
          @Body() ProjectUpdateParentModel? body});

  ///
  ///@param body
  Future<chopper.Response<ProjectViewModelResponseList>> v1ProjectsManyPatch(
      {List<ProjectPatchResquestModel>? body}) {
    generatedMapping.putIfAbsent(ProjectViewModelResponseList,
        () => ProjectViewModelResponseList.fromJsonFactory);

    return _v1ProjectsManyPatch(body: body);
  }

  ///
  ///@param body
  @Patch(path: '/v1/projects/many')
  Future<chopper.Response<ProjectViewModelResponseList>> _v1ProjectsManyPatch(
      {@Body() List<ProjectPatchResquestModel>? body});

  ///
  ///@param code
  Future<chopper.Response<ResponseDelete>> v1ProjectsByCodeCodeDelete(
      {required String? code}) {
    generatedMapping.putIfAbsent(
        ResponseDelete, () => ResponseDelete.fromJsonFactory);

    return _v1ProjectsByCodeCodeDelete(code: code);
  }

  ///
  ///@param code
  @Delete(path: '/v1/projects/by-code/{code}')
  Future<chopper.Response<ResponseDelete>> _v1ProjectsByCodeCodeDelete(
      {@Path('code') required String? code});

  ///
  ///@param body
  Future<chopper.Response<ResponseDeleteMulti>> v1ProjectsDeleteManyPost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseDeleteMulti, () => ResponseDeleteMulti.fromJsonFactory);

    return _v1ProjectsDeleteManyPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/projects/delete-many')
  Future<chopper.Response<ResponseDeleteMulti>> _v1ProjectsDeleteManyPost(
      {@Body() List<String>? body});

  ///
  ///@param body
  Future<chopper.Response<ResponseDeleteMulti>> v1ProjectsDeleteManyByCodePost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseDeleteMulti, () => ResponseDeleteMulti.fromJsonFactory);

    return _v1ProjectsDeleteManyByCodePost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/projects/delete-many-by-code')
  Future<chopper.Response<ResponseDeleteMulti>> _v1ProjectsDeleteManyByCodePost(
      {@Body() List<String>? body});

  ///
  ///@param id
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  Future<chopper.Response<ProjectViewModelResponseObject>> v1ProjectsIdTasksGet(
      {required String? id,
      int? page,
      int? size,
      String? sort,
      String? filter}) {
    generatedMapping.putIfAbsent(ProjectViewModelResponseObject,
        () => ProjectViewModelResponseObject.fromJsonFactory);

    return _v1ProjectsIdTasksGet(
        id: id, page: page, size: size, sort: sort, filter: filter);
  }

  ///
  ///@param id
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  @Get(path: '/v1/projects/{id}/tasks')
  Future<chopper.Response<ProjectViewModelResponseObject>>
      _v1ProjectsIdTasksGet(
          {@Path('id') required String? id,
          @Query('page') int? page,
          @Query('size') int? size,
          @Query('sort') String? sort,
          @Query('filter') String? filter});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<PMProjectResponseObject>> v1ProjectsIdClonePost(
      {required String? id, ProjectCloneRequestModel? body}) {
    generatedMapping.putIfAbsent(ProjectCloneRequestModel,
        () => ProjectCloneRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        PMProjectResponseObject, () => PMProjectResponseObject.fromJsonFactory);

    return _v1ProjectsIdClonePost(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Post(path: '/v1/projects/{id}/clone')
  Future<chopper.Response<PMProjectResponseObject>> _v1ProjectsIdClonePost(
      {@Path('id') required String? id,
      @Body() ProjectCloneRequestModel? body});

  ///
  ///@param body
  Future<chopper.Response<TaskViewModelResponseList>>
      v1ProjectsGenerateTaskByTemplatePost(
          {TaskGenerateByTempResquestModel? body}) {
    generatedMapping.putIfAbsent(TaskGenerateByTempResquestModel,
        () => TaskGenerateByTempResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TaskViewModelResponseList,
        () => TaskViewModelResponseList.fromJsonFactory);

    return _v1ProjectsGenerateTaskByTemplatePost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/projects/generate-task-by-template')
  Future<chopper.Response<TaskViewModelResponseList>>
      _v1ProjectsGenerateTaskByTemplatePost(
          {@Body() TaskGenerateByTempResquestModel? body});

  ///
  Future<chopper.Response<ResponseUpdateMulti>>
      v1ProjectsReorderJobTriggerPut() {
    generatedMapping.putIfAbsent(
        ResponseUpdateMulti, () => ResponseUpdateMulti.fromJsonFactory);

    return _v1ProjectsReorderJobTriggerPut();
  }

  ///
  @Put(path: '/v1/projects/reorder-job/trigger', optionalBody: true)
  Future<chopper.Response<ResponseUpdateMulti>>
      _v1ProjectsReorderJobTriggerPut();

  ///
  ///@param id
  Future<chopper.Response<ResponseUpdateMulti>> v1ProjectsJobIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ResponseUpdateMulti, () => ResponseUpdateMulti.fromJsonFactory);

    return _v1ProjectsJobIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/projects/job/{id}')
  Future<chopper.Response<ResponseUpdateMulti>> _v1ProjectsJobIdGet(
      {@Path('id') required String? id});

  ///
  ///@param relatedObject
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  Future<chopper.Response<QRResponseModelResponsePagination>> v1QrcodesGet(
      {List<String>? relatedObject,
      int? page,
      int? size,
      String? sort,
      String? filter}) {
    generatedMapping.putIfAbsent(QRResponseModelResponsePagination,
        () => QRResponseModelResponsePagination.fromJsonFactory);

    return _v1QrcodesGet(
        relatedObject: relatedObject,
        page: page,
        size: size,
        sort: sort,
        filter: filter);
  }

  ///
  ///@param relatedObject
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  @Get(path: '/v1/qrcodes')
  Future<chopper.Response<QRResponseModelResponsePagination>> _v1QrcodesGet(
      {@Query('relatedObject') List<String>? relatedObject,
      @Query('page') int? page,
      @Query('size') int? size,
      @Query('sort') String? sort,
      @Query('filter') String? filter});

  ///
  ///@param body
  Future<chopper.Response<QRResponseModelResponseObject>> v1QrcodesPost(
      {QRCodeRequestModel? body}) {
    generatedMapping.putIfAbsent(
        QRCodeRequestModel, () => QRCodeRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(QRResponseModelResponseObject,
        () => QRResponseModelResponseObject.fromJsonFactory);

    return _v1QrcodesPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/qrcodes')
  Future<chopper.Response<QRResponseModelResponseObject>> _v1QrcodesPost(
      {@Body() QRCodeRequestModel? body});

  ///
  ///@param id
  Future<chopper.Response<QRResponseModelResponseList>> v1QrcodesIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(QRResponseModelResponseList,
        () => QRResponseModelResponseList.fromJsonFactory);

    return _v1QrcodesIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/qrcodes/{id}')
  Future<chopper.Response<QRResponseModelResponseList>> _v1QrcodesIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<QRResponseModelResponseObject>> v1QrcodesIdPut(
      {required String? id, QRCodeRequestModel? body}) {
    generatedMapping.putIfAbsent(
        QRCodeRequestModel, () => QRCodeRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(QRResponseModelResponseObject,
        () => QRResponseModelResponseObject.fromJsonFactory);

    return _v1QrcodesIdPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/qrcodes/{id}')
  Future<chopper.Response<QRResponseModelResponseObject>> _v1QrcodesIdPut(
      {@Path('id') required String? id, @Body() QRCodeRequestModel? body});

  ///
  ///@param id
  Future<chopper.Response<ResponseDelete>> v1QrcodesIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ResponseDelete, () => ResponseDelete.fromJsonFactory);

    return _v1QrcodesIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/qrcodes/{id}')
  Future<chopper.Response<ResponseDelete>> _v1QrcodesIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<RelatedObjResponseList>> v1QrcodesIdRelatedObjectsGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        RelatedObjResponseList, () => RelatedObjResponseList.fromJsonFactory);

    return _v1QrcodesIdRelatedObjectsGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/qrcodes/{id}/related-objects')
  Future<chopper.Response<RelatedObjResponseList>>
      _v1QrcodesIdRelatedObjectsGet({@Path('id') required String? id});

  ///
  ///@param body
  Future<chopper.Response<QRResponseModelResponseList>> v1QrcodesManyPost(
      {List<QRCodeRequestModel>? body}) {
    generatedMapping.putIfAbsent(QRResponseModelResponseList,
        () => QRResponseModelResponseList.fromJsonFactory);

    return _v1QrcodesManyPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/qrcodes/many')
  Future<chopper.Response<QRResponseModelResponseList>> _v1QrcodesManyPost(
      {@Body() List<QRCodeRequestModel>? body});

  ///
  ///@param lotId
  Future<chopper.Response<QRResponseModelResponseList>>
      v1QrcodesGetByLotIdLotIdGet({required String? lotId}) {
    generatedMapping.putIfAbsent(QRResponseModelResponseList,
        () => QRResponseModelResponseList.fromJsonFactory);

    return _v1QrcodesGetByLotIdLotIdGet(lotId: lotId);
  }

  ///
  ///@param lotId
  @Get(path: '/v1/qrcodes/get-by-lotId/{lotId}')
  Future<chopper.Response<QRResponseModelResponseList>>
      _v1QrcodesGetByLotIdLotIdGet({@Path('lotId') required String? lotId});

  ///
  ///@param referenceId
  ///@param productTpmId
  ///@param attributeId
  Future<chopper.Response<QRResponseModelResponseList>>
      v1QrcodesGetByQrcodeIdReferenceIdProductTpmIdAttributeIdGet(
          {required String? referenceId,
          required String? productTpmId,
          required String? attributeId}) {
    generatedMapping.putIfAbsent(QRResponseModelResponseList,
        () => QRResponseModelResponseList.fromJsonFactory);

    return _v1QrcodesGetByQrcodeIdReferenceIdProductTpmIdAttributeIdGet(
        referenceId: referenceId,
        productTpmId: productTpmId,
        attributeId: attributeId);
  }

  ///
  ///@param referenceId
  ///@param productTpmId
  ///@param attributeId
  @Get(
      path:
          '/v1/qrcodes/get-by-qrcodeId/{referenceId}/{productTpmId}/{attributeId}')
  Future<chopper.Response<QRResponseModelResponseList>>
      _v1QrcodesGetByQrcodeIdReferenceIdProductTpmIdAttributeIdGet(
          {@Path('referenceId') required String? referenceId,
          @Path('productTpmId') required String? productTpmId,
          @Path('attributeId') required String? attributeId});

  ///
  ///@param body
  Future<chopper.Response<ResponseDeleteMulti>> v1QrcodesDeleteManyPost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseDeleteMulti, () => ResponseDeleteMulti.fromJsonFactory);

    return _v1QrcodesDeleteManyPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/qrcodes/delete-many')
  Future<chopper.Response<ResponseDeleteMulti>> _v1QrcodesDeleteManyPost(
      {@Body() List<String>? body});

  ///
  ///@param id
  Future<chopper.Response<ReactionResponseObject>> v1ReactionIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ReactionResponseObject, () => ReactionResponseObject.fromJsonFactory);

    return _v1ReactionIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/reaction/{id}')
  Future<chopper.Response<ReactionResponseObject>> _v1ReactionIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ReactionResponseObject>> v1ReactionIdPut(
      {required String? id, ReactionRequestModel? body}) {
    generatedMapping.putIfAbsent(
        ReactionRequestModel, () => ReactionRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ReactionResponseObject, () => ReactionResponseObject.fromJsonFactory);

    return _v1ReactionIdPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/reaction/{id}')
  Future<chopper.Response<ReactionResponseObject>> _v1ReactionIdPut(
      {@Path('id') required String? id, @Body() ReactionRequestModel? body});

  ///
  ///@param id
  Future<chopper.Response<ReactionResponseObject>> v1ReactionIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ReactionResponseObject, () => ReactionResponseObject.fromJsonFactory);

    return _v1ReactionIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/reaction/{id}')
  Future<chopper.Response<ReactionResponseObject>> _v1ReactionIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param objectId
  ///@param objectIds
  ///@param page
  ///@param size
  ///@param sort
  ///@param queryString
  ///@param filter
  Future<chopper.Response<ReactionResponsePagination>> v1ReactionGet(
      {String? objectId,
      String? objectIds,
      int? page,
      int? size,
      String? sort,
      String? queryString,
      String? filter}) {
    generatedMapping.putIfAbsent(ReactionResponsePagination,
        () => ReactionResponsePagination.fromJsonFactory);

    return _v1ReactionGet(
        objectId: objectId,
        objectIds: objectIds,
        page: page,
        size: size,
        sort: sort,
        queryString: queryString,
        filter: filter);
  }

  ///
  ///@param objectId
  ///@param objectIds
  ///@param page
  ///@param size
  ///@param sort
  ///@param queryString
  ///@param filter
  @Get(path: '/v1/reaction')
  Future<chopper.Response<ReactionResponsePagination>> _v1ReactionGet(
      {@Query('objectId') String? objectId,
      @Query('objectIds') String? objectIds,
      @Query('page') int? page,
      @Query('size') int? size,
      @Query('sort') String? sort,
      @Query('queryString') String? queryString,
      @Query('filter') String? filter});

  ///
  ///@param body
  Future<chopper.Response<ReactionResponseObject>> v1ReactionPost(
      {ReactionRequestModel? body}) {
    generatedMapping.putIfAbsent(
        ReactionRequestModel, () => ReactionRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ReactionResponseObject, () => ReactionResponseObject.fromJsonFactory);

    return _v1ReactionPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/reaction')
  Future<chopper.Response<ReactionResponseObject>> _v1ReactionPost(
      {@Body() ReactionRequestModel? body});

  ///
  ///@param body
  Future<chopper.Response<BooleanResponseObject>> v1ReactionDeleteManyPost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1ReactionDeleteManyPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/reaction/delete/many')
  Future<chopper.Response<BooleanResponseObject>> _v1ReactionDeleteManyPost(
      {@Body() List<String>? body});

  ///
  ///@param reference
  ///@param label
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  Future<chopper.Response<ResContactResponseModelResponsePagination>>
      v1ResContactGet(
          {String? reference,
          String? label,
          int? page,
          int? size,
          String? sort,
          String? filter}) {
    generatedMapping.putIfAbsent(ResContactResponseModelResponsePagination,
        () => ResContactResponseModelResponsePagination.fromJsonFactory);

    return _v1ResContactGet(
        reference: reference,
        label: label,
        page: page,
        size: size,
        sort: sort,
        filter: filter);
  }

  ///
  ///@param reference
  ///@param label
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  @Get(path: '/v1/res-contact')
  Future<chopper.Response<ResContactResponseModelResponsePagination>>
      _v1ResContactGet(
          {@Query('reference') String? reference,
          @Query('label') String? label,
          @Query('page') int? page,
          @Query('size') int? size,
          @Query('sort') String? sort,
          @Query('filter') String? filter});

  ///
  ///@param body
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      v1ResContactPost({ResContactUpdateResquestModel? body}) {
    generatedMapping.putIfAbsent(ResContactUpdateResquestModel,
        () => ResContactUpdateResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ResContactResponseModelResponseObject,
        () => ResContactResponseModelResponseObject.fromJsonFactory);

    return _v1ResContactPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/res-contact')
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      _v1ResContactPost({@Body() ResContactUpdateResquestModel? body});

  ///
  ///@param id
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      v1ResContactIdGet({required String? id}) {
    generatedMapping.putIfAbsent(ResContactResponseModelResponseObject,
        () => ResContactResponseModelResponseObject.fromJsonFactory);

    return _v1ResContactIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/res-contact/{id}')
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      _v1ResContactIdGet({@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      v1ResContactIdPut(
          {required String? id, ResContactUpdateResquestModel? body}) {
    generatedMapping.putIfAbsent(ResContactUpdateResquestModel,
        () => ResContactUpdateResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ResContactResponseModelResponseObject,
        () => ResContactResponseModelResponseObject.fromJsonFactory);

    return _v1ResContactIdPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/res-contact/{id}')
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      _v1ResContactIdPut(
          {@Path('id') required String? id,
          @Body() ResContactUpdateResquestModel? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      v1ResContactIdPatch(
          {required String? id, ResContactPatchUpdateResquestModel? body}) {
    generatedMapping.putIfAbsent(ResContactPatchUpdateResquestModel,
        () => ResContactPatchUpdateResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ResContactResponseModelResponseObject,
        () => ResContactResponseModelResponseObject.fromJsonFactory);

    return _v1ResContactIdPatch(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Patch(path: '/v1/res-contact/{id}')
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      _v1ResContactIdPatch(
          {@Path('id') required String? id,
          @Body() ResContactPatchUpdateResquestModel? body});

  ///
  ///@param id
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      v1ResContactIdDelete({required String? id}) {
    generatedMapping.putIfAbsent(ResContactResponseModelResponseObject,
        () => ResContactResponseModelResponseObject.fromJsonFactory);

    return _v1ResContactIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/res-contact/{id}')
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      _v1ResContactIdDelete({@Path('id') required String? id});

  ///
  ///@param body
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      v1ResContactManyPatch({List<ResContactPatchUpdateResquestModel>? body}) {
    generatedMapping.putIfAbsent(ResContactResponseModelResponseObject,
        () => ResContactResponseModelResponseObject.fromJsonFactory);

    return _v1ResContactManyPatch(body: body);
  }

  ///
  ///@param body
  @Patch(path: '/v1/res-contact/many')
  Future<chopper.Response<ResContactResponseModelResponseObject>>
      _v1ResContactManyPatch(
          {@Body() List<ResContactPatchUpdateResquestModel>? body});

  ///
  ///@param body
  Future<chopper.Response<ResContactResponseModelResponseList>>
      v1ResContactDeleteManyPost({List<String>? body}) {
    generatedMapping.putIfAbsent(ResContactResponseModelResponseList,
        () => ResContactResponseModelResponseList.fromJsonFactory);

    return _v1ResContactDeleteManyPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/res-contact/delete/many')
  Future<chopper.Response<ResContactResponseModelResponseList>>
      _v1ResContactDeleteManyPost({@Body() List<String>? body});

  ///
  Future<chopper.Response<Int64ResponseObject>> v1SettingsMaxFileSizeGet() {
    generatedMapping.putIfAbsent(
        Int64ResponseObject, () => Int64ResponseObject.fromJsonFactory);

    return _v1SettingsMaxFileSizeGet();
  }

  ///
  @Get(path: '/v1/settings/max-file-size')
  Future<chopper.Response<Int64ResponseObject>> _v1SettingsMaxFileSizeGet();

  ///
  Future<chopper.Response<StringArrayResponseObject>>
      v1SettingsSupportTypesGet() {
    generatedMapping.putIfAbsent(StringArrayResponseObject,
        () => StringArrayResponseObject.fromJsonFactory);

    return _v1SettingsSupportTypesGet();
  }

  ///
  @Get(path: '/v1/settings/support-types')
  Future<chopper.Response<StringArrayResponseObject>>
      _v1SettingsSupportTypesGet();

  ///
  Future<chopper.Response<StringResponseObject>>
      v1SettingsStorageProviderGet() {
    generatedMapping.putIfAbsent(
        StringResponseObject, () => StringResponseObject.fromJsonFactory);

    return _v1SettingsStorageProviderGet();
  }

  ///
  @Get(path: '/v1/settings/storage-provider')
  Future<chopper.Response<StringResponseObject>>
      _v1SettingsStorageProviderGet();

  ///
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  Future<chopper.Response<SysParamModelResponsePagination>> v1SysParamsGet(
      {int? page, int? size, String? sort, String? filter}) {
    generatedMapping.putIfAbsent(SysParamModelResponsePagination,
        () => SysParamModelResponsePagination.fromJsonFactory);

    return _v1SysParamsGet(page: page, size: size, sort: sort, filter: filter);
  }

  ///
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  @Get(path: '/v1/sys-params')
  Future<chopper.Response<SysParamModelResponsePagination>> _v1SysParamsGet(
      {@Query('page') int? page,
      @Query('size') int? size,
      @Query('sort') String? sort,
      @Query('filter') String? filter});

  ///
  ///@param body
  Future<chopper.Response<SysParamModelResponseObject>> v1SysParamsPost(
      {SysParamRequestModel? body}) {
    generatedMapping.putIfAbsent(
        SysParamRequestModel, () => SysParamRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(SysParamModelResponseObject,
        () => SysParamModelResponseObject.fromJsonFactory);

    return _v1SysParamsPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/sys-params')
  Future<chopper.Response<SysParamModelResponseObject>> _v1SysParamsPost(
      {@Body() SysParamRequestModel? body});

  ///
  ///@param applicationId
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  Future<chopper.Response<SysParamModelResponsePagination>>
      v1UiSettingsParamsGet(
          {String? applicationId,
          int? page,
          int? size,
          String? sort,
          String? filter}) {
    generatedMapping.putIfAbsent(SysParamModelResponsePagination,
        () => SysParamModelResponsePagination.fromJsonFactory);

    return _v1UiSettingsParamsGet(
        applicationId: applicationId,
        page: page,
        size: size,
        sort: sort,
        filter: filter);
  }

  ///
  ///@param applicationId
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  @Get(path: '/v1/ui-settings-params')
  Future<chopper.Response<SysParamModelResponsePagination>>
      _v1UiSettingsParamsGet(
          {@Query('applicationId') String? applicationId,
          @Query('page') int? page,
          @Query('size') int? size,
          @Query('sort') String? sort,
          @Query('filter') String? filter});

  ///
  ///@param category
  ///@param page
  ///@param size
  ///@param sort
  ///@param parentAppId
  ///@param filter
  Future<chopper.Response<SysParamModelResponsePagination>>
      v1SysParamsCategoryParamsGet(
          {required String? category,
          int? page,
          int? size,
          String? sort,
          String? parentAppId,
          String? filter}) {
    generatedMapping.putIfAbsent(SysParamModelResponsePagination,
        () => SysParamModelResponsePagination.fromJsonFactory);

    return _v1SysParamsCategoryParamsGet(
        category: category,
        page: page,
        size: size,
        sort: sort,
        parentAppId: parentAppId,
        filter: filter);
  }

  ///
  ///@param category
  ///@param page
  ///@param size
  ///@param sort
  ///@param parentAppId
  ///@param filter
  @Get(path: '/v1/sys-params/{category}/params')
  Future<chopper.Response<SysParamModelResponsePagination>>
      _v1SysParamsCategoryParamsGet(
          {@Path('category') required String? category,
          @Query('page') int? page,
          @Query('size') int? size,
          @Query('sort') String? sort,
          @Query('parentAppId') String? parentAppId,
          @Query('filter') String? filter});

  ///
  ///@param id
  Future<chopper.Response<SysParamModelResponseObject>> v1SysParamsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(SysParamModelResponseObject,
        () => SysParamModelResponseObject.fromJsonFactory);

    return _v1SysParamsIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/sys-params/{id}')
  Future<chopper.Response<SysParamModelResponseObject>> _v1SysParamsIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<SysParamModelResponseObject>> v1SysParamsIdPut(
      {required String? id, SysParamRequestModel? body}) {
    generatedMapping.putIfAbsent(
        SysParamRequestModel, () => SysParamRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(SysParamModelResponseObject,
        () => SysParamModelResponseObject.fromJsonFactory);

    return _v1SysParamsIdPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/sys-params/{id}')
  Future<chopper.Response<SysParamModelResponseObject>> _v1SysParamsIdPut(
      {@Path('id') required String? id, @Body() SysParamRequestModel? body});

  ///
  ///@param id
  Future<chopper.Response<ResponseDelete>> v1SysParamsIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ResponseDelete, () => ResponseDelete.fromJsonFactory);

    return _v1SysParamsIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/sys-params/{id}')
  Future<chopper.Response<ResponseDelete>> _v1SysParamsIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param paramKey
  Future<chopper.Response<SysParamModelResponseObject>>
      v1SysParamsByKeyParamKeyGet({required String? paramKey}) {
    generatedMapping.putIfAbsent(SysParamModelResponseObject,
        () => SysParamModelResponseObject.fromJsonFactory);

    return _v1SysParamsByKeyParamKeyGet(paramKey: paramKey);
  }

  ///
  ///@param paramKey
  @Get(path: '/v1/sys-params/by-key/{paramKey}')
  Future<chopper.Response<SysParamModelResponseObject>>
      _v1SysParamsByKeyParamKeyGet(
          {@Path('paramKey') required String? paramKey});

  ///
  ///@param paramValue
  Future<chopper.Response<SysParamModelResponseObject>>
      v1SysParamsByValueParamValueGet({required String? paramValue}) {
    generatedMapping.putIfAbsent(SysParamModelResponseObject,
        () => SysParamModelResponseObject.fromJsonFactory);

    return _v1SysParamsByValueParamValueGet(paramValue: paramValue);
  }

  ///
  ///@param paramValue
  @Get(path: '/v1/sys-params/by-value/{paramValue}')
  Future<chopper.Response<SysParamModelResponseObject>>
      _v1SysParamsByValueParamValueGet(
          {@Path('paramValue') required String? paramValue});

  ///
  ///@param body
  Future<chopper.Response<ResponseDeleteMulti>> v1SysParamsDeleteManyPost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseDeleteMulti, () => ResponseDeleteMulti.fromJsonFactory);

    return _v1SysParamsDeleteManyPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/sys-params/delete/many')
  Future<chopper.Response<ResponseDeleteMulti>> _v1SysParamsDeleteManyPost(
      {@Body() List<String>? body});

  ///
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  Future<chopper.Response<SysParamCategoryModelResponsePagination>>
      v1SysParamCategoriesGet(
          {int? page, int? size, String? sort, String? filter}) {
    generatedMapping.putIfAbsent(SysParamCategoryModelResponsePagination,
        () => SysParamCategoryModelResponsePagination.fromJsonFactory);

    return _v1SysParamCategoriesGet(
        page: page, size: size, sort: sort, filter: filter);
  }

  ///
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  @Get(path: '/v1/sys-param-categories')
  Future<chopper.Response<SysParamCategoryModelResponsePagination>>
      _v1SysParamCategoriesGet(
          {@Query('page') int? page,
          @Query('size') int? size,
          @Query('sort') String? sort,
          @Query('filter') String? filter});

  ///
  ///@param body
  Future<chopper.Response<SysParamCategoryResponseObject>>
      v1SysParamCategoriesPost({SysParamCategoryModel? body}) {
    generatedMapping.putIfAbsent(
        SysParamCategoryModel, () => SysParamCategoryModel.fromJsonFactory);
    generatedMapping.putIfAbsent(SysParamCategoryResponseObject,
        () => SysParamCategoryResponseObject.fromJsonFactory);

    return _v1SysParamCategoriesPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/sys-param-categories')
  Future<chopper.Response<SysParamCategoryResponseObject>>
      _v1SysParamCategoriesPost({@Body() SysParamCategoryModel? body});

  ///
  ///@param id
  Future<chopper.Response<SysParamCategoryResponseObject>>
      v1SysParamCategoriesIdGet({required String? id}) {
    generatedMapping.putIfAbsent(SysParamCategoryResponseObject,
        () => SysParamCategoryResponseObject.fromJsonFactory);

    return _v1SysParamCategoriesIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/sys-param-categories/{id}')
  Future<chopper.Response<SysParamCategoryResponseObject>>
      _v1SysParamCategoriesIdGet({@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<SysParamCategoryResponseObject>>
      v1SysParamCategoriesIdPut(
          {required String? id, SysParamCategoryRequestModel? body}) {
    generatedMapping.putIfAbsent(SysParamCategoryRequestModel,
        () => SysParamCategoryRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(SysParamCategoryResponseObject,
        () => SysParamCategoryResponseObject.fromJsonFactory);

    return _v1SysParamCategoriesIdPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/sys-param-categories/{id}')
  Future<chopper.Response<SysParamCategoryResponseObject>>
      _v1SysParamCategoriesIdPut(
          {@Path('id') required String? id,
          @Body() SysParamCategoryRequestModel? body});

  ///
  ///@param id
  Future<chopper.Response<SysParamCategoryResponseObject>>
      v1SysParamCategoriesIdDelete({required String? id}) {
    generatedMapping.putIfAbsent(SysParamCategoryResponseObject,
        () => SysParamCategoryResponseObject.fromJsonFactory);

    return _v1SysParamCategoriesIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/sys-param-categories/{id}')
  Future<chopper.Response<SysParamCategoryResponseObject>>
      _v1SysParamCategoriesIdDelete({@Path('id') required String? id});

  ///
  ///@param body
  Future<chopper.Response<BooleanResponseObject>>
      v1SysParamCategoriesDeleteManyPost({List<String>? body}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1SysParamCategoriesDeleteManyPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/sys-param-categories/delete/many')
  Future<chopper.Response<BooleanResponseObject>>
      _v1SysParamCategoriesDeleteManyPost({@Body() List<String>? body});

  ///
  ///@param projectId
  ///@param refObjectId
  ///@param parentAppId
  ///@param refType
  ///@param refAction
  ///@param types
  ///@param statusObjs
  ///@param userObj
  ///@param managementObj
  ///@param ownerObj
  ///@param supervisorObj
  ///@param coordinatorObj
  ///@param assigneeObj
  ///@param dateFrom
  ///@param dateTo
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  Future<chopper.Response<TaskViewModelResponsePagination>> v1TasksGet(
      {String? projectId,
      String? refObjectId,
      String? parentAppId,
      String? refType,
      String? refAction,
      List<String>? types,
      List<PMStatusEnums>? statusObjs,
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
    generatedMapping.putIfAbsent(TaskViewModelResponsePagination,
        () => TaskViewModelResponsePagination.fromJsonFactory);

    return _v1TasksGet(
        projectId: projectId,
        refObjectId: refObjectId,
        parentAppId: parentAppId,
        refType: refType,
        refAction: refAction,
        types: types,
        statusObjs: statusObjs,
        userObj: userObj,
        managementObj: managementObj,
        ownerObj: ownerObj,
        supervisorObj: supervisorObj,
        coordinatorObj: coordinatorObj,
        assigneeObj: assigneeObj,
        dateFrom: dateFrom,
        dateTo: dateTo,
        page: page,
        size: size,
        sort: sort,
        filter: filter);
  }

  ///
  ///@param projectId
  ///@param refObjectId
  ///@param parentAppId
  ///@param refType
  ///@param refAction
  ///@param types
  ///@param statusObjs
  ///@param userObj
  ///@param managementObj
  ///@param ownerObj
  ///@param supervisorObj
  ///@param coordinatorObj
  ///@param assigneeObj
  ///@param dateFrom
  ///@param dateTo
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  @Get(path: '/v1/tasks')
  Future<chopper.Response<TaskViewModelResponsePagination>> _v1TasksGet(
      {@Query('projectId') String? projectId,
      @Query('refObjectId') String? refObjectId,
      @Query('parentAppId') String? parentAppId,
      @Query('refType') String? refType,
      @Query('refAction') String? refAction,
      @Query('types') List<String>? types,
      @Query('statusObjs') List<PMStatusEnums>? statusObjs,
      @Query('userObj') List<String>? userObj,
      @Query('managementObj') List<String>? managementObj,
      @Query('ownerObj') List<String>? ownerObj,
      @Query('supervisorObj') List<String>? supervisorObj,
      @Query('coordinatorObj') List<String>? coordinatorObj,
      @Query('assigneeObj') List<String>? assigneeObj,
      @Query('dateFrom') String? dateFrom,
      @Query('dateTo') String? dateTo,
      @Query('page') int? page,
      @Query('size') int? size,
      @Query('sort') String? sort,
      @Query('filter') String? filter});

  ///
  ///@param body
  Future<chopper.Response<TaskViewModelResponseObject>> v1TasksPost(
      {TaskResquestModel? body}) {
    generatedMapping.putIfAbsent(
        TaskResquestModel, () => TaskResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/tasks')
  Future<chopper.Response<TaskViewModelResponseObject>> _v1TasksPost(
      {@Body() TaskResquestModel? body});

  ///
  ///@param code
  Future<chopper.Response<TaskViewModelResponseObject>> v1TasksBycodeCodeGet(
      {required String? code}) {
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksBycodeCodeGet(code: code);
  }

  ///
  ///@param code
  @Get(path: '/v1/tasks/bycode/{code}')
  Future<chopper.Response<TaskViewModelResponseObject>> _v1TasksBycodeCodeGet(
      {@Path('code') required String? code});

  ///
  ///@param id
  Future<chopper.Response<TaskViewModelResponseObject>> v1TasksIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/tasks/{id}')
  Future<chopper.Response<TaskViewModelResponseObject>> _v1TasksIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<TaskViewModelResponseObject>> v1TasksIdPut(
      {required String? id, TaskResquestModel? body}) {
    generatedMapping.putIfAbsent(
        TaskResquestModel, () => TaskResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksIdPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/tasks/{id}')
  Future<chopper.Response<TaskViewModelResponseObject>> _v1TasksIdPut(
      {@Path('id') required String? id, @Body() TaskResquestModel? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<TaskViewModelResponseObject>> v1TasksIdPatch(
      {required String? id, TaskPatchResquestModel? body}) {
    generatedMapping.putIfAbsent(
        TaskPatchResquestModel, () => TaskPatchResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksIdPatch(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Patch(path: '/v1/tasks/{id}')
  Future<chopper.Response<TaskViewModelResponseObject>> _v1TasksIdPatch(
      {@Path('id') required String? id, @Body() TaskPatchResquestModel? body});

  ///
  ///@param id
  Future<chopper.Response<ResponseDelete>> v1TasksIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ResponseDelete, () => ResponseDelete.fromJsonFactory);

    return _v1TasksIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/tasks/{id}')
  Future<chopper.Response<ResponseDelete>> _v1TasksIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param projectId
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  Future<chopper.Response<TaskViewModelResponsePagination>>
      v1TasksGetByProjectProjectIdGet(
          {required String? projectId,
          int? page,
          int? size,
          String? sort,
          String? filter}) {
    generatedMapping.putIfAbsent(TaskViewModelResponsePagination,
        () => TaskViewModelResponsePagination.fromJsonFactory);

    return _v1TasksGetByProjectProjectIdGet(
        projectId: projectId,
        page: page,
        size: size,
        sort: sort,
        filter: filter);
  }

  ///
  ///@param projectId
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  @Get(path: '/v1/tasks/get-by-project/{projectId}')
  Future<chopper.Response<TaskViewModelResponsePagination>>
      _v1TasksGetByProjectProjectIdGet(
          {@Path('projectId') required String? projectId,
          @Query('page') int? page,
          @Query('size') int? size,
          @Query('sort') String? sort,
          @Query('filter') String? filter});

  ///
  ///@param body
  Future<chopper.Response<TaskViewModelResponseList>> v1TasksManyPost(
      {List<TaskResquestModel>? body}) {
    generatedMapping.putIfAbsent(TaskViewModelResponseList,
        () => TaskViewModelResponseList.fromJsonFactory);

    return _v1TasksManyPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/tasks/many')
  Future<chopper.Response<TaskViewModelResponseList>> _v1TasksManyPost(
      {@Body() List<TaskResquestModel>? body});

  ///
  ///@param body
  Future<chopper.Response<TaskViewModelResponseList>> v1TasksManyPatch(
      {List<TaskPatchResquestModel>? body}) {
    generatedMapping.putIfAbsent(TaskViewModelResponseList,
        () => TaskViewModelResponseList.fromJsonFactory);

    return _v1TasksManyPatch(body: body);
  }

  ///
  ///@param body
  @Patch(path: '/v1/tasks/many')
  Future<chopper.Response<TaskViewModelResponseList>> _v1TasksManyPatch(
      {@Body() List<TaskPatchResquestModel>? body});

  ///
  ///@param parentTaskId
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  Future<chopper.Response<TaskViewModelResponseObject>>
      v1TasksParentTaskIdSubtasksGet(
          {required String? parentTaskId,
          int? page,
          int? size,
          String? sort,
          String? filter}) {
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksParentTaskIdSubtasksGet(
        parentTaskId: parentTaskId,
        page: page,
        size: size,
        sort: sort,
        filter: filter);
  }

  ///
  ///@param parentTaskId
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  @Get(path: '/v1/tasks/{parentTaskId}/subtasks')
  Future<chopper.Response<TaskViewModelResponseObject>>
      _v1TasksParentTaskIdSubtasksGet(
          {@Path('parentTaskId') required String? parentTaskId,
          @Query('page') int? page,
          @Query('size') int? size,
          @Query('sort') String? sort,
          @Query('filter') String? filter});

  ///
  ///@param parentTaskId
  ///@param body
  Future<chopper.Response<TaskViewModelResponseObject>>
      v1TasksParentTaskIdSubtasksPost(
          {required String? parentTaskId, TaskResquestModel? body}) {
    generatedMapping.putIfAbsent(
        TaskResquestModel, () => TaskResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksParentTaskIdSubtasksPost(
        parentTaskId: parentTaskId, body: body);
  }

  ///
  ///@param parentTaskId
  ///@param body
  @Post(path: '/v1/tasks/{parentTaskId}/subtasks')
  Future<chopper.Response<TaskViewModelResponseObject>>
      _v1TasksParentTaskIdSubtasksPost(
          {@Path('parentTaskId') required String? parentTaskId,
          @Body() TaskResquestModel? body});

  ///
  ///@param parentTaskId
  ///@param body
  Future<chopper.Response<TaskViewModelResponseObject>>
      v1TasksParentTaskIdSubtasksManyPost(
          {required String? parentTaskId, List<TaskResquestModel>? body}) {
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksParentTaskIdSubtasksManyPost(
        parentTaskId: parentTaskId, body: body);
  }

  ///
  ///@param parentTaskId
  ///@param body
  @Post(path: '/v1/tasks/{parentTaskId}/subtasks/many')
  Future<chopper.Response<TaskViewModelResponseObject>>
      _v1TasksParentTaskIdSubtasksManyPost(
          {@Path('parentTaskId') required String? parentTaskId,
          @Body() List<TaskResquestModel>? body});

  ///
  ///@param parentTaskId
  ///@param linkId
  Future<chopper.Response<ResponseDelete>>
      v1TasksParentTaskIdSubtasksLinkIdDelete(
          {required String? parentTaskId, required int? linkId}) {
    generatedMapping.putIfAbsent(
        ResponseDelete, () => ResponseDelete.fromJsonFactory);

    return _v1TasksParentTaskIdSubtasksLinkIdDelete(
        parentTaskId: parentTaskId, linkId: linkId);
  }

  ///
  ///@param parentTaskId
  ///@param linkId
  @Delete(path: '/v1/tasks/{parentTaskId}/subtasks/{linkId}')
  Future<chopper.Response<ResponseDelete>>
      _v1TasksParentTaskIdSubtasksLinkIdDelete(
          {@Path('parentTaskId') required String? parentTaskId,
          @Path('linkId') required int? linkId});

  ///
  ///@param taskId
  Future<chopper.Response<TaskViewModelResponseObject>> v1TasksTaskIdLinksGet(
      {required String? taskId}) {
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksTaskIdLinksGet(taskId: taskId);
  }

  ///
  ///@param taskId
  @Get(path: '/v1/tasks/{taskId}/links')
  Future<chopper.Response<TaskViewModelResponseObject>> _v1TasksTaskIdLinksGet(
      {@Path('taskId') required String? taskId});

  ///
  ///@param taskId
  ///@param body
  Future<chopper.Response<TaskViewModelResponseObject>> v1TasksTaskIdLinksPost(
      {required String? taskId, TaskRelationResquestModel? body}) {
    generatedMapping.putIfAbsent(TaskRelationResquestModel,
        () => TaskRelationResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksTaskIdLinksPost(taskId: taskId, body: body);
  }

  ///
  ///@param taskId
  ///@param body
  @Post(path: '/v1/tasks/{taskId}/links')
  Future<chopper.Response<TaskViewModelResponseObject>> _v1TasksTaskIdLinksPost(
      {@Path('taskId') required String? taskId,
      @Body() TaskRelationResquestModel? body});

  ///
  ///@param taskId
  ///@param linkId
  Future<chopper.Response<TaskViewModelResponseObject>>
      v1TasksTaskIdLinksLinkIdDelete(
          {required String? taskId, required int? linkId}) {
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksTaskIdLinksLinkIdDelete(taskId: taskId, linkId: linkId);
  }

  ///
  ///@param taskId
  ///@param linkId
  @Delete(path: '/v1/tasks/{taskId}/links/{linkId}')
  Future<chopper.Response<TaskViewModelResponseObject>>
      _v1TasksTaskIdLinksLinkIdDelete(
          {@Path('taskId') required String? taskId,
          @Path('linkId') required int? linkId});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<TaskViewModelResponseObject>> v1TasksIdManagementPut(
      {required String? id, TaskManagementResquestModel? body}) {
    generatedMapping.putIfAbsent(TaskManagementResquestModel,
        () => TaskManagementResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksIdManagementPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/tasks/{id}/management')
  Future<chopper.Response<TaskViewModelResponseObject>> _v1TasksIdManagementPut(
      {@Path('id') required String? id,
      @Body() TaskManagementResquestModel? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<GuidListResponseObject>> v1TasksIdOwnerPut(
      {required String? id, TaskOwnerResquestModel? body}) {
    generatedMapping.putIfAbsent(
        TaskOwnerResquestModel, () => TaskOwnerResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        GuidListResponseObject, () => GuidListResponseObject.fromJsonFactory);

    return _v1TasksIdOwnerPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/tasks/{id}/owner')
  Future<chopper.Response<GuidListResponseObject>> _v1TasksIdOwnerPut(
      {@Path('id') required String? id, @Body() TaskOwnerResquestModel? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<TaskViewModelResponseObject>> v1TasksIdSupervisorPut(
      {required String? id, TaskSupervisorResquestModel? body}) {
    generatedMapping.putIfAbsent(TaskSupervisorResquestModel,
        () => TaskSupervisorResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksIdSupervisorPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/tasks/{id}/supervisor')
  Future<chopper.Response<TaskViewModelResponseObject>> _v1TasksIdSupervisorPut(
      {@Path('id') required String? id,
      @Body() TaskSupervisorResquestModel? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<TaskViewModelResponseObject>> v1TasksIdCoordinatorPut(
      {required String? id, TaskCorrdinatorResquestModel? body}) {
    generatedMapping.putIfAbsent(TaskCorrdinatorResquestModel,
        () => TaskCorrdinatorResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksIdCoordinatorPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/tasks/{id}/coordinator')
  Future<chopper.Response<TaskViewModelResponseObject>>
      _v1TasksIdCoordinatorPut(
          {@Path('id') required String? id,
          @Body() TaskCorrdinatorResquestModel? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<TaskViewModelResponseObject>> v1TasksIdAssigneePut(
      {required String? id, TaskAssigneeResquestModel? body}) {
    generatedMapping.putIfAbsent(TaskAssigneeResquestModel,
        () => TaskAssigneeResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksIdAssigneePut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/tasks/{id}/assignee')
  Future<chopper.Response<TaskViewModelResponseObject>> _v1TasksIdAssigneePut(
      {@Path('id') required String? id,
      @Body() TaskAssigneeResquestModel? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<TaskViewModelResponseObject>> v1TasksIdStatusPut(
      {required String? id, enums.PMStatusEnums? body}) {
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksIdStatusPut(
        id: id, body: enums.$PMStatusEnumsMap[body]?.toString());
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/tasks/{id}/status')
  Future<chopper.Response<TaskViewModelResponseObject>> _v1TasksIdStatusPut(
      {@Path('id') required String? id, @Body() dynamic body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<TaskViewModelResponseObject>> v1TasksIdOrderPut(
      {required String? id, int? body}) {
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksIdOrderPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/tasks/{id}/order')
  Future<chopper.Response<TaskViewModelResponseObject>> _v1TasksIdOrderPut(
      {@Path('id') required String? id, @Body() int? body});

  ///
  ///@param code
  Future<chopper.Response<ResponseDelete>> v1TasksByCodeCodeDelete(
      {required String? code}) {
    generatedMapping.putIfAbsent(
        ResponseDelete, () => ResponseDelete.fromJsonFactory);

    return _v1TasksByCodeCodeDelete(code: code);
  }

  ///
  ///@param code
  @Delete(path: '/v1/tasks/by-code/{code}')
  Future<chopper.Response<ResponseDelete>> _v1TasksByCodeCodeDelete(
      {@Path('code') required String? code});

  ///
  ///@param body
  Future<chopper.Response<ResponseDeleteMulti>> v1TasksDeleteManyPost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseDeleteMulti, () => ResponseDeleteMulti.fromJsonFactory);

    return _v1TasksDeleteManyPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/tasks/delete-many')
  Future<chopper.Response<ResponseDeleteMulti>> _v1TasksDeleteManyPost(
      {@Body() List<String>? body});

  ///
  ///@param body
  Future<chopper.Response<ResponseDeleteMulti>> v1TasksDeleteManyByCodePost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseDeleteMulti, () => ResponseDeleteMulti.fromJsonFactory);

    return _v1TasksDeleteManyByCodePost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/tasks/delete-many-by-code')
  Future<chopper.Response<ResponseDeleteMulti>> _v1TasksDeleteManyByCodePost(
      {@Body() List<String>? body});

  ///
  ///@param body
  Future<chopper.Response<TaskViewModelResponseObject>>
      v1TasksLinkExternalObjectPut({TaskExternalLinkModel? body}) {
    generatedMapping.putIfAbsent(
        TaskExternalLinkModel, () => TaskExternalLinkModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksLinkExternalObjectPut(body: body);
  }

  ///
  ///@param body
  @Put(path: '/v1/tasks/link-external-object')
  Future<chopper.Response<TaskViewModelResponseObject>>
      _v1TasksLinkExternalObjectPut({@Body() TaskExternalLinkModel? body});

  ///
  ///@param taskId
  Future<chopper.Response<TaskViewModelResponseObject>>
      v1TasksTaskIdUnlinkExternalObjectPut({required String? taskId}) {
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksTaskIdUnlinkExternalObjectPut(taskId: taskId);
  }

  ///
  ///@param taskId
  @Put(path: '/v1/tasks/{taskId}/unlink-external-object', optionalBody: true)
  Future<chopper.Response<TaskViewModelResponseObject>>
      _v1TasksTaskIdUnlinkExternalObjectPut(
          {@Path('taskId') required String? taskId});

  ///
  ///@param objectId
  ///@param parentAppId
  Future<chopper.Response<TaskViewModelResponseObject>>
      v1TasksObjectIdExternalLinksGet(
          {required String? objectId, String? parentAppId}) {
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksObjectIdExternalLinksGet(
        objectId: objectId, parentAppId: parentAppId);
  }

  ///
  ///@param objectId
  ///@param parentAppId
  @Get(path: '/v1/tasks/{objectId}/external-links')
  Future<chopper.Response<TaskViewModelResponseObject>>
      _v1TasksObjectIdExternalLinksGet(
          {@Path('objectId') required String? objectId,
          @Query('parentAppId') String? parentAppId});

  ///
  ///@param body
  Future<chopper.Response<TaskViewModelResponseObject>> v1TasksMarkTaskDonePut(
      {TaskExternalLinkModel? body}) {
    generatedMapping.putIfAbsent(
        TaskExternalLinkModel, () => TaskExternalLinkModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TasksMarkTaskDonePut(body: body);
  }

  ///
  ///@param body
  @Put(path: '/v1/tasks/mark-task-done')
  Future<chopper.Response<TaskViewModelResponseObject>> _v1TasksMarkTaskDonePut(
      {@Body() TaskExternalLinkModel? body});

  ///
  ///@param projectId
  Future<chopper.Response<ResponseUpdateMulti>> v1TasksReorderJobTriggerPut(
      {String? projectId}) {
    generatedMapping.putIfAbsent(
        ResponseUpdateMulti, () => ResponseUpdateMulti.fromJsonFactory);

    return _v1TasksReorderJobTriggerPut(projectId: projectId);
  }

  ///
  ///@param projectId
  @Put(path: '/v1/tasks/reorder-job/trigger', optionalBody: true)
  Future<chopper.Response<ResponseUpdateMulti>> _v1TasksReorderJobTriggerPut(
      {@Query('projectId') String? projectId});

  ///
  ///@param id
  Future<chopper.Response<ResponseUpdateMulti>> v1TasksJobIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ResponseUpdateMulti, () => ResponseUpdateMulti.fromJsonFactory);

    return _v1TasksJobIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/tasks/job/{id}')
  Future<chopper.Response<ResponseUpdateMulti>> _v1TasksJobIdGet(
      {@Path('id') required String? id});

  ///
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  Future<chopper.Response<TemplateViewModelResponsePagination>> v1TemplateGet(
      {int? page, int? size, String? sort, String? filter}) {
    generatedMapping.putIfAbsent(TemplateViewModelResponsePagination,
        () => TemplateViewModelResponsePagination.fromJsonFactory);

    return _v1TemplateGet(page: page, size: size, sort: sort, filter: filter);
  }

  ///
  ///@param page
  ///@param size
  ///@param sort
  ///@param filter
  @Get(path: '/v1/template')
  Future<chopper.Response<TemplateViewModelResponsePagination>> _v1TemplateGet(
      {@Query('page') int? page,
      @Query('size') int? size,
      @Query('sort') String? sort,
      @Query('filter') String? filter});

  ///
  ///@param body
  Future<chopper.Response<TemplateViewModelResponseObject>> v1TemplatePost(
      {TemplateResquestModel? body}) {
    generatedMapping.putIfAbsent(
        TemplateResquestModel, () => TemplateResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TemplateViewModelResponseObject,
        () => TemplateViewModelResponseObject.fromJsonFactory);

    return _v1TemplatePost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/template')
  Future<chopper.Response<TemplateViewModelResponseObject>> _v1TemplatePost(
      {@Body() TemplateResquestModel? body});

  ///
  ///@param id
  Future<chopper.Response<TemplateViewModelResponseObject>> v1TemplateIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(TemplateViewModelResponseObject,
        () => TemplateViewModelResponseObject.fromJsonFactory);

    return _v1TemplateIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/template/{id}')
  Future<chopper.Response<TemplateViewModelResponseObject>> _v1TemplateIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<TemplateViewModelResponseObject>> v1TemplateIdPut(
      {required String? id, TemplateResquestModel? body}) {
    generatedMapping.putIfAbsent(
        TemplateResquestModel, () => TemplateResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TemplateViewModelResponseObject,
        () => TemplateViewModelResponseObject.fromJsonFactory);

    return _v1TemplateIdPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/template/{id}')
  Future<chopper.Response<TemplateViewModelResponseObject>> _v1TemplateIdPut(
      {@Path('id') required String? id, @Body() TemplateResquestModel? body});

  ///
  ///@param id
  Future<chopper.Response<ResponseDelete>> v1TemplateIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ResponseDelete, () => ResponseDelete.fromJsonFactory);

    return _v1TemplateIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/template/{id}')
  Future<chopper.Response<ResponseDelete>> _v1TemplateIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<TaskViewModelResponseList>> v1TemplateIdTasksGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(TaskViewModelResponseList,
        () => TaskViewModelResponseList.fromJsonFactory);

    return _v1TemplateIdTasksGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/template/{id}/tasks')
  Future<chopper.Response<TaskViewModelResponseList>> _v1TemplateIdTasksGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  ///@param taskId
  ///@param body
  Future<chopper.Response<TaskViewModelResponseObject>> v1TemplateIdTasksPost(
      {required String? id, String? taskId, TaskBaseModel? body}) {
    generatedMapping.putIfAbsent(
        TaskBaseModel, () => TaskBaseModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TemplateIdTasksPost(id: id, taskId: taskId, body: body);
  }

  ///
  ///@param id
  ///@param taskId
  ///@param body
  @Post(path: '/v1/template/{id}/tasks')
  Future<chopper.Response<TaskViewModelResponseObject>> _v1TemplateIdTasksPost(
      {@Path('id') required String? id,
      @Query('taskId') String? taskId,
      @Body() TaskBaseModel? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<TaskViewModelListResponseObject>>
      v1TemplateIdTasksPut({required String? id, List<TaskBaseModel>? body}) {
    generatedMapping.putIfAbsent(TaskViewModelListResponseObject,
        () => TaskViewModelListResponseObject.fromJsonFactory);

    return _v1TemplateIdTasksPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/template/{id}/tasks')
  Future<chopper.Response<TaskViewModelListResponseObject>>
      _v1TemplateIdTasksPut(
          {@Path('id') required String? id, @Body() List<TaskBaseModel>? body});

  ///
  ///@param code
  Future<chopper.Response<TaskViewModelResponseList>> v1TemplateBycodeCodeGet(
      {required String? code}) {
    generatedMapping.putIfAbsent(TaskViewModelResponseList,
        () => TaskViewModelResponseList.fromJsonFactory);

    return _v1TemplateBycodeCodeGet(code: code);
  }

  ///
  ///@param code
  @Get(path: '/v1/template/bycode/{code}')
  Future<chopper.Response<TaskViewModelResponseList>> _v1TemplateBycodeCodeGet(
      {@Path('code') required String? code});

  ///
  ///@param id
  ///@param taskId
  Future<chopper.Response<TaskViewModelResponseObject>>
      v1TemplateIdTasksTaskIdGet(
          {required String? id, required String? taskId}) {
    generatedMapping.putIfAbsent(TaskViewModelResponseObject,
        () => TaskViewModelResponseObject.fromJsonFactory);

    return _v1TemplateIdTasksTaskIdGet(id: id, taskId: taskId);
  }

  ///
  ///@param id
  ///@param taskId
  @Get(path: '/v1/template/{id}/tasks/{taskId}')
  Future<chopper.Response<TaskViewModelResponseObject>>
      _v1TemplateIdTasksTaskIdGet(
          {@Path('id') required String? id,
          @Path('taskId') required String? taskId});

  ///
  ///@param id
  ///@param taskId
  ///@param body
  Future<chopper.Response<TaskBaseModelResponseObject>>
      v1TemplateIdTasksTaskIdPut(
          {required String? id, required String? taskId, TaskBaseModel? body}) {
    generatedMapping.putIfAbsent(
        TaskBaseModel, () => TaskBaseModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TaskBaseModelResponseObject,
        () => TaskBaseModelResponseObject.fromJsonFactory);

    return _v1TemplateIdTasksTaskIdPut(id: id, taskId: taskId, body: body);
  }

  ///
  ///@param id
  ///@param taskId
  ///@param body
  @Put(path: '/v1/template/{id}/tasks/{taskId}')
  Future<chopper.Response<TaskBaseModelResponseObject>>
      _v1TemplateIdTasksTaskIdPut(
          {@Path('id') required String? id,
          @Path('taskId') required String? taskId,
          @Body() TaskBaseModel? body});

  ///
  ///@param id
  ///@param taskId
  ///@param body
  Future<chopper.Response<TaskBaseModelResponseObject>>
      v1TemplateIdTasksTaskIdPatch(
          {required String? id,
          required String? taskId,
          TaskPatchResquestModel? body}) {
    generatedMapping.putIfAbsent(
        TaskPatchResquestModel, () => TaskPatchResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TaskBaseModelResponseObject,
        () => TaskBaseModelResponseObject.fromJsonFactory);

    return _v1TemplateIdTasksTaskIdPatch(id: id, taskId: taskId, body: body);
  }

  ///
  ///@param id
  ///@param taskId
  ///@param body
  @Patch(path: '/v1/template/{id}/tasks/{taskId}')
  Future<chopper.Response<TaskBaseModelResponseObject>>
      _v1TemplateIdTasksTaskIdPatch(
          {@Path('id') required String? id,
          @Path('taskId') required String? taskId,
          @Body() TaskPatchResquestModel? body});

  ///
  ///@param body
  Future<chopper.Response<ResponseDeleteMulti>> v1TemplateDeleteManyPost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        ResponseDeleteMulti, () => ResponseDeleteMulti.fromJsonFactory);

    return _v1TemplateDeleteManyPost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/template/delete-many')
  Future<chopper.Response<ResponseDeleteMulti>> _v1TemplateDeleteManyPost(
      {@Body() List<String>? body});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<TemplateViewModelResponseObject>>
      v1TemplateIdClonePost(
          {required String? id, TaskTemplateRequestModel? body}) {
    generatedMapping.putIfAbsent(TaskTemplateRequestModel,
        () => TaskTemplateRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TemplateViewModelResponseObject,
        () => TemplateViewModelResponseObject.fromJsonFactory);

    return _v1TemplateIdClonePost(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Post(path: '/v1/template/{id}/clone')
  Future<chopper.Response<TemplateViewModelResponseObject>>
      _v1TemplateIdClonePost(
          {@Path('id') required String? id,
          @Body() TaskTemplateRequestModel? body});

  ///
  ///@param taskId
  ///@param body
  Future<chopper.Response<TemplateViewModelResponseObject>>
      v1TasksTaskIdExportTemplatePost(
          {required String? taskId, TaskTemplateResquestModel? body}) {
    generatedMapping.putIfAbsent(TaskTemplateResquestModel,
        () => TaskTemplateResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TemplateViewModelResponseObject,
        () => TemplateViewModelResponseObject.fromJsonFactory);

    return _v1TasksTaskIdExportTemplatePost(taskId: taskId, body: body);
  }

  ///
  ///@param taskId
  ///@param body
  @Post(path: '/v1/tasks/{taskId}/export-template')
  Future<chopper.Response<TemplateViewModelResponseObject>>
      _v1TasksTaskIdExportTemplatePost(
          {@Path('taskId') required String? taskId,
          @Body() TaskTemplateResquestModel? body});

  ///
  ///@param taskId
  ///@param body
  Future<chopper.Response<TemplateViewModelResponseObject>>
      v1TasksTaskIdExportTaskTemplatePost(
          {required String? taskId, TaskTemplateResquestModel? body}) {
    generatedMapping.putIfAbsent(TaskTemplateResquestModel,
        () => TaskTemplateResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TemplateViewModelResponseObject,
        () => TemplateViewModelResponseObject.fromJsonFactory);

    return _v1TasksTaskIdExportTaskTemplatePost(taskId: taskId, body: body);
  }

  ///
  ///@param taskId
  ///@param body
  @Post(path: '/v1/tasks/{taskId}/export-task-template')
  Future<chopper.Response<TemplateViewModelResponseObject>>
      _v1TasksTaskIdExportTaskTemplatePost(
          {@Path('taskId') required String? taskId,
          @Body() TaskTemplateResquestModel? body});

  ///
  ///@param taskId
  ///@param body
  Future<chopper.Response<TemplateViewModelResponseObject>>
      v1TasksTaskIdExportChildrenTasksTemplatePost(
          {required String? taskId, TaskTemplateResquestModel? body}) {
    generatedMapping.putIfAbsent(TaskTemplateResquestModel,
        () => TaskTemplateResquestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TemplateViewModelResponseObject,
        () => TemplateViewModelResponseObject.fromJsonFactory);

    return _v1TasksTaskIdExportChildrenTasksTemplatePost(
        taskId: taskId, body: body);
  }

  ///
  ///@param taskId
  ///@param body
  @Post(path: '/v1/tasks/{taskId}/export-children-tasks-template')
  Future<chopper.Response<TemplateViewModelResponseObject>>
      _v1TasksTaskIdExportChildrenTasksTemplatePost(
          {@Path('taskId') required String? taskId,
          @Body() TaskTemplateResquestModel? body});

  ///
  ///@param projectId
  ///@param body
  Future<chopper.Response<TaskViewModelResponseList>>
      v1ProjectsProjectIdImportTemplatePost(
          {required String? projectId, ImportTaskRequestModel? body}) {
    generatedMapping.putIfAbsent(
        ImportTaskRequestModel, () => ImportTaskRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TaskViewModelResponseList,
        () => TaskViewModelResponseList.fromJsonFactory);

    return _v1ProjectsProjectIdImportTemplatePost(
        projectId: projectId, body: body);
  }

  ///
  ///@param projectId
  ///@param body
  @Post(path: '/v1/projects/{projectId}/import-template')
  Future<chopper.Response<TaskViewModelResponseList>>
      _v1ProjectsProjectIdImportTemplatePost(
          {@Path('projectId') required String? projectId,
          @Body() ImportTaskRequestModel? body});

  ///
  ///@param parentTaskId
  ///@param body
  Future<chopper.Response<TaskViewModelResponseList>>
      v1TasksParentTaskIdImportTemplatePost(
          {required String? parentTaskId, ImportTaskRequestModel? body}) {
    generatedMapping.putIfAbsent(
        ImportTaskRequestModel, () => ImportTaskRequestModel.fromJsonFactory);
    generatedMapping.putIfAbsent(TaskViewModelResponseList,
        () => TaskViewModelResponseList.fromJsonFactory);

    return _v1TasksParentTaskIdImportTemplatePost(
        parentTaskId: parentTaskId, body: body);
  }

  ///
  ///@param parentTaskId
  ///@param body
  @Post(path: '/v1/tasks/{parentTaskId}/import-template')
  Future<chopper.Response<TaskViewModelResponseList>>
      _v1TasksParentTaskIdImportTemplatePost(
          {@Path('parentTaskId') required String? parentTaskId,
          @Body() ImportTaskRequestModel? body});

  ///Tạo phiếu nhập kho.
  ///@param body
  Future<chopper.Response> v1TreePickingPost(
      {CreateTreePickingDetailModel? body}) {
    generatedMapping.putIfAbsent(CreateTreePickingDetailModel,
        () => CreateTreePickingDetailModel.fromJsonFactory);

    return _v1TreePickingPost(body: body);
  }

  ///Tạo phiếu nhập kho.
  ///@param body
  @Post(path: '/v1/tree-picking')
  Future<chopper.Response> _v1TreePickingPost(
      {@Body() CreateTreePickingDetailModel? body});

  ///Lấy số liệu theo dự án thành phần.
  ///@param queryString
  ///@param productTmpId
  ///@param referenceId
  Future<chopper.Response> v1TreePickingGet(
      {String? queryString, String? productTmpId, String? referenceId}) {
    return _v1TreePickingGet(
        queryString: queryString,
        productTmpId: productTmpId,
        referenceId: referenceId);
  }

  ///Lấy số liệu theo dự án thành phần.
  ///@param queryString
  ///@param productTmpId
  ///@param referenceId
  @Get(path: '/v1/tree-picking')
  Future<chopper.Response> _v1TreePickingGet(
      {@Query('queryString') String? queryString,
      @Query('productTmpId') String? productTmpId,
      @Query('referenceId') String? referenceId});

  ///Nhập cây theo lô.
  ///@param body
  Future<chopper.Response> v1TreePickingCreateLotPost(
      {CreateTreePickingLotRequestModel? body}) {
    generatedMapping.putIfAbsent(CreateTreePickingLotRequestModel,
        () => CreateTreePickingLotRequestModel.fromJsonFactory);

    return _v1TreePickingCreateLotPost(body: body);
  }

  ///Nhập cây theo lô.
  ///@param body
  @Post(path: '/v1/tree-picking/create-lot')
  Future<chopper.Response> _v1TreePickingCreateLotPost(
      {@Body() CreateTreePickingLotRequestModel? body});

  ///Lấy số lượng chi tiết theo dự án thành phần.
  ///@param locationId
  ///@param objectId
  ///@param referenceId
  Future<chopper.Response> v1TreePickingGetChildQuantityGet(
      {String? locationId, String? objectId, String? referenceId}) {
    return _v1TreePickingGetChildQuantityGet(
        locationId: locationId, objectId: objectId, referenceId: referenceId);
  }

  ///Lấy số lượng chi tiết theo dự án thành phần.
  ///@param locationId
  ///@param objectId
  ///@param referenceId
  @Get(path: '/v1/tree-picking/get-child-quantity')
  Future<chopper.Response> _v1TreePickingGetChildQuantityGet(
      {@Query('locationId') String? locationId,
      @Query('objectId') String? objectId,
      @Query('referenceId') String? referenceId});

  ///Detail 1 location.
  ///@param locationId
  ///@param objectId
  ///@param referenceId
  Future<chopper.Response> v1TreePickingDetailGet(
      {String? locationId, String? objectId, String? referenceId}) {
    return _v1TreePickingDetailGet(
        locationId: locationId, objectId: objectId, referenceId: referenceId);
  }

  ///Detail 1 location.
  ///@param locationId
  ///@param objectId
  ///@param referenceId
  @Get(path: '/v1/tree-picking/detail')
  Future<chopper.Response> _v1TreePickingDetailGet(
      {@Query('locationId') String? locationId,
      @Query('objectId') String? objectId,
      @Query('referenceId') String? referenceId});

  ///Duyệt phiếu.
  ///@param body
  Future<chopper.Response> v1TreePickingConfirmPickingPost(
      {List<String>? body}) {
    return _v1TreePickingConfirmPickingPost(body: body);
  }

  ///Duyệt phiếu.
  ///@param body
  @Post(path: '/v1/tree-picking/confirm-picking')
  Future<chopper.Response> _v1TreePickingConfirmPickingPost(
      {@Body() List<String>? body});

  ///Tạo phiếu điều chuyển cây.
  ///@param body
  Future<chopper.Response> v1TreePickingTreeTransferPost(
      {TreeStockTransferModel? body}) {
    generatedMapping.putIfAbsent(
        TreeStockTransferModel, () => TreeStockTransferModel.fromJsonFactory);

    return _v1TreePickingTreeTransferPost(body: body);
  }

  ///Tạo phiếu điều chuyển cây.
  ///@param body
  @Post(path: '/v1/tree-picking/tree-transfer')
  Future<chopper.Response> _v1TreePickingTreeTransferPost(
      {@Body() TreeStockTransferModel? body});

  ///Cập nhật sinh trưởng cây.
  ///@param body
  Future<chopper.Response> v1TreePickingTreeGrownPost(
      {TreeGrownCreateRequestModel? body}) {
    generatedMapping.putIfAbsent(TreeGrownCreateRequestModel,
        () => TreeGrownCreateRequestModel.fromJsonFactory);

    return _v1TreePickingTreeGrownPost(body: body);
  }

  ///Cập nhật sinh trưởng cây.
  ///@param body
  @Post(path: '/v1/tree-picking/tree-grown')
  Future<chopper.Response> _v1TreePickingTreeGrownPost(
      {@Body() TreeGrownCreateRequestModel? body});

  ///Lấy lịch sử sinh trưởng cây.
  ///@param lotId
  Future<chopper.Response> v1TreePickingTreeGrowthLotIdGet(
      {required String? lotId}) {
    return _v1TreePickingTreeGrowthLotIdGet(lotId: lotId);
  }

  ///Lấy lịch sử sinh trưởng cây.
  ///@param lotId
  @Get(path: '/v1/tree-picking/tree-growth/{lotId}')
  Future<chopper.Response> _v1TreePickingTreeGrowthLotIdGet(
      {@Path('lotId') required String? lotId});

  ///Lấy lịch sử điều chuyển cây
  ///@param lotId
  Future<chopper.Response> v1TreePickingTreeTransferHistoryLotIdGet(
      {required String? lotId}) {
    return _v1TreePickingTreeTransferHistoryLotIdGet(lotId: lotId);
  }

  ///Lấy lịch sử điều chuyển cây
  ///@param lotId
  @Get(path: '/v1/tree-picking/tree-transfer-history/{lotId}')
  Future<chopper.Response> _v1TreePickingTreeTransferHistoryLotIdGet(
      {@Path('lotId') required String? lotId});

  ///Phiếu điều chỉnh tồn kho cây.
  ///@param body
  Future<chopper.Response> v1TreePickingTreeAdjustmentPost(
      {CreateTreeInventoryAdjustmentRequest? body}) {
    generatedMapping.putIfAbsent(CreateTreeInventoryAdjustmentRequest,
        () => CreateTreeInventoryAdjustmentRequest.fromJsonFactory);

    return _v1TreePickingTreeAdjustmentPost(body: body);
  }

  ///Phiếu điều chỉnh tồn kho cây.
  ///@param body
  @Post(path: '/v1/tree-picking/tree-adjustment')
  Future<chopper.Response> _v1TreePickingTreeAdjustmentPost(
      {@Body() CreateTreeInventoryAdjustmentRequest? body});

  ///Sửa thông tin cây.
  ///@param lotId Id serial
  ///@param isMark Cây đặc biệt hay không
  ///@param lotName Tên cây
  ///@param description Mô tả
  Future<chopper.Response> v1TreePickingStockLotLotIdPut(
      {required String? lotId,
      bool? isMark,
      String? lotName,
      String? description}) {
    return _v1TreePickingStockLotLotIdPut(
        lotId: lotId,
        isMark: isMark,
        lotName: lotName,
        description: description);
  }

  ///Sửa thông tin cây.
  ///@param lotId Id serial
  ///@param isMark Cây đặc biệt hay không
  ///@param lotName Tên cây
  ///@param description Mô tả
  @Put(path: '/v1/tree-picking/stock-lot/{lotId}', optionalBody: true)
  Future<chopper.Response> _v1TreePickingStockLotLotIdPut(
      {@Path('lotId') required String? lotId,
      @Query('isMark') bool? isMark,
      @Query('lotName') String? lotName,
      @Query('description') String? description});

  ///Xóa cây- cho vào thùng rác.
  ///@param body
  Future<chopper.Response> v1TreePickingDeleteTreePost(
      {TreeStockTransferModel? body}) {
    generatedMapping.putIfAbsent(
        TreeStockTransferModel, () => TreeStockTransferModel.fromJsonFactory);

    return _v1TreePickingDeleteTreePost(body: body);
  }

  ///Xóa cây- cho vào thùng rác.
  ///@param body
  @Post(path: '/v1/tree-picking/delete-tree')
  Future<chopper.Response> _v1TreePickingDeleteTreePost(
      {@Body() TreeStockTransferModel? body});

  ///Đánh dấu cây chết.
  ///@param body
  Future<chopper.Response> v1TreePickingMarkTreeDiePost(
      {TreeStockTransferModel? body}) {
    generatedMapping.putIfAbsent(
        TreeStockTransferModel, () => TreeStockTransferModel.fromJsonFactory);

    return _v1TreePickingMarkTreeDiePost(body: body);
  }

  ///Đánh dấu cây chết.
  ///@param body
  @Post(path: '/v1/tree-picking/mark-tree-die')
  Future<chopper.Response> _v1TreePickingMarkTreeDiePost(
      {@Body() TreeStockTransferModel? body});

  ///Thay thế cây.
  ///@param body
  Future<chopper.Response> v1TreePickingReplaceTreePost(
      {ReplaceTreeRequestModel? body}) {
    generatedMapping.putIfAbsent(
        ReplaceTreeRequestModel, () => ReplaceTreeRequestModel.fromJsonFactory);

    return _v1TreePickingReplaceTreePost(body: body);
  }

  ///Thay thế cây.
  ///@param body
  @Post(path: '/v1/tree-picking/replace-tree')
  Future<chopper.Response> _v1TreePickingReplaceTreePost(
      {@Body() ReplaceTreeRequestModel? body});

  ///Xuất excel báo cáo tổng hợp.
  ///@param body
  Future<chopper.Response> v1TreePickingExportFileReferencePost(
      {TreeStockOnHandExtendQueryModel? body}) {
    generatedMapping.putIfAbsent(TreeStockOnHandExtendQueryModel,
        () => TreeStockOnHandExtendQueryModel.fromJsonFactory);

    return _v1TreePickingExportFileReferencePost(body: body);
  }

  ///Xuất excel báo cáo tổng hợp.
  ///@param body
  @Post(path: '/v1/tree-picking/export-file/reference')
  Future<chopper.Response> _v1TreePickingExportFileReferencePost(
      {@Body() TreeStockOnHandExtendQueryModel? body});

  ///Xuất excel theo khu vực.
  ///@param statusId
  Future<chopper.Response> v1TreePickingExportFileLocationGet(
      {String? statusId}) {
    return _v1TreePickingExportFileLocationGet(statusId: statusId);
  }

  ///Xuất excel theo khu vực.
  ///@param statusId
  @Get(path: '/v1/tree-picking/export-file/location')
  Future<chopper.Response> _v1TreePickingExportFileLocationGet(
      {@Query('statusId') String? statusId});

  ///Xuất excel báo cáo nhóm cây.
  ///@param referenceId
  Future<chopper.Response> v1TreePickingExportFileGroupTreeGet(
      {String? referenceId}) {
    return _v1TreePickingExportFileGroupTreeGet(referenceId: referenceId);
  }

  ///Xuất excel báo cáo nhóm cây.
  ///@param referenceId
  @Get(path: '/v1/tree-picking/export-file/group-tree')
  Future<chopper.Response> _v1TreePickingExportFileGroupTreeGet(
      {@Query('referenceId') String? referenceId});

  ///Báo cáo nhóm cây.
  ///@param referenceId
  Future<chopper.Response> v1TreePickingReportGroupTreeGet(
      {String? referenceId}) {
    return _v1TreePickingReportGroupTreeGet(referenceId: referenceId);
  }

  ///Báo cáo nhóm cây.
  ///@param referenceId
  @Get(path: '/v1/tree-picking/report-group-tree')
  Future<chopper.Response> _v1TreePickingReportGroupTreeGet(
      {@Query('referenceId') String? referenceId});

  ///Báo cáo phân bổ cây.
  Future<chopper.Response> v1TreePickingReportDistributedTreeGet() {
    return _v1TreePickingReportDistributedTreeGet();
  }

  ///Báo cáo phân bổ cây.
  @Get(path: '/v1/tree-picking/report-distributed-tree')
  Future<chopper.Response> _v1TreePickingReportDistributedTreeGet();

  ///Báo cáo theo nhóm cây.
  ///@param productAttributeId
  Future<chopper.Response> v1TreePickingReportByGroupTreeGet(
      {String? productAttributeId}) {
    return _v1TreePickingReportByGroupTreeGet(
        productAttributeId: productAttributeId);
  }

  ///Báo cáo theo nhóm cây.
  ///@param productAttributeId
  @Get(path: '/v1/tree-picking/report-by-group-tree')
  Future<chopper.Response> _v1TreePickingReportByGroupTreeGet(
      {@Query('productAttributeId') String? productAttributeId});

  ///Xuất excel phân bổ cây.
  Future<chopper.Response> v1TreePickingExportFileDistributedTreeGet() {
    return _v1TreePickingExportFileDistributedTreeGet();
  }

  ///Xuất excel phân bổ cây.
  @Get(path: '/v1/tree-picking/export-file/distributed-tree')
  Future<chopper.Response> _v1TreePickingExportFileDistributedTreeGet();

  ///Xuất excel theo nhóm cây.
  ///@param productAttributeId
  Future<chopper.Response> v1TreePickingExportFileByGroupTreeGet(
      {String? productAttributeId}) {
    return _v1TreePickingExportFileByGroupTreeGet(
        productAttributeId: productAttributeId);
  }

  ///Xuất excel theo nhóm cây.
  ///@param productAttributeId
  @Get(path: '/v1/tree-picking/export-file/by-group-tree')
  Future<chopper.Response> _v1TreePickingExportFileByGroupTreeGet(
      {@Query('productAttributeId') String? productAttributeId});

  ///Lấy số lượng cây của chủ đầu tư
  Future<chopper.Response> v1TreePickingGetTreeQuanlityByOwnerGet() {
    return _v1TreePickingGetTreeQuanlityByOwnerGet();
  }

  ///Lấy số lượng cây của chủ đầu tư
  @Get(path: '/v1/tree-picking/get-tree-quanlity-by-owner')
  Future<chopper.Response> _v1TreePickingGetTreeQuanlityByOwnerGet();

  ///
  ///@param body
  Future<chopper.Response<List<TreeStockOnHand>>>
      v1TreeStockOnHandUpdateObjnamePost({TreeStockOnHandUpdateModel? body}) {
    generatedMapping.putIfAbsent(TreeStockOnHandUpdateModel,
        () => TreeStockOnHandUpdateModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        TreeStockOnHand, () => TreeStockOnHand.fromJsonFactory);

    return _v1TreeStockOnHandUpdateObjnamePost(body: body);
  }

  ///
  ///@param body
  @Post(path: '/v1/tree-stock-on-hand/update-objname')
  Future<chopper.Response<List<TreeStockOnHand>>>
      _v1TreeStockOnHandUpdateObjnamePost(
          {@Body() TreeStockOnHandUpdateModel? body});

  ///
  ///@param body
  Future<chopper.Response<List<String>>>
      v1TreeStockOnHandGetListProductTemplateAvailableDeletePost(
          {List<String>? body}) {
    return _v1TreeStockOnHandGetListProductTemplateAvailableDeletePost(
        body: body);
  }

  ///
  ///@param body
  @Post(
      path: '/v1/tree-stock-on-hand/get-list-product-template-available-delete')
  Future<chopper.Response<List<String>>>
      _v1TreeStockOnHandGetListProductTemplateAvailableDeletePost(
          {@Body() List<String>? body});

  ///
  ///@param File
  Future<chopper.Response<FileResponseModelResponseObject>> v1UploadImagePost(
      {required List<String>? file}) {
    generatedMapping.putIfAbsent(FileResponseModelResponseObject,
        () => FileResponseModelResponseObject.fromJsonFactory);

    return _v1UploadImagePost(file: file);
  }

  ///
  ///@param File
  @Post(path: '/v1/upload/image', optionalBody: true)
  Future<chopper.Response<FileResponseModelResponseObject>> _v1UploadImagePost(
      {@Field('File') required List<String>? file});

  ///
  ///@param File
  Future<chopper.Response<FileResponseModelResponseList>> v1UploadPost(
      {required List<String>? file}) {
    generatedMapping.putIfAbsent(FileResponseModelResponseList,
        () => FileResponseModelResponseList.fromJsonFactory);

    return _v1UploadPost(file: file);
  }

  ///
  ///@param File
  @Post(path: '/v1/upload', optionalBody: true)
  Future<chopper.Response<FileResponseModelResponseList>> _v1UploadPost(
      {@Field('File') required List<String>? file});

  ///
  ///@param File
  Future<chopper.Response<FileResponseModelResponseList>> v1UploadMultiplePost(
      {required List<String>? file}) {
    generatedMapping.putIfAbsent(FileResponseModelResponseList,
        () => FileResponseModelResponseList.fromJsonFactory);

    return _v1UploadMultiplePost(file: file);
  }

  ///
  ///@param File
  @Post(path: '/v1/upload/multiple', optionalBody: true)
  Future<chopper.Response<FileResponseModelResponseList>> _v1UploadMultiplePost(
      {@Field('File') required List<String>? file});

  ///Gets filterwork center.
  ///@param currentPage
  ///@param pageSize
  ///@param type
  ///@param queryString
  Future<chopper.Response<WorkCenterResponsePagination>> v1WorkCenterGet(
      {int? currentPage, int? pageSize, String? type, String? queryString}) {
    generatedMapping.putIfAbsent(WorkCenterResponsePagination,
        () => WorkCenterResponsePagination.fromJsonFactory);

    return _v1WorkCenterGet(
        currentPage: currentPage,
        pageSize: pageSize,
        type: type,
        queryString: queryString);
  }

  ///Gets filterwork center.
  ///@param currentPage
  ///@param pageSize
  ///@param type
  ///@param queryString
  @Get(path: '/v1/work-center')
  Future<chopper.Response<WorkCenterResponsePagination>> _v1WorkCenterGet(
      {@Query('currentPage') int? currentPage,
      @Query('pageSize') int? pageSize,
      @Query('type') String? type,
      @Query('queryString') String? queryString});

  ///Creates a work center.
  ///@param body The work center request model.
  Future<chopper.Response<WorkCenterModelResponseObject>> v1WorkCenterPost(
      {WorkCenter? body}) {
    generatedMapping.putIfAbsent(WorkCenter, () => WorkCenter.fromJsonFactory);
    generatedMapping.putIfAbsent(WorkCenterModelResponseObject,
        () => WorkCenterModelResponseObject.fromJsonFactory);

    return _v1WorkCenterPost(body: body);
  }

  ///Creates a work center.
  ///@param body The work center request model.
  @Post(path: '/v1/work-center')
  Future<chopper.Response<WorkCenterModelResponseObject>> _v1WorkCenterPost(
      {@Body() WorkCenter? body});

  ///Gets a work center.
  ///@param id The work center id.
  Future<chopper.Response<WorkCenterModelResponseObject>> v1WorkCenterIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(WorkCenterModelResponseObject,
        () => WorkCenterModelResponseObject.fromJsonFactory);

    return _v1WorkCenterIdGet(id: id);
  }

  ///Gets a work center.
  ///@param id The work center id.
  @Get(path: '/v1/work-center/{id}')
  Future<chopper.Response<WorkCenterModelResponseObject>> _v1WorkCenterIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  ///@param body
  Future<chopper.Response<WorkCenterResponseObject>> v1WorkCenterIdPut(
      {required String? id, WorkCenter? body}) {
    generatedMapping.putIfAbsent(WorkCenter, () => WorkCenter.fromJsonFactory);
    generatedMapping.putIfAbsent(WorkCenterResponseObject,
        () => WorkCenterResponseObject.fromJsonFactory);

    return _v1WorkCenterIdPut(id: id, body: body);
  }

  ///
  ///@param id
  ///@param body
  @Put(path: '/v1/work-center/{id}')
  Future<chopper.Response<WorkCenterResponseObject>> _v1WorkCenterIdPut(
      {@Path('id') required String? id, @Body() WorkCenter? body});

  ///Deletes many work center.
  ///@param body The reader work center ids.
  Future<chopper.Response<BooleanResponseObject>> v1WorkCenterDeleteManyPost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1WorkCenterDeleteManyPost(body: body);
  }

  ///Deletes many work center.
  ///@param body The reader work center ids.
  @Post(path: '/v1/work-center/delete/many')
  Future<chopper.Response<BooleanResponseObject>> _v1WorkCenterDeleteManyPost(
      {@Body() List<String>? body});

  ///Gets a work center.
  ///@param code
  ///@param id The work center id.
  Future<chopper.Response<BooleanResponseObject>>
      v1WorkCenterCheckCodeAvailableCodeGet(
          {required String? code, String? id}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1WorkCenterCheckCodeAvailableCodeGet(code: code, id: id);
  }

  ///Gets a work center.
  ///@param code
  ///@param id The work center id.
  @Get(path: '/v1/work-center/check-code-available/{code}')
  Future<chopper.Response<BooleanResponseObject>>
      _v1WorkCenterCheckCodeAvailableCodeGet(
          {@Path('code') required String? code, @Query('id') String? id});

  ///Gets filter working times.
  ///@param year
  Future<chopper.Response<WorkingTimeResponseList>> v1WorkingTimeGet(
      {int? year}) {
    generatedMapping.putIfAbsent(
        WorkingTimeResponseList, () => WorkingTimeResponseList.fromJsonFactory);

    return _v1WorkingTimeGet(year: year);
  }

  ///Gets filter working times.
  ///@param year
  @Get(path: '/v1/working-time')
  Future<chopper.Response<WorkingTimeResponseList>> _v1WorkingTimeGet(
      {@Query('year') int? year});

  ///Creates a working time.
  ///@param body The working time request model.
  Future<chopper.Response<WorkingTimeResponseObject>> v1WorkingTimePost(
      {WorkingTime? body}) {
    generatedMapping.putIfAbsent(
        WorkingTime, () => WorkingTime.fromJsonFactory);
    generatedMapping.putIfAbsent(WorkingTimeResponseObject,
        () => WorkingTimeResponseObject.fromJsonFactory);

    return _v1WorkingTimePost(body: body);
  }

  ///Creates a working time.
  ///@param body The working time request model.
  @Post(path: '/v1/working-time')
  Future<chopper.Response<WorkingTimeResponseObject>> _v1WorkingTimePost(
      {@Body() WorkingTime? body});

  ///Gets a working time.
  ///@param id The working time id.
  Future<chopper.Response<WorkingTimeResponseObject>> v1WorkingTimeIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(WorkingTimeResponseObject,
        () => WorkingTimeResponseObject.fromJsonFactory);

    return _v1WorkingTimeIdGet(id: id);
  }

  ///Gets a working time.
  ///@param id The working time id.
  @Get(path: '/v1/working-time/{id}')
  Future<chopper.Response<WorkingTimeResponseObject>> _v1WorkingTimeIdGet(
      {@Path('id') required String? id});

  ///Edit a working time.
  ///@param id
  ///@param body
  Future<chopper.Response<WorkingTimeResponseObject>> v1WorkingTimeIdPut(
      {required String? id, WorkingTime? body}) {
    generatedMapping.putIfAbsent(
        WorkingTime, () => WorkingTime.fromJsonFactory);
    generatedMapping.putIfAbsent(WorkingTimeResponseObject,
        () => WorkingTimeResponseObject.fromJsonFactory);

    return _v1WorkingTimeIdPut(id: id, body: body);
  }

  ///Edit a working time.
  ///@param id
  ///@param body
  @Put(path: '/v1/working-time/{id}')
  Future<chopper.Response<WorkingTimeResponseObject>> _v1WorkingTimeIdPut(
      {@Path('id') required String? id, @Body() WorkingTime? body});

  ///Deletes many working times.
  ///@param body The reader working time ids.
  Future<chopper.Response<BooleanResponseObject>> v1WorkingTimeDeleteManyPost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1WorkingTimeDeleteManyPost(body: body);
  }

  ///Deletes many working times.
  ///@param body The reader working time ids.
  @Post(path: '/v1/working-time/delete/many')
  Future<chopper.Response<BooleanResponseObject>> _v1WorkingTimeDeleteManyPost(
      {@Body() List<String>? body});

  ///Gets filter work orders.
  ///@param currentPage
  ///@param pageSize
  ///@param type
  ///@param queryString
  Future<chopper.Response<WorkOrderResponsePagination>> v1WorkOrderGet(
      {int? currentPage, int? pageSize, String? type, String? queryString}) {
    generatedMapping.putIfAbsent(WorkOrderResponsePagination,
        () => WorkOrderResponsePagination.fromJsonFactory);

    return _v1WorkOrderGet(
        currentPage: currentPage,
        pageSize: pageSize,
        type: type,
        queryString: queryString);
  }

  ///Gets filter work orders.
  ///@param currentPage
  ///@param pageSize
  ///@param type
  ///@param queryString
  @Get(path: '/v1/work-order')
  Future<chopper.Response<WorkOrderResponsePagination>> _v1WorkOrderGet(
      {@Query('currentPage') int? currentPage,
      @Query('pageSize') int? pageSize,
      @Query('type') String? type,
      @Query('queryString') String? queryString});

  ///Creates a work order.
  ///@param body The work order request model.
  Future<chopper.Response<WorkOrderResponseObject>> v1WorkOrderPost(
      {WorkOrder? body}) {
    generatedMapping.putIfAbsent(WorkOrder, () => WorkOrder.fromJsonFactory);
    generatedMapping.putIfAbsent(
        WorkOrderResponseObject, () => WorkOrderResponseObject.fromJsonFactory);

    return _v1WorkOrderPost(body: body);
  }

  ///Creates a work order.
  ///@param body The work order request model.
  @Post(path: '/v1/work-order')
  Future<chopper.Response<WorkOrderResponseObject>> _v1WorkOrderPost(
      {@Body() WorkOrder? body});

  ///Gets a work order.
  ///@param id The work order id.
  Future<chopper.Response<WorkOrderResponseObject>> v1WorkOrderIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        WorkOrderResponseObject, () => WorkOrderResponseObject.fromJsonFactory);

    return _v1WorkOrderIdGet(id: id);
  }

  ///Gets a work order.
  ///@param id The work order id.
  @Get(path: '/v1/work-order/{id}')
  Future<chopper.Response<WorkOrderResponseObject>> _v1WorkOrderIdGet(
      {@Path('id') required String? id});

  ///Edit work order.
  ///@param id
  ///@param body
  Future<chopper.Response<WorkOrderResponseObject>> v1WorkOrderIdPut(
      {required String? id, WorkOrder? body}) {
    generatedMapping.putIfAbsent(WorkOrder, () => WorkOrder.fromJsonFactory);
    generatedMapping.putIfAbsent(
        WorkOrderResponseObject, () => WorkOrderResponseObject.fromJsonFactory);

    return _v1WorkOrderIdPut(id: id, body: body);
  }

  ///Edit work order.
  ///@param id
  ///@param body
  @Put(path: '/v1/work-order/{id}')
  Future<chopper.Response<WorkOrderResponseObject>> _v1WorkOrderIdPut(
      {@Path('id') required String? id, @Body() WorkOrder? body});

  ///Deletes many work orders.
  ///@param body The reader work order ids.
  Future<chopper.Response<BooleanResponseObject>> v1WorkOrderDeleteManyPost(
      {List<String>? body}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1WorkOrderDeleteManyPost(body: body);
  }

  ///Deletes many work orders.
  ///@param body The reader work order ids.
  @Post(path: '/v1/work-order/delete/many')
  Future<chopper.Response<BooleanResponseObject>> _v1WorkOrderDeleteManyPost(
      {@Body() List<String>? body});

  ///Deletes many work orders.
  ///@param body
  Future<chopper.Response> v1WorkOrderCreateManyPost(
      {CreateWorkOrderRequestModel? body}) {
    generatedMapping.putIfAbsent(CreateWorkOrderRequestModel,
        () => CreateWorkOrderRequestModel.fromJsonFactory);

    return _v1WorkOrderCreateManyPost(body: body);
  }

  ///Deletes many work orders.
  ///@param body
  @Post(path: '/v1/work-order/create-many')
  Future<chopper.Response> _v1WorkOrderCreateManyPost(
      {@Body() CreateWorkOrderRequestModel? body});

  ///Gets filter work order plannings.
  ///@param currentPage
  ///@param pageSize
  ///@param type
  ///@param queryString
  Future<chopper.Response<WorkOrderPlanningResponsePagination>>
      v1WorkOrderPlanningGet(
          {int? currentPage,
          int? pageSize,
          String? type,
          String? queryString}) {
    generatedMapping.putIfAbsent(WorkOrderPlanningResponsePagination,
        () => WorkOrderPlanningResponsePagination.fromJsonFactory);

    return _v1WorkOrderPlanningGet(
        currentPage: currentPage,
        pageSize: pageSize,
        type: type,
        queryString: queryString);
  }

  ///Gets filter work order plannings.
  ///@param currentPage
  ///@param pageSize
  ///@param type
  ///@param queryString
  @Get(path: '/v1/work-order-planning')
  Future<chopper.Response<WorkOrderPlanningResponsePagination>>
      _v1WorkOrderPlanningGet(
          {@Query('currentPage') int? currentPage,
          @Query('pageSize') int? pageSize,
          @Query('type') String? type,
          @Query('queryString') String? queryString});

  ///Creates a work order planning.
  ///@param body The work order planning request model.
  Future<chopper.Response<WorkOrderPlanningResponseObject>>
      v1WorkOrderPlanningPost({WorkOrderPlanning? body}) {
    generatedMapping.putIfAbsent(
        WorkOrderPlanning, () => WorkOrderPlanning.fromJsonFactory);
    generatedMapping.putIfAbsent(WorkOrderPlanningResponseObject,
        () => WorkOrderPlanningResponseObject.fromJsonFactory);

    return _v1WorkOrderPlanningPost(body: body);
  }

  ///Creates a work order planning.
  ///@param body The work order planning request model.
  @Post(path: '/v1/work-order-planning')
  Future<chopper.Response<WorkOrderPlanningResponseObject>>
      _v1WorkOrderPlanningPost({@Body() WorkOrderPlanning? body});

  ///Gets a work order planning.
  ///@param id The work order planning id.
  Future<chopper.Response<WorkOrderPlanningResponseObject>>
      v1WorkOrderPlanningIdGet({required String? id}) {
    generatedMapping.putIfAbsent(WorkOrderPlanningResponseObject,
        () => WorkOrderPlanningResponseObject.fromJsonFactory);

    return _v1WorkOrderPlanningIdGet(id: id);
  }

  ///Gets a work order planning.
  ///@param id The work order planning id.
  @Get(path: '/v1/work-order-planning/{id}')
  Future<chopper.Response<WorkOrderPlanningResponseObject>>
      _v1WorkOrderPlanningIdGet({@Path('id') required String? id});

  ///Edit work order planning.
  ///@param id
  ///@param body
  Future<chopper.Response<WorkOrderPlanningResponseObject>>
      v1WorkOrderPlanningIdPut({required String? id, WorkOrderPlanning? body}) {
    generatedMapping.putIfAbsent(
        WorkOrderPlanning, () => WorkOrderPlanning.fromJsonFactory);
    generatedMapping.putIfAbsent(WorkOrderPlanningResponseObject,
        () => WorkOrderPlanningResponseObject.fromJsonFactory);

    return _v1WorkOrderPlanningIdPut(id: id, body: body);
  }

  ///Edit work order planning.
  ///@param id
  ///@param body
  @Put(path: '/v1/work-order-planning/{id}')
  Future<chopper.Response<WorkOrderPlanningResponseObject>>
      _v1WorkOrderPlanningIdPut(
          {@Path('id') required String? id, @Body() WorkOrderPlanning? body});

  ///Deletes many work order plannings.
  ///@param body The reader work order planning ids.
  Future<chopper.Response<BooleanResponseObject>>
      v1WorkOrderPlanningDeleteManyPost({List<String>? body}) {
    generatedMapping.putIfAbsent(
        BooleanResponseObject, () => BooleanResponseObject.fromJsonFactory);

    return _v1WorkOrderPlanningDeleteManyPost(body: body);
  }

  ///Deletes many work order plannings.
  ///@param body The reader work order planning ids.
  @Post(path: '/v1/work-order-planning/delete/many')
  Future<chopper.Response<BooleanResponseObject>>
      _v1WorkOrderPlanningDeleteManyPost({@Body() List<String>? body});

  ///Deletes many work order plannings.
  ///@param body
  Future<chopper.Response> v1WorkOrderPlanningCreateManyPost(
      {List<WorkOrderPlanning>? body}) {
    return _v1WorkOrderPlanningCreateManyPost(body: body);
  }

  ///Deletes many work order plannings.
  ///@param body
  @Post(path: '/v1/work-order-planning/create-many')
  Future<chopper.Response> _v1WorkOrderPlanningCreateManyPost(
      {@Body() List<WorkOrderPlanning>? body});
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  chopper.Response<ResultType> convertResponse<ResultType, Item>(
      chopper.Response response) {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
