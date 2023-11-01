import 'package:flutter/material.dart';

class DoctorProduct_card extends StatelessWidget {
  const DoctorProduct_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        
        width: double.infinity,
        height: 128,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFF7F7F7F)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 99,
              top: 12,
              child: Container(
                width: 210,
                height: 77,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 32,
                      child: Text(
                        'General Practitioner',
                        style: TextStyle(
                          color: Color(0xFF7F7F7F),
                          fontSize: 11,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w600,
                          height: 0.12,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 49,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '2',
                              style: TextStyle(
                                color: Color(0xFF7F7F7F),
                                fontSize: 11,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0.12,
                              ),
                            ),
                            TextSpan(
                              text: ' Years ',
                              style: TextStyle(
                                color: Color(0xFF7F7F7F),
                                fontSize: 11,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w600,
                                height: 0.12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 15,
                      child: Text(
                        'Dr. Manas Jha',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w600,
                          height: 0.11,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 71,
                      top: 47,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 16,
                            top: 0,
                            child: Text(
                              '4.8',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0.12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 10.93,
              top: 89.50,
              child: Container(
                width: 298.14,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xCCE5E5E5),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 12,
              top: 12,
              child: Container(
                width: 74.40,
                padding: const EdgeInsets.only(top: 5, left: 9, right: 10.40),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Color(0xFFEDF6F6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 55,
                      height: 67,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage('assets/doc1.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 18,
              top: 110,
              child: Text(
                '\$32,400',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  height: 0.09,
                ),
              ),
            ),
            Positioned(
              left: 250,
              top: 95,
              child: Container(
                padding:
                    const EdgeInsets.only(top: 3, left: 15, right: 14, bottom: 2),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Color(0xFF50A5AE),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF50A5AE)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Chat',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}