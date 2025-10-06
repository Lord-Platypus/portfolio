import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/extensions/build_context_extension.dart';
import '../../domain/entities/personal_info.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key, required this.personalInfo});

  final PersonalInfoEntity personalInfo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery
          .of(context)
          .size
          .height * .3,
      child: Row(
        spacing: 16,
        children: [
          Flexible(
            child: LayoutBuilder(
              builder: (context, constraints) =>
                  Container(

                    decoration: BoxDecoration(
                      border: Border.all(
                        color: context.appColors.border,
                        width: 3,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      minRadius: 50,
                      maxRadius: 80,
                      backgroundImage: NetworkImage(
                          personalInfo.profileImageUrl),
                    ),
                  ),
            ),
          ),
          Expanded(
            flex: 2,
            child: LayoutBuilder(builder: (context, constraints) =>
                SizedBox(
                  width: constraints.maxWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        personalInfo.fullName,
                        maxLines: 1,
                        style: Theme
                            .of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      AutoSizeText(
                        personalInfo.title,
                        maxLines: 1,
                        style: Theme
                            .of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),),
          ),
        ],
      ),
    );
  }
}
