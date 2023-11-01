import 'package:flutter/material.dart';
import 'package:medicare_app/utilis/doctorpage_card.dart';

class Doctor_page extends StatelessWidget {
  const Doctor_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Doctor'),
        centerTitle: true,
      ),
      body: DoctorProduct_card(),
      
      
      
    );
  }
}