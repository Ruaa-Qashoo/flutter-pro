// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names



import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:cloud_firestore/cloud_firestore.dart';




class Try extends StatefulWidget {
  const Try({super.key});

  @override
  State<Try> createState() => _TryState();
}

class _TryState extends State<Try> {

getData()async{

 
  FirebaseFirestore.instance.collection("users").get().then((value){

    value.docs.forEach((element) {
      
      print("======================================");
      print(element.data());
      print("======================================");

    });
  });
  

}

  late UserCredential userCredential;

  @override
  void initState() {
    getData();
    super.initState();
  
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Try"),),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        
          ElevatedButton(
            onPressed:  () async{
             try {
   userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: "waell@example.com",
    password: "waeleaglew!",
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}
            },
            child: Text("Try",style: TextStyle(fontSize: 20)
            ),
          ),


                  ],
                ),
          );

      
  }
}

