import 'package:flutter/material.dart';
import '../product_manager.dart';
import './products_admin.dart';

class ProductsPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text('Choose'),
              automaticallyImplyLeading: false,
            ),
            ListTile(
              title: Text('Manage Products'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/admin');
                /* .pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ProductsAdmin(),
                  ),
                ); */
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: ProductManager(),
    );
  }
}
