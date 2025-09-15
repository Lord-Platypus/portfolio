import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

extension AppColorsExtension on BuildContext {
  AppColors get appColors => Theme.of(this).extension<AppColors>()!;
}
