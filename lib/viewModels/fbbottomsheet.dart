
import 'package:egypt_eye/models/forgetpassbutton.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

 Future<dynamic> FPbottomsheet(BuildContext context) {
    return showModalBottomSheet(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        context: context,
                       builder: (context)=> Container(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Select a way to reset your password!', style: Theme.of(context).textTheme.headlineSmall,),
                            const SizedBox(height: 40,),
                            ForgetPasswordbutton(
                              BtnIcon: Icons.mail_outline_outlined,
                             title: 'E-Mail', 
                             subtitle: 'Reset via E-Mail verification', 
                             onTap: () => context.go('/path6'),),
                           const SizedBox(height: 40),
                            ForgetPasswordbutton(
                              onTap: () => context.go('/path8'), 
                              BtnIcon: Icons.mobile_friendly_rounded,
                              title: 'Phone Number',
                              subtitle: 'Reset via Phone verification', 
                              ),

                          ]),
                       ),
                      );
  }



