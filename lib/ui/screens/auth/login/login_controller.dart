import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saladle_ui_extend_package/widgets/widget.dart';
import 'package:saladleapp/ui/screens/app/dashboard/dashboard_screen.dart';

class LogInController extends GetxController
    with GetTickerProviderStateMixin, StateMixin {
  GlobalKey<FormState> formKey = GlobalKey(debugLabel: '_loginForm');
  late Animation<Offset> arrowAnimation, userNameAnimation, passwordAnimation;
  late TextEditingController userNameTE, passwordTE;
  late AnimationController arrowController,
      userNameController,
      passwordController;
  int userNameCounter = 0;
  int passwordCounter = 0;

  //* Remember password
  var isRemember = false.obs;

  @override
  Future<void> onInit() async {
    userNameTE = TextEditingController(text: '');
    passwordTE = TextEditingController(text: '');
    arrowController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    userNameController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 50));
    passwordController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 50));
    arrowAnimation =
        Tween<Offset>(begin: const Offset(0, 0), end: const Offset(8, 0))
            .animate(CurvedAnimation(
      parent: arrowController,
      curve: Curves.easeIn,
    ));
    userNameAnimation =
        Tween<Offset>(begin: const Offset(0.00, 0), end: const Offset(0.01, 0))
            .animate(CurvedAnimation(
      parent: userNameController,
      curve: Curves.easeIn,
    ));
    passwordAnimation =
        Tween<Offset>(begin: const Offset(0.00, 0), end: const Offset(0.01, 0))
            .animate(CurvedAnimation(
      parent: passwordController,
      curve: Curves.easeIn,
    ));
    change(null, status: RxStatus.success());

    super.onInit();
  }

  @override
  void dispose() {
    arrowController.dispose();
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  String? validateUserName(String? text) {
    if (text == null || text.isEmpty) {
      userNameController.forward();
      return "Vui lòng nhập tài khoản";
    }
    return null;
  }

  String? validatePassword(String? text) {
    if (text == null || text.isEmpty) {
      passwordController.forward();

      return "Vui lòng nhập mật khẩu";
    }
    // else if (!FxStringValidator.validateStringRange(
    //   text,
    // )) {
    //   passwordController.forward();
    //   return "Mật khẩu phải chứa từ 8-20 ký tự";
    // }
    return null;
  }

  Future<void> login() async {
    userNameCounter = 0;
    passwordCounter = 0;
    change(null, status: RxStatus.success());
    if (formKey.currentState!.validate()) {
      writeLogin();
      arrowController.forward();
      await Future.delayed(const Duration(milliseconds: 500));
      change(null, status: RxStatus.loading());
      if (userNameTE.text == 'saladle' && passwordTE.text == 'nnnn') {
        Get.toNamed(DashboardScreen.routeName);
      } else {
        arrowController.reverse();
        appShowDialog(
            title: 'Lỗi đăng nhập'.tr,
            message: 'Vui lòng kiểm tra lại tài khoản và mật khẩu',
            isShowCancel: true,
            labelCancel: 'Được',
            callbackCancel: () => {Get.back()});
        change(null, status: RxStatus.success());
      }
    }
  }

  void writeLogin() async {
    // if (isRemember.value) {
    //   await storageService.writeData('userName', userNameTE.text.toString());
    //   await storageService.writeData('passWord', passwordTE.text.toString());
    // } else if (!isRemember.value) {
    //   await storageService.writeData('userName', '');
    //   await storageService.writeData('passWord', '');
    // }
  }
}
