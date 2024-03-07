import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:smartshop/core/assets_manger/assets_manager.dart';
import 'package:smartshop/core/widgets/custom_material_button.dart';
import 'package:smartshop/features/detailsScreen/presentation/views/details_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, ProductDetailsScreen.routname);
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FancyShimmerImage(
                imageUrl: AppAssets.testimage,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.22,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Text(
                    "AdidAdidasAdidasAdidasas",
                    style: TextStyle(fontSize: 20),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(IconlyLight.heart),
                )
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$1399.99",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                  ),
                ),
                CustomMaterialButton(
                  icon: Icon(Icons.add_shopping_cart_rounded),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
