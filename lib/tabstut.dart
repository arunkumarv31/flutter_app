import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
                appBar: AppBar(
                    title: Text("AppBar With tabs"),
                    bottom: TabBar(
                      tabs: <Widget>[
                        Tab(icon: Icon(Icons.android)),
                        Tab(icon: Icon(Icons.cloud_download))
                      ],
                    )),
                body: TabBarView(
                  children: <Widget>[
                    AndroidAction(), //Text("Android Selected"),
                    CloudAction()//Text("Cloud control Selected")
                  ],
                ))));
  }
}

class AndroidAction extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AndroidActionApp();
  }
}

class AndroidActionApp extends State<AndroidAction> {
  int counter = 0;
  bool tickmark = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("Counter value = $counter"),
        Checkbox(
          value: tickmark,
          onChanged: (bool newValue) {
            setState(() {
              counter++;
              tickmark = newValue;
            });
          },
        )
      ],
    );
  }
}

class CloudAction extends StatelessWidget {
  
  int counter = 0;

  Widget build(BuildContext context) {
    counter++;
    return Text("Counter value = $counter");
  }
}
