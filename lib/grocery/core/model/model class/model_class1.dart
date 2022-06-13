import 'package:flutter/cupertino.dart';
class BundleOffersModel2 with ChangeNotifier{
  String? productName;
  String? productImageUrl;
  String? productTypes;
  String? productPrice;

  BundleOffersModel2({
    this.productImageUrl,
    this.productName,
    this.productTypes,
    this.productPrice,

  });

  static List<BundleOffersModel2> list=[
    BundleOffersModel2(
      productImageUrl: "images/Red packet.png",
      productName: "Maggi Noodles",
      productTypes: "2 Packet",
      productPrice: "\$ 1000.0",
    ),
    BundleOffersModel2(
      productImageUrl: "images/Fruits bag.png",
      productName: "Maggi Noodles",
      productTypes: "2 Packet",
      productPrice: "\$ 1000.0",
    ),
    BundleOffersModel2(
      productImageUrl: "images/white1 packet.png",
      productName: "Maggi Noodles",
      productTypes: "2 Packet",
      productPrice: "\$ 1000.0",
    ),
    BundleOffersModel2(
      productImageUrl: "images/vegetable many.png",
      productName: "Maggi Noodles",
      productTypes: "2 Packet",
      productPrice: "\$ 1000.0",
    ),
    BundleOffersModel2(
      productImageUrl: "images/many pans.png",
      productName: "Maggi Noodles",
      productTypes: "2 Packet",
      productPrice: "\$ 1000.0",
    ),
    BundleOffersModel2(
      productImageUrl: "images/Yellow maggi.png",
      productName: "Maggi Noodles",
      productTypes: "2 Packet",
      productPrice: "\$ 1000.0",
    ),
  ];
  List<BundleOffersModel2> get getList{
    return list;
  }

  void setProductDetailData({required String productName, required String productImageUrl, required String productPrice}) {}
}



