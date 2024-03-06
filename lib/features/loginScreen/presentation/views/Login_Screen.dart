import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:smartshop/core/utils/validators/my_validator.dart';
import 'package:smartshop/core/widgets/App_Name_Shimmer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool secure = true;

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
                  TextFormField(
                    controller: _emailtextfieldcontroller,
                    focusNode: _emailfocusnode,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(IconlyLight.message),
                        hintText: "youremail@gmail.com"),
                    validator: (value) {
                      return MyValidators.emailValidator(value);
                    },
                    onFieldSubmitted: (value) {
                      FocusScope.of(context).requestFocus(_passwordfocusnode);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _passwordtextfieldcontroller,
                    focusNode: _passwordfocusnode,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: secure,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(IconlyLight.password),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            secure = !secure;
                          });
                        },
                        icon:
                            Icon(secure ? IconlyLight.hide : IconlyLight.show),
                      ),
                      hintText: "**********",
                    ),
                    validator: (value) {
                      return MyValidators.passwordValidator(value);
                    },
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
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      shape: const ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Sign in",
                      style: TextStyle(fontSize: 18),
                    ),
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
                        onPressed: () {},
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

class SighInWithGoogle extends StatelessWidget {
  const SighInWithGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {},
      icon: const Icon(Icons.ac_unit),
      label: const Text(
        "Sign in with google",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
