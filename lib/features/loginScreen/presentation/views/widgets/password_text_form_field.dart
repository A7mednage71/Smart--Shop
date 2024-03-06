import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:smartshop/core/utils/validators/my_validator.dart';

class PasswordCustomFormField extends StatefulWidget {
  const PasswordCustomFormField({
    super.key,
    required this.passwordtextfieldcontroller,
    required this.passwordfocusnode,
    required this.focusto,
    required this.passwordinputaction,
    required this.passwordinputtype,
    required this.hint,
  });

  final TextEditingController passwordtextfieldcontroller;
  final FocusNode passwordfocusnode;
  final FocusNode? focusto;
  final TextInputAction passwordinputaction;
  final TextInputType passwordinputtype;
  final String hint;

  @override
  State<PasswordCustomFormField> createState() =>
      _PasswordCustomFormFieldState();
}

class _PasswordCustomFormFieldState extends State<PasswordCustomFormField> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.passwordtextfieldcontroller,
      focusNode: widget.passwordfocusnode,
      textInputAction: widget.passwordinputaction,
      keyboardType: widget.passwordinputtype,
      obscureText: obscure,
      decoration: InputDecoration(
        prefixIcon: const Icon(IconlyLight.password),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              obscure = !obscure;
            });
          },
          icon: Icon(obscure ? IconlyLight.hide : IconlyLight.show),
        ),
        hintText: widget.hint,
      ),
      validator: (value) {
        return MyValidators.passwordValidator(value);
      },
      onFieldSubmitted: (value) {
        FocusScope.of(context).requestFocus(widget.focusto);
      },
    );
  }
}
