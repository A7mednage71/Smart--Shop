import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import 'package:smartshop/core/assets_manger/assets_manager.dart';
import 'package:smartshop/core/models/product_model.dart';
import 'package:smartshop/features/detailsScreen/presentation/views/details_screen.dart';

class LatestArrivalItem extends StatelessWidget {
  const LatestArrivalItem({super.key});

  @override
  Widget build(BuildContext context) {
    final productmodel = Provider.of<ProductModel>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, ProductDetailsScreen.routname);
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.42,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: FancyShimmerImage(
                  imageUrl: productmodel.productImage,
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.width * 0.150,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      productmodel.productTitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 18),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add_shopping_cart_rounded),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(IconlyBold.heart),
                        ),
                      ],
                    ),
                    Text(
                      productmodel.productPrice,
                      style: const TextStyle(fontSize: 18),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
