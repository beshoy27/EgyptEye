import 'package:flutter/material.dart';

class ForgetPasswordbutton extends StatelessWidget {
  const ForgetPasswordbutton({
    required this.BtnIcon,
    required this.title,
    required this.subtitle,
    required this.onTap,

    Key? key,
  }) : super(key: key);

final IconData BtnIcon;
final String title,subtitle;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
        ),
        child: Row(
          children: [
            Icon(BtnIcon,size: 60,),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: Theme.of(context).textTheme.headline6,),
                Text(subtitle,style: Theme.of(context).textTheme.bodyLarge,)
    
              ],
            )
          ],
        ),
      ),
    );
  }}