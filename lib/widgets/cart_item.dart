import 'package:flutter/material.dart';
import 'package:ecom/models/cart_item.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem cartItem;

  CartItemWidget(this.cartItem);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(cartItem.product.imageUrl),
      ),
      title: Text(cartItem.product.title),
      subtitle: Text('Quantity: ${cartItem.quantity}'),
      trailing: Text('\$${cartItem.product.price * cartItem.quantity}'),
    );
  }
}
