import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final List<String> products;

  Product([this.products = const []]) {
    print('[Product Widget] Constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[Product Widget] build()');
    return Column(
        children: products
            .map( (element) => Card(
          child: Column(
            children: <Widget>[
              Image.asset('assets/axeShirt.jpg'),
              Text(element)
            ],
          ),
        ),) //map
            .toList()
    );
  }
}