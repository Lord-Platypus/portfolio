import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/navigation/routes.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Start Page'),
            ElevatedButton(
              onPressed: () => GoRouter.of(context).goNamed(Routes.portfolio),
              child: Text('Go to Portfolio'),
            ),
          ],
        ),
      ),
    );
  }
}
