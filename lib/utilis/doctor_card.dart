import 'package:flutter/material.dart';

class Doctor_Card extends StatelessWidget {
  final String img;
  final String prof;
  final String name;
  
  const Doctor_Card(
      {super.key,
      required this.img,
      required this.prof,
      required this.name,
     });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        
        child: Column(
          
          children: [
            Container(
              
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            
            Text(
              prof,
              style: TextStyle(
                  fontSize: 11,
                  color: Color(0xff9B9B9B),
                  fontStyle: FontStyle.italic),
            ),
            Text(
              name,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  ),
            ),
           
           
          ],
        ),
      ),
    );
  }
}