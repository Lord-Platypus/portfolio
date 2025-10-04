import 'package:flutter/material.dart';
import 'package:portfolio/core/navigation/app_router.dart';
import 'package:portfolio/core/utils/theme/themes.dart';

import 'core/utils/theme/theme_builder.dart';
import 'injection_container.dart';
import 'l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependency();
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Flutter Portfolio',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: buildTheme(minimalPalette),
    );
  }
}
