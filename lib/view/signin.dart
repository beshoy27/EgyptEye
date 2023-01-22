import 'package:egypt_eye/main.dart';
import 'package:egypt_eye/models/forgetpassbutton.dart';
import 'package:egypt_eye/models/my_button.dart';
import 'package:egypt_eye/models/my_textfield.dart';
import 'package:egypt_eye/models/square_title.dart';
import 'package:egypt_eye/viewModels/fbbottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Signin extends StatelessWidget {
  Signin({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

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

              // welcome back, you've been missed!
              Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 50),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'E-mail',
                obscureText: false,
                prefixIcon: const Icon(Icons.person_outline_outlined),
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
                prefixIcon: const Icon(Icons.fingerprint),

              ),


              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        FPbottomsheet(context);
                      },
                      child: Text('Forgot Password?'),
                    ),
                  ],
                ),
              ),


              // sign in button
              MyButton(onTap: () => context.go('/path3'), title: 'SignIn',

                  //signinViewModel.signUserIn(),
                  ),

              const SizedBox(height: 20),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // google login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  // google button
                  OutlinedButton.icon(
                    icon: const Image(image: AssetImage('assets/google.png'),width: 30.0,),
                    onPressed: () {},
                  label:Text('Sign-In with Google')
                  
                  )



                ],
              ),

              const SizedBox(height: 20),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  TextButton(
                      child: const Text('Register now'),
                      onPressed: () => context.go('/path1')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}