import 'package:flutter/cupertino.dart';

class CartModels with ChangeNotifier{
  String? imageUrl;
  String? productName;
  String? productPrice;
  int? count;
  CartModels({this.imageUrl,this.productName,this.productPrice,this.count});

  static List<CartModels> list=[
    // CartModel(
    //   imageUrl: "images/grocery/p3.png",
    //   productName: "Product 1",
    //   productPrice: "23523",
    //   count: 1,
    // ),
    // CartModel(
    //   imageUrl: "images/grocery/p1.png",
    //   productName: "Product 2",
    //   productPrice: "23523",
    //   count: 1,
    //
    // ),
    // CartModel(
    //   imageUrl: "images/grocery/p4.jpg",
    //   productName: "Product 1",
    //   productPrice: "23523",
    //   count: 1,
    // ),
  ];

  int get itemCount {
    return list.length;
  }

  int? getcount(int index){
    return list[index].count;
  }
  void addCount(int index){
    list[index].count=list[index].count!.toInt()+1;
    notifyListeners();
  }

  void subCount(int index){
    list[index].count=list[index].count!.toInt()-1;
    notifyListeners();
  }
  void deleteList(int index){
    list.removeAt(index);
    notifyListeners();
  }
  void addCartList({String? imageUrl,String? productName,String? productPrice,int? count,}){
    list.add(CartModels(
      imageUrl: imageUrl,
      productName: productName,
      productPrice: productPrice,
      count: count,
    ),);
    notifyListeners();
  }

}