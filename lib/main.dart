import 'package:egypt_eye/view/editprofile.dart';
import 'package:egypt_eye/view/forgetpasswordMail.dart';
import 'package:egypt_eye/view/forgetpasswordPhon.dart';
import 'package:egypt_eye/view/otp_screen.dart';
import 'package:egypt_eye/view/profile.dart';
import 'package:egypt_eye/view/settings.dart';
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
          builder: (BuildContext context, GoRouterState state) => Signin(),
        ),
        GoRoute(
          path: 'path3',
          builder: (BuildContext context, GoRouterState state) => HomePage(),
        ),
        GoRoute(
          path: 'path33',
          builder: (BuildContext context, GoRouterState state) =>
              const EditProfile(),
        ),
        GoRoute(
          path: 'path4',
          builder: (BuildContext context, GoRouterState state) =>
              const SettingsPage(),
        ),
        GoRoute(
          path: 'path5',
          builder: (BuildContext context, GoRouterState state) =>
              const ProfilePage(),
        ),
        GoRoute(
          path: 'path6',
          builder: (BuildContext context, GoRouterState state) =>
              ForgetPasswordMailScreen(),
        ),
        GoRoute(
          path: 'path7',
          builder: (BuildContext context, GoRouterState state) =>
              const OTPScreen(),
        ),
        GoRoute(
          path: 'path8',
          builder: (BuildContext context, GoRouterState state) =>
              ForgetPasswordPhoneScreen(),
        ),
      ],
      path: '/',
      builder: (BuildContext context, GoRouterState state) => WelcomePage(),
    ),
  ]);
}
