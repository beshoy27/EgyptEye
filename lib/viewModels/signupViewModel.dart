// ignore_for_file: file_names

import 'package:egypt_eye/viewModels/authenticationViewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{
  static SignUpController get instance =>Get.find();

  //TextField Controllers to get data from TextFeilds
  final email=TextEditingController();
  final password=TextEditingController();
  final fullname=TextEditingController();
  final phoneNo=TextEditingController();

  //Call this function from Design & it will do the rest
  void registerUser(String email, String password){
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);

  }

}