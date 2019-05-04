/* Tuotrial:https://www.youtube.com/watch?v=nBQZjAT5Y7g */
import 'package:flutter/material.dart';

class ListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Welcome to Flutter', home: Display());
  }
}

class Display extends StatelessWidget {
  final TextEditingController tec = new TextEditingController();
  List<String> lItems = [/* 'arun', 'ajith', 'raman', 'velan', 'japan' */];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Velan'),
        ),
        body: new Column(
          children: <Widget>[
            TextField(
              controller: tec,
              decoration: InputDecoration.collapsed(
                  hintText: 'Please Enter Something.'),
              onSubmitted: (text) {
                // print("Text => $text");
                lItems.add(text);
                tec.clear();
              },
            ),
            Text('this is a test'),
            new Expanded(
              child: new ListView.builder(
                itemCount: lItems.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return Text(lItems[index]);
                },
              ),
            )
          ],
        ));
  }
}
