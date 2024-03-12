import 'package:flutter/material.dart';
import 'package:smartshop/features/CartScreen/data/models/cart_model.dart';
import 'package:uuid/uuid.dart';

class CartProvider with ChangeNotifier {
  final Map<String, CartModel> cartproducts = {};

  bool inCartproducts({required String productId}) {
    return cartproducts.containsKey(productId);
  }

  addProductToCart({required String productId}) {
    cartproducts.putIfAbsent(
      productId,
      () => CartModel(
        cartId: Uuid().v4(),
        productId: productId,
        quantity: 1,
      ),
    );
    notifyListeners();
  }

  Map<String, CartModel> getCartproducts() {
    return cartproducts;
  }
}
