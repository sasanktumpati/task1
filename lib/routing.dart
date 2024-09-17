import 'package:go_router/go_router.dart';
import 'package:task1/logger/navigator_observer/navigator_observer.dart';
import 'package:task1/features/questions/ui/questions_ui.dart';
import 'package:task1/features/splash_screen/ui/splash_ui.dart';
import 'package:task1/features/error/ui/error_ui.dart';

import 'home/ui/home_ui.dart';

final navRouter = GoRouter(
  initialLocation: '/splash',
  observers: [
    GoRouterObserver(),
  ],
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashScreenUI(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeUi(),
      routes: [
        GoRoute(
          path: 'questions/:endpoint',
          builder: (context, state) {
            final endpoint = state.pathParameters['endpoint']!;
            return QuestionsUi(endpoint: endpoint);
          },
        ),
      ],
    ),
    GoRoute(
      path: '/error',
      builder: (context, state) => const ErrorUi(),
    ),
  ],
  errorBuilder: (context, state) => const ErrorUi(),
);
