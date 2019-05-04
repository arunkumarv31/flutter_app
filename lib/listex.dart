import 'package:flutter/material.dart';

class ListApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Welcome to Flutter', home: Display());
  }
}

class Display extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Velan'),
        ),
        body: Center(
          child: Text('Hello world'),
        ));
  }
}
