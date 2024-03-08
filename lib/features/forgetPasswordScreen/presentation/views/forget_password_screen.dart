import 'package:flutter/material.dart';
import 'package:smartshop/core/assets_manger/assets_manager.dart';
import 'package:smartshop/core/widgets/sighButton.dart';
import 'package:smartshop/features/loginScreen/presentation/views/widgets/default_text_form_field.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});
  static const routname = "forget-password";

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  late TextEditingController _textEditingController;
  final AutovalidateMode _autoval = AutovalidateMode.always;
  final GlobalKey<FormState> _key = GlobalKey();
  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    if (mounted) {
      _textEditingController.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          //title: const AppNameWidget(name: "Product details"),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 22,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Form(
              key: _key,
              autovalidateMode: _autoval,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Image.asset(
                      AppAssets.forgotPassword,
                      width: 250,
                      height: 250,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Forget Password",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Please enter the email address you`d like your password reset information sent to",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DefaultCustomFormField(
                    textfieldcontroller: _textEditingController,
                    inputaction: TextInputAction.next,
                    inputtype: TextInputType.emailAddress,
                    hint: "youremail@gmail.com",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SignButton(
                    text: 'Request reset Link',
                    onPressed: () {},
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
