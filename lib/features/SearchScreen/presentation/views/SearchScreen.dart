import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:smartshop/core/assets_manger/assets_manager.dart';
import 'package:smartshop/core/widgets/App_Name_Shimmer.dart';
import 'package:smartshop/features/SearchScreen/presentation/views/widgets/productitem.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const AppNameWidget(name: "Search Products"),
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset(AppAssets.shoppingCart),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  prefixIcon: const Icon(IconlyLight.search),
                  suffixIcon: InkWell(
                    onTap: () {
                      _controller.clear();
                      FocusScope.of(context).unfocus();
                    },
                    child: const Icon(
                      Icons.clear,
                      color: Colors.red,
                    ),
                  ),
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: DynamicHeightGridView(
                  itemCount: 100,
                  builder: (context, index) {
                    return const ProductItem();
                  },
                  crossAxisCount: 2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

