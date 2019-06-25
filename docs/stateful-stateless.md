# Stateful and Stateless Widgets
This document explain `stateful` and `stateless` widgets.  
References: [stateful-stateless](https://flutter.dev/docs/development/ui/interactive#stateful-stateless),[Stateless](https://www.youtube.com/watch?time_continue=84&v=wE7khGHVkYY)
## Stateless Widget 
A widget that doesn't require mutable(മാറ്റം സംഭവിക്കുന്ന) state.  
The `build` method of stateless widget is typically only called in `3` situations. 
- The first time the widget is inserted into a widgets tree.
- when the widgets parent changes its configuration.
-when an `InheritedWidget` it depends on changes.
```dart
class DogApp extends StatelessWidget {

    @override
    Widget build ( BuildContext context ){
        return MaterialApp(
            title: 'My Dog App',
            home: Scaffold(
                appBar: AppBar(
                    title: Text('Yellow Lab'),
                ),
                body: Center(
                    child: Text('Rocky')   
                )
            )
        )
    }
}
```
Widgets are really just configurations for pieces of an app's UI.They are blueprints. So what are they configurations for ? Elements.An element is a widget that's been made real and mounted on screen. And it is the element tree that represents what is actually displaying on your device at any given moment. Each widget class has a corresponding element class & a method to create an instance. `StatelessWidget`, for example creates a stateless element.
```dart
//...
@override
StatelessElement createElement() => new StatelessElement(this);
```
That `createElement` method is called when the Widget is mounted to the tree. Flutter asks the widget for an element and then pops that element into the element tree with a reference to the widget that created it. 
**Flutter progresses through all the build methods, creating widgets, using them to make elements, and so on, until everything is built, mounted on screen, and ready to be laid out and rendered**

## Stateful Widget
A stateful widget is implemented by two classes. 
- a subclass of `StatefulWidget`
- a subclass of `State` - contains widgets mutable state and the widgets `build()` method.  
- When the widget's state changes the state object calls the `setState()`, telling the framework to redraw the widget.

`FavoriteWidget` stateful class manages its own state. So it overrides `createState()` to create a `State` object.  
The framework calls `createState()` [when](#) it wants to build the widgets.
```dart
/* Stateful Widget */
class FavoriteWidget extends StatefulWidget {

    @override
    _FavoriteWidgetState createState() => _FavoriteWidgetState()
}
```
The `_FavoriteWidgetState` class stores the mutable data that can be changed over the lifetime of the widget. 
```dart
class _FavoriteWidgetState extends State<FavoriteWidget> { 
    bool _isFavorited = true;
    int _favoriteCount = 41;

    void _toggleFavorite() {
        setState(() {
            if (_isFavorited) {
            _favoriteCount -= 1;
            _isFavorited = false;
            } else {
            _favoriteCount += 1;
            _isFavorited = true;
            }
        });
    }       

    @override
    Widget build( Build context ) {
        return Row (
            mainAxisSize: MainAxisSize.min,
            children: [
                Container(
                    padding: EdgeInsets.all(0),
                    child: IconButton(
                        icon: (_isFavorited ? Icon  (Icons.star) : Icon(Icons.star_border)),
                        color: Colors.red[500],
                        onPressed: _toggleFavorite,
                    ),
                ),
                SizedBox(
                    width: 18,
                    child: Container(
                        child: Text('$_favoriteCount'),
                    ),
                ),
            ],
        )
    }
}
