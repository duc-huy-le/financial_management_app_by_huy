import 'package:flutter/material.dart';
import 'package:saladle_ui_package/flutx.dart';
import 'package:get/get.dart';

Widget buildCircleAvatar(String name,
    {String? avatarUrl,
    IconData? icon,
    double radius = 25,
    Color? bgColor,
    Color? fgColor}) {
  CircleAvatar avatarItem;
  if (avatarUrl != null &&
      avatarUrl != '' &&
      avatarUrl != '/Attachs/avatar/avatar-default.jpg' &&
      avatarUrl != 'null') {
    avatarItem = CircleAvatar(
      backgroundColor: bgColor ?? Get.theme.colorScheme.background,
      radius: radius,
      child: CircleAvatar(
        radius: radius - 2,
        backgroundImage: NetworkImage(avatarUrl),
      ),
    );
  } else if (icon != null) {
    avatarItem = CircleAvatar(
      backgroundColor: bgColor ?? Get.theme.colorScheme.background,
      radius: radius,
      child: Icon(icon,
          size: radius + 3, color: fgColor ?? Get.theme.colorScheme.onPrimary),
    );
  } else {
    avatarItem = CircleAvatar(
      backgroundColor: bgColor ?? Get.theme.colorScheme.background,
      radius: radius,
      child: Text(
        name.isNotEmpty ? name[0].toUpperCase() : '',
        style: TextStyle(
            fontSize: radius, color: fgColor ?? Get.theme.primaryColor),
      ),
    );
  }
  return Container(
      width: radius * 2,
      height: radius * 2,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Get.theme.primaryColor,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Get.theme.primaryColor, width: 1)),
      child: avatarItem);
}

Widget buildAvatarList(List list, {bool alightRight = false}) {
  List<Widget> listAvatar = [];
  int numberDisplayItem = list.length > 3 ? 3 : list.length;
  int numberOtherItem = list.length - 3;
  var total = numberDisplayItem + (numberOtherItem > 0 ? 1 : 0);
  for (var i = 0; i < total; i++) {
    var caculate = -i * 4.0 * 3;
    if (alightRight) caculate = (total - i) * 4.0 * 3;
    if (numberOtherItem > 0 && i == total - 1) {
      listAvatar.add(Container(
        transform: Matrix4.translationValues(caculate, 0.0, 0.0),
        width: 4 * 7,
        height: 4 * 7,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Get.theme.primaryColor,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Get.theme.primaryColor, width: 1)),
        child: FxText.bodyMedium(
          // ignore: prefer_interpolation_to_compose_strings
          "+" + numberOtherItem.toString(),
          color: Get.theme.colorScheme.onPrimary,
        ),
      ));
    } else {
      listAvatar.add(Container(
        transform: Matrix4.translationValues(caculate, 0.0, 0.0),
        child: buildCircleAvatar(list[i].name,
            radius: 14, avatarUrl: list[i].avatarUrl),
      ));
    }
  }

  return Row(
    children: [FxSpacing.width(4 * 4), ...listAvatar, FxSpacing.width(4 * 4)],
  );
}
