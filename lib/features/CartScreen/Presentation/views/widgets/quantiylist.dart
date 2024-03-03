import 'package:flutter/material.dart';

class QuantityList extends StatefulWidget {
  const QuantityList({super.key});

  @override
  State<QuantityList> createState() => _QuantityListState();
}

class _QuantityListState extends State<QuantityList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 5,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.grey),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Center(
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${index + 1}",
                      style: const TextStyle(fontSize: 25),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
