import 'package:flutter/cupertino.dart';

class BundleOffersModel3 with ChangeNotifier{
  String? productName;
  String? productImageUrl;
  String? productTypes;
  String? productPrice;


  BundleOffersModel3({this.productImageUrl, this.productName, this.productTypes, this.productPrice,});

  static List<BundleOffersModel3> list=[
    BundleOffersModel3(
      productImageUrl: "images/Yellow maggi.png",
      productName: "Maggi Noodles",
      productTypes: "2 Packet",
      productPrice: "\$ 1000.0",
    ),
    BundleOffersModel3(
      productImageUrl: "images/white1 packet.png",
      productName: "Maggi Noodles",
      productTypes: "2 Packet",
      productPrice: "\$ 1000.0",
    ),
    BundleOffersModel3(
      productImageUrl: "images/Pepsi.png",
      productName: "Maggi Noodles",
      productTypes: "2 Packet",
      productPrice: "\$ 1000.0",
    ),
    BundleOffersModel3(
      productImageUrl: "images/Blue botol.png",
      productName: "Maggi Noodles",
      productTypes: "2 Packet",
      productPrice: "\$ 1000.0",
    ),
    BundleOffersModel3(
      productImageUrl: "images/Red packet.png",
      productName: "Maggi Noodles",
      productTypes: "2 Packet",
      productPrice: "\$ 1000.0",
    ),
    BundleOffersModel3(
      productImageUrl: "images/White Botol.png",
      productName: "Maggi Noodles",
      productTypes: "2 Packet",
      productPrice: "\$ 1000.0",
    ),
  ];
  List<BundleOffersModel3> get getList{
    return list;
  }

  void setProductDetailData({required String productName, required String productImageUrl, required String productPrice, required String productTypes}) {}

}
