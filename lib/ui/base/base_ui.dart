import 'package:flutter/material.dart';
import 'package:flutter_mentions/flutter_mentions.dart';
import 'package:saladle_ui_package/flutx.dart';
import 'package:get/get.dart';

abstract class BaseWidget extends StatelessWidget {
  const BaseWidget({Key? key}) : super(key: key);
}

abstract class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);
}

abstract class BaseState<Screen extends BaseScreen> extends State<Screen> {}

mixin BasicStateMixin<Screen extends BaseScreen> on BaseState<Screen> {
  // @override
  // Widget build(BuildContext context) {
  //   return Portal(
  //     child: Scaffold(
  //         appBar: createAppBar(),
  //         bottomNavigationBar: createBottomBar(),
  //         body: SafeArea(child: createBody())),
  //   );
  // }
  bool isSafeAreaTop = true;
  bool isSafeAreaBottom = false;
  @override
  Widget build(BuildContext context) {
    return Portal(
      child: Scaffold(
          extendBodyBehindAppBar: true,
          extendBody: true,
          appBar: createAppBar(),
          bottomNavigationBar: createBottomBar(),
          floatingActionButton: createFloatingActionButton(),
          body: SafeArea(
            child: createBody(),
            bottom: isSafeAreaBottom,
            top: isSafeAreaTop,
          )),
    );
  }

  Widget createBody();
  Widget? createEndDrawer() => null;

  Widget? createFloatingActionButton() {
    return null;
  }

  FloatingActionButtonLocation setFloatingActionButtonLocation() =>
      FloatingActionButtonLocation.centerDocked;

  AppBar? createAppBar() => buildDefaultAppBar(title: "");

  Widget? createBottomBar() => null;

  AppBar buildDefaultAppBar(
      {required String title,
      IconData? icon,
      List<Widget>? actions,
      bool showBack = true,
      RxBool? edit,
      Color? color,
      Color? iconColor,
      Color? textColor,
      String? routeName,
      data,
      Function(dynamic)? callback,
      bool automaticallyImplyLeading = true}) {
    return AppBar(
      elevation: 0,
      // centerTitle: true,
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: FxText.bodyLarge(
        title,
        fontWeight: 700,
      ),
      leading: showBack
          ? BackButton(
              onPressed: () {
                Get.back();
              },
            )
          : null,
      actions: [
        IconButton(
          icon: Icon(icon, color: Get.theme.colorScheme.onBackground),
          onPressed: () {
            if (callback != null) callback(null);
          },
        )
      ],
    );
  }
}

extension StateExt<T> on StateMixin<T> {
  Widget obxS(NotifierBuilder<T?> widget,
      {Widget Function(String? error)? onError,
      Widget? onLoading,
      Widget? onEmpty,
      bool isForceRender = true}) {
    return SimpleBuilder(builder: (_) {
      if (status.isLoading) {
        if (isForceRender) {
          return Stack(
            children: [
              // ignore: invalid_use_of_protected_member
              widget(value),
              Positioned(child: onLoading ?? Container()),
            ],
          );
        } else {
          return onLoading ?? Container();
        }
      } else if (status.isError) {
        return Stack(
          children: [
            // ignore: invalid_use_of_protected_member
            if (isForceRender) widget(value),
            Positioned(
              child: onError != null
                  ? onError(status.errorMessage)
                  : Center(
                      child: Text('A error occurred: ${status.errorMessage}')),
            ),
          ],
        );
      } else if (status.isEmpty) {
        if (onEmpty != null) {
          return onEmpty;
        } else {
          return const SizedBox.shrink();
        } // Also can be widget(null); but is risky
      }
      // ignore: invalid_use_of_protected_member
      return widget(value);
    });
  }
}
