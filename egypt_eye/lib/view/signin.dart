import 'package:egypt_eye/models/signin_button.dart';
import 'package:egypt_eye/models/my_textfield.dart';
import 'package:egypt_eye/models/square_title.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../models/signin_w_g_button.dart';

class Signin extends StatelessWidget {
  Signin({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final GoogleSignIn _googleSignIn=GoogleSignIn();



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
              Expanded(

              child: Image.asset('assets/eye.png')
              ),
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
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 20),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 20),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // sign in button
              SignInButton(
                onTap:    ()=>context.go('/path2')
 
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
                        'Or continue with',
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

              // google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  // google button
                    SignInWithGoogle(
   
                 onTap: () { _googleSignIn.signIn(); },
 
                //signinViewModel.signUserIn(),
              ),

                  SizedBox(width: 25),

                  // apple button
                  SquareTile(imagePath: 'assets/facebook.png', onPressed: null,)
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
                    onPressed: () =>context.go('/path1')


                    ),
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

