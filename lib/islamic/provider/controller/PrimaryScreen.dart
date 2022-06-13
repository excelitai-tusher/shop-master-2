import 'package:flutter/material.dart';

class PrimaryScreenState with ChangeNotifier{
  bool status=true;
  void setPrimaryState(bool bool){
    status=bool;
    notifyListeners();
  }
}