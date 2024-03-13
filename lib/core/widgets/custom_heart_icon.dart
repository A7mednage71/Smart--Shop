import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import 'package:smartshop/features/wishlistScreen/presentations/manager/wishlist_provider.dart';

class CustomHeartWidget extends StatelessWidget {
  const CustomHeartWidget({
    super.key,
    required this.productid,
  });

  final String productid;

  @override
  Widget build(BuildContext context) {
    final wishlistprovider = Provider.of<WishlistProvider>(context);
    return IconButton(
      onPressed: () {
        wishlistprovider.addOrremeoveProductToWishlist(productId: productid);
      },
      icon: Icon(
        wishlistprovider.inWishlistproducts(productId: productid)
            ? IconlyBold.heart
            : IconlyLight.heart,
        color: wishlistprovider.inWishlistproducts(productId: productid)
            ? Colors.red
            : Colors.black,
      ),
    );
  }
}
