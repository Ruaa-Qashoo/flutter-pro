// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names, use_build_context_synchronously, unnecessary_null_comparison

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/services.dart';
import 'package:project1/component/alert.dart';



class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  

  late String myusername,mypassword,myemail;
  late var myGender=' ';
  late UserCredential userCredential;
  

  GlobalKey<FormState> formState =  GlobalKey<FormState>();

  signUp()async{
   
   //  if (userCredential.user?.emailVerified == false){
   //      User? user=FirebaseAuth.instance.currentUser;
   //       user?.sendEmailVerification();
   //          AwesomeDialog(
   //              padding: EdgeInsets.all(20),
   //              context:context ,
   //             dialogType: DialogType.info,
   //             animType: AnimType.bottomSlide,
   //             title:"note" ,
   //             borderSide: BorderSide(
   //               width: 3,
   //               color:Colors.blue,
   //               style: BorderStyle.solid ,
   //       
   //               ) ,      
   //            body:
   //           
   //            Column(
   //              
   //              children: [
   //                SizedBox(height: 20,),
   //                Text("we sent massage to verify youre email"),
   //                SizedBox(height: 20,),
   //                ElevatedButton(
   //                  onPressed: () {
   //                     Navigator.of(context).pushReplacementNamed("login",);
   //                  }, child: Text("ok"))
   //              ],)
   //            
   //       
   //             )..show();


   //}
   //else{
      
      var formdata =formState.currentState;
    if(formdata!.validate()){
      formdata.save();

      try {
        showLoading(context);
        
        userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: myemail,
          password: mypassword,
          
         );

         return userCredential;
      } on FirebaseAuthException catch (e) {
        
         if (e.code == 'weak-password') {
          Navigator.of(context).pop();

          AwesomeDialog(
            padding: EdgeInsets.all(20),
            context:context ,
            dialogType: DialogType.error,
            animType: AnimType.bottomSlide,
            title:"Error" ,
            borderSide: BorderSide(
             width: 3,
             color:Colors.red,
             style: BorderStyle.solid ),
            body:Text("Password is too weak"),
            
            )..show();
           
         } else if (e.code == 'email-already-in-use') {
          Navigator.of(context).pop();
          AwesomeDialog(
            padding: EdgeInsets.all(20),
            context:context ,
            dialogType: DialogType.error,
            animType: AnimType.bottomSlide,
            title:"Error" ,
            borderSide: BorderSide(
             width: 3,
             color:Colors.red,
             style: BorderStyle.solid ,
            
            ),
            body:Text("The account already exists for that email")
            
            )..show();
           
         }
       } catch (e) {
         print(e);
      }
    
    }else{

      print ("Not Valid");
    }
    


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
      
            SizedBox(height: 30,) ,  
            Center(child: Image.asset("images/1.png",width: 200,),),
      
            Container(
              
              padding: EdgeInsets.all(15),
              child: Form(
                key:formState ,
                  child: Column(
                    children: [

                      
      
                      TextFormField(
                        onSaved: (val){
                          myusername=val!;
                        },
      
                        validator: (val) {
                          if (val!.length>100){
                            return "username can't be larger than 100 characters";
                          }
                          if (val.length<2){
                            return "username can't be less than 2characters";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                           
                            prefixIcon: Icon(Icons.person),
                            hintText: "username",
                            
                            border:
                            OutlineInputBorder( borderSide: BorderSide(width: 10))),
                      ),
      
                      SizedBox(height: 25,) ,
      
                      TextFormField(
                        
                         onSaved: (val){
                          myemail=val!;
                        },
                        validator: (val) {
                          if (val!.length>100){
                            return "email can't be larger than 100 characters";
                          }
                          if (val.length<2){
                            return "email can't be less than 2characters";
                          }
                          return null;
                        },
                        decoration:  InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: "email",
                            border:
                            OutlineInputBorder(borderSide: BorderSide(width: 10))),
                      ),
      
                      SizedBox(height: 25,) ,
      
                      TextFormField(
                        onSaved: (val){
                          mypassword=val!;
                        },
      
                         validator: (val) {
                          if (val!.length>100){
                            return "password can't be larger than 100 characters";
                          }
                          if (val.length<4){
                            return "password can't be less than 4 characters";
                          }
                          return null;
                        },
      
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: "password",
                            border:
                            OutlineInputBorder(borderSide: BorderSide(width: 10))),
                      ),

                      SizedBox(height: 25,) ,

                      Container(
                        width: 400,
                        height: 60,
                        child: Row(children: [
                        SizedBox(width: 10,),
                       
                        Icon(Icons.person,color: Color.fromARGB(255, 120, 120, 120), ),
                        SizedBox(width: 10,),
                        Text("Gender :",style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 102, 102, 102),),),
                        SizedBox(width: 20,),
                        Row(children: [
                          Text("Male"),
                          Radio(value: "male", groupValue: myGender, onChanged: (val){
                            setState(() {
                              myGender=val!;
                              
                              
                              
                            });
                            
                          })
                        ],),

                        Row(children: [
                          Text("Female"),
                          Radio(value: "female", groupValue: myGender, onChanged:  (val){
                            setState(() {
                              myGender=val!;
                              
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
                   //    

                      
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.only(top:10),
                        child: Row(children: [
                          Text("if you have account "),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).pushNamed("login");
      
                            },
      
                            child: Text("Click Here",style: TextStyle(color: Colors.blue),),)
                        ],),),
                      Container(
                          child: ElevatedButton(
                       
                            
                            onPressed: ()async{
                             var response=await signUp();
                              if(response!=null){
                                
                                await FirebaseFirestore.instance.collection("users").add({
                                  "username": myusername,
                                  "email": myemail,
                                  "sex": myGender,

                                });

                            


                           if (userCredential.user?.emailVerified == false){
                             User? user=FirebaseAuth.instance.currentUser;
                              user?.sendEmailVerification();
                                 AwesomeDialog(
                                     padding: EdgeInsets.all(20),
                                     context:context ,
                                    dialogType: DialogType.noHeader,
                                    animType: AnimType.bottomSlide,
                                    title:"note" ,
                                    borderSide: BorderSide(
                                      width: 3,
                                      color:Colors.blue,
                                      style: BorderStyle.solid ,
        
                                      ) ,      
                                   body:
                                  
                                   Column(
                                     
                                     children: [
                                      
                                       SizedBox(height: 20,),

                                       Container(
                                        
                                         child: Text("we sent massage to verify your email, plese verify it befor login",
                                         style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,)),
                                       ),
                                       SizedBox(height: 20,),
                                       ElevatedButton(
                                         onPressed: () {
                                            Navigator.of(context).pushReplacementNamed("login",);
                                         }, child: Text("ok",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),)
                                     ],)
                                   
        
                                    )..show();
                                   
                           }
                               
                                
                              
                              }else{
                                print("Sign up failed");
                            
                            }; 
                             
                            },
                            
                            child: Text(
                              
                              "Signup",
                              
                              style: TextStyle(fontSize: 20,)
      
                          ),
                          )),
      
      
                    ],
                  )),
            )
      
          ],),
      ),
    );
  }
}

