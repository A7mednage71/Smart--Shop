import 'package:flutter/material.dart';
import 'package:smartshop/core/utils/assets_manager.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Screen"),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(AppAssets.shoppingCart),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).cardColor,
                      border: Border.all(width: 3, color: Colors.red.shade300),
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
              style: TextStyle(fontSize: 20),
            ),
            ListTile(
              leading: Image.asset(AppAssets.address),
            )
          ],
        ),
      ),
    );
  }
}
