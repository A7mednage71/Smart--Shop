import 'package:flutter/material.dart';

class BottomSheetCart extends StatelessWidget {
  const BottomSheetCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      height: 70,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total (3 products / 3 items)"),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "\$394.99",
                  style: TextStyle(
                      fontStyle: FontStyle.italic, color: Colors.blue),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Checkout"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
