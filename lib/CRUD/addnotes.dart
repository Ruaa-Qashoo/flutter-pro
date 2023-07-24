// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({super.key});

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note"),
       
      ),

      body: Container(child: Column(children: [

        Form(child: Column(children: [
          TextFormField(
            maxLength: 30,
            decoration: InputDecoration( 
              filled: true,
              fillColor:Colors.white,
              labelText: " Add Note Title",
               prefixIcon: Icon(Icons.note), ),
           ),

            TextFormField(
              minLines: 1,
              maxLines: 3,
              maxLength: 200,
              decoration: InputDecoration( 
                filled: true,
                fillColor:Colors.white,
                labelText: " Note ",
                 prefixIcon: Icon(Icons.note), ),
           ),

           ElevatedButton(
            onPressed: (){
              showBottomSheet();
            },
            child: Text("Add Image For Note"),
            
            ),

            ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 80,vertical: 10),),
            
            child: Text("Add Note", style: Theme.of(context).textTheme.headlineSmall,),
            
            ),
          
        ],))
      ],),),
    );
  }


  showBottomSheet(){
  return showModalBottomSheet(context: context, builder: (context){
    
    return Container(
      padding: EdgeInsets.all(20),
      height: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Please choose Image",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),),
          
          InkWell(
            onTap: (){},
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Row(children: [
                Icon(Icons.photo_album_outlined,size: 30,),
                SizedBox(width: 20,),
                Text(
                "From Gallery",
                 style: TextStyle(fontSize: 20),
                )
              ],)),
          ),

          InkWell(
            onTap: (){},
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Row(children: [
                Icon(Icons.photo_album_outlined,size: 30,),
                SizedBox(width: 20,),
                Text(
                "From camera",
                 style: TextStyle(fontSize: 20),
                )
              ],)),
          ),

        ]
          ),
      );
  });

  }
  
  }



 

 
 