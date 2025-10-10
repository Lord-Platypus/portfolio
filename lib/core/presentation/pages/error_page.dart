import 'package:flutter/material.dart';

import '../../../shared/widgets/something_went_wrong_placeholder.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SomethingWentWrongPlaceholder(),
    );
  }
}
