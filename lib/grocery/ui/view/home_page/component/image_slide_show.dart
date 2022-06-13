import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:shimmer/shimmer.dart';

class ImageSlideShowCustom extends StatefulWidget {
  const ImageSlideShowCustom({Key? key}) : super(key: key);

  @override
  State<ImageSlideShowCustom> createState() => _ImageSlideShowCustomState();
}

class _ImageSlideShowCustomState extends State<ImageSlideShowCustom> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      width: double.infinity,
      height: 120,
      initialPage: 0,
      indicatorColor: Color(0xffFF6000),
      indicatorBackgroundColor: Colors.grey,
      onPageChanged: (value) {
        debugPrint('Page changed : $value');
      },
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/goffers.png"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(0),
            ),
            // child: Padding(
            //   padding: const EdgeInsets.symmetric(
            //       horizontal: 20, vertical: 20),
            //   child: Stack(
            //     children: [
            //       Text(
            //         "Fashion\nLover\nCollection",
            //         style: TextStyle(
            //             fontSize: 20,
            //             color: Colors.white,
            //             fontWeight: FontWeight.bold),
            //       ),
            //     ],
            //   ),
            // ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/goffers.png"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(0),
            ),
            // child: Padding(
            //   padding: const EdgeInsets.symmetric(
            //       horizontal: 20, vertical: 20),
            //   child: Stack(
            //     children: [
            //       Text(
            //         "Fashion\nLover\nCollection",
            //         style: TextStyle(
            //             fontSize: 20,
            //             color: Colors.white,
            //             fontWeight: FontWeight.bold),
            //       ),
            //     ],
            //   ),
            // ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/goffers.png"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(0),
            ),
            // child: Padding(
            //   padding: const EdgeInsets.symmetric(
            //       horizontal: 20, vertical: 20),
            //   child: Stack(
            //     children: [
            //       Text(
            //         "Fashion\nLover\nCollection",
            //         style: TextStyle(
            //             fontSize: 20,
            //             color: Colors.white,
            //             fontWeight: FontWeight.bold),
            //       ),
            //     ],
            //   ),
            // ),
          ),
        ),
      ],
    );
  }
}
