import 'package:flutter/material.dart';
import 'package:smartshop/features/wishlistScreen/data/models/wishlist_model.dart';
import 'package:uuid/uuid.dart';

class WishlistProvider with ChangeNotifier {
  final Map<String, WishListModel> wishListProducts = {};

  Map<String, WishListModel> getWishlistproducts() {
    return wishListProducts;
  }

  bool inWishlistproducts({required String productId}) {
    return wishListProducts.containsKey(productId);
  }

  addOrremeoveProductToWishlist({required String productId}) {
    if (inWishlistproducts(productId: productId)) {
      wishListProducts.remove(productId);
    } else {
      wishListProducts.putIfAbsent(
        productId,
        () => WishListModel(
          id: const Uuid().v4(),
          productId: productId,
        ),
      );
    }
    notifyListeners();
  }

  void clearAllProducts() {
    wishListProducts.clear();
    notifyListeners();
  }
}
