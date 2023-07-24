// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:project1/component/alert.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {


  late String mypassword,myemail;
  late UserCredential userCredential;

  GlobalKey<FormState> formState =  GlobalKey<FormState>();

  lognIn()async{
    var  formdata =formState.currentState;
    if(formdata!.validate()){
      formdata.save();

      try {

            showLoading(context);
            userCredential = await FirebaseAuth.instance
               .signInWithEmailAndPassword(
             email: myemail,
             password: mypassword,
           );
            return userCredential;
           
           
         } on FirebaseAuthException catch (e) {
          

            if (e.code == 'user-not-found') {
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
            body:Text("No user found for that email"),
            
            )..show();
           } else if (e.code == 'wrong-password') {
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
            body:Text("Wrong Password provided for that user "),
            
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "images/1.png",
                width: 200,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Form(
                key:formState ,
                child: Column(
                children: [
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
                    
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "email",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 10))),
                  ),
                  SizedBox( height: 25,),
      
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
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "password",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 10))),
                  ),
      
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text("if you havan't account "),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed("signup");
                          },
                          child: Text(
                            "Click Here",
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      child: ElevatedButton(
                    onPressed: () async {
      
                       var user =await lognIn();
                       if(user != null){
                         if (userCredential.user?.emailVerified==false) {
                            AwesomeDialog(
                           padding: EdgeInsets.all(20),
                           context:context ,
                           dialogType: DialogType.warning,
                           animType: AnimType.bottomSlide,
                           title:"Error" ,
                           borderSide: BorderSide(
                            width: 3,
                            color:Color.fromARGB(255, 231, 161, 81),
                            style: BorderStyle.solid ),
                           body:Text("please verify your email "),
                           
                           )..show();
                          }else{
                            Navigator.of(context).pushReplacementNamed("homepage");}
                       
                       
                       }
                      
                    },
                    child: Text("Login", style: TextStyle(fontSize: 20)),
                  )),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
