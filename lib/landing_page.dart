// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medicare_app/utilis/emptyButton.dart';

// ignore: camel_case_types
class landingPage extends StatelessWidget {
  const landingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/landingPageImg.jpeg'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Get Started',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
      
            SizedBox(
              width: 330,
              child: Text(
                'Doctor appointment, buy medicines, online consultaion with top doctor, and find nearby hospital',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF7F7F7F),
                  fontSize: 13,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            
            
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 3),
            child: SizedBox(
              width: double.infinity,
              child: emptyButton(text: 'Continue with Email', onTap: (){}, icon: 'Logos.google_gmail')),
          ),
      
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
            child: SizedBox(
              width: double.infinity,
              child: emptyButton(text: 'Continue with Google', onTap: (){}, icon: 'Logos.google_gmail')),
          ),
      
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
            child: SizedBox(
              width: double.infinity,
              child: emptyButton(text: 'Continue with Apple', onTap: (){}, icon: 'Logos.google_gmail')),
          ),

          SizedBox(
            height: 30,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account ?'  ),
              TextButton(onPressed: (){}, child: Text('Sign up ', style: TextStyle(fontWeight: FontWeight.bold , color: Color(0xff50A5AE)),))
            ],
            
          ),


      
      
      
      
          
          
          ],
        ),
      ),
    );
  }
}
