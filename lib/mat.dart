import 'package:flutter/material.dart';

class MatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Flutter app"), // Icon(Icons.home),
        centerTitle: false,
        backgroundColor: Colors.orangeAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_a_photo),
            onPressed: () {},
          ),
          IconButton(
            icon:Icon(Icons.remove_circle),
            onPressed: (){},
          ),
          PopupMenuButton<IconButton>(
            onSelected: null,
            itemBuilder: (BuildContext ctxt){
              return <PopupMenuItem<IconButton>>[
                PopupMenuItem<IconButton>(
                  child: IconButton(icon: Icon(Icons.home), onPressed: null,)
                ),
                PopupMenuItem<IconButton>(
                  child: IconButton(icon: Icon(Icons.ac_unit), onPressed: null,)
                )
              ]; 
            },
          )
          /* FlatButton(
              child: Text("First->"),
              onPressed: (){print ("First Presseed");},
            ),
            FlatButton(
              child: Text("Second->"),
              onPressed: (){print ("Second Presseed");},
            ) */
        ],
      ),
      body: Text('Flutter is the solution'),
      floatingActionButton: FloatingActionButton(
        // child: Text("Do IT"),
        child: Icon(Icons.add_box),
        onPressed: () {
          print('Floating action button pressed');
        },
      ),
      bottomNavigationBar: BottomAppBar(
          child: Row(
            children: <Widget>[
              Text("Tunafish"),
              Icon(Icons.account_box),
              IconButton(
                icon: Icon(Icons.access_alarm),
                onPressed: () {
                  print("alarm is triggered...");
                },
              )
            ],
          ),
          color: Colors.orange),
      persistentFooterButtons: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: null,
        ),
      ],
    ));
  }
}
