import 'package:flutter/material.dart';
import 'package:smartshop/core/widgets/App_Name_Shimmer.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});
  static const routname = "DetailsScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppNameWidget(name: "Product detail"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 22,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
