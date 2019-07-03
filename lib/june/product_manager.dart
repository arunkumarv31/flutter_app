import 'package:flutter/material.dart';
import './product_control.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  final Map<String, String> startingProduct;

  ProductManager({this.startingProduct}) {
    print('[ProductsManager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductsManager Widget] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<Map<String, String>> _products = [];

  @override
  void initState() {
    super.initState();
    print('[ProductsManager State] initState()');

    if ( widget.startingProduct != null ) {
          _products.add(widget.startingProduct);
    }
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('[ProductsManager State] didUpdateWidget()');
  }

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductsManager State] build()');

    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.all(10.0), child: ProductControl(_addProduct)),
        Expanded(child: Products(_products, deleteProduct: _deleteProduct ))
      ],
    );
  }
}
