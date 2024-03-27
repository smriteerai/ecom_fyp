import 'package:flutter/material.dart';
import 'package:ecom/models/products.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> products;

  const HomeScreen(this.products, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Commerce App'),
      ),
      body: ListView(
        children:
            products.map((product) => _buildProductItem(product)).toList(),
      ),
    );
  }

  Widget _buildProductItem(Product product) {
    return ListTile(
      leading: Image.network(product.imageUrl),
      title: Text(product.title),
      subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
    );
  }
}
