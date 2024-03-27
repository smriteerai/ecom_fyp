import 'package:flutter/material.dart';
import 'package:ecom/models/products.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(product.imageUrl),
          Text(product.title),
          Text('\$${product.price.toStringAsFixed(2)}'),
        ],
      ),
    );
  }
}
