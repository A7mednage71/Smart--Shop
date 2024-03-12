import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartshop/core/manager/product_provider.dart';
import 'package:smartshop/core/models/product_model.dart';
import 'package:smartshop/features/CartScreen/data/models/cart_model.dart';
import 'package:uuid/uuid.dart';

class CartProvider with ChangeNotifier {
  final Map<String, CartModel> cartproducts = {};

  Map<String, CartModel> getCartproducts() {
    return cartproducts;
  }

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

  void updateQuantity({required String productId, required int quantity}) {
    cartproducts.update(
      productId,
      (element) => CartModel(
        cartId: element.cartId,
        productId: productId,
        quantity: quantity,
      ),
    );
    notifyListeners();
  }

  double getTotalPrice({required ProductProvider provider}) {
    double totalPrice = 0.0;
    cartproducts.forEach(
      (key, value) {
        ProductModel model = provider.findProductbyId(id: value.productId)!;
        totalPrice += double.parse(model.productPrice) * value.quantity;
      },
    );
    return totalPrice;
  }

  int quantity() {
    int total = 0;
    cartproducts.forEach((key, value) {
      total += value.quantity;
    });
    return total;
  }

  void removeProduct({required String productId}) {
    cartproducts.remove(productId);
    notifyListeners();
  }

  void clearAllProducts() {
    cartproducts.clear();
    notifyListeners();
  }
}
