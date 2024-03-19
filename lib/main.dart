import 'package:flutter/material.dart';
import 'package:portfolio/config/theme/light_theme.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'config/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Portfolio',
      theme: lightTheme,
      routerConfig: router.config(),
      builder: (_, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 1080, name: MOBILE),
          const Breakpoint(start: 1081, end: double.infinity, name: DESKTOP),
        ],
      ),
    );
  }
}
