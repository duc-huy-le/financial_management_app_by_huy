import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:saladleapp/localization/app_localization_delegate.dart';
import 'package:saladleapp/localization/language.dart';
import 'package:saladleapp/locator.dart';

import 'package:saladleapp/routes.dart';
import 'package:saladleapp/theme/app_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saladleapp/theme/app_theme.dart';
import 'package:saladle_ui_package/themes/app_theme_notifier.dart';
import 'package:saladleapp/ui/screens/auth/login/login_screen.dart';

Future<void> main() async {
  //* Init DI Service
  setupLocator();
  //* End Init DI Service

  //You will need to initialize AppThemeNotifier class for theme changes.
  WidgetsFlutterBinding.ensureInitialized();

  AppTheme.init();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    ChangeNotifierProvider<AppNotifier>(
        create: (context) => AppNotifier(),
        child: ChangeNotifierProvider<FxAppThemeNotifier>(
          create: (context) => FxAppThemeNotifier(),
          child: const SaladleApp(),
        )),
  );
}

class SaladleApp extends StatelessWidget {
  const SaladleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppNotifier>(
        builder: (BuildContext context, AppNotifier value, Widget? child) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: routes,
        theme: AppTheme.theme,
        builder: (context, child) {
          return Directionality(
            textDirection: AppTheme.textDirection,
            child: child!,
          );
        },
        localizationsDelegates: [
          AppLocalizationsDelegate(context),
          // Add this line
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: Language.getLocales(),
        locale: Locale('vi'),
        transitionDuration: Duration(milliseconds: 500),
        defaultTransition: Transition.fadeIn,
        initialRoute: LogInScreen.routeName,
      );
    });
  }
}
