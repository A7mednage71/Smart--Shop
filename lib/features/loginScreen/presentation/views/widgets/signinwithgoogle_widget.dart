import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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
      icon: const Icon(
        Ionicons.logo_google,
        color: Colors.red,
      ),
      label: const Text(
        "Sign in with google",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
