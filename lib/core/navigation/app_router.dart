import 'package:go_router/go_router.dart';

import '../../features/portfolio/presentation/pages/portfolio_page.dart';
import '../../features/start/presentation/start_page.dart';
import '../presentation/pages/error_page.dart';
import 'routes.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: Routes.portfolio,
  routes: [
    GoRoute(
      path: Routes.start,
      builder: (context, state) => const StartPage(),
      routes: [],
    ),
    GoRoute(
      name: Routes.portfolio,
      path: Routes.portfolio,
      builder: (context, state) => const PortfolioPage(),
    ),
  ],
  errorBuilder: (context, state) => const ErrorPage(),
);
