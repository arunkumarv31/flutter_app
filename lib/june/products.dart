import 'package:flutter/material.dart';
import 'package:flutter_app/june/pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct; 
  Products(this.products, {this.deleteProduct}) {
    print('[Products Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.push<bool>(
                      context,
                      ,
                    ).then((bool value) {
                      if ( value ){
                        deleteProduct(index);
                      }
                    }),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');

    Widget productCard = Center(
      child: Text('No products found, Please add some.'),
    );

    if (this.products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }
    return productCard;

    /* 
    Column(
      children: products
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
     */
  }
}
