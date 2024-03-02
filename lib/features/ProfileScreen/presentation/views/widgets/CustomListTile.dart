import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    required this.image,
    required this.text,
    required this.fun,
    required this.icon,
  });

  final String image, text;
  final void Function()? fun;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: ListTile(
          leading: Image.asset(image),
          title: Text(text),
          trailing: IconButton(onPressed: fun, icon: Icon(icon))),
    );
  }
}