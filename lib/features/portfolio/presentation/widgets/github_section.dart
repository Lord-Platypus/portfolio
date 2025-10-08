import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/constants/constants.dart';
import '../../../../core/utils/extensions/build_context_extension.dart';

class GithubSection extends StatelessWidget {
  const GithubSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 64),
        child: Column(
          spacing: 32,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AutoSizeText(
              context.localizations.githubSectionTitle,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: context.appColors.onSecondary,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),

            FilledButton.icon(
              onPressed: () => launchUrl(Uri.parse(githubUrl)),
              icon: const Icon(Icons.link),
              label: const Text("Github"),
            ),
          ],
        ),
      ),
    );
  }
}
