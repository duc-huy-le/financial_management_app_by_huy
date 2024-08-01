import 'package:get/get.dart';
import 'package:saladleapp/ui/screens/auth/login/login_controller.dart';

class LogInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LogInController>(() => LogInController());
  }
}
