import 'package:flutter/material.dart';
import 'package:medicare_app/utilis/doctor_card.dart';
import 'package:medicare_app/utilis/mytextfield.dart';

class MediHomepage extends StatelessWidget {
  MediHomepage({super.key});

  @override
  final MySearchController = TextEditingController();
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              color: Color(0xff69B2BA),
              width: double.infinity,
              height: 216,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 50, 20, 20),
                        child: Text(
                          'Hello, Arpit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w600,
                            height: 0,
                            letterSpacing: 0.70,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 50, 20, 20),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add_alert_rounded,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  MyTextField(
                      controller: MySearchController,
                      hintText: ' 🔍  Search a doctor or health issue',
                      obscureText: false)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Container(
                          color: Color(0xffEEF6F7),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.medical_services_outlined),
                          )),
                      Text(
                        'Doctor',
                        style: TextStyle(color: Color(0xff808080)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Container(
                          color: Color(0xffEEF6F7),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.stay_current_landscape_outlined),
                          )),
                      Text(
                        'Pharmacy',
                        style: TextStyle(color: Color(0xff808080)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Container(
                          color: Color(0xffEEF6F7),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.calendar_month),
                          )),
                      Text(
                        'Appointment',
                        style: TextStyle(color: Color(0xff808080)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Container(
                          color: Color(0xffEEF6F7),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.location_city),
                          )),
                      Text(
                        'Hospitals',
                        style: TextStyle(color: Color(0xff808080)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 302,
              height: 128,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('assets/banner.png'))),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Doctors',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Color(0xFF50A5AE),
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  )
                ],
              ),
            ),
            Container(
              
              height: 300,
            
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Doctor_Card(img: 'assets/doctor.png', prof: 'General Practitioner', name: 'Dr.Manas Jha'),
                  ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Doctor_Card(img: 'assets/doctor 2.png', prof: 'Heart Surgeon', name: 'Dr.Dhruv Jha'),
                    ),
                ],
                
              ),
            )
          ],
        )),
      ),
    );
  }
}
