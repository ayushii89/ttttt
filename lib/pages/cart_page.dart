import 'package:flutter/material.dart';
import 'package:food/models/cart_item.dart';
import 'package:food/models/restaurant.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        // cart
        final userCart = restaurant.cart;

        //scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: const Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        
          ),
         body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: userCart.length,
                  itemBuilder: (context, index) {
                    //get indiviual cart item
                    final cartItem = userCart[index];

                    //return cart title UI
                    return ListTile(
                      title: Text(cartItem.food.name),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}


