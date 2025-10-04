import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/extensions/build_context_extension.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/skill_chip.dart';

import '../../domain/entities/technology_skill_group.dart';

class TechnologicalStackSection extends StatelessWidget {
  const TechnologicalStackSection({super.key, required this.skillGroups});

  final List<TechnologySkillGroupEntity> skillGroups;

  @override
  Widget build(BuildContext context) {
    final title = Text(
      context.localizations.technologicalStack,
      style: Theme.of(
        context,
      ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
    );

    final description = Text(
      context.localizations.technologicalStackDescription,
      style: Theme.of(context).textTheme.bodyLarge,
    );

    final tabs = skillGroups
        .map(
          (group) => Tab(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(group.groupName),
            ),
          ),
        )
        .toList();
    final tabsContent = skillGroups
        .map(
          (group) => SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: group.skills
                  .map((skill) => SkillChip(skill: skill))
                  .toList(),
            ),
          ),
        )
        .toList();

    final defaultTabController = DefaultTabController(
      length: skillGroups.length,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: Column(
          children: [
            TabBar(
              tabs: tabs,
              padding: EdgeInsets.symmetric(vertical: 4),
              isScrollable: true,
            ),
            Expanded(child: TabBarView(children: tabsContent)),
          ],
        ),
      ),
    );

    final child = context.isMobile()
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [title, description, defaultTabController],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              Expanded(child: title),
              Expanded(
                flex: 3,
                child: Column(
                  spacing: 16,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [description, defaultTabController],
                ),
              ),
            ],
          );

    return Card(
      child: Padding(padding: EdgeInsetsGeometry.all(16), child: child),
    );
  }
}
