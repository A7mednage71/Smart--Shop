import 'package:flutter/material.dart';
import 'package:smartshop/core/widgets/App_Name_Shimmer.dart';
import 'package:smartshop/core/widgets/sighButton.dart';
import 'package:smartshop/features/loginScreen/presentation/views/widgets/default_text_form_field.dart';
import 'package:smartshop/features/loginScreen/presentation/views/widgets/password_text_form_field.dart';
import 'package:smartshop/features/loginScreen/presentation/views/widgets/signinwithgoogle_widget.dart';
import 'package:smartshop/features/registerscreen/presentation/views/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // bool secure = true;

  late TextEditingController _passwordtextfieldcontroller;
  late TextEditingController _emailtextfieldcontroller;

  late FocusNode _emailfocusnode;
  late FocusNode _passwordfocusnode;

  GlobalKey<FormState> key = GlobalKey();

  final AutovalidateMode _autovalidatemode = AutovalidateMode.always;

  @override
  void initState() {
    super.initState();
    _passwordtextfieldcontroller = TextEditingController();
    _emailtextfieldcontroller = TextEditingController();
    _emailfocusnode = FocusNode();
    _passwordfocusnode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailfocusnode.dispose();
    _passwordfocusnode.dispose();
    _emailtextfieldcontroller.dispose();
    _passwordtextfieldcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Form(
              autovalidateMode: _autovalidatemode,
              key: key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  const AppNameWidget(
                    name: "Welcome to shop smart",
                    size: 30,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 22),
                  ),
                  const Text(
                      "let`s get You logged in so you can start exploring"),
                  const SizedBox(
                    height: 40,
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
                    focusto: null,
                    passwordinputaction: TextInputAction.done,
                    passwordinputtype: TextInputType.visiblePassword,
                    hint: '**********',
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forget Password ?",
                        style: TextStyle(
                            decoration: TextDecoration.underline, fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SignButton(
                    text: "Sign in",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "OR CONNECT USING",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const SighInWithGoogle(),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Guest ?",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don`t have an account ?",
                        style: TextStyle(fontSize: 18),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RegisterScreen.routname);
                        },
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
