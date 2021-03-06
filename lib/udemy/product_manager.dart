import 'package:flutter/material.dart';

import 'products.dart';

class ProductManager extends StatefulWidget {
  final Map<String, String> startingProduct;

  ProductManager({this.startingProduct}) {
    print('[ProductManager StatefulWidget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager StatefulWidget] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<Map<String, String>> _products = [];

  @override
  void initState() {
    super.initState();
    print('[_ProductManagerState State] initState()');
    if ( widget.startingProduct != null ){
      _products.add(widget.startingProduct);
    }
    
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[_ProductManagerState State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct (int index ){
    setState((){
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[_ProductManagerState State] build()');
    return Column(
      children: <Widget>[
        Container(
          /* color: Colors.red, */
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            child: Text("Add Product"),
            onPressed: () {
              _addProduct({ 'title': 'Chocolate', 'image':'assets/food.jpg' });
            },
          ),
        ),
        Expanded(child:Products(_products, deleteProduct:_deleteProduct))
      ],
    );
  }
}
