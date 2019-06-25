- [Download Flutter](https://flutter.dev/docs/get-started/install/macos)
- References: [stateful-stateless](https://flutter.dev/docs/development/ui/interactive#stateful-stateless)
### Stateful Widget
A stateful widget is implemented by two classes. 
- a subclass of `StatefulWidget`
- a subclass of `State` - contains widgets mutable state and the widgets `build()` method.  
- When the widget's state changes the state object calls the `setState()`, telling the framework to redraw the widget.

`FavoriteWidget` stateful class manages its own state. So it overrides `createstate()` to create a `State` object.  
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
                    icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
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

