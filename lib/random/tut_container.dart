import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _iconAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _iconAnimation = CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.bounceOut);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage('assets/food.jpg'),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(size: 100.0 //_iconAnimation.value * 100//100.0
                  ),
              Form(
                  child: Theme(
                data: ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: InputDecorationTheme(
                        labelStyle:
                            TextStyle(color: Colors.teal, fontSize: 20.0))),
                child: Container(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Enter Email'),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextFormField(
                        decoration:
                            InputDecoration(labelText: 'Enter Password'),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                      ),
                      MaterialButton(
                        color: Colors.teal,
                        textColor: Colors.white,
                        child: Icon(Icons.accessibility),//Text('Login'),
                        onPressed: () => {},
                        //splashColor: Colors.white,
                      )
                    ],
                  ),
                ),
              ))
            ],
          )
        ],
      ),
    ));
  }
}
