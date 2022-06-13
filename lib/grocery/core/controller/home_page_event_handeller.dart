import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'app_state_controller.dart';

class HomePageEventHandler{

  void seeAllOnPressedEventListener({BuildContext? context,String? leadingTitle}){
    final pageState=Provider.of<AppStateController>(context!,listen: false);

    if(leadingTitle=="Bundle Offers"){
      pageState.setAppBarViewState(false);
      pageState.setSecondaryPageState(true);
      pageState.setSecondaryCurrentIndex(4);
    }
    if(leadingTitle=="Categories"){
      //final pageState=Provider.of<AppStateController>(context!,listen: false);
      pageState.setAppBarViewState(false);
      pageState.setSecondaryPageState(true);
      pageState.setSecondaryCurrentIndex(1);
    }
    if(leadingTitle=="Popular"){
      //final pageState=Provider.of<AppStateController>(context!,listen: false);
      pageState.setAppBarViewState(false);
      pageState.setSecondaryPageState(true);
      pageState.setSecondaryCurrentIndex(5);
    }
    if(leadingTitle=="Deals Of The Day"){
      //final pageState=Provider.of<AppStateController>(context!,listen: false);
      pageState.setAppBarViewState(false);
      pageState.setSecondaryPageState(true);
      pageState.setSecondaryCurrentIndex(6);
    }
    // else{
    //   null;
    // }
//leadingTitle=="Categories"?pageState.setSecondaryCurrentIndex(1):leadingTitle=="Bundle Offers"?pageState.setSecondaryCurrentIndex(4):null;


  }

  void seeAllOnPressedEventListenerBundleOffer({BuildContext? context,String? leadingTitle}){
    final pageState=Provider.of<AppStateController>(context!,listen: false);
    if(leadingTitle=="Categories"){
      //final pageState=Provider.of<AppStateController>(context!,listen: false);
      pageState.setAppBarViewState(false);
      pageState.setSecondaryPageState(true);
      pageState.setSecondaryCurrentIndex(4);
    }
  }
}

class CustomScafoldKey with ChangeNotifier{
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
}