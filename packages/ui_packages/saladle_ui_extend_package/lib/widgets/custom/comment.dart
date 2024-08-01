// ignore_for_file: depend_on_referenced_packages, prefer_interpolation_to_compose_strings

import 'dart:io';
import 'dart:math';

import 'package:saladle_ui_extend_package/core_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:saladle_ui_package/flutx.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dio/dio.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:flutter_html/flutter_html.dart';

Widget buildComment(
    {required String avatar,
    required String name,
    required String time,
    required String contentComment}) {
  return Column(
    children: [
      FxSpacing.height(6),
      Row(
        children: [
          buildCircleAvatar(name, avatarUrl: avatar, radius: 20),
          FxSpacing.width(6),
          Expanded(
              flex: 7,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: FxText.bodySmall(name,
                              fontWeight: 700, textAlign: TextAlign.left)),
                      FxText.bodySmall(
                        time,
                      ),
                    ],
                  ),
                  // Row(
                  //   children: [FxText.bodySmall(contentComment)],
                  // ),
                  Html(
                    data: contentComment,
                    style: {
                      "body": Style(
                          // height: 15,
                          margin: EdgeInsets.zero,
                          padding: EdgeInsets.zero),
                      'span': Style(
                        // backgroundColor: const Color(0xffd3e1eb),
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                      ),
                      'p': Style(
                          padding: EdgeInsets.zero,
                          margin: EdgeInsets.zero,
                          lineHeight: LineHeight.normal),
                    },
                  ),
                ],
              )),
        ],
      ),
      FxSpacing.height(4),
    ],
  );
}

Widget buildLog(
    {required String? avatar,
    required String name,
    required String action,
    required String time,
    required String detailAction}) {
  return Column(
    children: [
      FxSpacing.height(6),
      Row(
        children: [
          buildCircleAvatar(name, avatarUrl: avatar, radius: 20),
          FxSpacing.width(6),
          Expanded(
              flex: 7,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: FxText.bodySmall(action,
                              fontWeight: 700, textAlign: TextAlign.left)),
                    ],
                  ),
                  // Row(
                  //   // children: [
                  //   //   FxText.bodySmall(detailAction,
                  //   //       overflow: TextOverflow.ellipsis)
                  //   // ], // Text over flow does not work
                  //   children: [
                  //     FxText.bodySmall(detailAction.length < 45
                  //         ? detailAction
                  //         : detailAction.substring(0, 45) + '...'),
                  //   ],
                  // ),

                  // FxText.bodySmall(
                  //     detailAction.length < 45
                  //         ? detailAction
                  //         : detailAction.substring(0, 45) + '...',
                  //     textAlign: TextAlign.left),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FxText.bodySmall(detailAction,
                        overflow: TextOverflow.ellipsis),
                  ),

                  Row(
                    children: [
                      FxText.bodySmall(
                        time,
                        color:
                            Get.theme.colorScheme.onBackground.withOpacity(0.6),
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
      FxSpacing.height(4),
    ],
  );
}

Widget buildFileList({
  required String name,
  required String fileUrl,
  required String extension,
  required String size,
  required String time,
  Function()? onClickView,
  Function()? onClickDownload,
  Function()? onClickDelete,
}) {
  String filePath = "";
  switch (extension) {
    case "Sheet":
    case "sheet":
      filePath = "assets/filetype/excel.svg";
      break;
    case "Pdf":
    case "pdf":
      filePath = "assets/filetype/pdf.svg";
      break;
    case "Doc":
    case "doc":
      filePath = "assets/filetype/word.svg";
      break;
    case "Text":
    case "text":
      filePath = "assets/filetype/text.svg";
      break;
    case "Video":
    case "video":
      filePath = "assets/filetype/video.svg";
      break;
    case "Slide":
    case "slide":
      filePath = "assets/filetype/powerpoint.svg";
      break;
    case "Audio":
    case "audio":
      filePath = "assets/filetype/audio.svg";
      break;
    default:
      filePath = "assets/filetype/image.svg";
      break;
  }

  //
  return FocusedMenuHolder(
    animateMenuItems: true,
    menuBoxDecoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(30.0))),
    duration: const Duration(milliseconds: 100),
    menuItems: <FocusedMenuItem>[
      FocusedMenuItem(
          title: const Text("Xem"),
          trailingIcon: const Icon(Icons.aspect_ratio),
          onPressed: () {
            onClickView!();
          }),
      FocusedMenuItem(
          title: const Text("Tải xuống"),
          trailingIcon: const Icon(Icons.download),
          onPressed: () {
            onClickDownload!();
          }),
      FocusedMenuItem(
          title: const Text(
            "Xóa",
            style: TextStyle(color: Colors.redAccent),
          ),
          trailingIcon: const Icon(
            Icons.delete,
            color: Colors.redAccent,
          ),
          onPressed: () {
            onClickDelete!();
          }),
    ],
    onPressed: () {},
    child: Padding(
      padding: const EdgeInsets.fromLTRB(5, 8, 0, 0),
      child: FxContainer(
        onTap: () {
          onClickView!();
        },
        child: Column(
          children: [
            FxSpacing.height(6),
            Row(
              children: [
                SvgPicture.asset(filePath, height: 4 * 6),
                FxSpacing.width(6),
                Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                flex: 5,
                                child: FxText.bodySmall(name,
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: 700,
                                    textAlign: TextAlign.left)),
                            FxText.bodySmall(size)
                          ],
                        ),
                        FxSpacing.height(4),
                        Row(
                          children: [FxText.bodySmall(time)],
                        ),
                      ],
                    )),
              ],
            ),
            FxSpacing.height(4),
          ],
        ),
      ),
    ),
  );
}

class Images {}

String formatBytes(int bytes, int decimals) {
  if (bytes <= 0) return "0 B";
  const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
  var i = (log(bytes) / log(1024)).floor();
  return ((bytes / pow(1024, i)).toStringAsFixed(decimals)) + ' ' + suffixes[i];
}

Widget buildViewFile({
  String? fileUrl,
  String? name,
  length,
  Function()? onClickView,
  Function()? onClickDownload,
  Function()? onClickDelete,
}) {
  return FocusedMenuHolder(
    animateMenuItems: true,
    menuBoxDecoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(30.0))),
    duration: const Duration(milliseconds: 100),
    menuItems: <FocusedMenuItem>[
      FocusedMenuItem(
          title: const Text("Xem"),
          trailingIcon: const Icon(Icons.aspect_ratio),
          onPressed: () {
            onClickView!();
          }),
      FocusedMenuItem(
          title: const Text("Tải xuống"),
          trailingIcon: const Icon(Icons.download),
          onPressed: () {
            onClickDownload!();
          }),
      FocusedMenuItem(
          title: const Text(
            "Xóa",
            style: TextStyle(color: Colors.redAccent),
          ),
          trailingIcon: const Icon(
            Icons.delete,
            color: Colors.redAccent,
          ),
          onPressed: () {
            onClickDelete!();
          }),
    ],
    onPressed: () => {
      openFile(
        url: fileUrl!,
        fileName: name,
      )
    },
    child: Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4 * 2),
                  child: Image.network(
                    fileUrl!,
                    height: 140,
                    width: 140,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget buildFileAttachment(List data, bool isUploading, Function upload,
    Function download, Function delete, Function buildToast) {
  return ExpansionTile(
    tilePadding: FxSpacing.only(bottom: 0, top: 0, right: 0, left: 5),
    childrenPadding: FxSpacing.only(bottom: 5, top: 5, right: 5, left: 5),
    title: FxText.bodyLarge(
      "Tệp đính kèm (${data.length})",
      fontWeight: 700,
    ),
    children: [
      Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var element in data)
                    FocusedMenuHolder(
                      animateMenuItems: true,
                      menuBoxDecoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0))),
                      duration: const Duration(milliseconds: 100),
                      menuItems: <FocusedMenuItem>[
                        FocusedMenuItem(
                            title: const Text("Xem"),
                            trailingIcon: const Icon(Icons.aspect_ratio),
                            onPressed: () {
                              openFile(
                                url: element.fileUrl,
                                fileName: element.name,
                              );
                            }),
                        FocusedMenuItem(
                            title: const Text("Tải xuống"),
                            trailingIcon: const Icon(Icons.download),
                            onPressed: () {
                              download;
                            }),
                        FocusedMenuItem(
                            title: const Text(
                              "Xóa",
                              style: TextStyle(color: Colors.redAccent),
                            ),
                            trailingIcon: const Icon(
                              Icons.delete,
                              color: Colors.redAccent,
                            ),
                            onPressed: () {
                              delete(element.id);
                            }),
                      ],
                      onPressed: () => {
                        openFile(
                          url: element.fileUrl,
                          fileName: element.name,
                        )
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 4 * 2),
                        child: element.type == "pdf" || element.type == "Pdf"
                            ? FxContainer(
                                width: 140,
                                height: 140,
                                child: Column(
                                  children: [
                                    FxText.bodyLarge(element.name),
                                    FxSpacing.height(4 * 3),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/filetype/pdf.svg",
                                            height: 4 * 6),
                                        FxSpacing.width(4 * 1),
                                        FxText.bodyMedium(formatBytes(
                                            element.metadata.fileSize ?? 0, 1)),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            : element.type == "doc" || element.type == "Doc"
                                ? FxContainer(
                                    width: 140,
                                    height: 140,
                                    child: Column(
                                      children: [
                                        FxText.bodyLarge(element.name),
                                        FxSpacing.height(4 * 3),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                                "assets/filetype/word.svg",
                                                height: 4 * 6),
                                            FxSpacing.width(4 * 1),
                                            FxText.bodyMedium(formatBytes(
                                                element.metadata.fileSize ?? 0,
                                                1)),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                : Image.network(
                                    element.fileUrl,
                                    height: 140,
                                    width: 140,
                                    fit: BoxFit.cover,
                                  ),
                      ),
                    ),
                ],
              ),
            ),
          )
        ],
      ),

      // buildFileList(
      //     fileUrl: element.fileUrl,
      //     extension: element.type,
      //     name: element.name,
      //     size: formatBytes(element.metadata.fileSize ?? 0, 1),
      //     time: DateFormat(
      //             'HH:mm:ss, dd MMM, yyyy', Get.locale?.countryCode ?? "vi")
      //         .format(element.createdOnDate ?? DateTime.now()),
      //     onClickView: () {
      //       openFile(
      //         url: element.fileUrl,
      //         fileName: element.name,
      //       );
      //     },
      //     onClickDownload: () {
      //       download(element);
      //     },
      //     onClickDelete: () {
      //       delete(element.id);
      //       buildToast();
      //     }),
      FxSpacing.height(10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: FxContainer(
              onTap: () {
                if (!isUploading) {
                  upload();
                } else {
                  appShowDialog(
                    title: "Thông báo",
                    message: "Không cho phép sửa công việc đã hoàn thành",
                    labelCancel: 'Đồng ý',
                    isShowCancel: true,
                    callbackCancel: () => {Get.back()},
                  );
                }
              },
              padding: FxSpacing.xy(8, 8),
              borderRadiusAll: 4,
              color: Get.theme.primaryColor,
              child: Row(
                children: [
                  // isUploading
                  //     ? SizedBox(
                  //         width: 20,
                  //         height: 20,
                  //         child: CircularProgressIndicator(
                  //           color: Get.theme.colorScheme.onPrimary,
                  //         ),
                  //       ) :
                  Icon(
                    FeatherIcons.paperclip,
                    size: 20,
                    color: Get.theme.colorScheme.onPrimary,
                  ),
                  FxSpacing.width(10),
                  FxText.bodyMedium(
                    "Thêm tệp đính kèm",
                    color: Get.theme.colorScheme.onPrimary,
                  )
                ],
              ),
            ),
          ),
        ],
      )
    ],
  );
}

Future openFile({required String url, required String? fileName}) async {
  final file = await downloadFile(url, fileName!);
  if (file == null) return;

  // ignore: avoid_print
  print('Path: ${file.path}');

  // OpenFile.open(file.path);
  OpenFile.open(file.path);
}

Future<File?> downloadFile(String url, String name) async {
  final appStorage = await getApplicationDocumentsDirectory();
  final file = File('${appStorage.path}/$name');
  try {
    final response = await Dio().get(url,
        options: Options(
          responseType: ResponseType.bytes,
          followRedirects: false,
          receiveTimeout: 0,
        ));

    final raf = file.openSync(mode: FileMode.write);
    raf.writeFromSync(response.data);
    await raf.close();

    return file;
  } catch (e) {
    return null;
  }
}
