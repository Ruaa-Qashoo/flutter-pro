// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project1/Both/login.dart';
import 'package:project1/Both/signup.dart';
import 'package:project1/CRUD/addnotes.dart';
import 'package:project1/Check/check.dart';
import 'package:project1/Consulting/consulting.dart';
import 'package:project1/Home/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:project1/PagesOfHome/about.dart';
import 'package:project1/PagesOfHome/joinExpert.dart';
import 'package:project1/PagesOfHome/myDite.dart';
import 'package:project1/PagesOfHome/ourapp.dart';
import 'package:project1/PagesOfHome/preResults.dart';
import 'package:project1/Profile/profile.dart';
import 'package:project1/try.dart';


import 'package:flutter/services.dart';

import 'PagesOfHome/video.dart';

bool islogin=false;

void main() async {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Color.fromARGB(1,0, 0, 0),));
  
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
   var user =FirebaseAuth.instance.currentUser;
   if(user==null ){
    islogin=false;
   }else{
    islogin=true;
   }
   
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: islogin == false ? Login():HomePage(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: "NotoSerif",
        textTheme: TextTheme(
            headlineSmall:TextStyle(color: Colors.white),
            titleLarge: TextStyle(fontSize: 20,color: Colors.blue)),
      ),

      routes: {
        "login": (context)=> Login(),
        "signup": (context)=> Signup(),
        "homepage": (context)=> HomePage(),
        "addnotes": (context)=> AddNotes(),
        "consulting": (context)=> Consulting(),
        "check": (context)=> Check(),
        "profile": (context)=> Profile(),
        "about": (context)=> About(),
        "dite": (context)=> MyDite(),
        "preResults": (context)=> PreResults(),
        "joinExpert": (context)=> JoinExpert(),
        "ourapp": (context)=> OurApp(),
        "video": (context)=> VideoApp(),

      },


    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

