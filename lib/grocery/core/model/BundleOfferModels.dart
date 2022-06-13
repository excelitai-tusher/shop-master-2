import 'package:flutter/cupertino.dart';

class BundleOffersModel1 with ChangeNotifier{
  String productName;
  String productImageUrl;
  String productTypes;
  String productPrice;
  String productUnit;
  bool favourite;
  BundleOffersModel1({
    required this.productImageUrl,
    required this.productName,
    required this.productTypes,
    required this.productPrice,
    required this.productUnit,
    required this.favourite,
  });

  static List<BundleOffersModel1> list=[
    BundleOffersModel1(
      productImageUrl: "assets/p3.png",
      productName: "Product Name",
      productTypes: "Type1,Type1,Type1,Type1",
      productPrice: "\$ 1000.0",
      productUnit: "productUnit",
      favourite: false,
    ),
    BundleOffersModel1(
      productImageUrl: "assets/p3.png",
      productName: "Product Name1",
      productTypes: "Type1,Type1,Type1,Type1",
      productPrice: "\$ 1000.0",
      productUnit: "productUnit",
      favourite: false,
    ),
    BundleOffersModel1(
      productImageUrl: "assets/p1.png",
      productName: "Product Name2",
      productTypes: "Type1,Type1,Type1,Type1",
      productPrice: "\$ 1000.0",
      productUnit: "productUnit",
      favourite: false,
    ),
    BundleOffersModel1(
      productImageUrl: "assets/p2.jpg",
      productName: "Product Name3",
      productTypes: "Type1,Type1,Type1,Type1",
      productPrice: "\$ 1000.0",
      productUnit: "productUnit",
      favourite: false,
    ),
    BundleOffersModel1(
      productImageUrl: "assets/p4.jpg",
      productName: "Product Name4",
      productTypes: "Type1,Type1,Type1,Type1",
      productPrice: "\$ 1000.0",
      productUnit: "productUnit",
      favourite: false,
    ),
    BundleOffersModel1(
      productImageUrl: "assets/p5.jpg",
      productName: "Product Name5",
      productTypes: "Type1,Type1,Type1,Type1",
      productPrice: "\$ 1000.0",
      productUnit: "productUnit",
      favourite: false,
    ),
  ];

  void setFavourite(int index){
    // isFavourite=!isFavourite;
    list[index].favourite=!list[index].favourite;
    notifyListeners();
  }
  List<BundleOffersModel1> get getList{
    return list;
  }

  void setProductDetailData({required String productName, required String productImageUrl, required String productPrice}) {}

}