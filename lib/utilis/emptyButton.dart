// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:colorful_iconify_flutter/icons/logos.dart';

class emptyButton extends StatelessWidget {

  final String text ;
  final String icon ;
  void Function()? onTap;
  emptyButton({super.key , required this.text, required this.onTap , required this.icon,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
       
       onPressed: 
       onTap,

       child: 
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.asset(icon),
             SizedBox(width: 5,),
             Text(text,style: TextStyle(color:Colors.black),),
           ],
         ),
       ),

       style: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
            color: Colors.black,
          ),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(15.0), // Adjust the border radius
            side: BorderSide(
              color: Colors.black,
              width: 1, // Adjust the border width
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.white
        ),
      ),
    );
  }
}