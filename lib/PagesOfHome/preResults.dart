// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names

import 'package:flutter/material.dart';


class PreResults extends StatefulWidget {
  const PreResults({super.key});

  @override
  State<PreResults> createState() => _PreResultsState();
}

class _PreResultsState extends State<PreResults> {
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
            
            SizedBox(height: 80,),
            Center(
              child: Image.asset(
                "images/1.png",
                width: 200,
              ),
            ),
           
            Container(
              padding: EdgeInsets.all(9),
              
              margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
              decoration: BoxDecoration(
               
                //color: Color.fromARGB(255, 85, 159, 224),
                // border: Border.all(width:3,color: Color.fromARGB(255, 135, 135, 135)),
                   border: Border.all(width:3,color: Color.fromARGB(0, 135, 135, 135)),
                  borderRadius: BorderRadius.circular(20)
                      
                       
                      ),
              
             
              
              child:Column(children: [
                Text("Next Check after 15 days" ,textAlign: TextAlign.center,
              style:TextStyle(fontSize: 19,fontWeight: FontWeight.w700,)), 
                 SizedBox(height: 20,),
                 Text("Periodic follow-up contributes to obtaining better results and providing more prevention" ,textAlign: TextAlign.center,
              style:TextStyle(fontSize: 19,fontWeight: FontWeight.w500,)),
              ],)
              
        
            ),
            SizedBox(height: 50,),
            
                       
                            Container(
                             margin: EdgeInsets.fromLTRB(110, 10, 110, 0),
                              child: ElevatedButton(
                                
                              onPressed: (){
                            
                                    Navigator.of(context).pushReplacementNamed("homepage");
                            
                              },
                              
                              child: Text(
                                
                                "Check",
                                
                                style: TextStyle(fontSize: 20,)
                                  
                                                      ),
                                                      ),
                            ),
                            SizedBox(height:20),
            IconButton(
                   
                    onPressed: () => Navigator.of(context).pushReplacementNamed("homepage"),
                    icon:Icon(Icons.home,size: 40,color: Color.fromARGB(197, 52, 98, 198),), ),
           
            
            
          
        

   ] ))); 
  
}} 

 