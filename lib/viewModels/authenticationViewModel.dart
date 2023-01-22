
// ignore_for_file: file_names, unnecessary_null_comparison, avoid_print, unused_catch_clause, empty_catches

import 'package:egypt_eye/view/home_page.dart';
import 'package:egypt_eye/view/welcome_page_dart.dart';
import 'package:egypt_eye/viewModels/errorHandeling.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  //variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
   void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen); //always ready to perform action


  }


  _setInitialScreen(User? callback) {
    User == null ? Get.offAll(()=> const WelcomePage()):Get.offAll(()=>const HomePage()); //keep the user signed in even if the app is closed
  }
  Future<void> createUserWithEmailAndPassword(String email,String password)async{
    try{
      await _auth.createUserWithEmailAndPassword(email: email,password: password);
      firebaseUser.value !=null ? Get.offAll(()=> const HomePage()) : Get.to(()=>const WelcomePage());
    } on FirebaseAuthException catch(e){
      final ex =SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    } catch(_){
      const ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

    Future<void> loginWithEmailAndPassword(String email,String password)async{
    try{
      await _auth.signInWithEmailAndPassword(email: email,password: password);
    } on FirebaseAuthException catch(e){
      
    } catch(_){

    }
  }

  Future<void> logout() async => await _auth.signOut();


}