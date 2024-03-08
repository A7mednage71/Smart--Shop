import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:smartshop/core/models/product_model.dart';
import 'package:smartshop/core/widgets/App_Name_Shimmer.dart';
import 'package:smartshop/core/widgets/custom_material_button.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});
  static const routname = "DetailsScreen";
  @override
  Widget build(BuildContext context) {
    ProductModel model =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      appBar: AppBar(
        title: const AppNameWidget(name: "Product details"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 22,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: CustomMaterialButton(
              icon: Icon(IconlyLight.bag2),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: FancyShimmerImage(
                    imageUrl: model.productImage,
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      model.productTitle,
                      style: const TextStyle(fontSize: 20),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    model.productPrice,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    const CustomMaterialButton(
                      icon: Icon(IconlyLight.heart),
                      radius: 27,
                      value: 16,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all<Size>(
                            const Size(double.infinity, 50),
                          ),
                        ),
                        icon: const Icon(Icons.add),
                        onPressed: () {},
                        label: const Text(
                          "Add to cart",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "About this item",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    model.productCategory,
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                model.productDescription,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              const Text(
                "Purhase this item and let us know what you thin about it",
                style: TextStyle(fontSize: 20),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
