import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartshop/core/assets_manger/assets_manager.dart';
import 'package:smartshop/core/widgets/App_Name_Shimmer.dart';
import 'package:smartshop/core/widgets/custom_material_button.dart';
import 'package:smartshop/core/widgets/customemptydatawidget.dart';
import 'package:smartshop/features/CartScreen/Presentation/views/manager/cart_provider.dart';
import 'package:smartshop/features/CartScreen/Presentation/views/widgets/bottomSheet.dart';
import 'package:smartshop/features/CartScreen/Presentation/views/widgets/cartitem.dart';
import 'package:smartshop/features/CartScreen/data/models/cart_model.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  final bool isempty = false;
  @override
  Widget build(BuildContext context) {
    final cartprovider = Provider.of<CartProvider>(context);
    return cartprovider.getCartproducts().isEmpty
        ? Scaffold(
            body: CustomEmptyDataWidget(
              title: 'Your Cart is empty',
              subtitle:
                  "Looks like you have not added anything to your cart . Go ahead & explore a top categories",
              buttomtext: 'Shop now',
              image: AppAssets.shoppingCart,
            ),
          )
        : Scaffold(
            appBar: AppBar(
              title: const AppNameWidget(name: "Shopping basket"),
              leading: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset(AppAssets.shoppingCart),
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: CustomMaterialButton(
                    icon: Icon(Icons.delete_forever_rounded),
                  ),
                )
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: cartprovider.getCartproducts().length,
                itemBuilder: (context, index) {
                  final List<CartModel> cartProducts =
                      cartprovider.getCartproducts().values.toList();
                  return CartItem(
                    cart: cartProducts[index],
                  );
                },
              ),
            ),
            bottomSheet: const BottomSheetCart(),
          );
  }
}
