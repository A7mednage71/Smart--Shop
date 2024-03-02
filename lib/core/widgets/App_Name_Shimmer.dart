import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppNameWidget extends StatelessWidget {
  const AppNameWidget({super.key, this.size = 20});
  final double size;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.purple,
      highlightColor: Colors.red,
      child: Text(
        "Shop Smart",
        style: TextStyle(fontSize: size),
      ),
    );
  }
}
