import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/extensions/build_context_extension.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key, required this.aboutMe, required this.labels});

  final String aboutMe;
  final List<String> labels;

  @override
  Widget build(BuildContext context) {
    final title = AutoSizeText(
      context.localizations.about,
      style: Theme.of(
        context,
      )
          .textTheme
          .titleLarge,
    );

    final description = AutoSizeText(
      aboutMe,
      style: Theme.of(context).textTheme.bodyLarge,
      minFontSize: 14,
      maxFontSize: 20,
    );

    final chips = Wrap(
      spacing: 8,
      runSpacing: 8,
      children: labels.map((label) => Chip(label: Text(label))).toList(),
    );

    final child = context.isMobile()
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [title, description, chips],
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
                  children: [description, chips],
                ),
              ),
            ],
          );

    return Card(
      child: Padding(padding: const EdgeInsets.all(32), child: child),
    );
  }
}
