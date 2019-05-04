/* This code is to learn the immutability of stateless widgets */
import 'package:flutter/material.dart';

class ImmutableApp extends StatelessWidget {
  final int counter = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: Column(
              children: <Widget>[
                Text("Text => $counter"),
                Checkbox(
                  value: false,
                  onChanged: (bool newValue) {
                //    counter++;
                    print("Counter value => {$counter}");
                  },
                )
              ],
            )));
  }
}
