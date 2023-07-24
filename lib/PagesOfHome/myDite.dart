// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names

import 'package:flutter/material.dart';


class MyDite extends StatefulWidget {
  const MyDite({super.key});

  @override
  State<MyDite> createState() => _MyDiteState();
}

class _MyDiteState extends State<MyDite> {

  int _selectedPage =2;

  void onItemSelected(int index){

    setState(() {
      _selectedPage =index;
    });
  }

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
        child: ListView(
         
          children: [
            Container(
              width: 400,
              child: Center(
                child: Image.asset(
                  "images/7day.png",
                
                ),),),

                 Container(
              width: 400,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Center(
                child: Image.asset(
                  "images/eat1.png",
                ),),),

                Container(
              width: 400,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Center(
                child: Image.asset(
                  "images/eat2.png",
                ),),),

                Container(
              width: 400,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Center(
                child: Image.asset(
                  "images/eat3.png",
                ),),),

                Container(
              width: 400,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Center(
                child: Image.asset(
                  "images/eat4.png",
                ),),),

                Container(
              width: 400,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Center(
                child: Image.asset(
                  "images/eat5.png",
                ),),),

                Container(
              width: 400,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Center(
                child: Image.asset(
                  "images/eat6.png",
                ),),),

                Container(
              width: 400,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Center(
                child: Image.asset(
                  
                  "images/eat7.png",
                 
                ),),),

                Container(
              width: 400,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Center(
                child: Image.asset(
                  "images/eat8.png",
                
                ),),),
                IconButton(
                   
                    onPressed: () => Navigator.of(context).pushReplacementNamed("homepage"),
                    icon:Icon(Icons.home,size: 60,color: Color.fromARGB(200, 2, 167, 197),),
                     ),
                     SizedBox(height: 30,)


          ]
              )),

    ); 
  
}}