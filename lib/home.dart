import 'package:flutter/material.dart';
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
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.add_alert_rounded,color: Colors.white,)),
                      )
                    ],
                  ),
                  MyTextField(controller: MySearchController, hintText: ' 🔍  Search a doctor or health issue', obscureText: false)

                ],
              ),
            ),
            Row(children: [
              Container(color:Color(0xffEEF6F7) ,
                child: IconButton(onPressed: (){}, icon:Icon( Icons.medical_services_outlined),))
            ],)
          ],
        )),
      ),
    );
  }
}
