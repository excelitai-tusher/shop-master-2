import 'package:flutter/material.dart';
class PopularOffersModel with ChangeNotifier{
  String productName;
  String productImageUrl;
  String productTypes;
  String productPrice;

  PopularOffersModel({
    required this.productImageUrl,
    required this.productName,
    required this.productTypes,
    required this.productPrice,

  });

  static List<PopularOffersModel> list=[
    PopularOffersModel(
      productImageUrl: "assets/p1.png",
      productName: "Maggi Noodles (Family Pack)",
      productTypes: "2 packets",
      productPrice: "\$ 1000.0",

    ),
    PopularOffersModel(
      productImageUrl: "assets/p2.jpg",
      productName: "Maggi Noodles (Family Pack)",
      productTypes: "2 packets",
      productPrice: "\$ 1000.0",

    ),
    PopularOffersModel(
      productImageUrl: "assets/p3.png",
      productName: "Maggi Noodles (Family Pack)",
      productTypes: "2 packets",
      productPrice: "\$ 1000.0",

    ),
    PopularOffersModel(
      productImageUrl: "assets/p2.jpg",
      productName: "Maggi Noodles (Family Pack)",
      productTypes: "2 packets",
      productPrice: "\$ 1000.0",

    ),
    PopularOffersModel(
      productImageUrl: "assets/p2.jpg",
      productName: "Maggi Noodles (Family Pack)",
      productTypes: "2 packets",
      productPrice: "\$ 1000.0",

    ),
    PopularOffersModel(
      productImageUrl: "assets/p4.jpg",
      productName: "Maggi Noodles (Family Pack)",
      productTypes: "2 packets",
      productPrice: "\$ 1000.0",

    ),
  ];
}

class ButtonModel with ChangeNotifier{
  String productName;

  ButtonModel({
    required this.productName,
  });

  static List<ButtonModel> list=[
    ButtonModel(
      productName: "All",
    ),
    ButtonModel(
      productName: "Fruits",
    ),
    ButtonModel(
      productName: "Vegetables",
    ),
    ButtonModel(
      productName: "Dairy",
    ),
    ButtonModel(
      productName: "Meat",

    ),
    ButtonModel(
      productName: "Fish",

    ),
  ];
  void addList (String productName){
    list.add(ButtonModel(
      productName: productName,
    ));
    notifyListeners();
  }
}