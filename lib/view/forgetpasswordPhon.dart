import 'package:egypt_eye/models/my_button.dart';
import 'package:egypt_eye/models/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  ForgetPasswordPhoneScreen({Key? key}) : super(key: key);

  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Expanded(child: Image.asset('assets/eye.png')),
            const SizedBox(height: 30),

            Text(
              'Reset your password via Phone',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 50),

            // username textfield
            MyTextField(
              controller: phoneController,
              hintText: 'Phone',
              obscureText: false,
              prefixIcon: const Icon(Icons.person_outline_outlined),
            ),

            const SizedBox(height: 10),

            MyButton(
              onTap: () => context.go('/path7'),
              title: 'Next',
            ),

            const SizedBox(height: 20),
          ],
        )),
      ),
    );
  }
}
