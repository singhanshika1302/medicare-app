// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medicare_app/cart.dart';
import 'package:medicare_app/doctor.dart';
import 'package:medicare_app/home.dart';
import 'package:medicare_app/profile.dart';

class bottomnavbar extends StatefulWidget {
  const bottomnavbar({super.key});

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
  int _currentindex = 0;
  List<Widget> widgetlist = [
   MediHomepage(),
   Doctor_page(),
   cart_page(),
   Profile_page(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetlist[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff50A5AE),
        backgroundColor: Colors.white,
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: Icon(Icons.medical_services_outlined),
            label: 'Doctor',
          ),
          
          
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
      

    );
  }
}