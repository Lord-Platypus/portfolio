import 'package:flutter/material.dart';

import '../../core/utils/extensions/build_context_extension.dart';

class SomethingWentWrongPlaceholder extends StatelessWidget {
  const SomethingWentWrongPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.close, size: 50),
          const SizedBox(height: 10),
          Text(
            context.localizations.somethingWentWrong,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
