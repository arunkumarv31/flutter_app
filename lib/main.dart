import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

/* StatelessWidget */
class MyApp extends StatelessWidget {
  //Stateless widgets are immutable, meaning that their properties can’t change—all values are final.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome to flutter')
          ),
          body: Center(
            child: RandomWords()
          ),
        ));
  }
}

/* 
   Implementing a stateful widget requires at least two classes: 
    1) a StatefulWidget class that creates an instance of 
    2) a State class. 
        The StatefulWidget class is, itself, immutable, 
        but the State class persists over the lifetime of the widget.
*/

/* Stateful widget ( immutable ) */
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

/* State class (mutable) */
class RandomWordsState extends State<RandomWords> {

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
