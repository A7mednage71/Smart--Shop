import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import 'package:smartshop/core/widgets/App_Name_Shimmer.dart';
import 'package:smartshop/core/assets_manger/assets_manager.dart';
import 'package:smartshop/core/utils/themedata/provider/themeData_provider.dart';
import 'package:smartshop/features/ProfileScreen/presentation/views/widgets/AlertDialogwidget.dart';
import 'package:smartshop/features/ProfileScreen/presentation/views/widgets/CustomListTile.dart';
import 'package:smartshop/features/viewedRecently/presentation/views/viewed_recently.dart';
import 'package:smartshop/features/wishlistScreen/presentations/views/wishlist_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeDataProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const AppNameWidget(name: "Shop Smart"),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(AppAssets.shoppingCart),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10),
        child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).cardColor,
                        border:
                            Border.all(width: 3, color: Colors.red.shade300),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/512/219/219969.png",
                            ))),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ahmed Ben Nageh"),
                      Text("Ahmed_Nageh@gmail.com"),
                    ],
                  ),
                  const Spacer(),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.edit))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "General",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomListTile(
                text: "All Orders",
                image: AppAssets.orderSvg,
                fun: () {},
                icon: IconlyLight.arrowRight2,
              ),
              CustomListTile(
                text: "Wishlist",
                image: AppAssets.wishlistSvg,
                fun: () {
                  Navigator.pushNamed(context, WishlistScreen.routname);
                },
                icon: IconlyLight.arrowRight2,
              ),
              CustomListTile(
                text: "Viewed recently",
                image: AppAssets.recent,
                fun: () {
                  Navigator.pushNamed(context, ViewdRecentlyScreen.routname);
                },
                icon: IconlyLight.arrowRight2,
              ),
              CustomListTile(
                text: "Address",
                image: AppAssets.address,
                fun: () {},
                icon: IconlyLight.arrowRight2,
              ),
              const Divider(
                endIndent: 10,
              ),
              const Text(
                "Settings",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              SwitchListTile(
                secondary: SizedBox(
                  height: 45,
                  child: Image.asset(AppAssets.theme),
                ),
                value: themeProvider.isDarkTheme(),
                title: Text(
                    themeProvider.isDarkTheme() ? "dark mode" : "Light mode"),
                onChanged: (value) {
                  themeProvider.settheme(themevalue: value);
                },
              ),
              const SizedBox(
                height: 6,
              ),
              const Divider(
                endIndent: 10,
              ),
              const Text(
                "Others",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomListTile(
                image: AppAssets.privacy,
                text: "Privacy & Policy",
                fun: () {},
                icon: IconlyLight.arrowRight2,
              ),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialogWidget();
                        });
                  },
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  label: const Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
