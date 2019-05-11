import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products) {
    print('Products StatelessWidget] Constructor()');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(products[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ProductPage(),
                      ),
                    ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    return products.length > 0
        ? ListView.builder(
            itemBuilder: _buildProductItem,
            itemCount: products.length,
          )
        : Center(
            child: Text('No products found, please add one'),
          );
  }

  @override
  Widget build(BuildContext context) {
    print('Products StatelessWidget] build()');
    return _buildProductList();
  }
}

/*   
            children: products
            .map((element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/food.jpg'),
                      Text(element)
                    ],
                  ),
                ))
            .toList()
            */
