import 'package:flutter/material.dart';

import 'pages/auth.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // debugShowMaterialGrid: true,
        theme: ThemeData(
            // brightness: Brightness.dark,
            // primarySwatch: Colors.deepOrange,
            // accentColor: Colors.deepPurple
            ),
        home: AuthPage());
  }
}
