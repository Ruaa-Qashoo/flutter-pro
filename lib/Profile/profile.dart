// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  int _selectedPage =3;

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
       
        child: Column(
          
          children: [
            SizedBox(height: 100,),
            Center(
            
              child:CircleAvatar(
                
                  backgroundImage: AssetImage("images/person2.jpg"),
                  backgroundColor: Color.fromARGB(255, 206, 222, 233),
                  radius: 110,
                  
                  ),
                     
                     ),

                     SizedBox(height: 20,),
                     Text("username",style: TextStyle(fontSize: 40),),
                     SizedBox(height: 50,),

                     Container(
                      color: Color.fromARGB(172, 170, 203, 227),
                      
                        width: 350,
                        height: 60,
                        child: Row(children: [
                        SizedBox(width: 20,),
                        Text("Personal Data",style: TextStyle(fontSize: 30,color: Colors.black),),
                        SizedBox(width: 80,),
                        Icon(Icons.play_arrow_rounded, color: Color.fromARGB(255, 34, 33, 33) ,size: 45, ),
                        
                            ]
                           )),

                              SizedBox(height: 20,),
                    Container(
                      color: Color.fromARGB(172, 170, 203, 227),
                      
                        width: 350,
                        height: 60,
                        child: Row(children: [
                        SizedBox(width: 20,),
                        Text("Change Password",style: TextStyle(fontSize: 30,color: Colors.black),),
                        SizedBox(width: 25,),
                        Icon(Icons.play_arrow_rounded, color: Color.fromARGB(255, 34, 33, 33) ,size: 45, ),
                        
                            ]
                           )),

                           SizedBox(height: 50,),

                           Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(172, 170, 203, 227),
                              padding: EdgeInsets.all(10),
                              
                            ),
                            
                            onPressed: ()async{
                             
                              await FirebaseAuth.instance.signOut();
                              Navigator.of(context).pushReplacementNamed("login");
      
                            }, 
                             
                           
                            
                            child: Text(
                              
                              "Log Out",
                              
                              style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 45, 45, 45))
      
                          ),
                          )),
      
                       ])
                     ),
    


        bottomNavigationBar: BottomNavyBar(

        selectedIndex: _selectedPage ,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index)=> setState((){
          
          _selectedPage = index;
          if(_selectedPage == 0 ){Navigator.of(context).pushReplacementNamed("homepage");} 
          else if(_selectedPage == 1 ){Navigator.of(context).pushReplacementNamed("consulting");}
          else if(_selectedPage == 2 ){Navigator.of(context).pushReplacementNamed("check");}
          else if(_selectedPage == 3 ){Navigator.of(context).pushReplacementNamed("profile");}
          
          }),
        items:<BottomNavyBarItem> [
          BottomNavyBarItem(
            icon: const Icon(Icons.home,size: 30,),
            title: const Text("Home"),
            activeColor: Colors.lightBlue,
            textAlign: TextAlign.center,
            
            ),

            BottomNavyBarItem(
            icon: const Icon(Icons.people,size: 30,),
            title: const Text("Consulting"),
            activeColor: Colors.blueGrey,
            textAlign: TextAlign.center,
            
            ),

            BottomNavyBarItem(
            icon: const Icon(Icons.check_box_rounded,size: 30,),
          
            title: const Text("Check"),
            activeColor: Colors.lightGreen,
            textAlign: TextAlign.center,
            
            ),
            BottomNavyBarItem(
            icon: const Icon(Icons.person,size: 30,),
            title: const Text("Profile"),
            activeColor: Color.fromARGB(255, 199, 193, 137),
            textAlign: TextAlign.center,
            
            ),

        ],
      ),
            );
  }
  
}