import 'package:flutter/material.dart';

import '../../../../../core/utils/extensions/build_context_extension.dart';
import '../../../../../core/utils/extensions/date_time_extension.dart';
import '../../../domain/entities/education_element.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({super.key, required this.element});

  final EducationElementEntity element;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.appColors.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _CardHeader(element: element),
          Divider(color: context.appColors.border, thickness: 1, height: 1,),
          _CardBody(element: element),
        ],
      ),
    );
  }
}

class _CardHeader extends StatelessWidget {
  const _CardHeader({required this.element});

  final EducationElementEntity element;

  @override
  Widget build(BuildContext context) {
    final title = Text(
      element.title,
      style: Theme.of(
        context,
      ).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
    );

    final dateRange = Text(
      '${element.startDate.format('MMM yyyy')} - ${element.endDate?.format('MMM yyyy') ?? context.localizations.present}',
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    );

    final child = context.isMobile()
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [dateRange, title],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [title, dateRange],
          );

    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 32, 32, 16),
      child: child,
    );
  }
}

class _CardBody extends StatelessWidget {
  const _CardBody({required this.element});

  final EducationElementEntity element;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 32, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            element.institution,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 500,
            child: Text(
              element.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
