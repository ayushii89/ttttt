import 'package:flutter/material.dart';
import 'package:food/models/cart_item.dart';
import 'package:food/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        child: Column(
          children: [
            Row(
              children: [
                // food image

                // name and price

                // increment or decrement quantity
              ],
            ),
          ],
        ),
      ),
    ); 
  }
}
