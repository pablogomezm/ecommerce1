import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screen_a.dart';
import 'screen_b.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ScreenA(),
    ),
    GoRoute(
      path: '/b',
      builder: (context, state) => const ScreenB(),
    ),
  ],
);

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
