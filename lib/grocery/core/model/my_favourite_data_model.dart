import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'BundleOffersModel.dart';

class MyFavouriteDataModel with ChangeNotifier{

  String? productImageUrl;
  String? productName;
  String? productUnit;
  String? productPrice;

  MyFavouriteDataModel({this.productImageUrl,this.productName,this.productUnit,this.productPrice,});

  static List<MyFavouriteDataModel> list=[];

  List get getMyFavouriteList{
    return list;
  }

  void deleteFavouriteList(int index, {BuildContext? context}){
    final bundleOffersModel = Provider.of<BundleOffersModel>(context!,listen: false);
    //bundleOffersModel.setFavourite(index);
    // if(bundleOffersModel.getList.where((element) => (element["productName"].))){
    //   bundleOffersModel.setFavourite(index);
    // }
    //List bundleList=BundleOffersModel.list;
    //print(bundleList.singleWhere((element) => .toString()==list[index].productName.toString()));
    //print(data.toString());
    list.removeAt(index);
    notifyListeners();
  }

  void addToFavouriteList({int? index,String? productImageUrl,String? productName,String? productUnit,String? productPrice,bool? isFavourite}){
    if(isFavourite!){
      list.add(MyFavouriteDataModel(
        productImageUrl: productImageUrl,
        productName: productName,
        productUnit: productUnit,
        productPrice: productPrice,
      )
      );
    }else{
      //deleteFavouriteList(index!);
      list.removeAt(index!);
    }
    notifyListeners();
  }

}