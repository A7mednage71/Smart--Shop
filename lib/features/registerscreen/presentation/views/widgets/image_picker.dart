import 'package:flutter/material.dart';
import 'package:smartshop/core/widgets/custom_material_button.dart';

class CustomImagePicker extends StatelessWidget {
  const CustomImagePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
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
        const Positioned(
          right: -10,
          top: -8,
          child: CustomMaterialButton(
            icon: Icon(Icons.add_a_photo_outlined),
          ),
        )
      ],
    );
  }
}
