import 'package:deliverrr/components/my_button.dart';
import 'package:deliverrr/components/my_cart_tile.dart';
import 'package:deliverrr/models/resturant.dart';
import 'package:deliverrr/pages.dart/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Resturant>(
      builder: (context, resturant, child) {
        // cart
        final userCart = resturant.cart;

        // scaffold UI
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              //clear all cart
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text(
                          "Are you sure you want to clear the cart?"),
                      actions: [
                        //cancel button
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Cancel"),
                        ),

                        // yes
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            resturant.clearCart();
                          },
                          child: const Text("Yes"),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(
                  Icons.delete,
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              // List of cart
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                            child: Center(
                              child: Text("Cart is empty.."),
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, index) => MyCartTile(
                                cartItem: userCart[index],
                              ),
                            ),
                          ),
                  ],
                ),
              ),

              /// button to pay
              MyButton(
                onTap: () { Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builder) => PaymentPage(),
                  ),
                );},
                text: "Go to Checkout",
              ),

              SizedBox(
                height: 25,
              ),
            ],
          ),
        );
      },
    );
  }
}
