import 'package:egypt_eye/viewModels/signupViewModel.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:get/get.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    final controller =Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();
    
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Form(
              child: Column(children: [
                      //logo edit//
                      Expanded(child: Image.asset('assets/eye.png')),
                      const SizedBox(height: 0),
                      /////////////////////////
            
                      const Text(
              'Welcome to the App',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
              'Register Now!',
              style: TextStyle(
                fontSize: 20,
              ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child:  Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                 
                  child: TextFormField(
                    controller:controller.fullname ,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Full Name',
                    ),
                  ),
                ),
              ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),



                child:  Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextFormField(
                    controller:controller.email ,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                    ),
                  ),
                ),
              ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),


                child:  Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextFormField(
                    controller:controller.password ,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),

                child:  Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextFormField(
                    controller:controller.phoneNo ,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Phone Number',
                    ),
                  ),
                ),
              ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.blue[300]),
                
                
                child: Center(
                    child: ElevatedButton(
                      onPressed: (){
                        if(formKey.currentState!.validate()){
                          SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                        }
                      },
                      child: const Text('REGISTER'),
                )
                ),
              ),
                      )
                    ]),
            )));
  }
}
