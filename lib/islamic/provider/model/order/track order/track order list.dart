import 'package:flutter/material.dart';

class TrackModel1 with ChangeNotifier {
  final String title;
  final String subtitle;
  final String image;
  final String time;

  TrackModel1(
      {
        required this.title,
        required this.subtitle,
        required this.image,
        required this.time,
      });
}