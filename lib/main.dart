import 'package:flutter/material.dart';
import 'package:medicare_app/home.dart';
import 'package:medicare_app/landing_page.dart';
import 'package:medicare_app/login.dart';
import 'package:medicare_app/navbar.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,

     initialRoute: '/lp',
     routes: {
      '/lp':(context) => landingPage(),
      '/login':(context) => login(),
      '/home':(context) => MediHomepage(),
      '/navbar':(context) => bottomnavbar(),
     },
  ));
}


