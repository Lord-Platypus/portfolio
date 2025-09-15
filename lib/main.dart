import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/theme/theme_builder.dart';
import 'package:portfolio/core/utils/theme/themes.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Portfolio',
      theme: buildTheme(purpleColors), //TODO add dynamic change
    );
  }
}
