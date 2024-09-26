import 'package:go_router/go_router.dart';
import 'package:animations/animations.dart';
import 'package:task1/features/error/ui/error_ui.dart';
import 'package:task1/features/questions/ui/questions_ui.dart';
import 'package:task1/features/splash_screen/ui/splash_ui.dart';
import 'package:task1/features/home/ui/home_ui.dart';

import 'utils/logger/navigator_observer/navigator_observer.dart';

final navRouter = GoRouter(
  initialLocation: '/splash',
  observers: [
    GoRouterObserver(),
  ],
  routes: [
    GoRoute(
      path: '/splash',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const SplashScreenUI(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeThroughTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const HomeUi(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SharedAxisTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.horizontal,
              child: child,
            );
          },
        );
      },
      routes: [
        GoRoute(
          path: 'questions/:endpoint',
          pageBuilder: (context, state) {
            final endpoint = state.pathParameters['endpoint']!;
            return CustomTransitionPage(
              key: state.pageKey,
              child: QuestionsUi(endpoint: endpoint),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return SharedAxisTransition(
                  animation: animation,
                  secondaryAnimation: secondaryAnimation,
                  transitionType: SharedAxisTransitionType.vertical,
                  child: child,
                );
              },
            );
          },
        ),
      ],
    ),
    GoRoute(
      path: '/error',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const ErrorUi(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeScaleTransition(
              animation: animation,
              child: child,
            );
          },
        );
      },
    ),
  ],
  errorPageBuilder: (context, state) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: const ErrorUi(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeScaleTransition(
          animation: animation,
          child: child,
        );
      },
    );
  },
);
