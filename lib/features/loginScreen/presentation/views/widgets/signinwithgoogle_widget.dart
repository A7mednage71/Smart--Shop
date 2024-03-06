import 'package:flutter/material.dart';

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
