import 'package:flutter/material.dart';
import 'Text_button_image_option.dart';

class ImagePickeraAlertDialog extends StatelessWidget {
  const ImagePickeraAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
          text: 'Gallery  ',
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
    );
  }
}
