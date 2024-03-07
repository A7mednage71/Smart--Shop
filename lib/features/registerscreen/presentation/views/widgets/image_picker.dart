import 'package:flutter/material.dart';

class CustomImagePicker extends StatelessWidget {
  const CustomImagePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle,
            border: Border.all(width: 1.2, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
