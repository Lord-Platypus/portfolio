import 'package:flutter/material.dart';

import '../../../../../core/utils/extensions/build_context_extension.dart';
import '../../../domain/entities/education_element.dart';
import 'education_list_element.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key, required this.educationElements});

  final List<EducationElementEntity> educationElements;

  @override
  Widget build(BuildContext context) {
    final title = Text(
      context.localizations.educationSectionTitle,
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
        color: context.appColors.onSecondary,
      ),
    );

    final List<Widget> listElements = [];
    for (int i = 0; i < educationElements.length; i++) {
      listElements.add(
        EducationListElement(
          educationElement: educationElements[i],
          leftPosition: context.isDesktop() && i.isEven,
          isFirst: i == 0,
          isFinal: i == educationElements.length - 1,
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Center(
        child: Column(
          spacing: 32,
          children: [
            title,
            Column(spacing: 16, children: listElements),
          ],
        ),
      ),
    );
  }
}
