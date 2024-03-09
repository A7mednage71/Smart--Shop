import 'package:flutter/material.dart';
import 'package:smartshop/features/SearchScreen/presentation/views/SearchScreen.dart';

class Categoryitem extends StatelessWidget {
  const Categoryitem({super.key, required this.image, required this.name});
  final String image, name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          Navigator.of(context)
              .pushNamed(SearchScreen.routname, arguments: name);
        },
        child: Column(
          children: [
            Image.asset(
              image,
              height: 50,
              width: 50,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
