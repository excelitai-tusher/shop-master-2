import 'package:bpp_shop/grocery/ui/view/home_page/component/bundle_offers_see_all.dart';
import 'package:bpp_shop/grocery/ui/view/home_page/component/deal_of_day_see_all.dart';
import 'package:bpp_shop/grocery/ui/view/home_page/component/popular_see_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../ui/view/Profile_1/profile1.dart';
import '../../ui/view/cart_page/cart_page.dart';
import '../../ui/view/category page/category.dart';
import '../../ui/view/category page/sub_category_pages/vegetables_category.dart';
import '../../ui/view/favourite/favourite.dart';
import '../../ui/view/home_page/component/home_body.dart';
import '../../ui/view/home_page/home_page_main.dart';
import '../../ui/view/order_history/order history.dart';
import '../../ui/view/order_history/order_summary.dart';
import '../../ui/view/search/search 1.dart';

class AppStateController with ChangeNotifier{

  bool homePageAppBarView=true;
  int primaryCurrentIndex=0;
  int secondaryCurrentIndex=0;
  int tertiaryCurrentIndex=0;

  bool primaryPageState=true;
  bool secondaryPageState=true;
  bool tertiaryPageState=true;

  void setPrimaryPageState(bool data){
    if(data){
      primaryPageState=data;
      secondaryPageState=!data;
      tertiaryPageState=!data;
    }
    notifyListeners();
  }

  void setSecondaryPageState(bool data){
    if(data){
      primaryPageState=!data;
      secondaryPageState=data;
      tertiaryPageState=!data;
    }
    notifyListeners();
  }

  void setTertiaryPageState(bool data){
    if(data){
      primaryPageState=!data;
      secondaryPageState=!data;
      tertiaryPageState=data;
    }
    notifyListeners();
  }

  void setAppBarViewState(bool data){
    homePageAppBarView=data;
    notifyListeners();
  }



  void setPrimaryCurrentIndex(int dataInt){
    primaryCurrentIndex=dataInt;
    notifyListeners();
  }
  void setSecondaryCurrentIndex(int dataInt){
    secondaryCurrentIndex=dataInt;
    notifyListeners();
  }
  //tertiaryCurrentIndex
  void setTertiaryCurrentIndex(int dataInt){
    tertiaryCurrentIndex=dataInt;
    notifyListeners();
  }



  Widget appBodyState({BuildContext? context,int? currentIndex}){
    if(primaryPageState){
      return primaryBody(context: context);
    }
    if(secondaryPageState){
      return secondaryBody(context: context);
    }
    if(tertiaryPageState){
      return tertiaryBody(context: context);
    }
    else
      return Container();
  }

  Widget primaryBody({BuildContext? context,int? currentIndex}) {
   // final stateController = Provider.of<StateController>(context!);
    switch (primaryCurrentIndex) {
      case 0:
        return HomeBody();
      case 1:
        return Favourite();
      case 2:
        return OrderHistory();
      case 3:
        return Profile1();
      case 4:
        return CartPage();
      default:
        return GroceryHomePage();
    }
  }
  Widget secondaryBody({BuildContext? context}){
    switch (secondaryCurrentIndex){
      case 1:
        return AllCategory();
      case 2:
        return OrderSummary();
      case 3:
        return Search1();
      case 4:
        return BundleOfferSeeAll();
      case 5:
        return PopularSeeAll();
      case 6:
       // return DealsOfTheDaySeeAll();
      default:
        return Container();
    }
  }

  Widget tertiaryBody({BuildContext? context}){
    switch (tertiaryCurrentIndex){
      case 1:
        return Vegetables();
      default:
        return Container();
    }
  }
}