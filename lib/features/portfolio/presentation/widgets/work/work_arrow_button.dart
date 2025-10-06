import 'package:flutter/material.dart';

import '../../../../../core/utils/extensions/build_context_extension.dart';

class WorkArrowButton extends StatelessWidget {
  const WorkArrowButton({super.key, required this.onTap, required this.isLeft});

  final VoidCallback onTap;
  final bool isLeft;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: context.appColors.onSecondary),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(4),
        child: Icon(
          isLeft ? Icons.arrow_back_ios_new : Icons.arrow_forward_ios,
          color: context.appColors.onSecondary,
        ),
      ),
    );
  }
}
