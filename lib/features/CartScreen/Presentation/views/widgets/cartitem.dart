import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import 'package:smartshop/core/manager/product_provider.dart';
import 'package:smartshop/core/models/product_model.dart';
import 'package:smartshop/features/CartScreen/Presentation/views/widgets/quantiylist.dart';
import 'package:smartshop/features/CartScreen/data/models/cart_model.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cart});
  final CartModel cart;
  @override
  Widget build(BuildContext context) {
    final productprovider = Provider.of<ProductProvider>(context);
    ProductModel? model = productprovider.findProductbyId(id: cart.productId);
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          SizedBox(
            height: 130,
            width: 130,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: FancyShimmerImage(
                imageUrl: model!.productImage,
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
                    Expanded(
                      child: Text(
                        model.productTitle,
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
                    Text(
                      model.productPrice,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          context: context,
                          builder: (context) => const QuantityList(),
                        );
                      },
                      icon: const Icon(IconlyLight.arrowDown2),
                      label: Text(model.productQuantity),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
