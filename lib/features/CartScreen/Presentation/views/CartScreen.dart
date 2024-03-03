import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:smartshop/core/assets_manger/assets_manager.dart';
import 'package:smartshop/core/widgets/customemptydatawidget.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';

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
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 130,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: FancyShimmerImage(
                            imageUrl:
                                "https://www.shutterstock.com/image-photo/white-sneakers-on-background-including-260nw-1100736923.jpg",
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Expanded(
                                  child: Text(
                                    "AdidasAdidasAdidasAdidasAdidas Ultra- 21",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.delete_outlined),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(IconlyLight.heart),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "\$1085.00",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                                ElevatedButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(IconlyLight.arrowDown2),
                                    label: const Text("Qty:1"))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}
