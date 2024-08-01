// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:saladle_ui_package/utils/spacing.dart';
// import 'package:saladle_ui_package/widgets/text/text.dart';
// import 'package:get/get.dart';

// Future appShowDialog(
//     {String? title,
//     String? message,
//     bool? isShowConfirm = false,
//     String? labelCancel,
//     bool? isShowCancel = false,
//     Function? callbackConfirm,
//     Function? callbackCancel}) {
//   return Get.dialog(CupertinoAlertDialog(
//     title: FxText.bodyLarge(title!, fontWeight: 700),
//     content: Container(
//       margin: FxSpacing.top(16),
//       child: FxText.bodyMedium(message!, fontWeight: 700),
//     ),
//     actions: <Widget>[
//       if (isShowCancel == true)
//         CupertinoDialogAction(
//           child: FxText.bodyMedium(labelCancel!,
//               color: Get.theme.errorColor, fontWeight: 700, letterSpacing: 0.3),
//           onPressed: () {
//             if (callbackCancel != null) callbackCancel();
//           },
//         ),
//       if (isShowConfirm == true)
//         CupertinoDialogAction(
//           child: FxText.bodyMedium('Xác nhận',
//               color: Colors.blue, fontWeight: 700, letterSpacing: 0.3),
//           onPressed: () {
//             if (callbackConfirm != null) callbackConfirm();
//           },
//         ),
//     ],
//   ));
// }
