import 'package:flutter/material.dart';
import 'package:smartshop/core/widgets/customemptydatawidget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomEmptyDataWidget(
        title: 'Your Cart is empty',
        subtitle:
            "Looks like you have not added anything to your cart . Go ahead & explore a top categories",
        buttomtext: 'Shop now',
      ),
    );
  }
}
