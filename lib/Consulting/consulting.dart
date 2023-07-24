// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Consulting extends StatefulWidget {
  const Consulting({super.key});

  @override
  State<Consulting> createState() => _ConsultingState();
}

class _ConsultingState extends State<Consulting> {

  int _selectedPage =1;

  void onItemSelected(int index){

    setState(() {
      _selectedPage =index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    // appBar: AppBar(
    //   
    //  
    //   backgroundColor: Colors.blueGrey,
    // 
    //   
    //   title: Text("Consulution"),
    //   

    // ),
      body: Container(
       

        decoration: BoxDecoration(
         image: DecorationImage(
          image:AssetImage("images/expert6.jpg"),
          fit: BoxFit.fill ,
          opacity:0.2 
          
          ),
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Color.fromARGB(255, 198, 226, 228),
             
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 255, 255, 255),

              
            ]
        
          
          )
        ),
        child: ListView(
          children: [
            
            Container(
              
              color: Color.fromARGB(103, 199, 198, 198),
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
              child:
              Text(textAlign:TextAlign.center,"We want you to have an excellent Helth, If you need assistance please let us know. We want to help.",
                    style: TextStyle(fontSize: 19 ,color: Color.fromARGB(255, 15, 15, 15),fontWeight: FontWeight.w500 ),),
       ),
            SizedBox(height: 15,),
              
            
                    Container(
                      
                      width: 360,
                      height: 90,

                      decoration: BoxDecoration(
                        color: Color.fromARGB(123, 200, 227, 233),
                        border: Border.all(width:3,color: Color.fromARGB(255, 135, 135, 135)),
                        borderRadius: BorderRadius.circular(50)
                      ),
                     
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      margin: EdgeInsets.all(10),
                      
                      child: Row(
              
                        children: [CircleAvatar(
                        
                          backgroundImage: AssetImage("images/expert10.jpg"),
                          backgroundColor: Color.fromARGB(255, 206, 222, 233),
              
                          radius: 38,
                          
                          ),
                         
              
                      SizedBox(width: 25,),
                    
                      Text("Dr.Sami Ismail",style: TextStyle(fontSize: 25),),
                      SizedBox(width: 25,),
                    
                      IconButton(
                        
                      onPressed:(){
                         AwesomeDialog(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          context:context ,
                          dialogType: DialogType.noHeader,
                          animType: AnimType.bottomSlide,
                          title:"ContactInformation" ,
                          borderSide: BorderSide(
                           width: 3,
                           color:Color.fromARGB(255, 54, 98, 244),
                           style: BorderStyle.solid, ),
                          body:Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 30),

                                child: Column(
                                  
                                  children: [

                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      
                                      decoration: BoxDecoration(
                                        image: DecorationImage(

                                          fit: BoxFit.cover,
                                          
                                          image: AssetImage("images/ci2.png"),)),
                                    
                                       ),

                                       SizedBox(height: 20,),

                                    
                                    
                                    Row(
                                      children: [
                                        Icon(Icons.email,),
                                        SizedBox(width: 10,),
                                        Text(": Sami@gmail.com",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),

                                      ],
                                    ),

                                     Row(
                                      children: [
                                        Icon(Icons.phone),
                                        SizedBox(width: 10,),
                                        Text(": 0597123785",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                                        
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        Icon(Icons.location_pin),
                                        SizedBox(width: 10,),
                                        Text(": Ramallah/123 street",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                                        
                                      ],
                                    ),
                                    

                                  ],
                                ),    
                                 
                            )
                          
                          )..show();
                      } ,
                      icon: Icon(Icons.play_arrow_rounded,size: 37,color: Colors.lightBlue,)
                                  ),  
                    
                      ],),
                    ),
                 
              
                    Container(
                      
                      width: 360,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(123, 200,227, 233),
                        border: Border.all(width:3,color: Color.fromARGB(255, 135, 135, 135)),
                        borderRadius: BorderRadius.circular(50)
                      ),
                     
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      margin: EdgeInsets.all(10),
                      
                      child: Row(
              
                        children: [CircleAvatar(
                        
                          backgroundImage: AssetImage("images/expert13.jpg"),
                          backgroundColor: Color.fromARGB(255, 206, 222, 233),
              
                          radius: 38,
                          
                          ),
                         
              
                      SizedBox(width: 5,),
                    
                      Text("Dt.Sara Mohamed",style: TextStyle(fontSize: 25),),
                      
                      SizedBox(width: 3,),
                    
                      IconButton(
                        
                      onPressed:(){
                        AwesomeDialog(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          context:context ,
                          dialogType: DialogType.noHeader,
                          animType: AnimType.bottomSlide,
                          title:"ContactInformation" ,
                          borderSide: BorderSide(
                           width: 3,
                           color:Color.fromARGB(255, 54, 98, 244),
                           style: BorderStyle.solid, ),
                          body:Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 30),

                                child: Column(
                                  
                                  children: [

                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      
                                      decoration: BoxDecoration(
                                        image: DecorationImage(

                                          fit: BoxFit.cover,
                                          
                                          image: AssetImage("images/ci2.png"),)),
                                    
                                       ),

                                       SizedBox(height: 20,),

                                    
                                    
                                    Row(
                                      children: [
                                        Icon(Icons.email,),
                                        SizedBox(width: 10,),
                                        Text(": Sara@gmail.com",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),

                                      ],
                                    ),

                                     Row(
                                      children: [
                                        Icon(Icons.phone),
                                        SizedBox(width: 10,),
                                        Text(": 0596435678",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                                        
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        Icon(Icons.location_pin),
                                        SizedBox(width: 10,),
                                        Text(": Hebron/123 street",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                                        
                                      ],
                                    ),
                                    

                                  ],
                                ),    
                                 
                            )
                          
                          )..show();
                      } ,
                      icon: Icon(Icons.play_arrow_rounded,size: 37,color: Colors.lightBlue,)
                                  ),  
                    
                      ],),
                    ),
                    
                    Container(
                      
                      width: 360,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(123, 200,227, 233),
                        border: Border.all(width:3,color: Color.fromARGB(255, 135, 135, 135)),
                        borderRadius: BorderRadius.circular(50)
                      ),
                     
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      margin: EdgeInsets.all(10),
                      
                      child: Row(
              
                        children: [CircleAvatar(
                        
                          backgroundImage: AssetImage("images/expert10.jpg"),
                          backgroundColor: Color.fromARGB(255, 206, 222, 233),
              
                          radius: 38,
                          
                          ),
                         
              
                      SizedBox(width: 15,),
                    
                      Text("Dr.Imad Saleem",style: TextStyle(fontSize: 25),),

                      SizedBox(width: 18,),
                      
                    
                      IconButton(
                        
                      onPressed:(){
                         AwesomeDialog(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          context:context ,
                          dialogType: DialogType.noHeader,
                          animType: AnimType.bottomSlide,
                          title:"ContactInformation" ,
                          borderSide: BorderSide(
                           width: 3,
                           color:Color.fromARGB(255, 54, 98, 244),
                           style: BorderStyle.solid, ),
                          body:Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 30),

                                child: Column(
                                  
                                  children: [

                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      
                                      decoration: BoxDecoration(
                                        image: DecorationImage(

                                          fit: BoxFit.cover,
                                          
                                          image: AssetImage("images/ci2.png"),)),
                                    
                                       ),

                                       SizedBox(height: 20,),

                                    
                                    
                                    Row(
                                      children: [
                                        Icon(Icons.email,),
                                        SizedBox(width: 10,),
                                        Text(": Imad@gmail.com",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),

                                      ],
                                    ),

                                     Row(
                                      children: [
                                        Icon(Icons.phone),
                                        SizedBox(width: 10,),
                                        Text(": 0594292340",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                                        
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        Icon(Icons.location_pin),
                                        SizedBox(width: 10,),
                                        Text(": Qalqilia/123 street",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                                        
                                      ],
                                    ),
                                    

                                  ],
                                ),    
                                 
                            )
                          
                          )..show();
                      } ,
                      icon: Icon(Icons.play_arrow_rounded,size: 37,color: Colors.lightBlue,)
                                  ),  
                    
                      ],),
                    ),

                     Container(
                      
                      width: 360,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(123, 200,227, 233),
                        border: Border.all(width:3,color: Color.fromARGB(255, 135, 135, 135)),
                        borderRadius: BorderRadius.circular(50)
                      ),
                     
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      margin: EdgeInsets.all(10),
                      
                      child: Row(
              
                        children: [CircleAvatar(
                        
                          backgroundImage: AssetImage("images/expert13.jpg"),
                          backgroundColor: Color.fromARGB(255, 206, 222, 233),
              
                          radius: 38,
                          
                          ),
                         
              
                      SizedBox(width: 5,),
                    
                      Text("Dr.Hala Abdallah",style: TextStyle(fontSize: 25),),
                      SizedBox(width: 18,),
                      
                    
                      IconButton(
                        
                      onPressed:(){
                         AwesomeDialog(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          context:context ,
                          dialogType: DialogType.noHeader,
                          animType: AnimType.bottomSlide,
                          title:"ContactInformation" ,
                          borderSide: BorderSide(
                           width: 3,
                           color:Color.fromARGB(255, 54, 98, 244),
                           style: BorderStyle.solid, ),
                          body:Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 30),

                                child: Column(
                                  
                                  children: [

                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      
                                      decoration: BoxDecoration(
                                        image: DecorationImage(

                                          fit: BoxFit.cover,
                                          
                                          image: AssetImage("images/ci2.png"),)),
                                    
                                       ),

                                       SizedBox(height: 20,),

                                    
                                    
                                    Row(
                                      children: [
                                        Icon(Icons.email,),
                                        SizedBox(width: 10,),
                                        Text(": Hala@gmail.com",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),

                                      ],
                                    ),

                                     Row(
                                      children: [
                                        Icon(Icons.phone),
                                        SizedBox(width: 10,),
                                        Text(": 0599234925",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                                        
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        Icon(Icons.location_pin),
                                        SizedBox(width: 10,),
                                        Text(": Tulkurm/123 street",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                                        
                                      ],
                                    ),
                                    

                                  ],
                                ),    
                                 
                            )
                          
                          )..show();
                      } ,
                      icon: Icon(Icons.play_arrow_rounded,size: 37,color: Colors.lightBlue,)
                                  ),  
                    
                      ],),
                    ),

                     Container(
                      
                      width: 360,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(123, 200,227, 233),
                        border: Border.all(width:3,color: Color.fromARGB(255, 135, 135, 135)),
                        borderRadius: BorderRadius.circular(50)
                      ),
                     
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      margin: EdgeInsets.all(10),
                      
                      child: Row(
              
                        children: [CircleAvatar(
                        
                          backgroundImage: AssetImage("images/expert10.jpg"),
                          backgroundColor: Color.fromARGB(255, 206, 222, 233),
              
                          radius: 38,
                          
                          ),
                         
              
                      SizedBox(width: 5,),
                    
                      Text("Dr.Mohanad Diaa",style: TextStyle(fontSize: 25),),

                      SizedBox(width: 11,),
                      
                    
                      IconButton(
                        
                      onPressed:(){
                        AwesomeDialog(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          context:context ,
                          dialogType: DialogType.noHeader,
                          animType: AnimType.bottomSlide,
                          title:"ContactInformation" ,
                          borderSide: BorderSide(
                           width: 3,
                           color:Color.fromARGB(255, 54, 98, 244),
                           style: BorderStyle.solid, ),
                          body:Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 30),

                                child: Column(
                                  
                                  children: [

                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      
                                      decoration: BoxDecoration(
                                        image: DecorationImage(

                                          fit: BoxFit.cover,
                                          
                                          image: AssetImage("images/ci2.png"),)),
                                    
                                       ),

                                       SizedBox(height: 20,),

                                    
                                    
                                    Row(
                                      children: [
                                        Icon(Icons.email,),
                                        SizedBox(width: 10,),
                                        Text(": Mohanad@gmail.com",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),

                                      ],
                                    ),

                                     Row(
                                      children: [
                                        Icon(Icons.phone),
                                        SizedBox(width: 10,),
                                        Text(": 0599292922",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                                        
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        Icon(Icons.location_pin),
                                        SizedBox(width: 10,),
                                        Text(": Nablus/123 street",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                                        
                                      ],
                                    ),
                                    

                                  ],
                                ),    
                                 
                            )
                          
                          )..show();
                      } ,
                      icon: Icon(Icons.play_arrow_rounded,size: 37,color: Colors.lightBlue,)
                                  ),  
                    
                      ],),
                    ),
          ],



        )),

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