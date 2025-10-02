import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';
import '../theme/app_colors.dart';

extension AppColorsExtension on BuildContext {
  AppColors get appColors => Theme.of(this).extension<AppColors>()!;

  bool isTablet() => MediaQuery.of(this).size.width >= 600;

  bool isDesktop() => MediaQuery.of(this).size.width >= 1024;

  bool isMobile() => MediaQuery.of(this).size.width < 600;

  AppLocalizations get localizations => AppLocalizations.of(this)!;
}
