import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';
import '../screen_helper/enum/screen_sizes.dart';
import '../theme/app_colors.dart';

extension BuildContextExtension on BuildContext {
  AppColors get appColors => Theme.of(this).extension<AppColors>()!;

  bool isTablet() =>
      ScreenSize.fromWidth(MediaQuery.of(this).size.width) == ScreenSize.tablet;

  bool isDesktop() =>
      ScreenSize.fromWidth(MediaQuery.of(this).size.width) ==
      ScreenSize.desktop;

  bool isMobile() =>
      ScreenSize.fromWidth(MediaQuery.of(this).size.width) == ScreenSize.mobile;

  ScreenSize get screenSize =>
      ScreenSize.fromWidth(MediaQuery.of(this).size.width);

  AppLocalizations get localizations => AppLocalizations.of(this)!;
}
