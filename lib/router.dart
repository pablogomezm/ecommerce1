import 'package:go_router/go_router.dart';
import 'layout_example.dart';
import 'screen_a.dart';
import 'screen_b.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LayoutExample(),
    ),
    GoRoute(
      path: '/a',
      builder: (context, state) => const ScreenA(),
    ),
    GoRoute(
      path: '/b',
      builder: (context, state) => const ScreenB(),
    ),
  ],
);
