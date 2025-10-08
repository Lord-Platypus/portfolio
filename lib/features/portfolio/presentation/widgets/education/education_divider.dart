import 'package:flutter/material.dart';

import '../../../../../core/utils/extensions/build_context_extension.dart';

class EducationDivider extends StatelessWidget {
  const EducationDivider({
    super.key,
    required this.showTop,
    required this.showBottom,
  });

  final bool showTop;
  final bool showBottom;

  double get circleDiameter => 24;

  double get lineMinHeight => 1;

  double get lineWidth => 2;

  int get linesQuantity => 8;

  @override
  Widget build(BuildContext context) {
    List<Widget> linesList = List.generate(
      linesQuantity,
      (index) => Container(
        width: lineWidth * (index + 1) / linesQuantity,
        height: (index + 1) * lineMinHeight,
        decoration: BoxDecoration(
          color: context.appColors.onSecondary,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );

    final circle = Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: circleDiameter,
        height: circleDiameter,
        decoration: BoxDecoration(
          border: Border.all(color: context.appColors.onSecondary, width: 1),
          color: context.appColors.secondary,
          shape: BoxShape.circle,
        ),
      ),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Opacity(
          opacity: showTop ? 1 : 0,
          child: Column(
            spacing: 4,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: linesList,
          ),
        ),
        circle,
        Opacity(
          opacity: showBottom ? 1 : 0,
          child: Column(
            spacing: 4,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: linesList.reversed.toList(),
          ),
        ),
      ],
    );
  }
}
