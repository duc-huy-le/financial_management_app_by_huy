import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:saladle_ui_package/flutx.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class SelectOptionItem {
  String key = '';
  dynamic value = 0;
  dynamic data;
  bool status = false;
  SelectOptionItem(
      {required this.key, required this.value, this.status = false, this.data});
}

Widget buildCategory(String setting) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      FxText.bodyLarge(
        setting,
        fontWeight: 900,
      ),
    ],
  );
}

Widget buildSettingItem(
    {required String title,
    IconData? icon,
    Widget? value,
    Widget? longValue,
    IconData? iconAction,
    bool hideIconAction = false,
    dynamic checkStatus,
    Function? callback}) {
  return Column(children: [
    InkWell(
      onTap: () {
        if (checkStatus == 57) {
          appShowDialog(
            title: "Thông báo",
            message: "Không cho phép sửa công việc đã hoàn thành",
            labelCancel: 'Đồng ý',
            isShowCancel: true,
            callbackCancel: () => {Get.back()},
          );
        } else {
          if (callback != null) callback();
        }
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(icon, size: 20),
              FxSpacing.width(10),
              Expanded(
                  child: FxText.bodyMedium(
                title,
                fontWeight: 700,
              )),
              FxSpacing.width(20),
              value ?? FxSpacing.width(20),
              FxSpacing.width(0),
              !hideIconAction
                  ? Icon(iconAction ?? FeatherIcons.chevronRight,
                      size: 16,
                      color: callback != null
                          ? Get.theme.colorScheme.onBackground
                          : Get.theme.colorScheme.onBackground.withAlpha(20))
                  : FxSpacing.width(0),
            ],
          ),
          Row(
            children: [
              FxSpacing.width(4 * 10),
              longValue ?? FxSpacing.width(20),
            ],
          ),
        ],
      ),
    ),
  ]);
}

Future appShowDialog(
    {String? title,
    String? message,
    bool? isShowConfirm = false,
    String? labelCancel,
    bool? isShowCancel = false,
    Function? callbackConfirm,
    Function? callbackCancel}) {
  return Get.dialog(CupertinoAlertDialog(
    title: FxText.bodyLarge(title!, fontWeight: 700),
    content: Container(
      margin: FxSpacing.top(16),
      child: FxText.bodyMedium(message!, fontWeight: 700),
    ),
    actions: <Widget>[
      if (isShowCancel == true)
        CupertinoDialogAction(
          child: FxText.bodyMedium(labelCancel!,
              color: Get.theme.errorColor, fontWeight: 700, letterSpacing: 0.3),
          onPressed: () {
            if (callbackCancel != null) callbackCancel();
          },
        ),
      if (isShowConfirm == true)
        CupertinoDialogAction(
          child: FxText.bodyMedium('Xác nhận',
              color: Colors.blue, fontWeight: 700, letterSpacing: 0.3),
          onPressed: () {
            if (callbackConfirm != null) callbackConfirm();
          },
        ),
    ],
  ));
}

Widget buildSelectOptions(
    String title,
    List<SelectOptionItem> options,
    List<SelectOptionItem> selectedOptions,
    Function(SelectOptionItem) onSelect,
    Function(SelectOptionItem) onRemove,
    Widget Function(SelectOptionItem)? buildOption) {
  List<Widget> choices = [];
  for (var item in options) {
    bool selected = selectedOptions.contains(item);
    if (selected) {
      choices.add(FxContainer.none(
          color: Get.theme.primaryColor,
          bordered: true,
          borderRadiusAll: 12,
          padding: FxSpacing.xy(12, 8),
          onTap: () {
            onRemove(item);
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FxSpacing.width(4 * 2),
              buildOption != null ? buildOption(item) : FxSpacing.width(0),
              FxText.bodyMedium(
                item.key,
                color: Get.theme.colorScheme.onPrimary,
              )
            ],
          )));
    } else {
      choices.add(FxContainer.none(
          color: Get.theme.cardTheme.color,
          borderRadiusAll: 12,
          padding: FxSpacing.xy(12, 8),
          onTap: () {
            onSelect(item);
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildOption != null ? buildOption(item) : FxSpacing.width(0),
              FxText.bodyMedium(
                item.key,
              )
            ],
          )));
    }
  }
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FxText.bodyMedium(
            title,
            color: Get.theme.colorScheme.onBackground,
            fontWeight: 700,
          ),
        ],
      ),
      FxSpacing.height(8),
      Align(
          alignment: Alignment.topLeft,
          child: Wrap(spacing: 10, runSpacing: 10, children: [...choices])),
      FxSpacing.height(8),
    ],
  );
}

Widget buildPickerSingleChoice(
    {required String title,
    required SelectOptionItem? value,
    required List<SelectOptionItem> options,
    required Function(SelectOptionItem) onSelect,
    required Function() onSubmit,
    Widget Function(SelectOptionItem)? buildOption}) {
  return Container(
    height: 250,
    margin: FxSpacing.only(bottom: 0, top: 0, right: 0, left: 0),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.vertical(
          top: Radius.circular(8), bottom: Radius.circular(0)),
      color: Get.theme.scaffoldBackgroundColor,
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: Drawer(
      child: Container(
        color: Get.theme.scaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: FxSpacing.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Get.back();
                    },
                    child: SizedBox(
                      width: 100,
                      child: FxText.bodyLarge(
                        'Huỷ',
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FxText.bodyLarge(
                      title,
                      textAlign: TextAlign.center,
                      fontWeight: 700,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Get.back();
                      onSubmit();
                    },
                    child: SizedBox(
                      width: 100,
                      child: FxText.bodyLarge(
                        'Xác nhận',
                        color: Get.theme.primaryColor,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FxSpacing.height(8),
            Expanded(
                child: CupertinoPicker(
              backgroundColor: Get.theme.backgroundColor,
              scrollController: FixedExtentScrollController(
                  initialItem: value != null ? options.indexOf(value) : 0),
              onSelectedItemChanged: (index) {
                onSelect(options[index]);
              },
              itemExtent: 30.0,
              children: [
                for (var option in options)
                  buildOption != null
                      ? buildOption(option)
                      : FxText.bodyLarge(option.key),
              ],
            )),
          ],
        ),
      ),
    ),
  );
}

Widget buildPickerDate(
    {required String title,
    required DateTime? value,
    required Function(DateTime) onSelect,
    required Function() onSubmit,
    Widget Function(SelectOptionItem)? buildOption}) {
  return Container(
    height: 250,
    margin: FxSpacing.only(bottom: 0, top: 0, right: 0, left: 0),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.vertical(
          top: Radius.circular(8), bottom: Radius.circular(0)),
      color: Get.theme.scaffoldBackgroundColor,
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: Drawer(
      child: Container(
        color: Get.theme.scaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: FxSpacing.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Get.back();
                    },
                    child: SizedBox(
                      width: 100,
                      child: FxText.bodyLarge(
                        'Huỷ',
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FxText.bodyLarge(
                      title,
                      textAlign: TextAlign.center,
                      fontWeight: 700,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Get.back();
                      onSubmit();
                    },
                    child: SizedBox(
                      width: 100,
                      child: FxText.bodyLarge(
                        'Xác nhận',
                        color: Get.theme.primaryColor,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FxSpacing.height(8),
            Expanded(
                child: CupertinoTheme(
              data: CupertinoThemeData(
                brightness: Get.theme.brightness,
              ),
              child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: value,
                  onDateTimeChanged: (dateTime) {
                    onSelect(dateTime);
                  }),
            ))
          ],
        ),
      ),
    ),
  );
}

Widget buildPickerText(
    {required String title,
    required String? value,
    required Function(String) onSelect,
    required Function() onSubmit,
    Widget Function(SelectOptionItem)? buildOption,
    TextInputType? keyboardType}) {
  var focusNode = FocusNode();
  return Container(
    height: 250,
    margin: FxSpacing.only(bottom: 0, top: 0, right: 0, left: 0),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.vertical(
          top: Radius.circular(8), bottom: Radius.circular(0)),
      color: Get.theme.scaffoldBackgroundColor,
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: Drawer(
      child: Container(
        color: Get.theme.scaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: FxSpacing.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Get.back();
                    },
                    child: SizedBox(
                      width: 100,
                      child: FxText.bodyLarge(
                        'Huỷ',
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FxText.bodyLarge(
                      title,
                      textAlign: TextAlign.center,
                      fontWeight: 700,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Get.back();
                      onSubmit();
                    },
                    child: SizedBox(
                      width: 100,
                      child: FxText.bodyLarge(
                        'Xác nhận',
                        color: Get.theme.primaryColor,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FxSpacing.height(8),
            Expanded(
                child: Container(
                    margin:
                        FxSpacing.only(bottom: 10, top: 0, right: 10, left: 10),
                    child: CupertinoTextField(
                      autofocus: true,
                      focusNode: focusNode,
                      controller: TextEditingController(text: value),
                      onChanged: (getValue) => onSelect(getValue),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4 * 2),
                          color: Get.theme.colorScheme.background,
                          border: Border.all(color: Get.theme.primaryColor)),
                      cursorColor: Get.theme.primaryColor,
                      placeholder: "Nhập vào dữ liệu",
                      placeholderStyle: TextStyle(
                          color: Get.theme.colorScheme.onBackground
                              .withAlpha(160)),
                      minLines: 12,
                      maxLines: 24,
                      style:
                          TextStyle(color: Get.theme.colorScheme.onBackground),
                      padding: FxSpacing.xy(8, 16),
                      keyboardType: keyboardType,
                    )))
          ],
        ),
      ),
    ),
  );
}

Widget buildPickerMultiChoice({
  required String title,
  required List<SelectOptionItem> value,
  required List<SelectOptionItem> options,
  required Function(SelectOptionItem) onSelect,
  required Function(SelectOptionItem) onRemove,
  required Function() onSubmit,
  Widget Function(SelectOptionItem)? buildOption,
}) {
  return Container(
    height: 250,
    margin: FxSpacing.only(bottom: 0, top: 0, right: 0, left: 0),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.vertical(
          top: Radius.circular(8), bottom: Radius.circular(0)),
      color: Get.theme.scaffoldBackgroundColor,
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: Drawer(
      child: Container(
        color: Get.theme.scaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: FxSpacing.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Get.back();
                    },
                    child: SizedBox(
                      width: 100,
                      child: FxText.bodyLarge(
                        'Huỷ',
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FxText.bodyLarge(
                      title,
                      textAlign: TextAlign.center,
                      fontWeight: 700,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Get.back();
                      onSubmit();
                    },
                    child: SizedBox(
                      width: 100,
                      child: FxText.bodyLarge(
                        'Xác nhận',
                        color: Get.theme.primaryColor,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FxSpacing.height(8),
            Expanded(
              child: Container(
                  margin:
                      FxSpacing.only(bottom: 0, top: 0, right: 10, left: 10),
                  child: buildSelectOptions("", options, value,
                      (p0) => onSelect(p0), (p0) => onRemove(p0), buildOption)),
            )
          ],
        ),
      ),
    ),
  );
}

Widget buildPickerTag({
  required String title,
  required List<SelectOptionItem> value,
  required Function(SelectOptionItem) onAdd,
  required Function(SelectOptionItem) onRemove,
  required Function() onSubmit,
  Widget Function(SelectOptionItem)? buildOption,
}) {
  var focusNode = FocusNode();
  return Container(
    height: 250,
    margin: FxSpacing.only(bottom: 0, top: 0, right: 0, left: 0),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.vertical(
          top: Radius.circular(8), bottom: Radius.circular(0)),
      color: Get.theme.scaffoldBackgroundColor,
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: Drawer(
      child: Container(
        color: Get.theme.scaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: FxSpacing.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Get.back();
                    },
                    child: SizedBox(
                      width: 100,
                      child: FxText.bodyLarge(
                        'Huỷ',
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FxText.bodyLarge(
                      title,
                      textAlign: TextAlign.center,
                      fontWeight: 700,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Get.back();
                      onSubmit();
                    },
                    child: SizedBox(
                      width: 100,
                      child: FxText.bodyLarge(
                        'Xác nhận',
                        color: Get.theme.primaryColor,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FxSpacing.height(8),
            Expanded(
                child: Container(
                    margin:
                        FxSpacing.only(bottom: 0, top: 0, right: 10, left: 10),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Wrap(spacing: 10, runSpacing: 10, children: [
                          for (var item in value)
                            FxContainer.none(
                                color: Get.theme.primaryColor,
                                bordered: true,
                                borderRadiusAll: 12,
                                padding: FxSpacing.xy(12, 8),
                                onTap: () {
                                  onRemove(item);
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    FxSpacing.width(4 * 2),
                                    buildOption != null
                                        ? buildOption(item)
                                        : FxSpacing.width(0),
                                    FxText.bodyMedium(
                                      item.key,
                                      color: Get.theme.colorScheme.onPrimary,
                                    ),
                                    FxSpacing.width(4 * 2),
                                    Container(
                                      padding: FxSpacing.all(4),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color:
                                              Get.theme.colorScheme.background),
                                      child: Icon(
                                        FeatherIcons.x,
                                        color: Get.theme.primaryColor,
                                        size: 16,
                                      ),
                                    )
                                  ],
                                )),
                        ])))),
            Container(
              padding: FxSpacing.xy(8, 16),
              child: CupertinoTextField(
                focusNode: focusNode,
                autofocus: false,
                controller: TextEditingController(text: ""),
                onSubmitted: (p0) {
                  onAdd(SelectOptionItem(key: p0, value: p0));
                  focusNode.requestFocus();
                },
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4 * 2),
                    color: Get.theme.colorScheme.background,
                    border: Border.all(color: Get.theme.primaryColor)),
                cursorColor: Get.theme.colorScheme.secondary,
                placeholder: "Nhập",
                style: TextStyle(color: Get.theme.colorScheme.onBackground),
                placeholderStyle: TextStyle(
                    color: Get.theme.colorScheme.onBackground.withAlpha(160)),
                padding: FxSpacing.xy(8, 16),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget buildQuickSelectOptions(
    {required String title,
    required List<SelectOptionItem> selectedOptions,
    required Function onClick}) {
  String finalTitle = title;
  if (selectedOptions.length == 1) {
    finalTitle = "$title: ${selectedOptions[0].key}";
  }
  if (selectedOptions.length > 1) {
    finalTitle = "${selectedOptions.length} $title";
  }
  return FxContainer.none(
      borderRadiusAll: 8,
      padding: FxSpacing.xy(12, 12),
      color: selectedOptions.isNotEmpty
          ? Get.theme.primaryColor
          : Get.theme.cardTheme.color,
      onTap: () {
        onClick();
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FxText.bodySmall(
            finalTitle,
            color: selectedOptions.isNotEmpty
                ? Get.theme.colorScheme.onPrimary
                : null,
          )
        ],
      ));
}

Widget buildQuickDateRangeOptions(
    {required String title,
    required DateTimeRange? dateTime,
    required bool? isMonth,
    required Function onClick}) {
  String finalTitle = title;
  if (dateTime != null) {
    finalTitle =
        "$title: ${isMonth == true ? DateFormat("MM/yyyy").format(dateTime.start) : DateFormat("dd/MM/yyyy").format(dateTime.start)} - ${isMonth == true ? DateFormat("MM/yyyy").format(dateTime.end) : DateFormat("dd/MM/yyyy").format(dateTime.end)}";
  }

  return FxContainer.none(
      borderRadiusAll: 8,
      padding: FxSpacing.xy(12, 12),
      color:
          dateTime != null ? Get.theme.primaryColor : Get.theme.cardTheme.color,
      onTap: () {
        onClick();
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FxText.bodySmall(
            finalTitle,
            color: dateTime != null ? Get.theme.colorScheme.onPrimary : null,
          )
        ],
      ));
}

Widget buildPickerGender({
  required String title,
  required int? value,
  required int? option,
  required Function(int) onSelect,
  required Function() onSubmit,
}) {
  List gender = ['Nữ', 'Nam', 'Khác'];
  List<Widget> genderIcon = [
    const Icon(Icons.female),
    const Icon(Icons.male),
    const Icon(Icons.transgender),
  ];
  return Container(
    height: 250,
    margin: FxSpacing.only(bottom: 0, top: 0, right: 0, left: 0),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.vertical(
          top: Radius.circular(8), bottom: Radius.circular(0)),
      color: Get.theme.scaffoldBackgroundColor,
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: Drawer(
      child: Container(
        color: Get.theme.scaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: FxSpacing.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Get.back();
                    },
                    child: SizedBox(
                      width: 100,
                      child: FxText.bodyLarge(
                        'Huỷ',
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FxText.bodyLarge(
                      'Sửa: $title',
                      textAlign: TextAlign.center,
                      fontWeight: 700,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Get.back();
                      onSubmit();
                    },
                    child: SizedBox(
                      width: 100,
                      child: FxText.bodyLarge(
                        'Xác nhận',
                        color: Get.theme.primaryColor,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FxSpacing.height(8),
            Expanded(
                child: Container(
              margin: FxSpacing.only(bottom: 10, top: 0, right: 10, left: 10),
              child: CupertinoPicker(
                  useMagnifier: true,
                  itemExtent: 42,
                  scrollController:
                      FixedExtentScrollController(initialItem: option!),
                  onSelectedItemChanged: (value) {
                    onSelect(value);
                    // setState(() {});
                  },
                  children: List<Widget>.generate(
                      3,
                      (index) => Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: Align(
                                      alignment: Alignment.centerRight,
                                      child: genderIcon[index])),
                              Expanded(
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(gender[index]))),
                            ],
                          ))),
            ))
          ],
        ),
      ),
    ),
  );
}

Widget buildViewImage({
  required String title,
  required String imageUrl,
}) {
  return Container(
    // height: 850,
    height: Get.height - 50,
    margin: FxSpacing.only(bottom: 0, top: 0, right: 0, left: 0),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.vertical(
          top: Radius.circular(8), bottom: Radius.circular(0)),
      color: Get.theme.scaffoldBackgroundColor,
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: Drawer(
      child: Container(
        color: Get.theme.scaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: FxSpacing.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 8,
                    child: FxText.bodyLarge(
                      'Xem: $title',
                      textAlign: TextAlign.left,
                      fontWeight: 700,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        Get.back();
                      },
                      child: SizedBox(
                        width: 100,
                        child: FxText.bodyLarge(
                          'OK',
                          color: Get.theme.primaryColor,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FxSpacing.height(8),
            Expanded(
                child: Container(
                    alignment: Alignment.center,
                    margin:
                        FxSpacing.only(bottom: 10, top: 0, right: 10, left: 10),
                    child: Image.network(
                      imageUrl,
                      loadingBuilder: ((context, child, loadingProgress) {
                        return loadingProgress == null
                            ? child
                            : const LinearProgressIndicator();
                      }),
                    )))
          ],
        ),
      ),
    ),
  );
}

Widget buildIsReadConfirm({
  required String message,
  required bool isRead,
  required Function() onTap,
}) {
  return Container(
    height: 180,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.vertical(
          top: Radius.circular(8), bottom: Radius.circular(0)),
      color: Get.theme.scaffoldBackgroundColor,
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: Drawer(
      child: Container(
        color: Get.theme.scaffoldBackgroundColor,
        child: Padding(
          padding: FxSpacing.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              FxText.bodyLarge(
                "Thông báo",
                textAlign: TextAlign.center,
                fontWeight: 700,
              ),
              FxText.bodyMedium(
                message,
                muted: true,
                textAlign: TextAlign.center,
              ),
              FxSpacing.height(16),
              InkWell(
                onTap: () {
                  onTap();
                  Get.back();
                },
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: CircleAvatar(
                            child: Icon(
                                isRead ? Icons.email : Icons.mark_as_unread))),
                    Expanded(
                      flex: 5,
                      child: FxText.bodyLarge(
                        isRead ? "Đánh dấu là chưa đọc" : "Đánh dấu là đã đọc",
                        fontWeight: 600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
