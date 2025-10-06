import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../navigation/routes.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Error Page'),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go(Routes.start);
            },
            child: const Text('Go Home'),
          ),
        ],
      ),
    );
  }
}
