import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppImpl();
  }
}

class MyAppImpl extends State<MyApp> {

  int counter = 0;

  Widget build(BuildContext context) {
    return /* MaterialApp(
        home:  */Scaffold(
      appBar: AppBar(
        title: Text("Drawer Example"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("The header"),
              decoration: BoxDecoration(color: Colors.orange),
            ),
            ListTile(
              title: Text("First Option"),
              onTap: (){
                Navigator.pop(context);
                setState(() {
                  counter++;
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => TestApp()
                  ));
                });
              },
            ),
            ListTile(
              title: Text("Second Option"),
              onTap: (){
                
              },
            )
          ],
        )
      ),
      body: Center(
        child: Text("The counter value is $counter"),
      )
    );
    /* ); */
  }
}

class TestApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Just for testing")
      ),
    );
  }

}
