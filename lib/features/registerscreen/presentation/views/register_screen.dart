import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smartshop/core/widgets/App_Name_Shimmer.dart';
import 'package:smartshop/core/widgets/sighButton.dart';
import 'package:smartshop/features/loginScreen/presentation/views/widgets/default_text_form_field.dart';
import 'package:smartshop/features/loginScreen/presentation/views/widgets/password_text_form_field.dart';
import 'package:smartshop/features/registerscreen/presentation/views/widgets/image_picker.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  static const routname = 'RegisterScreen';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController _emailtextfieldcontroller;
  late TextEditingController _usertextfieldcontroller;
  late TextEditingController _passwordtextfieldcontroller;
  late TextEditingController _repeatpasswordtextfieldcontroller;

  late FocusNode _userfocusnode;
  late FocusNode _emailfocusnode;
  late FocusNode _passwordfocusnode;
  late FocusNode _repeatpasswordfocusnode;

  GlobalKey<FormState> key = GlobalKey();

  final AutovalidateMode _autovalidatemode = AutovalidateMode.always;

  XFile? myimage;

  @override
  void initState() {
    _usertextfieldcontroller = TextEditingController();
    _emailtextfieldcontroller = TextEditingController();
    _passwordtextfieldcontroller = TextEditingController();
    _repeatpasswordtextfieldcontroller = TextEditingController();

    _userfocusnode = FocusNode();
    _emailfocusnode = FocusNode();
    _passwordfocusnode = FocusNode();
    _repeatpasswordfocusnode = FocusNode();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 22,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: key,
            autovalidateMode: _autovalidatemode,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AppNameWidget(
                    name: "Welcome to shop smart",
                    size: 30,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Welcome",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  const Text(
                      "Sign up now to receive special offers and updates from our app"),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomImagePicker(
                    photo: myimage,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  DefaultCustomFormField(
                    textfieldcontroller: _usertextfieldcontroller,
                    focusnode: _userfocusnode,
                    focusnodeto: _emailfocusnode,
                    inputaction: TextInputAction.next,
                    inputtype: TextInputType.name,
                    hint: "User123",
                    icon: IconlyLight.addUser,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DefaultCustomFormField(
                    textfieldcontroller: _emailtextfieldcontroller,
                    focusnode: _emailfocusnode,
                    focusnodeto: _passwordfocusnode,
                    inputaction: TextInputAction.next,
                    inputtype: TextInputType.emailAddress,
                    hint: "youremail@gmail.com",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PasswordCustomFormField(
                    passwordtextfieldcontroller: _passwordtextfieldcontroller,
                    passwordfocusnode: _passwordfocusnode,
                    focusto: _repeatpasswordfocusnode,
                    passwordinputaction: TextInputAction.next,
                    passwordinputtype: TextInputType.visiblePassword,
                    hint: 'Password',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PasswordCustomFormField(
                    passwordtextfieldcontroller:
                        _repeatpasswordtextfieldcontroller,
                    passwordfocusnode: _repeatpasswordfocusnode,
                    focusto: _repeatpasswordfocusnode,
                    passwordinputaction: TextInputAction.done,
                    passwordinputtype: TextInputType.visiblePassword,
                    hint: 'Repeat Password',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SignButton(
                    onPressed: () {},
                    text: "Sign Up",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
