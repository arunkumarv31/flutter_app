Materialapp (home) - what actually drawns onto the screen
Scaffold - creates a new page in app.
children: <widget>[] - means array holds only widgets
for images assets pubspec.yaml
Stateless widget will not recall build when some internal data changes.

```dart
class MyApp extends StatelessWidget {
    
    final String title = 'My Dog App';

    @override
    Widget build ( BuildContext context ){

        return MaterialApp(
            title: title,
            home: Scaffold(
                appBar: AppBar(
                    title: Text('Yellow Lab'),
                ),
                body: Center(
                    child: Text('Rocky')   
                )
            )
        );
    }
}
```
```dart
class MyApp extends StatefulWidget {

    State<StatefulWidget> createState() { 
        return _MyAppState();
    }
}

class _MyAppState extends State<MyApp> {

    String _data ='Default';

    @override
    Widget build ( BuildContext context ){
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar( title: Text('Title')),
                body: Column( children: <widget>[
                    Text( _data ),
                    RaisedButton (
                        child: Text('Update'),
                        onPressed: (){
                            setState((){
                                _data = 'Updated...';
                            })
                        }
                    )
                ])
            )
        );
    }
}
```
- why products is stateless widget
- why product manager is stateful widget

-initstate() runs before build runs in State class. Therefore there is no need to call setstate.
- life cycle
- set state in stateful class will call build() to build the UI again 
- setState() and build() is connected. When setState is called build is exeecuted.
-named arguments{}, optional arguments[]
-full restart clear any existing state.
- MyApp is Stateless 
- ProductManager Stateful
- PM has ProductControl and Products
- PC calls addPoduct from PM and setstate
- final and const : final List products = [], and products.add in PM will work. products can be decleared only once. But it can be populated with data.
- final basically disallows us to use the equal sign more than once.
  final List<String> _products = const [];
- if a value can never be changed use const on the right side of the equal sign.
if you just wanted to be sure that you will never be able to assign a new value to a property then use final in front of the property name