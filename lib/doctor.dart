import 'package:flutter/material.dart';
import 'package:medicare_app/utilis/doctorpage_card.dart';
import 'package:medicare_app/utilis/emptyButton.dart';
import 'package:medicare_app/utilis/mytextfield.dart';
import 'package:medicare_app/utilis/solidButtton.dart';

class Doctor_page extends StatelessWidget {
   Doctor_page({super.key});

  @override
   final MySearchController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Doctor', style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          MyTextField(
                      controller: MySearchController,
                      hintText: ' 🔍  Search a doctor',
                      obscureText: false),

          SizedBox(
            height: 20,
          ), 

          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox( 
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: solidbutton(text: 'Recommened by you', onTap: (){},),
                  )),

                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: emptyButton(text: 'Near by you', onTap: (){}, icon:'assets/place.jpg' ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: emptyButton(text: 'Near by you', onTap: (){}, icon:'assets/place.jpg' ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: emptyButton(text: 'Near by you', onTap: (){}, icon:'assets/place.jpg' ),
                ),
              ],
            ),
          ),       

          DoctorProduct_card(),
          DoctorProduct_card(),
          DoctorProduct_card(),

        ],
      ),

      
      
    );
  }
}