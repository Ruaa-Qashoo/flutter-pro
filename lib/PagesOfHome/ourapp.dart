// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';



class OurApp extends StatefulWidget {
  const OurApp({super.key});

  @override
  State<OurApp> createState() => _OurAppState();
}

class _OurAppState extends State<OurApp> {

  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('images/untitled.webm', )
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
    // appBar: AppBar(

    //   actions: [
    //     IconButton(
    //       onPressed: ()async{
    //         Navigator.of(context).pushReplacementNamed("homepage");
    //     }, icon: Icon(Icons.home))
    //   ],
    //   
    //   title: Text("OurApp"),
    //  ),
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
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Container(
              height: 80,
              width: 400,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              padding: EdgeInsets.fromLTRB(340, 5, 0, 0),
              
              decoration: BoxDecoration(
                //color: Color.fromARGB(0, 161, 161, 158),
               image: DecorationImage(
                image:AssetImage("images/about.png"),
                fit: BoxFit.fitWidth ,
                opacity:1
                
                ),
     
              ),
              child: Row(

                children: [
                  
                  //Text("OurApp Prediabetes", style:TextStyle(fontSize: 28,fontWeight: FontWeight.w900) ),
                  //SizedBox(width: 90,),
                  IconButton(
                   
                    onPressed: () => Navigator.of(context).pushReplacementNamed("homepage"),
                    icon:Icon(Icons.home,size: 40,color: Color.fromARGB(200, 2, 167, 197),), ),
                ],
              ),
            ),
           
            Container(
              padding: EdgeInsets.all(9),
              
              margin: EdgeInsets.fromLTRB(5, 10, 40, 0),
              decoration: BoxDecoration(
                color:Color.fromARGB(106, 135, 212, 212),
                //color: Color.fromARGB(255, 85, 159, 224),
                // border: Border.all(width:3,color: Color.fromARGB(255, 135, 135, 135)),
                   border: Border.all(width:3,color: Color.fromARGB(255, 135, 135, 135)),
                  borderRadius: BorderRadius.circular(20)
                      
                       
                      ),
              
             
              
              child:Text("The idea for doing this came from the increases in the prevalence and incidence of prediabetes. So our goal is to work together, giving an opportunity to those at high risk,providing them with information and simple and non-invasive screening tool to help them delay or prevent from becoming type 2 diabetes patients." ,textAlign: TextAlign.justify,
              style:TextStyle(fontSize: 17,fontWeight: FontWeight.w600,)), 

        
            ),
            
            Container(
              padding: EdgeInsets.all(9),
              
              margin: EdgeInsets.fromLTRB(40, 10, 5, 0),
              decoration: BoxDecoration(
                color: Color.fromARGB(106, 55, 67, 67),
                // border: Border.all(width:3,color: Color.fromARGB(255, 135, 135, 135)),
                   border: Border.all(width:3,color: Color.fromARGB(255, 135, 135, 135)),
                  borderRadius: BorderRadius.circular(20)
                      
                       
                      ),
              
             
              
              child:Text("Millions of people have prediabetes and you might be one of them, the numbers don’t lie 1 in 3 people has prediabetes. The good news is prediabetes can be reversed with simple things like diet & exercise, but you need to know if you are at risk and you can find out by using our app, let’s take the risk test together so you know where you stand.",
              style:TextStyle(fontSize: 17,fontWeight: FontWeight.w600) ), 

        
            ),

            Container(
              padding: EdgeInsets.all(9),
              
              margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
              decoration: BoxDecoration(
                color: Color.fromARGB(106, 135, 212, 212),
                // border: Border.all(width:3,color: Color.fromARGB(255, 135, 135, 135)),
                   border: Border.all(width:3,color: Color.fromARGB(255, 135, 135, 135)),
                  borderRadius: BorderRadius.circular(20)
                      
                       
                      ),
              
             
              
              child:Text("Explanatory Videos.",
              style:TextStyle(fontSize: 17,fontWeight: FontWeight.w600) ), 

        
            ),
            
            Container(
              padding: EdgeInsets.all(9),
              height: 600,
              width: 300,
              margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
              decoration: BoxDecoration(
                color: Color.fromARGB(106, 55, 67, 67),
                
                   border: Border.all(width:3,color: Color.fromARGB(255, 135, 135, 135)),
                  borderRadius: BorderRadius.circular(5)
                      
                       
                      ),
              
             
              
              child:Row(
                children: [

                  Container(
                    
                  
                    child: Center(
                      child: _controller.value.isInitialized
                                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                                    )
                                  : Container(),
                    ),
                  ),
               SizedBox(width: 20,),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                  _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
                   });
                 },
                  child: Icon(
                    _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                  ),
                )

                  

                ],
              )

        
            ),
            SizedBox(height: 30,),
        
           
   ] ))); 
  
}} 


              //   child: ListView(
          //     
          //     children: [
          //       SizedBox(width: 5,),
          //       Text("Worldwide, the prevalence of diabetes has rapidly increased. There are 537 million adults (20-79 years) living with diabetes. This number is predicted to rise to 643 million lions by 2030 and 783 million by 2045, and it is responsible for 6.7 million deaths in 2021.", 
          //       style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500) ),
          //       
          //       
          //     ],
          //   ),
            

          //  (children: [
          //    Container(
          //      width: 200,
          //      height: 200,
          //      decoration: BoxDecoration(
          //        color: Colors.brown,
          //       image: DecorationImage(
          //       image:AssetImage("images/b2.png"),
          //       fit: BoxFit.fill ,
          //       opacity:1 
          //       
          //       ),),

          //      
          //     
          //      child:Text("84.1 "),

          //       //Text("84.1 million people more than 1 out of 3 adults have prediabetes"),
          //    

          //)],) 
           