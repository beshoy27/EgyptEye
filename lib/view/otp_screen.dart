// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';



class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Verification'.toUpperCase(),style: Theme.of(context).textTheme.headline6,textAlign: TextAlign.center,),
            Text('CO\nDE',style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 80,   
            ),
            textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40,),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code){print("OTP is =>$code");},

            ),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: const Text('Next') )


          ]),
      ),
    );
  }
}