import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smartshop/core/assets_manger/assets_manager.dart';
import 'package:smartshop/core/widgets/custom_material_button.dart';
import 'package:smartshop/features/registerscreen/presentation/views/widgets/Text_button_image_option.dart';

class CustomImagePicker extends StatelessWidget {
  const CustomImagePicker({super.key, required this.photo});
  final XFile? photo;
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: photo == null
                  ? Image.network(
                      AppAssets.defaultuserimage,
                      fit: BoxFit.fill,
                    )
                  : Image.file(
                      File(photo!.path),
                      fit: BoxFit.fill,
                    ),
            )),
        Positioned(
          right: -10,
          top: -8,
          child: CustomMaterialButton(
            icon: const Icon(Icons.add_a_photo_outlined),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Choose Option",
                          style: TextStyle(fontSize: 22),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextButtonImageOption(
                          text: 'Camera',
                          icon: Icons.camera,
                          onPressed: () {},
                        ),
                        CustomTextButtonImageOption(
                          text: 'Gallery',
                          icon: Icons.photo,
                          onPressed: () {},
                        ),
                        CustomTextButtonImageOption(
                          text: 'Remove',
                          icon: Icons.remove_circle_outline,
                          onPressed: () {},
                          color: Colors.red,
                        )
                      ],
                    ),
                  );
                },
              );
            },
          ),
        )
      ],
    );
  }
}
