import 'package:egypt_eye/models/getstarted_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                'assets/eye.png',
                //height: 200,
                //width: 200,
              ),
              const SizedBox(height: 40),
              const Text(
                "Explore your favorite places\n Only with us",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "All your exciting destinations are here, \n Explore The Hidden Gems of Egypt",
                textAlign: TextAlign.center,
                style: TextStyle(),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: SizedBox(
                  width: double.maxFinite,
                  child: GetStartedButton(onTap: () => context.go('/path3')),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
