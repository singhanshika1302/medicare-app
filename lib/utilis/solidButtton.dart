// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';


class solidbutton extends StatelessWidget {

  final String text ;
  
  void Function()? onTap;
  solidbutton({super.key , required this.text, required this.onTap , });

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
             
             Text(text,style: TextStyle(color:Colors.white),),
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
              color: Color(0xff50A5AE),
              width: 1, // Adjust the border width
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          Color(0xff50A5AE)
        ),
      ),
    );
  }
}