import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/extensions/build_context_extension.dart';
import '../../domain/entities/personal_info.dart';

class ContactsSection extends StatelessWidget {
  const ContactsSection({super.key, required this.personalInfo});

  final PersonalInfoEntity personalInfo;

  @override
  Widget build(BuildContext context) {
    final title = Text(
      context.localizations.contacts,
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
        color: context.appColors.onSecondary,
      ),
    );

    final textStyle = Theme.of(
      context,
    ).textTheme.titleMedium!.copyWith(color: context.appColors.onSecondary);

    final phone = Row(
      spacing: 16,
      children: [
        Icon(Icons.phone, color: context.appColors.onSecondary),
        RichText(
          text: TextSpan(
            style: textStyle,
            children: [
              TextSpan(
                text: personalInfo.phone,
                style: textStyle,
                recognizer: TapGestureRecognizer()
                  ..onTap = () =>
                      launchUrl(Uri(scheme: "tel", path: personalInfo.phone)),
              ),
            ],
          ),
        ),
      ],
    );

    final mail = Row(
      spacing: 16,
      children: [
        Icon(Icons.mail, color: context.appColors.onSecondary),
        RichText(
          text: TextSpan(
            style: textStyle,
            children: [
              TextSpan(
                text: personalInfo.email,
                style: textStyle,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launchUrl(
                    Uri(scheme: "mailto", path: personalInfo.email),
                  ),
              ),
            ],
          ),
        ),
      ],
    );

    final vatNumber = Row(
      spacing: 16,
      children: [
        Icon(Icons.numbers, color: context.appColors.onSecondary),
        Text(
          "${context.localizations.vatNumber}: ${personalInfo.vatNumber}",
          style: textStyle,
        ),
      ],
    );
    final place = Row(
      spacing: 16,
      children: [
        Icon(Icons.place, color: context.appColors.onSecondary),
        Text(personalInfo.fullAddress, style: textStyle),
      ],
    );

    final columnChildren = context.isDesktop()
        ? [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [phone, mail],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [vatNumber, place],
            ),
          ]
        : [phone, mail, vatNumber, place];

    return Column(
      spacing: 32,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title,
        Column(spacing: 16, children: columnChildren),
      ],
    );
  }
}
