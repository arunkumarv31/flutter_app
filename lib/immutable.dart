import 'package:flutter/material.dart';

class ImmutableApp extends StatefulWidget {

  State<StatefulWidget> createState() {
    return ImmutAppImpl ();
  }
}

class ImmutAppImpl extends State<ImmutableApp> {

  int counter = 0;
  bool cbvalue = false;

  @override
  Widget build (BuildContext c ){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: <Widget>[
            Text("Text Value => $counter"),
            Checkbox(
              value: cbvalue,
              onChanged: (bool newValue){
                counter++;
                print("Counter value => {$counter}");
                setState(() {
                  cbvalue = !cbvalue;
                });
              },
            )
          ],
        )
      )
    );
  }
}