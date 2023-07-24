// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedPage =0;

  final List _widgetOptions =[

    const Text(
      'Home',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize:20,),
    ),
  ];

  void onItemSelected(int index){

    if(mounted){
     setState(() {
      _selectedPage =index;
    }); 
    }

    
  }

  getUser(){
    var user= FirebaseAuth.instance.currentUser;
    print(user!.email);

  }

var fbm =FirebaseMessaging.instance;

initialMessage() async{

  var message = await FirebaseMessaging.instance.getInitialMessage();
  if(message != null){
    Navigator.of( context).pushNamed("check");
  }

}

requestPermissions() async{

  FirebaseMessaging messaging = FirebaseMessaging.instance;

NotificationSettings settings = await messaging.requestPermission(
  alert: true,
  announcement: false,
  badge: true,
  carPlay: false,
  criticalAlert: false,
  provisional: false,
  sound: true,
);

if (settings.authorizationStatus == AuthorizationStatus.authorized) {
  print('User granted permission');
} else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
  print('User granted provisional permission');
} else {
  print('User declined or has not accepted permission');
}
}
  @override
  void initState() {
       requestPermissions();
       initialMessage();
    fbm.getToken().then((token){
      print("===================Token=====================");
      print(token);
      print("===================Token=====================");
    });
    
    FirebaseMessaging.onMessageOpenedApp.listen((event){

    });

    FirebaseMessaging.onMessage.listen((event) {
      Navigator.of( context).pushNamed("check");
    });
    getUser();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.lightBlue,
        
        title: Text("HomePage"),
        actions: [
          IconButton(
            onPressed: ()async{
              await FirebaseAuth.instance.signOut();
              Navigator.of(context).pushReplacementNamed("login");

          }, icon: Icon(Icons.exit_to_app))
        ],

      ),

      
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

            Container(
              
              child: Center(
                child: Column(
                  
                  
                  children: [
                    
              
                //   Row(children: 
                //   [Image.asset(
                //    "images/1.png",
                //     fit: BoxFit.fill,
                //     height: 100,
                //      ),
              
                //   Text("Hello!")  
              
                //   ],),


                    SizedBox(height: 25,),
              
                    Container(
                      
                      width: 360,
                      height: 90,
                      decoration: BoxDecoration(
                        border: Border.all(width:3,color: Color.fromARGB(255, 197, 197, 197)),
                        borderRadius: BorderRadius.circular(50)
                      ),
                     
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      margin: EdgeInsets.all(10),
                      
                      child: Row(
              
                        children: [CircleAvatar(
              
                          
                          backgroundImage: AssetImage("images/1.png"),
                          backgroundColor: Color.fromARGB(255, 206, 222, 233),
              
                          radius: 38,
                          
                          ),
                         
              
                      SizedBox(width: 3,),
                    
                      Text("About Prediabetes",style: TextStyle(fontSize: 25),),
                      
                    
                      IconButton(
                        
                      onPressed:(){
                         Navigator.of(context).pushReplacementNamed("about");
                      } ,
                      icon: Icon(Icons.play_arrow_rounded,size: 37,color: Colors.lightBlue,)
                                  ),  
                    
                      ],),
                    ),
                    
                    Container(
                      
                      width: 360,
                      height: 90,
                      decoration: BoxDecoration(
                        border: Border.all(width:3,color: Color.fromARGB(255, 197, 197, 197)),
                        borderRadius: BorderRadius.circular(50)
                      ),
                     
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      margin: EdgeInsets.all(10),
                      
                      child: Row(
              
                        children: [CircleAvatar(
              
                          
                          backgroundImage: AssetImage("images/our.png"),
                          backgroundColor: Color.fromARGB(255, 206, 222, 233),
              
                          radius: 38,
                          
                          ),
                         
              
                      SizedBox(width: 15,),
                    
                      Text("Our Application ",style: TextStyle(fontSize: 25),),
                      
                     SizedBox(width: 15,),
                      IconButton(
                        
                      onPressed:(){
                         Navigator.of(context).pushReplacementNamed("ourapp");
                      } ,
                      icon: Icon(Icons.play_arrow_rounded,size: 37,color: Colors.lightBlue,)
                                  ),  
                    
                      ],),
                    ),
                    
                    Container(
                      
                      width: 360,
                      height: 90,
                      decoration: BoxDecoration(
                        border: Border.all(width:3,color: Color.fromARGB(255, 197, 197, 197)),
                        borderRadius: BorderRadius.circular(50)
                      ),
                     
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      margin: EdgeInsets.all(10),
                      
                      child: Row(
              
                        children: [CircleAvatar(
              
                          
                          backgroundImage: AssetImage("images/dite8.png"),
              
                          radius: 38,
                          
                          ),
                         
              
                      SizedBox(width: 35,),
                    
                      Text("Healthy Dite",style: TextStyle(fontSize: 25),),
                      SizedBox(width: 35,),
                    
                      IconButton(
                        
                      onPressed:(){
                        Navigator.of(context).pushReplacementNamed("dite");
                      } ,
                      icon: Icon(Icons.play_arrow_rounded,size: 37,color: Colors.lightBlue,)
                                  ),  
                    
                      ],),
                    ),
              
                    Container(
                      
                      width: 360,
                      height: 90,
                      decoration: BoxDecoration(
                        border: Border.all(width:3,color: Color.fromARGB(255, 197, 197, 197)),
                        borderRadius: BorderRadius.circular(50)
                      ),
                     
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      margin: EdgeInsets.all(10),
                      
                      child: Row(
              
                        children: [CircleAvatar(
              
                          
                          backgroundImage: AssetImage("images/result.png"),
              
                          radius: 38,
                          
                          ),
                         
              
                      SizedBox(width: 15,),
                    
                      Text("Previous Results",style: TextStyle(fontSize: 25),),
                      SizedBox(width: 10,),
                    
                      IconButton(
                        
                      onPressed:(){

                      Navigator.of(context).pushReplacementNamed("preResults");
                      } ,
                      icon: Icon(Icons.play_arrow_rounded,size: 37,color: Colors.lightBlue,)
                                  ),  
                    
                      ],),
                    ),
              
                    Container(
                      
                      width: 360,
                      height: 90,
                      decoration: BoxDecoration(
                        border: Border.all(width:3,color: Color.fromARGB(255, 176, 176, 176)),
                        borderRadius: BorderRadius.circular(50)
                      ),
                     
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      margin: EdgeInsets.all(10),
                      
                      child: Row(
              
                        children: [CircleAvatar(
              
                          
                          backgroundImage: AssetImage("images/expert3.jpg"),
              
                          radius: 38,
                          
                          ),
                         
              
                      SizedBox(width: 15,),
                    
                      Text("Join Our Expert",style: TextStyle(fontSize: 25),),
                      SizedBox(width: 20,),
                    
                      IconButton(
                        
                      onPressed:(){
                        Navigator.of(context).pushReplacementNamed("joinExpert");
                      } ,
                      icon: Icon(Icons.play_arrow_rounded,size: 37,color: Colors.lightBlue,)
                                  ),  
                    
                      ],),
                    ),
                    
                     
                  ],
                ),
              )
            ),

             
          ],
        ),
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
          
          } ),


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
        
            
  
