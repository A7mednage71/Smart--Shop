import 'package:card_swiper/card_swiper.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartshop/core/assets_manger/assets_manager.dart';
import 'package:smartshop/core/manager/product_provider.dart';
import 'package:smartshop/core/widgets/App_Name_Shimmer.dart';
import 'package:smartshop/features/homeView/presentation/views/widgets/categoryitem.dart';
import 'package:smartshop/features/homeView/presentation/views/widgets/latestarrivalitem.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productprovider = Provider.of<ProductProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const AppNameWidget(name: "Shop Smart"),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(AppAssets.shoppingCart),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                        AppAssets.panners[index],
                        fit: BoxFit.fill,
                      );
                    },
                    itemCount: AppAssets.panners.length,
                    autoplay: true,
                    pagination: const SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                        activeColor: Colors.red,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Latest Arrival",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext contxt, int index) {
                    return ChangeNotifierProvider.value(
                      value: productprovider.myProducts[index],
                      child: const LatestArrivalItem(),
                    );
                  },
                ),
              ),
              const Text(
                "Categories",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: DynamicHeightGridView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: AppAssets.categories.length,
                  builder: (context, index) {
                    return Categoryitem(
                      image: AppAssets.categories[index][0],
                      name: AppAssets.categories[index][1],
                    );
                  },
                  crossAxisCount: 4,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
