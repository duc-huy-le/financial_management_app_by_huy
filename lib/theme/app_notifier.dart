import 'package:saladle_ui_package/themes/app_theme.dart';
import 'package:saladleapp/extensions/theme_extension.dart';
import 'package:saladleapp/localization/language.dart';
import 'package:saladleapp/theme/app_theme.dart';
import 'package:saladleapp/theme/theme_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppNotifier extends ChangeNotifier {
  AppNotifier() {
    init();
  }

  init() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    ThemeType themeType =
        sharedPreferences.getString("theme_mode").toString().toThemeType;
    _changeTheme(themeType);
    notifyListeners();
  }

  void changeDirectionality(TextDirection textDirection, [bool notify = true]) {
    AppTheme.textDirection = textDirection;
    FxAppTheme.textDirection = textDirection;

    if (notify) notifyListeners();
  }

  Future<void> changeLanguage(Language language,
      [bool notify = true, bool changeDirection = true]) async {
    if (changeDirection) {
      if (language.supportRTL)
        changeDirectionality(TextDirection.rtl, false);
      else
        changeDirectionality(TextDirection.ltr, false);
    }

    await Language.changeLanguage(language);

    if (notify) notifyListeners();
  }

  void _changeTheme(ThemeType themeType) {
    AppTheme.themeType = themeType;
    AppTheme.customTheme = AppTheme.getCustomTheme();
    AppTheme.theme = AppTheme.getTheme();
    AppTheme.resetThemeData();
    AppTheme.changeFxTheme(themeType);
  }
}
