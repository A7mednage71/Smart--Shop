import 'package:flutter/material.dart';
import 'package:smartshop/core/assets_manger/assets_manager.dart';

class CustomEmptyDataWidget extends StatelessWidget {
  const CustomEmptyDataWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.buttomtext});
  final String title;
  final String subtitle;
  final String buttomtext;
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenhight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: screenhight * 0.12,
          ),
          Center(
            child: Image.asset(
              AppAssets.shoppingCart,
              width: screenwidth * 0.7,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Whoops!",
            style: TextStyle(
              color: Colors.red,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(subtitle),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 80,
            width: 170,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                buttomtext,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
