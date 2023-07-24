// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names

import 'package:flutter/material.dart';


class Gohome extends StatefulWidget {
  const Gohome({super.key});

  @override
  State<Gohome> createState() => _GohomeState();
}

class _GohomeState extends State<Gohome> {


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
              child: ElevatedButton(
                onPressed: () {
                  
                         Navigator.of(context).pushReplacementNamed("login",);
                }, 
                child: Text("go to home"))
            ),
          ]
              )),

    ); 
  
}}