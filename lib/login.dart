// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medicare_app/utilis/mytextfield.dart';
import 'package:medicare_app/utilis/solidButtton.dart';


class login extends StatefulWidget {

  login({super.key});
 

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login>with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);

     final usernameController = TextEditingController();
     final passwordController = TextEditingController();
    
    return Scaffold(

      body: 
      
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
       Padding(
         padding: const EdgeInsets.fromLTRB(35, 100, 0, 12),
         child: Text(
           'Welcome Back',
           style: TextStyle(
          color: Colors.black,
          fontSize: 28,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
          height: 0,
           ),
       ),
       ),

       
       Padding(
         padding: const EdgeInsets.fromLTRB(35, 8, 0, 15),
         child: SizedBox(
           width: 268,
           child: Text(
          'Please login first to use Wellness Experts feature ',
          style: TextStyle(
              color: Color(0xFF7F7F7F),
              fontSize: 16,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w600,
              height: 0,
          ),
           ),
       ),
       ),





          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              elevation: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffEEF6F7),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TabBar(
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    controller: tabController,
                    labelPadding: EdgeInsets.symmetric(horizontal: 30),
                    tabs: [
                      Tab(
                        child: Text(
                          "Email",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text("Phone",
                            style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.secondary)),
                      ),
                 
                    ]),
              ),
            ),
          ),
Expanded(
            child: TabBarView(
              controller: tabController,
              physics: BouncingScrollPhysics(),
              children: [
                // Contents for the "email" tab,
               SingleChildScrollView(
                 child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                      child: MyTextField(
                                    controller: usernameController,
                                    hintText: 'Username',
                                    obscureText: false,
                                  ),
                    ),
               
                             const SizedBox(height: 10),
               
                             // password textfield
                             MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                             ),
               
                             const SizedBox(height: 10),
               
                             // forgot password?
                             Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Color(0xff99004C)),
                      ),
                    ],
                  ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(15.0),
                               child: solidbutton(text: 'Sign In', onTap: (){}),
                             )
                  ],
               
                 ),
               ),
 // Contents for the "phone" tab
                Center(child: Text('Email')),
],
            ),
          ),
          

          Padding(
            
            
            padding: const EdgeInsets.all(8.0),
            
            child: Text('or Sign In with'),
          ),
          
        ],
    ));
  }
}