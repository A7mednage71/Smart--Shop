import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartshop/core/manager/product_provider.dart';
import 'package:smartshop/features/CartScreen/Presentation/views/manager/cart_provider.dart';

class BottomSheetCart extends StatelessWidget {
  const BottomSheetCart({super.key});

  @override
  Widget build(BuildContext context) {
    final cartprovider = Provider.of<CartProvider>(context);
    final productprovider = Provider.of<ProductProvider>(context);

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      height: 70,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Total (${cartprovider.cartproducts.length} products /${cartprovider.quantity()} items)"),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "${cartprovider.getTotalPrice(provider: productprovider)}",
                  style: const TextStyle(
                      fontStyle: FontStyle.italic, color: Colors.blue),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Checkout"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
