// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names

import 'package:flutter/material.dart';


class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {


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
    //   title: Text("About"),
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
                image:AssetImage("images/aboutD.png"),
                fit: BoxFit.fitWidth,
                opacity:1
                
                ),
     
              ),
              child: Row(

                children: [
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
              
             
              
              child:Text("Worldwide, the prevalence of diabetes has rapidly increased.There are 537 million adults (20-79 years) living with diabetes. This number is predicted to rise to 643 million by 2030 , and it is responsible for 6.7 million deaths in 2021." ,textAlign: TextAlign.justify,
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
              
             
              
              child:Text("Prediabetes is a serious health condition where blood sugar levels are higher than normal, but not high enough yet to be diagnosed as type 2 diabetes.",
              style:TextStyle(fontSize: 17,fontWeight: FontWeight.w600) ), 

        
            ),

            Container(
              height: 200,
            
              padding: EdgeInsets.all(9),
              
              margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
              decoration: BoxDecoration(
                //color: Color.fromARGB(255, 220, 60, 60),
                image: DecorationImage(
                image:AssetImage("images/b2.png"),
                fit: BoxFit.fitWidth,
                opacity:1 
          
                ),
            //   
                       
                      ),
            
            ),
           
            Container(
              padding: EdgeInsets.all(9),
              
              margin: EdgeInsets.fromLTRB(5, 0, 40, 0),
              decoration: BoxDecoration(
                color: Color.fromARGB(106, 135, 212, 212),
                // border: Border.all(width:3,color: Color.fromARGB(255, 135, 135, 135)),
                   border: Border.all(width:3,color: Color.fromARGB(255, 135, 135, 135)),
                  borderRadius: BorderRadius.circular(20)
                      
                       
                      ),
              
             
              
              child:Text("Millions of people have prediabetes but Prediabetes doesn't usually have any signs or symptoms.",
              style:TextStyle(fontSize: 17,fontWeight: FontWeight.w600) ), 

        
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
              
             
              
              child:Text("For some people with prediabetes, early treatment as well as moderate lifestyle changes can actually return blood glucose (blood sugar) levels to a normal range, effectively preventing or delaying type 2 diabetes." ,textAlign: TextAlign.justify,
              style:TextStyle(fontSize: 17,fontWeight: FontWeight.w600) ), 

        
            ),
            
            Container(
              height: 200,
            
              padding: EdgeInsets.all(9),
              
              margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
              decoration: BoxDecoration(
                //color: Color.fromARGB(255, 220, 60, 60),
                image: DecorationImage(
                image:AssetImage("images/b.png"),
                fit: BoxFit.fill,
                opacity:1 
          
                ),
            //  
                       
                      ),
            
            ),
            
            Container(
              padding: EdgeInsets.all(9),
              
              margin: EdgeInsets.fromLTRB(5, 10, 40, 20),
              decoration: BoxDecoration(
                color: Color.fromARGB(106, 135, 212, 212),
                // border: Border.all(width:3,color: Color.fromARGB(255, 135, 135, 135)),
                   border: Border.all(width:3,color: Color.fromARGB(255, 135, 135, 135)),
                  borderRadius: BorderRadius.circular(20)
                      
                       
                      ),
              
             
              
              child:Text("If you discover that you  have prediabetes, remember that it doesn’t mean you’ll develop type 2, particularly if you follow a treatment plan and make changes to your lifestyle." ,textAlign: TextAlign.justify,
              style:TextStyle(fontSize: 17,fontWeight: FontWeight.w600) ), 

        
            ),
            
            
          
        

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
           