import 'package:go_router/go_router.dart';
import 'package:portfolio/core/navigation/routes.dart';
import 'package:portfolio/features/portfolio/presentation/pages/portfolio_page.dart';
import 'package:portfolio/features/start/presentation/start_page.dart';

import '../presentation/pages/error_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: Routes.portfolio,
  routes: [
    GoRoute(
      path: Routes.start,
      builder: (context, state) => StartPage(),
      routes: [],
    ),
    GoRoute(
      name: Routes.portfolio,
      path: Routes.portfolio,
      builder: (context, state) => PortfolioPage(),
    ),
  ],
  errorBuilder: (context, state) => ErrorPage(),
);
