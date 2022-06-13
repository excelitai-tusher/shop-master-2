
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderHistoryEventHandler with ChangeNotifier{
  bool activeButton=true;
  bool pastOrderButton=false;

  void onActivePress(bool data){

    activeButton=data;
    pastOrderButton=!data;
    notifyListeners();

  }

  void onPastOrderPress(bool data){

    activeButton=!data;
    pastOrderButton=data;
    notifyListeners();

  }
}