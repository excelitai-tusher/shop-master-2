import 'package:flutter/cupertino.dart';

class BundleOffersModel with ChangeNotifier{
  String? productName;
  String? productImageUrl;
  String? productTypes;
  String? productPrice;
  String? productUnit;
  bool? favourite;
  BundleOffersModel({
    this.productImageUrl,
    this.productName,
    this.productTypes,
    this.productPrice,
    this.productUnit,
    this.favourite,
});

  static List<BundleOffersModel> list=[
    BundleOffersModel(
      productImageUrl: "images/grocery/p3.png",
      productName: "Product Name",
      productTypes: "Type1,Type1,Type1,Type1",
      productPrice: "\$ 1000.0",
      productUnit: "productUnit",
      favourite: false,
    ),
    BundleOffersModel(
      productImageUrl: "images/grocery/p3.png",
      productName: "Product Name1",
      productTypes: "Type1,Type1,Type1,Type1",
      productPrice: "\$ 1000.0",
      productUnit: "productUnit",
      favourite: false,
    ),
    BundleOffersModel(
      productImageUrl: "images/grocery/p1.png",
      productName: "Product Name2",
      productTypes: "Type1,Type1,Type1,Type1",
      productPrice: "\$ 1000.0",
      productUnit: "productUnit",
      favourite: false,
    ),
    BundleOffersModel(
      productImageUrl: "images/grocery/p2.jpg",
      productName: "Product Name3",
      productTypes: "Type1,Type1,Type1,Type1",
      productPrice: "\$ 1000.0",
      productUnit: "productUnit",
      favourite: false,
    ),
    BundleOffersModel(
      productImageUrl: "images/grocery/p4.jpg",
      productName: "Product Name4",
      productTypes: "Type1,Type1,Type1,Type1",
      productPrice: "\$ 1000.0",
      productUnit: "productUnit",
      favourite: false,
    ),
    BundleOffersModel(
      productImageUrl: "images/grocery/p5.jpg",
      productName: "Product Name5",
      productTypes: "Type1,Type1,Type1,Type1",
      productPrice: "\$ 1000.0",
      productUnit: "productUnit",
      favourite: false,
    ),
  ];

  void setFavourite(int index){
    // isFavourite=!isFavourite;
    list[index].favourite=!list[index].favourite!;
    notifyListeners();
  }
  List<BundleOffersModel> get getList{
    return list;
  }

}