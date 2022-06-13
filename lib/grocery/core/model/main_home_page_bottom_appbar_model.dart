import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class MainHomePageBottomAppBarModel {
  late final int index;
  late final IconData? icon;
  late final String? label;
  late final bool isBlank;
  MainHomePageBottomAppBarModel({required this.index, this.label,this.icon,this.isBlank=false});

  static List<MainHomePageBottomAppBarModel> list = [
    MainHomePageBottomAppBarModel(
      index: 0,
      label: 'Home',
      icon: FontAwesomeIcons.home,
    ),
    MainHomePageBottomAppBarModel(
      index: 1,
      label: 'Favourite',
      icon: FontAwesomeIcons.heart,
    ),
    // MainHomePageBottomAppBarModel(
    //   index: -1,
    //   isBlank: true,
    // ),
    MainHomePageBottomAppBarModel(
      index: 2,
      label: 'History',
      icon: FontAwesomeIcons.list,
    ),
    MainHomePageBottomAppBarModel(
      index: 3,
      label: 'profile',
      icon: FontAwesomeIcons.userCircle,
    ),
  ];
}
