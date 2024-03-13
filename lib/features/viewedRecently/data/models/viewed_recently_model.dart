import 'package:flutter/material.dart';

class ViewedRecentlyModel with ChangeNotifier {
  final String id;
  final String productid;

  ViewedRecentlyModel({
    required this.id,
    required this.productid,
  });
}
