import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products) {
    print('Products StatelessWidget] Constructor()');
  }

  @override
  Widget build(BuildContext context) {
    print('Products StatelessWidget] build()');
    return Column(
        children: products
            .map((element) => Card(
                  child: Column(
                    children: <Widget>[
                      //Image.asset('assets/food.jpg'),
                      Text(element)
                    ],
                  ),
                ))
            .toList());
  }
}
