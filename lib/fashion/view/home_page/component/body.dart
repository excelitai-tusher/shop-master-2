import 'package:bpp_shop/fashion/controller/app_bar_controler.dart';
import 'package:bpp_shop/fashion/controller/secondary_page_controller.dart';
import 'package:bpp_shop/fashion/view/home_page/component/best_selling_product.dart';
import 'package:bpp_shop/fashion/view/home_page/component/image_slide_show_custom.dart';
import 'package:bpp_shop/fashion/view/home_page/component/most_populler_HeadLine.dart';
import 'package:bpp_shop/fashion/view/home_page/component/most_populler_list_view_builder.dart';
import 'package:bpp_shop/fashion/view/home_page/component/new_arrivals_headline_button.dart';
import 'package:bpp_shop/fashion/view/home_page/component/new_arrivals_list_view.dart';
import 'package:bpp_shop/fashion/view/home_page/component/top_category_listview_builder.dart';
import 'package:bpp_shop/fashion/view/home_page/component/trending.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:provider/provider.dart';
import 'hot_deals.dart';
import 'best_selling_banner.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  // final CarouselController _controller = CarouselController();
  // //HotDealsModel list=HotDealsModel();
  // TabController? _controllerTab;
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   _controllerTab = TabController(length: 2, vsync: this);
  //   super.initState();
  // }
  //
  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   _controllerTab!.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Stack(
              children: [
                Text(
                  "All Product",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFFE602),
                  ),
                ),
                Text(
                  "Megastore",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFF6000),
                  ),
                ),
                Text(
                  "Save Up to 20%Off",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    //color: Color(0xff444444),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    alignment: Alignment.center,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Shop Now',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.5),
                    color: Colors.grey.shade200,
                    image: DecorationImage(
                      image: NetworkImage("https://cdn.pixabay.com/photo/2017/09/18/19/16/fashion-2762865_960_720.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .45,
                          decoration: new BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0.5),
                            color: Colors.grey.shade200,
                            image: new DecorationImage(
                              image: NetworkImage("https://cdn.pixabay.com/photo/2017/09/18/19/16/fashion-2762865_960_720.jpg"),
                              fit: BoxFit.fill,
                            ),
                          )),
                    ],

                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * .1,
                      width: MediaQuery.of(context).size.width * .45,
                      decoration: new BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0.5),
                        color: Colors.grey.shade200,
                        image: new DecorationImage(
                          image: NetworkImage("https://cdn.pixabay.com/photo/2017/09/18/19/16/fashion-2762865_960_720.jpg"),
                          fit: BoxFit.fill,
                        ),
                      )),
                ],
              ),
            ),
            // Stack(
            //   children: [
            //     Image.network("https://cdn.pixabay.com/photo/2017/09/18/19/16/fashion-2762865_960_720.jpg"),
            //     Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            //       child: Container(
            //         alignment: Alignment.topLeft,
            //         height: MediaQuery.of(context).size.height*.2,
            //         // height: MediaQuery.of(context).size.height * .13,
            //         //margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            //         child: SingleChildScrollView(
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Text(
            //                 "All Product",
            //                 style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   color: Color(0xffFFE602),
            //                 ),
            //               ),
            //               Text(
            //                 "Megastore",
            //                 style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   color: Color(0xffFF6000),
            //                 ),
            //               ),
            //               Text(
            //                 "Save Up to 20%Off",
            //                 style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   color: Colors.white,
            //                   //color: Color(0xff444444),
            //                 ),
            //               ),
            //               ElevatedButton(
            //                 style: ElevatedButton.styleFrom(
            //                   alignment: Alignment.center,
            //                 ),
            //                 onPressed: () {},
            //                 child: Text(
            //                   'Shop Now',
            //                   style: TextStyle(color: Colors.white, fontSize: 12),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(right: 1, ),
            //   child: Container(
            //     height: MediaQuery.of(context).size.height*.1,
            //     width: MediaQuery.of(context).size.width,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Stack(
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.symmetric(horizontal: 30),
            //               child: Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Text(
            //                     "Smart Glasses",
            //                     style: TextStyle(
            //                       fontWeight: FontWeight.bold,
            //                       color: Color(0xffFFA800),
            //                     ),
            //                   ),
            //                   Text(
            //                     "B E S T  C H O I C E",
            //                     style: TextStyle(
            //                       fontWeight: FontWeight.bold,
            //                       color: Color(0xffFFFFFF),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //              Container(
            //               height: MediaQuery.of(context).size.height * .1,
            //               width: MediaQuery.of(context).size.width * .50,
            //               decoration: BoxDecoration(
            //                 border: Border.all(color: Colors.grey, width: 0.5),
            //                 color: Colors.grey.shade200,
            //                 image: new DecorationImage(
            //                   image: NetworkImage("https://cdn.pixabay.com/photo/2017/09/18/19/16/fashion-2762865_960_720.jpg"),
            //                   fit: BoxFit.fill,
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //         Stack(
            //           children: [
            //             Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   "Smart Glasses",
            //                   style: TextStyle(
            //                     fontWeight: FontWeight.bold,
            //                     color: Color(0xffFFA800),
            //                   ),
            //                 ),
            //                 Text(
            //                   "B E S T  C H O I C E",
            //                   style: TextStyle(
            //                     fontWeight: FontWeight.bold,
            //                     color: Color(0xffFFFFFF),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             Container(
            //                 height: MediaQuery.of(context).size.height * .1,
            //                 width: MediaQuery.of(context).size.width * .50,
            //                 decoration: new BoxDecoration(
            //                   border: Border.all(color: Colors.grey, width: 0.5),
            //                   color: Colors.grey.shade200,
            //                   image: new DecorationImage(
            //                     image: NetworkImage("https://cdn.pixabay.com/photo/2017/09/18/19/16/fashion-2762865_960_720.jpg"),
            //                     fit: BoxFit.fill,
            //                   ),
            //                 )),
            //           ],
            //
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(height: 5,),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(left: 35, right: 35),
            //       child: Stack(
            //         children: [
            //           Image(
            //               image: AssetImage("assets/fashion/Fashion product.png")),
            //           Container(
            //             height: MediaQuery.of(context).size.height * .1,
            //             margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   "Smart Glasses",
            //                   style: TextStyle(
            //                     fontWeight: FontWeight.bold,
            //                     color: Color(0xffFFA800),
            //                   ),
            //                 ),
            //                 Text(
            //                   "B E S T  C H O I C E",
            //                   style: TextStyle(
            //                     fontWeight: FontWeight.bold,
            //                     color: Color(0xffFFFFFF),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(left: 35, right: 35),
            //       child: Stack(
            //         children: [
            //           Image(
            //               image: AssetImage("assets/fashion/Fashion product.png")),
            //           Container(
            //             height: MediaQuery.of(context).size.height * .1,
            //             margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   "Smart Glasses",
            //                   style: TextStyle(
            //                     fontWeight: FontWeight.bold,
            //                     color: Color(0xffFFA800),
            //                   ),
            //                 ),
            //                 Text(
            //                   "B E S T  C H O I C E",
            //                   style: TextStyle(
            //                     fontWeight: FontWeight.bold,
            //                     color: Color(0xffFFFFFF),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),

            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Categories",
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  GestureDetector(
                    onTap: () {
                      final appBar = Provider.of<PrimaryScreenState>(context,
                          listen: false);
                      appBar.setPrimaryState(false);
                      final view =
                          Provider.of<SecondaryPage>(context, listen: false);
                      view.setSecondaryPage(1);
                    },
                    child:
                        Text("View All", style: TextStyle(fontSize: 13.sp)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TopCategoryListviewBuilder(),
            ImageSlideShowCustom(),

            ///
            ///
            /// Most populler
            ///
            ///
            MostPopullerHeadLine(),
            MostPopullerListViewBuilder(),

            ///
            ///
            /// Most populler
            ///
            ///
            SizedBox(
              height: 20.h,
            ),

            ///
            ///
            /// New Arrivals
            ///
            ///
            NewArrivalsHeadLineButton(),
            NewArrivalsListView(),

            ///
            ///
            /// New Arrivals
            ///
            ///
            SizedBox(
              height: 40.h,
            ),

            ///
            ///
            ///
            ///Special Offers
            ///
            ///
            ///
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/offers.png"),
                      fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 30.h,
            ),

            ///
            ///
            ///
            ///Offers banner
            ///
            ///
            ///
            BestSellingBanner(),
            SizedBox(
              height: 20.h,
            ),

            ///
            ///
            ///
            ///Best Selling Products
            ///
            ///
            ///
            BestSellingProduct(),

            ///
            ///
            ///
            ///Hot Deals
            ///
            ///
            SizedBox(
              height: 20.h,
            ),
            HotDeals(),

            ///
            ///
            /// Trending
            ///
            ///
            Trending(),
            Divider(),
          ],
        ),
      ),
    );

  }

  // final List<Widget> imageSliders = imgList
  //     .map((item) => Container(
  //           margin: EdgeInsets.all(5.0),
  //           child: Column(
  //             children: <Widget>[
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   CircleAvatar(
  //                     radius: 10,
  //                     backgroundColor: Colors.grey,
  //                     backgroundImage: AssetImage(
  //                       item.toString(),
  //                     ),
  //                   ),
  //                   CircleAvatar(
  //                     radius: 10,
  //                     backgroundColor: Colors.grey,
  //                     backgroundImage: AssetImage(
  //                       item.toString(),
  //                     ),
  //                   ),
  //                   CircleAvatar(
  //                     radius: 10,
  //                     backgroundColor: Colors.grey,
  //                     backgroundImage: AssetImage(
  //                       item.toString(),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               Text("Hero Thriller 160R"),
  //               Image.asset(item.toString(), fit: BoxFit.cover, width: 1000.0),
  //               Text("Hurry Up!"),
  //               Text("Offer ends in:"),
  //               //   Image.asset(item.toString(), fit: BoxFit.cover, width: 1000.0),
  //               //   Positioned(
  //               //     bottom: 0.0,
  //               //     left: 0.0,
  //               //     right: 0.0,
  //               //     child: Container(
  //               //       decoration: BoxDecoration(
  //               //         gradient: LinearGradient(
  //               //           colors: [
  //               //             Color.fromARGB(200, 0, 0, 0),
  //               //             Color.fromARGB(0, 0, 0, 0)
  //               //           ],
  //               //           begin: Alignment.bottomCenter,
  //               //           end: Alignment.topCenter,
  //               //         ),
  //               //       ),
  //               //       padding: EdgeInsets.symmetric(
  //               //           vertical: 10.0, horizontal: 20.0),
  //               //       child: Text(
  //               //         'No. ${imgList.indexOf(item)} image',
  //               //         style: TextStyle(
  //               //           color: Colors.white,
  //               //           fontSize: 20.0,
  //               //           fontWeight: FontWeight.bold,
  //               //         ),
  //               //       ),
  //               //     ),
  //               //   ),
  //             ],
  //           ),
  //         ))
  //     .toList();
}
