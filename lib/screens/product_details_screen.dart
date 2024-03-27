import 'package:flutter/material.dart';
import 'package:ecom/models/products.dart';

class ProductDetailsScreen extends StatelessWidget {
  final List<Product> products;

  ProductDetailsScreen(this.products);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (ctx, index) => _buildProductItem(products[index]),
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
