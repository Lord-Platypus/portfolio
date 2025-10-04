import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/extensions/build_context_extension.dart';
import 'package:portfolio/features/portfolio/domain/entities/technology_skill.dart';
import 'package:portfolio/features/portfolio/domain/enums/skill_level_enum.dart';

class SkillChip extends StatelessWidget {
  const SkillChip({super.key, required this.skill});

  final TechnologySkillEntity skill;

  @override
  Widget build(BuildContext context) {
    return Chip(
      color: WidgetStatePropertyAll(context.appColors.border),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),

        side: BorderSide(color: context.appColors.onPrimary),
      ),
      label: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          Text(skill.name),
          for (var i = 0; i < SkillLevelEnum.values.length; i++)
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: skill.level.index >= i
                    ? context.appColors.primary
                    : context.appColors.onPrimary,
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
    );
  }
}
