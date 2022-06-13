import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../core/model/categories_model.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({Key? key}) : super(key: key);
  final CarouselController? _carouselSlider = CarouselController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      width: MediaQuery.of(context).size.width,
      child:
    CarouselSlider.builder(

      itemCount: CategoryModel.list.length,
      options: CarouselOptions(
// scrollPhysics: NeverScrollableScrollPhysics(),
          viewportFraction:.2,
initialPage: 0,

//disableCenter: true,
//enableInfiniteScroll: true,
          // enlargeCenterPage: true,
          reverse: false,
          autoPlay: true,
          autoPlayAnimationDuration: Duration(
            milliseconds: 2000,
          ),
          height: MediaQuery.of(context).size.height
      ),
      carouselController: _carouselSlider,
    itemBuilder:
    (BuildContext context, int i, int pageViewIndex) {
      CategoryModel categoriData = CategoryModel.list[i];
      return GestureDetector(
        onTap: (){

        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
            margin: EdgeInsets.only(top: 4,bottom: 5,left: 10,right: 5),
              // height: 55,
              // width: 55,
              child: CircleAvatar(

                backgroundColor: Colors.white,
                radius: 40,
                backgroundImage: AssetImage(
                    categoriData.categoriesImageUrl.toString()),
              ),
              //   ,
              //color: Colors.deepOrangeAccent,
              decoration: BoxDecoration(
                color: Colors.white,

                // image: DecorationImage(
                //   image: AssetImage(
                //       categoriData.categoriesImageUrl.toString()),
                //   fit: BoxFit.cover,
                // ),
                //borderRadius: BorderRadius.circular(15),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(
                        0, 1), // changes position of shadow
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 2.5,
            // ),
            Center(
                child: Text(
                    categoriData.categoriesTitle.toString())),
        // SizedBox(
        //           height:8,
        //         ),
          ],
        ),
      );
    }  ),
      // ListView.separated
      //   (
      //   separatorBuilder: (context, index) {
      //     return SizedBox(
      //       width: 0,
      //     );
      //   },
      //   shrinkWrap: true,
      //   scrollDirection: Axis.horizontal,
      //   itemCount: CategoryModel.list.length,
      //   itemBuilder: (BuildContext context, i) {
      //     CategoryModel categoriData = CategoryModel.list[i];
      //     return Column(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.only(left: 8,top: 8.0,bottom: 8.0),
      //           child:
      //           Container(
      //             // height: 55,
      //             // width: 55,
      //             child:  CircleAvatar(
      //         backgroundColor: Colors.white,
      //         radius: 40,
      //         backgroundImage:AssetImage(
      //       categoriData.categoriesImageUrl.toString()),
      //       ),
      //     //   ,
      //             //color: Colors.deepOrangeAccent,
      //             decoration: BoxDecoration(
      //               color: Colors.white,
      //
      //               // image: DecorationImage(
      //               //   image: AssetImage(
      //               //       categoriData.categoriesImageUrl.toString()),
      //               //   fit: BoxFit.cover,
      //               // ),
      //               //borderRadius: BorderRadius.circular(15),
      //               shape: BoxShape.circle,
      //               boxShadow: [
      //                 BoxShadow(
      //                   color: Colors.grey.withOpacity(0.5),
      //                   spreadRadius: 1,
      //                   blurRadius: 3,
      //                   offset: Offset(
      //                       0, 1), // changes position of shadow
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           height: 4,
      //         ),
      //         Center(
      //             child: Text(
      //                 categoriData.categoriesTitle.toString())),
      //       ],
      //     );
      //   },
      // ),
    );
  }
}
