import 'package:flutter/material.dart';
import 'package:flutter_course/product_control.dart';

import 'package:flutter_course/products.dart';

class ProductManager extends StatefulWidget {

  final String startingProduct;

  ProductManager({this.startingProduct: 'Sweets Tester'});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  void _addProduct(String product){
    setState(() {
      _products.add('Advanced Food Tester');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(16),
          child: ProductControl(addProduct: _addProduct),
        ),
        Products(_products)
      ],
    );
  }
}
