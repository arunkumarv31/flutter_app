import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './pages/products.dart';
import './pages/products_admin.dart';
import './pages/auth.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: AuthPage(),
      routes: {
        '/': (BuildContext context) => ProductsPage(),
        '/admin': (BuildContext context) => ProductsAdmin(),
      },
      onGenerateRoute: ( RouteSettings settings){
        final List<String> pathElements = settings.name.split('/');
        return MaterialPageRoute(
                        builder: (BuildContext context) => ProductPage(
                            products[index]['title'], products[index]['image']),
                      )
      },
    );
  }
}
