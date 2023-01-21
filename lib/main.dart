import 'package:egypt_eye/view/HomeScreen.dart';
import 'package:egypt_eye/view/map.dart';
import 'package:egypt_eye/view/welcome_page_dart.dart';
import 'package:flutter/material.dart';
import 'package:egypt_eye/view/signin.dart';
import 'package:egypt_eye/view/signup.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:egypt_eye/view/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  static const String title = 'GoRouter Routes';

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.mulishTextTheme(
              Theme.of(context).textTheme,
            )),
        routerDelegate: _router.routerDelegate,
        routeInformationParser: _router.routeInformationParser,
        routeInformationProvider: _router.routeInformationProvider,
      );

  final GoRouter _router = GoRouter(routes: <GoRoute>[
    GoRoute(
      routes: <GoRoute>[
        GoRoute(
          path: 'path1',
          builder: (BuildContext context, GoRouterState state) =>
              const SignupPage(),
        ),
        GoRoute(
          path: 'path2',
          builder: (BuildContext context, GoRouterState state) =>
              const HomeScreen(),
        ),
        GoRoute(
          path: 'path3',
          builder: (BuildContext context, GoRouterState state) =>
              const HomePage(),
        ),
      ],
      path: '/',
      builder: (BuildContext context, GoRouterState state) => WelcomePage(),
    ),
  ]);
}
