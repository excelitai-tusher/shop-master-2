
import 'package:flutter/material.dart';

class Product_search with ChangeNotifier {
  final String id;
  final String category;
  final String title;
  final String image;
  final int price;
  final double quantity;
  final String quantityType;
  final String detail;
  final int prePrice;
  bool? isFavorite;
  Product_search(
      {required this.id,
        required this.title,
        required this.image,
        required   this.category,
        required this.price,
        required this.quantity,
        required this.quantityType,
        required this.detail,
        required this.prePrice,
        this.isFavorite});
}