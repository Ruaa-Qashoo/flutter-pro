// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names

import 'package:flutter/material.dart';


class JoinExpert extends StatefulWidget {
  const JoinExpert({super.key});

  @override
  State<JoinExpert> createState() => _JoinExpertState();
}

class _JoinExpertState extends State<JoinExpert> {

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(

        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Color.fromARGB(255, 170, 203, 227),
             
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 255, 255, 255),

              
            ]
        
          
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "images/1.png",
                width: 200,
              ),
            ),
          ]
              )),

              

    ); 
  
}}