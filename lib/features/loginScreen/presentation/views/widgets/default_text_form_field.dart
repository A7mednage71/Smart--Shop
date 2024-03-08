import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:smartshop/core/utils/validators/my_validator.dart';

class DefaultCustomFormField extends StatelessWidget {
  const DefaultCustomFormField({
    super.key,
    required this.textfieldcontroller,
    this.focusnode,
    this.focusnodeto,
    required this.inputaction,
    required this.inputtype,
    required this.hint,
    this.icon = IconlyLight.message,
  });

  final TextEditingController textfieldcontroller;
  final FocusNode? focusnode;
  final FocusNode? focusnodeto;
  final TextInputAction inputaction;
  final TextInputType inputtype;
  final String hint;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textfieldcontroller,
      focusNode: focusnode,
      textInputAction: inputaction,
      keyboardType: inputtype,
      decoration: InputDecoration(prefixIcon: Icon(icon), hintText: hint),
      validator: (value) {
        return MyValidators.emailValidator(value);
      },
      onFieldSubmitted: (value) {
        FocusScope.of(context).requestFocus(focusnodeto);
      },
    );
  }
}
