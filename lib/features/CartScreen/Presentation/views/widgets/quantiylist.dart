import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartshop/features/CartScreen/Presentation/views/manager/cart_provider.dart';
import 'package:smartshop/features/CartScreen/data/models/cart_model.dart';

class QuantityList extends StatefulWidget {
  const QuantityList({super.key, required this.cart});

  final CartModel cart;

  @override
  State<QuantityList> createState() => _QuantityListState();
}

class _QuantityListState extends State<QuantityList> {
  @override
  Widget build(BuildContext context) {
    final cartprovider = Provider.of<CartProvider>(context);
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 5,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.grey),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Center(
                child: InkWell(
                  splashColor: Colors.transparent,
                  onTap: () {
                    cartprovider.updateQuantity(
                      productId: widget.cart.productId,
                      quantity: index + 1,
                    );
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${index + 1}",
                      style: const TextStyle(fontSize: 25),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
