import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:smartshop/core/assets_manger/assets_manager.dart';
import 'package:smartshop/core/widgets/App_Name_Shimmer.dart';
import 'package:smartshop/core/widgets/customemptydatawidget.dart';
import 'package:smartshop/features/SearchScreen/presentation/views/widgets/productitem.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});
  static const routname = "WishlistScreen";
  final bool isempty = false;
  @override
  Widget build(BuildContext context) {
    return isempty
        ? Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_new)),
            ),
            body: CustomEmptyDataWidget(
              title: 'Your wishlist is empty',
              subtitle: "seems like you don't have any wishes here",
              buttomtext: 'Make a wish now',
              image: AppAssets.bagWish,
            ),
          )
        : Scaffold(
            appBar: AppBar(
              title: const AppNameWidget(name: "Wishlist Products"),
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 22,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.delete_forever_rounded),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DynamicHeightGridView(
                itemCount: 3,
                crossAxisCount: 2,
                builder: (BuildContext context, int index) {
                  return const ProductItem();
                },
              ),
            ),
          );
  }
}
