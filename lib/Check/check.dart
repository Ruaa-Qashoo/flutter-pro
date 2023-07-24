// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:project1/component/alert.dart';


class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {

  int _selectedPage =2;

  void onItemSelected(int index){

    setState(() {
      _selectedPage =index;
    });
  }
  int ? myBP,mycol,mycolch,mylen,myw,mysmok,
  mystro,myhd,myphy,myfru,myveg,myhealh,
  mycost,mygenh,myment,myphlth,mydiff,mysex,mycat,myage,myBMI;

 

 

  late UserCredential userCredential;

  GlobalKey<FormState> formState =  GlobalKey<FormState>();

  check()async{
    var formdata =formState.currentState;
    if(formdata!.validate()){
      formdata.save();

     

  }}
 

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
      
              
            Center(child: Image.asset("images/1.png",width: 150,),),
      
            Container(
              
              padding: EdgeInsets.all(15),
              child: Form(
                key:formState ,
                  child: Column(
                    children: [
      
                      
                      SizedBox(height: 25,) ,
      
                       Container(
                        width: 400,
                        height: 60,
                        child: Row(children: [
                        SizedBox(width: 10,),
                       
                        Text("High Blood Pressure :",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 65, 65, 65),),),
                        SizedBox(width: 20,),
                        Row(children: [
                          Text("Yes"),
                          Radio(value: 1, groupValue: myBP, onChanged: (val){
                            setState(() {
                              myBP=val! ;
                              
                            });
                          })
                        ],),

                        Row(children: [
                          Text("No"),
                          Radio(value: 0, groupValue: myBP, onChanged:  (val){
                            setState(() {
                              myBP=val!;
                              
                            });
                          }),
                        ],),
                      ],),
      
      
      
                        decoration: BoxDecoration(
                          border: Border.all(
                            
                            color: Color.fromARGB(255, 164, 164, 164),
                            width: 1),
                            borderRadius: BorderRadius.circular(3)
                        )
 
                      ),
                      
                      SizedBox(height: 25,) ,
                      Container(
                        width: 400,
                        height: 60,
                        child: Row(children: [
                        SizedBox(width: 10,),
                       
                        Text("High Cholesterol :",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 65, 65, 65),),),
                        SizedBox(width: 20,),
                        Row(children: [
                          Text("Yes"),
                          Radio(value: 1, groupValue: mycol, onChanged: (val){
                            setState(() {
                              mycol=val! ;
                              
                            });
                          })
                        ],),

                        Row(children: [
                          Text("No"),
                          Radio(value: 0, groupValue: mycol, onChanged:  (val){
                            setState(() {
                              mycol=val!;
                              
                            });
                          }),
                        ],),
                      ],),
      
      
      
                        decoration: BoxDecoration(
                          border: Border.all(
                            
                            color: Color.fromARGB(255, 164, 164, 164),
                            width: 1),
                            borderRadius: BorderRadius.circular(3)
                        )
 
                      ),
                      SizedBox(height: 25,) ,

                      
                      Container(
                        width: 400,
                        height: 60,
                        child: Row(children: [
                        SizedBox(width: 10,),
                       
                        Text("Cholesterol check(in 5y):",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 65, 65, 65),),),
                        SizedBox(width: 20,),
                        Row(children: [
                          Text("Yes"),
                          Radio(value: 1, groupValue: mycolch, onChanged: (val){
                            setState(() {
                              mycolch=val! ;
                              
                            });
                          })
                        ],),

                        Row(children: [
                          Text("No"),
                          
                          Radio(value: 0, groupValue: mycolch, onChanged:  (val){
                            setState(() {
                              mycolch=val!;
                              
                            });
                          }),
                        ],),
                      ],),
      
      
      
                        decoration: BoxDecoration(
                          border: Border.all(
                            
                            color: Color.fromARGB(255, 164, 164, 164),
                            width: 1),
                            borderRadius: BorderRadius.circular(3)
                        )
 
                      ),
                      SizedBox(height: 25,) ,

                     TextFormField(
                      
                       onSaved: (val){
                  
                        mylen= 100   ;
                        
                       },
      
                       decoration: InputDecoration(
                       
                        
                         
                          prefixIcon: Icon(Icons.person),
                           hintText: "Your Height",
                          
                          border:
                          OutlineInputBorder( borderSide: BorderSide(width: 10))),
                     ),
                     SizedBox(height: 25,),

                     TextFormField(
                       onSaved: (val){
                    
                         myw= 80  ;
                         

                        
                       },
      
                       decoration: InputDecoration(
                          
                           prefixIcon: Icon(Icons.person),
                          hintText: "your weight",
                          
                          border:
                          OutlineInputBorder( borderSide: BorderSide(width: 10))),
                     ),
                     SizedBox(height: 25,),

                      Container(
                        width: 400,
                        height: 60,
                        child: Row(children: [
                        SizedBox(width: 10,),
                       
                        Text("Smoker:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 65, 65, 65),),),
                        SizedBox(width: 20,),
                        Row(children: [
                          Text("Yes"),
                          Radio(value: 1, groupValue: mysmok, onChanged: (val){
                            setState(() {
                              mysmok=val! ;
                              
                            });
                          })
                        ],),

                        Row(children: [
                          Text("No"),
                          
                          Radio(value: 0, groupValue: mysmok, onChanged:  (val){
                            setState(() {
                              mysmok=val!;
                              
                            });
                          }),
                        ],),
                      ],),
      
      
      
                        decoration: BoxDecoration(
                          border: Border.all(
                            
                            color: Color.fromARGB(255, 164, 164, 164),
                            width: 1),
                            borderRadius: BorderRadius.circular(3)
                        )
 
                      ),
                      
                      SizedBox(height: 25,) ,

                      
                      Container(
                        width: 400,
                        height: 60,
                        child: Row(children: [
                        SizedBox(width: 10,),
                       
                        Text("Ever Had Stroke:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 65, 65, 65),),),
                        SizedBox(width: 20,),
                        Row(children: [
                          Text("Yes"),
                          Radio(value: 1, groupValue: mystro, onChanged: (val){
                            setState(() {
                              mystro=val! ;
                              
                            });
                          })
                        ],),

                        Row(children: [
                          Text("No"),
                          
                          Radio(value: 0, groupValue: mystro, onChanged:  (val){
                            setState(() {
                              mystro=val!;
                              
                            });
                          }),
                        ],),
                      ],),
      
      
      
                        decoration: BoxDecoration(
                          border: Border.all(
                            
                            color: Color.fromARGB(255, 164, 164, 164),
                            width: 1),
                            borderRadius: BorderRadius.circular(3)
                        )
 
                      ),
                      
                      SizedBox(height: 25,) ,

                      
                      Container(
                        width: 400,
                        height: 60,
                        child: Row(children: [
                        SizedBox(width: 10,),
                       
                        Text("Heart Diseas:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 65, 65, 65),),),
                        SizedBox(width: 20,),
                        Row(children: [
                          Text("Yes"),
                          Radio(value: 1, groupValue: myhd, onChanged: (val){
                            setState(() {
                              myhd=val! ;
                              
                            });
                          })
                        ],),

                        Row(children: [
                          Text("No"),
                          
                          Radio(value: 0, groupValue: myhd, onChanged:  (val){
                            setState(() {
                              myhd=val!;
                              
                            });
                          }),
                        ],),
                      ],),
      
      
      
                        decoration: BoxDecoration(
                          border: Border.all(
                            
                            color: Color.fromARGB(255, 164, 164, 164),
                            width: 1),
                            borderRadius: BorderRadius.circular(3)
                        )
 
                      ),
                      
                      SizedBox(height: 25,) ,

                      
                      Container(
                        width: 400,
                        height: 60,
                        child: Row(children: [
                        SizedBox(width: 10,),
                       
                        Text("Physical Activity:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 65, 65, 65),),),
                        SizedBox(width: 20,),
                        Row(children: [
                          Text("Yes"),
                          Radio(value: 1, groupValue: myphy, onChanged: (val){
                            setState(() {
                              myphy=val! ;
                              
                            });
                          })
                        ],),

                        Row(children: [
                          Text("No"),
                          
                          Radio(value: 0, groupValue: myphy, onChanged:  (val){
                            setState(() {
                              myphy=val!;
                              
                            });
                          }),
                        ],),
                      ],),
      
      
      
                        decoration: BoxDecoration(
                          border: Border.all(
                            
                            color: Color.fromARGB(255, 164, 164, 164),
                            width: 1),
                            borderRadius: BorderRadius.circular(3)
                        )
 
                      ),
                      
                      SizedBox(height: 25,) ,

                      
                      Container(
                        width: 400,
                        height: 60,
                        child: Row(children: [
                        SizedBox(width: 10,),
                       
                        Text("Consume Fruit (per day):",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 65, 65, 65),),),
                        SizedBox(width: 20,),
                        Row(children: [
                          Text("Yes"),
                          Radio(value: 1, groupValue: myfru, onChanged: (val){
                            setState(() {
                              myfru=val! ;
                              
                            });
                          })
                        ],),

                        Row(children: [
                          Text("No"),
                          
                          Radio(value: 0, groupValue: myfru, onChanged:  (val){
                            setState(() {
                              myfru=val!;
                              
                            });
                          }),
                        ],),
                      ],),
      
      
      
                        decoration: BoxDecoration(
                          border: Border.all(
                            
                            color: Color.fromARGB(255, 164, 164, 164),
                            width: 1),
                            borderRadius: BorderRadius.circular(3)
                        )
 
                      ),
                      SizedBox(height: 25,) ,

                      
                      Container(
                        width: 400,
                        height: 60,
                        child: Row(children: [
                        SizedBox(width: 10,),
                       
                        Text("Consume Veggies:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 65, 65, 65),),),
                        SizedBox(width: 20,),
                        Row(children: [
                          Text("Yes"),
                          Radio(value: 1, groupValue: myveg, onChanged: (val){
                            setState(() {
                              myveg=val! ;
                              
                            });
                          })
                        ],),

                        Row(children: [
                          Text("No"),
                          
                          Radio(value: 0, groupValue: myveg, onChanged:  (val){
                            setState(() {
                              myveg=val!;
                              
                            });
                          }),
                        ],),
                      ],),
      
      
      
                        decoration: BoxDecoration(
                          border: Border.all(
                            
                            color: Color.fromARGB(255, 164, 164, 164),
                            width: 1),
                            borderRadius: BorderRadius.circular(3)
                        )
 
                      ),
                      
                      SizedBox(height: 25,) ,

                      
                      Container(
                        width: 400,
                        height: 60,
                        child: Row(children: [
                        SizedBox(width: 10,),
                       
                        Text("Have Helth Care Coverage:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 65, 65, 65),),),
                        SizedBox(width: 7,),
                        Row(children: [
                          Text("Yes"),
                          Radio(value: 1, groupValue: myhealh, onChanged: (val){
                            setState(() {
                              myhealh=val! ;
                              
                            });
                          })
                        ],),

                        Row(children: [
                          Text("No"),
                          
                          Radio(value: 0, groupValue: myhealh, onChanged:  (val){
                            setState(() {
                              myhealh=val!;
                              
                            });
                          }),
                        ],),
                      ],),
      
      
      
                        decoration: BoxDecoration(
                          border: Border.all(
                            
                            color: Color.fromARGB(255, 164, 164, 164),
                            width: 1),
                            borderRadius: BorderRadius.circular(3)
                        )
 
                      ),
                      
                      SizedBox(height: 25,) ,

                      
                      Container(
                        width: 400,
                       height: 250,
                        child: Row(children: [
                        SizedBox(width: 10,),
                       
                        Text("Your General Health:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 65, 65, 65),),),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                        Row(children: [
                          Text("Excellent"),
                          Radio(value: 1, groupValue: mygenh, onChanged: (val){
                            setState(() {
                              mygenh=val! ;
                              
                            });
                          })
                        ],),

                        Row(children: [
                          Text("Vert Good"),
                          
                          Radio(value: 2, groupValue: mygenh, onChanged:  (val){
                            setState(() {
                              mygenh=val!;
                              
                            });
                          }),
                        ],),

                        Row(children: [
                          Text("Good"),
                          Radio(value: 3, groupValue: mygenh, onChanged: (val){
                            setState(() {
                              myBP=val! ;
                              
                            });
                          })
                        ],),

                        Row(children: [
                          Text("Fair"),
                          Radio(value: 4, groupValue: mygenh, onChanged: (val){
                            setState(() {
                              myBP=val! ;
                              
                            });
                          })
                        ],),

                        Row(children: [
                          Text("Poor"),
                          Radio(value: 5, groupValue: mygenh, onChanged: (val){
                            setState(() {
                              myBP=val! ;
                              
                            });
                          })
                        ],),

                      ],),
                       
      
                          ],
                        ),

                        
                       
      
      
                        decoration: BoxDecoration(
                          border: Border.all(
                            
                            color: Color.fromARGB(255, 164, 164, 164),
                            width: 1),
                            borderRadius: BorderRadius.circular(3)
                        )
 
                      ),
                       SizedBox(height: 25,) ,
                       Container(
                        width: 400,
                        height: 60,
                        child: Row(children: [
                        SizedBox(width: 10,),
                       
                        Text("Difficulty Walking:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 65, 65, 65),),),
                        SizedBox(width: 10,),
                        Row(children: [
                          Text("Yes"),
                          Radio(value: 1, groupValue: mydiff, onChanged: (val){
                            setState(() {
                              mydiff=val! ;
                              
                            });
                          })
                        ],),

                        Row(children: [
                          Text("No"),
                          
                          Radio(value: 0, groupValue: mydiff, onChanged:  (val){
                            setState(() {
                              mydiff=val!;
                              
                            });
                          }),
                        ],),
                      ],),
                       decoration: BoxDecoration(
                          border: Border.all(
                            
                            color: Color.fromARGB(255, 164, 164, 164),
                            width: 1),
                            borderRadius: BorderRadius.circular(3)
                        ),),
      
                      SizedBox(height: 25,) ,
                       Container(
                        width: 400,
                        height: 60,
                        child: Row(children: [
                        SizedBox(width: 10,),
                       
                        Text("Sex:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 65, 65, 65),),),
                        SizedBox(width: 10,),
                        Row(children: [
                          Text("Male"),
                          Radio(value: 1, groupValue: myhealh, onChanged: (val){
                            setState(() {
                              mysex=val! ;
                              
                            });
                          })
                        ],),

                        Row(children: [
                          Text("Female"),
                          
                          Radio(value: 0, groupValue: mysex, onChanged:  (val){
                            setState(() {
                              mysex=val!;
                              
                            });
                          }),
                        ],),
                      ],),
      
      
      
                        decoration: BoxDecoration(
                          border: Border.all(
                            
                            color: Color.fromARGB(255, 164, 164, 164),
                            width: 1),
                            borderRadius: BorderRadius.circular(3)
                        )
 
                      ),
                      
                       SizedBox(height: 25,) ,
                       
                      
                      TextFormField(
                        onSaved: (val){
                     
                          myage=  20 ;
                          mycat= 1;

                         
                        },
      
                        decoration: InputDecoration(
                           
                            prefixIcon: Icon(Icons.person),
                            hintText: "Age",
                            
                            border:
                            OutlineInputBorder( borderSide: BorderSide(width: 10))),
                      ),
                      SizedBox(height: 25,),
      
                      Container(
                          child: ElevatedButton(
                       
                            
                            onPressed: ()async{
                              showLoading(context);
                             var response=await check();
                              if(response==null){
                                List<int?> list =[myBP,mycol,mycolch,mylen,myw,mysmok,
                                                mystro,myhd,myphy,myfru,myveg,myhealh,
                                                mycost,mygenh,myment,myphlth,mydiff,mysex,
                                                mycat,myage,myBMI];

                               await FirebaseFirestore.instance.collection("Checks").add({
                                
                                
                                 "High Blood Pressure": myBP,
                                 "High Cholesterol": mycol,
                                 "Cholesterol check(in 5 Y)": mycolch,
                                 "Your Height": mylen,
                                 "your Weight": myw,
                                 "BMI":myBMI,
                                 "Smoker": mysmok,
                                 "Ever Had Stroke": mystro,
                                 "Heart Diseas": myhd,
                                 "Physical Activity": myphy,
                                 "Consume Fruit(per day)": myfru,
                                 "Consume Veggies(per day)": myveg,
                                 "Have Helth Care Coverage": myhealh,
                                 "DocCost": mycost,
                                 "your General Health": mygenh,
                                 "your Ment Health": myment,
                                 "your Physical Health": myphlth,
                                 "Difficulty Walking": mydiff,
                                 "Sex": mysex,
                                 "Age": myage,
                                 "Age cat": mycat,
                                 "list": list
                               });
                               

                               
                               if (mysmok==1){
                               
                                 AwesomeDialog(
                                     padding: EdgeInsets.all(20),
                                     context:context ,
                                    dialogType: DialogType.success,
                                    animType: AnimType.bottomSlide,
                                    title:"" ,
                                    borderSide: BorderSide(
                                      width: 5,
                                      color:Color.fromARGB(249, 95, 249, 52),
                                      style: BorderStyle.solid ,
        
                                      ) ,      
                                   body:
                                  
                                   Column(
                                     
                                     children: [
                                      
                                       SizedBox(height: 20,),

                                       Container(
                                        
                                         child: Container(
                                          
                                           child: Text("You are At Low risk to be prediabetes patient, you can take dite or ask experts to preserving your health ",
                                           
                                           style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,)),
                                         ),
                                       ),
                                       SizedBox(height: 35,),
                                       ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Color.fromARGB(255, 89, 82, 82)
                                        ),

                                        
                                         onPressed: () {
                                            Navigator.of(context).pushReplacementNamed("dite",);
                                         }, child: Text("Take Your Dite",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)),),

                                        SizedBox(height: 5,),


                                         ElevatedButton(
                                           style: ElevatedButton.styleFrom(
                                          primary: Color.fromARGB(255, 89, 82, 82)),
                                         onPressed: () {
                                            Navigator.of(context).pushReplacementNamed("consulting",);
                                         }, child: Text("Ask Our Experts",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)),)
                                     ],)
                                   
        
                                    )..show();

                               }else{

                                 AwesomeDialog(
                                     padding: EdgeInsets.all(20),
                                     context:context ,
                                    dialogType: DialogType.error,
                                    animType: AnimType.bottomSlide,
                                    title:"" ,
                                    borderSide: BorderSide(
                                      width: 5,
                                      color:Color.fromARGB(250, 249, 78, 52),
                                      style: BorderStyle.solid ,
        
                                      ) ,      
                                   body:
                                  
                                   Column(
                                     
                                     children: [
                                      
                                       SizedBox(height: 20,),

                                       Container(
                                        
                                         child: Container(
                                          
                                           child: Text("You are At High risk to be prediabetes patient, please",
                                           
                                           style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,)),
                                         ),
                                       ),
                                       SizedBox(height: 35,),
                                       ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Color.fromARGB(255, 89, 82, 82)
                                        ),

                                        
                                         onPressed: () {
                                            Navigator.of(context).pushReplacementNamed("dite",);
                                         }, child: Text("Take Your Dite",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)),),

                                        SizedBox(height: 5,),


                                         ElevatedButton(
                                           style: ElevatedButton.styleFrom(
                                          primary: Color.fromARGB(255, 89, 82, 82)),
                                         onPressed: () {
                                            Navigator.of(context).pushReplacementNamed("consulting",);
                                         }, child: Text("Ask Our Experts",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)),)
                                     ],)
                                   
        
                                    )..show();
                                
                                
                               }
                                 
      
                              
                              }else{
                                print("Check failed");
                            }; },
                            
                            child: Text(
                              
                              "Check",
                              
                              style: TextStyle(fontSize: 20,)
      
                          ),
                          )),
                          SizedBox(height: 25,)
      
                    ],
                  )),
            )
      
          ],),

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