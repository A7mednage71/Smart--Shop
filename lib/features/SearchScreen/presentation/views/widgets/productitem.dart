import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import 'package:smartshop/core/manager/product_provider.dart';
import 'package:smartshop/core/models/product_model.dart';
import 'package:smartshop/core/widgets/custom_heart_icon.dart';
import 'package:smartshop/core/widgets/custom_material_button.dart';
import 'package:smartshop/features/CartScreen/Presentation/views/manager/cart_provider.dart';
import 'package:smartshop/features/detailsScreen/presentation/views/details_screen.dart';
import 'package:smartshop/features/viewedRecently/presentation/manager/wiewed_recently_manager.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.productid,
  });
  final String productid;
  @override
  Widget build(BuildContext context) {
    final viewdproduct = Provider.of<ViewedRecentlyProvider>(context);
    final productprovider = Provider.of<ProductProvider>(context);
    final cartprovider = Provider.of<CartProvider>(context);
    ProductModel? model = productprovider.findProductbyId(id: productid);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          viewdproduct.addProductToViewedProducts(productId: model.productId);
          Navigator.pushNamed(context, ProductDetailsScreen.routname,
              arguments: model);
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FancyShimmerImage(
                imageUrl: model!.productImage,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.22,
                errorWidget: const Icon(Icons.error),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    model.productTitle,
                    style: const TextStyle(fontSize: 20),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                CustomHeartWidget(
                  productid: model.productId,
                )
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  model.productPrice,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                  ),
                ),
                CustomMaterialButton(
                  icon: Icon(
                      cartprovider.inCartproducts(productId: model.productId)
                          ? Icons.check
                          : Icons.add_shopping_cart_rounded),
                  onTap: () {
                    if (cartprovider.inCartproducts(
                        productId: model.productId)) {
                      return;
                    }
                    cartprovider.addProductToCart(productId: model.productId);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
