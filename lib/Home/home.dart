// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';




class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List notes = [
    {
      "note": "Lorem num one",
      "image": "1.png"

    },
    {
      "note": "Lorem num two",
      "image": "1.png"

    },

    {
      "note": "Lorem num three",
      "image": "1.png"

    }
  ];

  getUser(){
    var user= FirebaseAuth.instance.currentUser;
    print(user!.email);

  }

  @override
  void initState() {
    getUser();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        actions: [
          IconButton(
            onPressed: ()async{
              await FirebaseAuth.instance.signOut();
              Navigator.of(context).pushReplacementNamed("login");

          }, icon: Icon(Icons.exit_to_app))
        ],

      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add),
        
        onPressed: (){
          Navigator.of(context).pushNamed("addnotes");
        }),
           
      body: Container(
        child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context , i ){
              return Dismissible(
                  key: Key("$i"),
                  child:ListNotes(
                    notes: notes[i],
                  ));

            }),),
    );
  }
}

class ListNotes extends StatelessWidget {
  final notes;

  ListNotes({this.notes});

  @override
  Widget build(BuildContext context) {
    return Card(

        child: Row( children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              "images/1.png",
              fit: BoxFit.fill,
              height: 100,
            ),

          ),

          Expanded(
            flex: 3,
            child: ListTile(
              title: Text("Title"),
              subtitle: Text("${notes['note']}"),
              trailing:
              IconButton(
                  onPressed:(){} ,
                  icon: Icon(Icons.edit)
              ),
            ),
          ),
        ],)
    );
  }
}
