import 'package:flutter/material.dart';
import './product_control.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = 'Sweets Tester' }){
    print ('[ProductsManager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print ('[ProductsManager Widget] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    print ('[ProductsManager State] initState()');
    _products.add(widget.startingProduct);
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
    print ('[ProductsManager State] didUpdateWidget()');
  }

  void _addProduct ( String product ){
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    
    print ('[ProductsManager State] build()');

    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct)
        ),
        Products(_products)
      ],
    );
  }
}
