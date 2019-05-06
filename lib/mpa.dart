import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  Widget build ( BuildContext context ){

    return MaterialApp(
      //home: BaseApp(),
      initialRoute: '/LoginAsUser',
      routes: <String, WidgetBuilder>{
        '/': (context) => BaseApp(),
        '/LoginAsUser' : (context) => LoginAsUser(),
        '/LoginAsGuest' : (context) => LoginAsGuest(),
      },
    );
  }
}

class BaseApp extends StatelessWidget {

  Widget build ( BuildContext context ){
    return Scaffold(
        appBar: AppBar( title: Text("MPA App"),),
        body: Center(
          child: Column(
            children: <Widget>[
              FlatButton(
                child: Text("Login as User"),
                color: Colors.green,
                onPressed: (){
                  Navigator.pushNamed(context, '/LoginAsUser');
                },
              ),
              FlatButton(
                child: Text("Login as Guest"),
                color: Colors.red,
                onPressed: (){
                  Navigator.pushNamed( context, '/LoginAsGuest');
                },
              )
            ],
          ),
        ),
      );
  }
}

class LoginAsUser extends StatelessWidget {

  Widget build ( BuildContext context ){

    return Scaffold(
      appBar: AppBar(title: Text("Welcome User..."),),
      body: RaisedButton(
        child: Text("Go back"),
        onPressed: (){
          Navigator.pop(context);
        },
      )
    );
  }
}

class LoginAsGuest extends StatelessWidget {

  Widget build ( BuildContext context ){

    return Scaffold(
      appBar: AppBar(title: Text("Welcome Guest..."),),
    );
  }
}