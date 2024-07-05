import 'package:api_revision/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Page'),
      ),
      body: Consumer<CartProvider>(
        builder: (context, cartProvider, child) {
          if (cartProvider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: cartProvider.cartModel.carts.length,
              itemBuilder: (context, index) => ListTile(
                leading: Text(cartProvider.cartModel.carts[index].id.toString()),
                title: Image.network(cartProvider.cartModel.carts[index].products[0].thumbnail),
              ),
            );
          }
        },
      ),
    );
  }
}
