import 'package:flutter/material.dart';
import 'package:smartshop/core/assets_manger/assets_manager.dart';
import 'package:smartshop/core/widgets/customemptydatawidget.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});
  static const routname = "WishlistScreen";
  final bool isempty = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomEmptyDataWidget(
        title: 'Your wishlist is empty',
        subtitle: "seems like you don't have any wishes here",
        buttomtext: 'Make a wish now',
        image: AppAssets.bagWish,
      ),
    );
  }
}
