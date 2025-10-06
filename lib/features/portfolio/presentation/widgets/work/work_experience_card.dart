import 'package:flutter/material.dart';

import '../../../../../core/utils/extensions/build_context_extension.dart';
import '../../../../../core/utils/extensions/date_time_extension.dart';
import '../../../domain/entities/work_experience.dart';

class WorkExperienceCard extends StatelessWidget {
  const WorkExperienceCard({
    super.key,
    required this.work,
    required this.aspectRatio,
    required this.evenIndex,
  });

  final WorkExperienceEntity work;
  final double aspectRatio;
  final bool evenIndex;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Card(
        color: context.appColors.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Header(work: work),
            Divider(color: context.appColors.border, thickness: 1, height: 0),
            _Body(work: work),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) => constraints.maxHeight > 120
                    ? Center(
                        child: Image.asset(
                          evenIndex
                              ? "assets/portfolio/empty_space_1.jpg"
                              : "assets/portfolio/empty_space_2.jpg",
                          height: 100,
                        ),
                      )
                    : const SizedBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.work});

  final WorkExperienceEntity work;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 32, 32, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${work.startDate.format('MMM yyyy')} - ${work.endDate?.format('MMM yyyy') ?? context.localizations.present}',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            work.position,
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({required this.work});

  final WorkExperienceEntity work;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 32, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Text.rich(
            TextSpan(
              text: "${context.localizations.company}: ",
              style: Theme.of(
                context,
              ).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: work.companyName,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
          Text(work.description, style: Theme.of(context).textTheme.bodyLarge),
          Text.rich(
            TextSpan(
              text: "${context.localizations.projects}: ",
              style: Theme.of(
                context,
              ).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: work.projects.join(', '),
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: work.technologies
                .map(
                  (e) => Chip(
                    label: Text(e),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: const BorderSide(width: 0),
                    ),
                    color: WidgetStatePropertyAll(context.appColors.secondary),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
