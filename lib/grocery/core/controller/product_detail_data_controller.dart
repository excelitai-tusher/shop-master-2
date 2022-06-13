import 'package:flutter/cupertino.dart';

class ProductDetailDataController with ChangeNotifier {
  String? productName;
  int quantity=1;
  String? unit;
  String? productPrice;
  String? productImageUrl;

  void setProductDetailData({
    String? productName,
    String? unit,
    String? productPrice,
    String? productImageUrl,
  }) {
    this.productName=productName;
    this.unit=unit;
    this.productPrice=productPrice;
    this.productImageUrl=productImageUrl;
    notifyListeners();
  }

  void setAddQuantity(){
    quantity++;
    notifyListeners();
  }
  void setMinusQuantity(){
    quantity--;
    notifyListeners();
  }
}
