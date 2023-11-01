// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medicare_app/doctor.dart';
import 'package:medicare_app/home.dart';
import 'package:medicare_app/landing_page.dart';
import 'package:medicare_app/login.dart';
import 'package:medicare_app/navbar.dart';
import 'package:medicare_app/profile.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,

     initialRoute: '/navbar',
     routes: {
      '/lp':(context) => landingPage(),
      '/login':(context) => login(),
      '/home':(context) => MediHomepage(),
      '/navbar':(context) => bottomnavbar(),
      '/doctor':(context) => Doctor_page(),
      '/profile':(context) =>Profile_page(),
     },
  ));
}


