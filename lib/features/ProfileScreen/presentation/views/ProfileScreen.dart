import 'package:flutter/material.dart';
import 'package:smartshop/core/utils/assets_manager.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Profile Screen"),
        leading: Image.asset(AppAssets.shoppingCart),
      ),
      body: const Center(
        child: Text("ProfileScreen"),
      ),
    );
  }
}
