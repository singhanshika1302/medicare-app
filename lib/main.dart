import 'package:flutter/material.dart';
import 'package:medicare_app/landing_page.dart';
import 'package:medicare_app/login.dart';

void main() {
  runApp( MaterialApp(

     initialRoute: '/login',
     routes: {
      '/lp':(context) => landingPage(),
      '/login':(context) => login(),
     },
  ));
}


