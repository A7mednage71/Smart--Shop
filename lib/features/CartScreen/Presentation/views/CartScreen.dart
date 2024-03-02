import 'package:flutter/material.dart';
import 'package:smartshop/core/assets_manger/assets_manager.dart';
import 'package:smartshop/core/widgets/customemptydatawidget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  final bool isempty = false;
  @override
  Widget build(BuildContext context) {
    return isempty
        ? const Scaffold(
            body: CustomEmptyDataWidget(
              title: 'Your Cart is empty',
              subtitle:
                  "Looks like you have not added anything to your cart . Go ahead & explore a top categories",
              buttomtext: 'Shop now',
            ),
          )
        : Scaffold(
            appBar: AppBar(
              title: const Text("Shopping basket"),
              leading: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset(AppAssets.shoppingCart),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete_forever_rounded)),
              ],
            ),
            body: const Column(
              children: [],
            ),
          );
  }
}
