import 'package:flutter/material.dart';
import 'package:ecom/models/cart_item.dart';
import 'package:ecom/widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  final List<CartItem> cartItems;

  CartScreen(this.cartItems);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (ctx, index) => CartItemWidget(cartItems[index]),
      ),
    );
  }
}
