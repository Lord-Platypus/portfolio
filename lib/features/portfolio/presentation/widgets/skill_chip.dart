import 'package:flutter/material.dart';

import '../../../../core/utils/extensions/build_context_extension.dart';
import '../../domain/entities/technology_skill.dart';
import '../../domain/enums/skill_level_enum.dart';

class SkillChip extends StatelessWidget {
  const SkillChip({super.key, required this.skill});

  final TechnologySkillEntity skill;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: Chip(
        color: WidgetStatePropertyAll(context.appColors.secondary),
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
      ),
    );
  }
}
