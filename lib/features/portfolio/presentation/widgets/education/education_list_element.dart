import 'package:flutter/material.dart';

import '../../../../../core/utils/extensions/build_context_extension.dart';
import '../../../domain/entities/education_element.dart';
import 'education_card.dart';
import 'education_divider.dart';

class EducationListElement extends StatelessWidget {
  const EducationListElement({
    super.key,
    required this.educationElement,
    required this.leftPosition,
    required this.isFirst,
    required this.isFinal,
  });

  final EducationElementEntity educationElement;
  final bool leftPosition;
  final bool isFirst;
  final bool isFinal;

  @override
  Widget build(BuildContext context) {
    final rowWidgets = [
      if (context.isDesktop()) const Spacer(),
      EducationDivider(showTop: !isFirst, showBottom: !isFinal),
      Expanded(child: EducationCard(element: educationElement)),
    ];
    final children = leftPosition ? rowWidgets.reversed.toList() : rowWidgets;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 16,
      children: children,
    );
  }
}
