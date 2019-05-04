import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

/* StatelessWidget */
class MyApp extends StatelessWidget {
  //Stateless widgets are immutable, meaning that their properties can’t change—all values are final.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      home: RandomWords(),
    );
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
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }

  /* builds the ListView that displays the suggested word pairing. */
  Widget _buildSuggestions() {
    /* Creates a scrollable, linear array of widgets that are created on demand. */
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();
        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}