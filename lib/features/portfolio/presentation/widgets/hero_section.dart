import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/constants/constants.dart';
import '../../../../core/utils/extensions/build_context_extension.dart';
import '../../../../core/utils/screen_helper/enum/screen_sizes.dart';
import '../../domain/entities/personal_info.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key, required this.personalInfo});

  final PersonalInfoEntity personalInfo;

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ButtonStyle(
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      ),
      foregroundColor: WidgetStatePropertyAll(context.appColors.onSecondary),
      backgroundColor: WidgetStatePropertyAll(context.appColors.secondary),
    );

    final lineDecoration = LayoutBuilder(
      builder: (context, constraints) =>
          Container(
            height: constraints.maxHeight / 2,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
              border: Border(
                left: BorderSide(color: context.appColors.primary, width: 3),
                right: BorderSide(color: context.appColors.primary, width: 3),
                bottom: BorderSide(color: context.appColors.primary, width: 3),
              ),
            ),
          ),
    );

    final imageCircle = LayoutBuilder(
      builder: (context, constraints) =>
          _buildEmptySurfaceBox(
            context,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: context.appColors.border, width: 3),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(personalInfo.profileImageUrl),
                ),
              ),
            ),
            leftPadding: !context.isMobile(),
            rightPadding: !context.isMobile(),
          ),
    );

    final fullName = _buildEmptySurfaceBox(
      context,
      child: AutoSizeText(
        personalInfo.fullName,
        maxLines: 1,
        style: Theme
            .of(
          context,
        )
            .textTheme
            .headlineLarge
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );

    final subtitle = _buildEmptySurfaceBox(
      context,
      child: AutoSizeText(
        personalInfo.title,
        maxLines: 1,
        style: Theme
            .of(
          context,
        )
            .textTheme
            .headlineMedium
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );

    final cvButton = _buildEmptySurfaceBox(
      context,
      child: FilledButton.icon(
        style: buttonStyle,

        onPressed: () => launchUrl(Uri.parse(cvUrl)),
        icon: const Icon(Icons.download),
        label: Text(context.localizations.downloadCV),
      ),
    );

    final githubButton = _buildEmptySurfaceBox(
      context,
      child: FilledButton.icon(
        style: buttonStyle,
        onPressed: () => launchUrl(Uri.parse(githubUrl)),
        icon: const Icon(Icons.code),
        label: const Text("Github"),
      ),
    );

    final double mainRowPadding = switch (context.screenSize) {
      ScreenSize.mobile => 8,
      ScreenSize.tablet => 32,
      ScreenSize.desktop => 64,
    };
    final double mainRowSpacing = context.isMobile() ? 0 : 16;

    return SizedBox(
      height: max(MediaQuery
          .of(context)
          .size
          .height * .3, 200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 32,
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Align(alignment: Alignment.topCenter, child: lineDecoration),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: mainRowPadding),
                  child: Row(
                    spacing: mainRowSpacing,
                    children: [
                      Expanded(child: imageCircle),
                      Expanded(
                        flex: 3,
                        child: LayoutBuilder(
                          builder: (context, constraints) =>
                              SizedBox(
                                width: constraints.maxWidth,
                                child: Row(
                                  spacing: 16,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [fullName, subtitle],
                                      ),
                                    ),

                                    if (context.isDesktop()) ...[
                                      cvButton,
                                      githubButton,
                                    ],
                                  ],
                                ),
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (!context.isDesktop()) Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [cvButton, githubButton]),
        ],
      ),
    );
  }

  Widget _buildEmptySurfaceBox(BuildContext context, {
    required Widget child,
    bool leftPadding = true,
    bool rightPadding = true,
  }) =>
      Container(
        color: context.appColors.surface,
        padding: EdgeInsets.only(
          left: leftPadding ? 16 : 0,
          right: rightPadding ? 16 : 0,
        ),
        child: child,
      );
}
