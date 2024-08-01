import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:saladle_ui_package/themes/text_style.dart';
import 'package:saladle_ui_package/utils/spacing.dart';
import 'package:saladle_ui_package/widgets/button/button.dart';
import 'package:saladle_ui_package/widgets/container/container.dart';
import 'package:saladle_ui_package/widgets/text/text.dart';
import 'package:saladleapp/data/constant/images.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:saladleapp/ui/base/base_ui.dart';
import 'package:saladleapp/ui/screens/auth/login/login_controller.dart';

class LogInScreen extends BaseScreen {
  static const String routeName = '/log-in';

  const LogInScreen({Key? key}) : super(key: key);
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends BaseState<LogInScreen> with BasicStateMixin {
  LogInController logInController = Get.find();
  late OutlineInputBorder outlineInputBorder;
  bool isVisiblePass = false;

  @override
  void initState() {
    super.initState();
    outlineInputBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4 * 1)),
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: createBody());
  }

  @override
  Widget createBody() {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.amber, Colors.red],
          ),
        ),
        child: ListView(
          padding: FxSpacing.fromLTRB(
              20, FxSpacing.safeAreaTop(context) + 50, 20, 20),
          children: [
            Hero(
                tag: 'main-logo',
                child: (Image.network(
                  'https://i.postimg.cc/8zV5L91p/Hunters.png',
                  height: 250,
                ))),
            FxSpacing.height(10),
            renderLoginForm(),
          ],
        ));
  }

  Widget renderLoginForm() {
    return
        // logInController.obx(
        //     (state) =>
        Form(
      key: logInController.formKey,
      child: Column(
        children: [
          SlideTransition(
            position: logInController.userNameAnimation,
            child: TextFormField(
              style: FxTextStyle.bodyMedium(),
              decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  filled: true,
                  isDense: true,
                  fillColor: Get.theme.cardTheme.color,
                  prefixIcon: Icon(
                    FeatherIcons.user,
                    color: Get.theme.colorScheme.onBackground,
                  ),
                  hintText: "Tài khoản",
                  enabledBorder: outlineInputBorder,
                  focusedBorder: outlineInputBorder,
                  border: outlineInputBorder,
                  contentPadding: FxSpacing.all(16),
                  hintStyle: FxTextStyle.bodyMedium(),
                  isCollapsed: true),
              maxLines: 1,
              controller: logInController.userNameTE,
              validator: logInController.validateUserName,
              cursorColor: Get.theme.colorScheme.onBackground,
              // initialValue: logInController.,
            ),
          ),
          FxSpacing.height(4 * 5),
          SlideTransition(
            position: logInController.passwordAnimation,
            child: TextFormField(
              obscureText: !isVisiblePass,
              style: FxTextStyle.bodyMedium(),
              decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  filled: true,
                  isDense: true,
                  fillColor: Get.theme.cardTheme.color,
                  prefixIcon: Icon(
                    FeatherIcons.lock,
                    color: Get.theme.colorScheme.onBackground,
                  ),
                  suffixIcon: InkWell(
                      child: Icon(
                        isVisiblePass ? FeatherIcons.eye : FeatherIcons.eyeOff,
                        color: Get.theme.colorScheme.onBackground,
                      ),
                      onTap: () {
                        setState(() {
                          isVisiblePass = !isVisiblePass;
                        });
                      }),
                  hintText: "Mật khẩu",
                  enabledBorder: outlineInputBorder,
                  focusedBorder: outlineInputBorder,
                  border: outlineInputBorder,
                  contentPadding: FxSpacing.all(16),
                  hintStyle: FxTextStyle.bodyMedium(),
                  isCollapsed: true),
              maxLines: 1,
              controller: logInController.passwordTE,
              validator: logInController.validatePassword,
              cursorColor: Get.theme.colorScheme.onBackground,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: logInController.isRemember.value,
                onChanged: (value) {
                  logInController.isRemember.value =
                      !logInController.isRemember.value;
                  setState(() {});
                },
              ),
              FxText.bodyLarge(
                'Nhớ mật khẩu',
                fontWeight: 700,
                color: Colors.white,
                letterSpacing: 0.4,
              ),
            ],
          ),
          FxSpacing.height(4 * 5),
          FxButton.block(
            elevation: 0,
            borderRadiusAll: 4 * 2,
            onPressed: () {
              logInController.login();
            },
            splashColor: Get.theme.colorScheme.onPrimary.withAlpha(28),
            backgroundColor: Get.theme.primaryColor,
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: const BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FxText.bodyLarge(
                    "Đăng nhập",
                    fontWeight: 700,
                    color: Get.theme.colorScheme.onPrimary,
                    letterSpacing: 0.4,
                  ),
                  FxSpacing.width(4 * 2),
                  SlideTransition(
                      position: logInController.arrowAnimation,
                      child: Icon(
                        FeatherIcons.arrowRight,
                        color: Get.theme.colorScheme.onPrimary,
                        size: 4 * 5,
                      )),
                ],
              ),
            ),
          ),
          // FxSpacing.height(4 * 5),
          // renderOtherLogin(),
          //   FxSpacing.height(4*5),
          //   Center(
          //     child: FxButton.text(
          //         padding: FxSpacing.zero,
          //         onPressed: () {
          //           logInController.goToRegisterScreen();
          //         },
          //         child: FxText.bodyLarge("Tạo tài khoản",
          //             decoration: TextDecoration.underline,
          //             color: Get.theme.colorScheme.onPrimary)),
          //   )
        ],
      ),
      // ),
      // onLoading: renderLoading()
    );
  }

  Widget renderOtherLogin() {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(child: Divider()),
            Padding(
              padding: FxSpacing.x(16),
              child: FxText.bodySmall(
                'Hoặc đăng nhập bằng',
                muted: true,
                fontWeight: 700,
                color: Get.theme.colorScheme.onPrimary,
              ),
            ),
            const Expanded(child: Divider()),
          ],
        ),
        FxSpacing.height(4 * 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () => {
                // logInController.handleSignInGoogle(),
                // if(logInController.googleAccount.value != null){
                //   print(logInController.googleAccount.value?.email)
                // }
              },
              child: FxContainer.bordered(
                padding: FxSpacing.all(16),
                borderRadiusAll: 4 * 2,
                child: Image(
                  height: 20,
                  width: 20,
                  image: AssetImage(Images.logo),
                ),
              ),
            ),
            InkWell(
              onTap: () => {},
              child: FxContainer.bordered(
                padding: FxSpacing.all(16),
                borderRadiusAll: 4 * 2,
                child: Image(
                  height: 20,
                  width: 20,
                  image: AssetImage(Images.logo),
                ),
              ),
            ),
            InkWell(
              onTap: () => {
                // logInController.loginFacebook()
              },
              child: FxContainer.bordered(
                padding: FxSpacing.all(16),
                borderRadiusAll: 4 * 2,
                child: Image(
                  height: 20,
                  width: 20,
                  image: AssetImage(Images.logo),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget renderLoading() {
    return Container(
      child: (Column(
        children: [
          Hero(
              tag: "splash_username",
              child: FxText.bodySmall(
                "Đang xử lý ...",
                color: Get.theme.colorScheme.onPrimary,
              ))
        ],
      )),
    );
  }

  @override
  AppBar? createAppBar() => null;
}
