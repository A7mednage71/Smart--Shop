import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:smartshop/core/utils/validators/my_validator.dart';

class DefaultCustomFormField extends StatelessWidget {
  const DefaultCustomFormField({
    super.key,
    required this.emailtextfieldcontroller,
    required this.emailfocusnode,
    required this.passwordfocusnode,
    required this.emailinputaction,
    required this.emailinputtype,
    required this.hint,
  });

  final TextEditingController emailtextfieldcontroller;
  final FocusNode emailfocusnode;
  final FocusNode passwordfocusnode;
  final TextInputAction emailinputaction;
  final TextInputType emailinputtype;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailtextfieldcontroller,
      focusNode: emailfocusnode,
      textInputAction: emailinputaction,
      keyboardType: emailinputtype,
      decoration: InputDecoration(
          prefixIcon: const Icon(IconlyLight.message), hintText: hint),
      validator: (value) {
        return MyValidators.emailValidator(value);
      },
      onFieldSubmitted: (value) {
        FocusScope.of(context).requestFocus(passwordfocusnode);
      },
    );
  }
}
