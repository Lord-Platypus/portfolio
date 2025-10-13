import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/extensions/build_context_extension.dart';
import '../../../domain/entities/work_experience.dart';
import 'work_arrow_button.dart';
import 'work_experience_card.dart';

class WorkSection extends StatefulWidget {
  const WorkSection({super.key, required this.workExperiences});

  final List<WorkExperienceEntity> workExperiences;

  @override
  State<WorkSection> createState() => _WorkSectionState();
}

class _WorkSectionState extends State<WorkSection> {
  final ScrollController _scrollController = ScrollController();

  double get _listViewHeight => context.isMobile() ? 600 : 450;

  double get _cardWidth =>
      (context.isMobile()
          ? MediaQuery.of(context).size.width
          : (_listViewHeight * 4 / 3)) -
      32;

  double get _scrollOffset => _cardWidth + 32;

  void _scroll(double offset) {
    _scrollController.animateTo(
      _scrollController.offset + offset,
      duration: const Duration(milliseconds: 150),
      curve: Curves.easeInOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    final sectionTitle = AutoSizeText(
      context.localizations.workingExperience,
      style: Theme.of(
        context,
      ).textTheme.titleLarge?.copyWith(color: context.appColors.onSecondary),
    );

    final listView = SizedBox(
      height: _listViewHeight,
      child: ListView.separated(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => WorkExperienceCard(
          width: _cardWidth,
          work: widget.workExperiences[index],
          cardIndex: index,
        ),
        separatorBuilder: (_, _) => const SizedBox(width: 32),
        itemCount: widget.workExperiences.length,
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        spacing: 32,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              sectionTitle,
              Row(
                spacing: 8,
                children: [
                  WorkArrowButton(
                    isLeft: true,
                    onTap: () => _scroll(-_scrollOffset),
                  ),
                  WorkArrowButton(
                    isLeft: false,
                    onTap: () => _scroll(_scrollOffset),
                  ),
                ],
              ),
            ],
          ),
          listView,
        ],
      ),
    );
  }
}
