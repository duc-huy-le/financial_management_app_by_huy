import 'package:get/get.dart';
import 'package:saladleapp/ui/screens/auth/login/login_binding.dart';
import 'package:saladleapp/ui/screens/auth/login/login_screen.dart';

List<GetPage> authRoutes = [
  GetPage(
      name: LogInScreen.routeName,
      page: () => const LogInScreen(),
      binding: LogInBinding()),
];
