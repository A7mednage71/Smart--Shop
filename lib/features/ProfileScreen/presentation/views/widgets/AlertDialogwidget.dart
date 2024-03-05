import 'package:flutter/material.dart';
import 'package:smartshop/core/assets_manger/assets_manager.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Padding(
        padding:
            const EdgeInsets.only(bottom: 10, top: 10, left: 30, right: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              AppAssets.warning,
              height: 70,
              width: 70,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Confirm Logout",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "CANCEL",
                    style: TextStyle(fontSize: 20, color: Colors.lightBlue),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "OK",
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
