import 'package:flutter/material.dart';
import 'package:smartshop/features/viewedRecently/data/models/viewed_recently_model.dart';
import 'package:uuid/uuid.dart';

class ViewedRecentlyProvider with ChangeNotifier {
  final Map<String, ViewedRecentlyModel> viewedProducts = {};

  Map<String, ViewedRecentlyModel> getViewedproducts() {
    return viewedProducts;
  }

  bool inViewedproducts({required String productId}) {
    return viewedProducts.containsKey(productId);
  }

  addOrremeoveProductToWishlist({required String productId}) {
    if (inViewedproducts(productId: productId)) {
      viewedProducts.remove(productId);
    } else {
      viewedProducts.putIfAbsent(
        productId,
        () => ViewedRecentlyModel(id: const Uuid().v4(), productid: productId),
      );
    }
    notifyListeners();
  }

  void clearAllProducts() {
    viewedProducts.clear();
    notifyListeners();
  }
}
