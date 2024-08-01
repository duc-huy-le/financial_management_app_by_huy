import 'package:get/get.dart';
import 'package:saladleapp/ui/screens/app/dashboard/dashboard_binding.dart';
import 'package:saladleapp/ui/screens/app/dashboard/dashboard_screen.dart';

List<GetPage> appRoutes = [
  GetPage(
      name: DashboardScreen.routeName,
      page: () => const DashboardScreen(),
      binding: DashboardBinding()),
];
