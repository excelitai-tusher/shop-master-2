import 'package:bpp_shop/models/islamic/islamic_home_page.dart';
import 'package:bpp_shop/bpp/provider/cart_provider.dart';
import 'package:bpp_shop/bpp/screen/cart/cart_screen.dart';
import 'package:bpp_shop/models/islamic/latest_discount_model.dart';
import 'package:bpp_shop/view_model/islamic/http_latest_discount.dart';
import 'package:bpp_shop/view_model/islamic/http_request.dart';
import 'package:bpp_shop/islamic/component/badge.dart';
import 'package:bpp_shop/islamic/component/dropdown.dart';
import 'package:bpp_shop/islamic/component/filter.dart';
import 'package:bpp_shop/islamic/screen/wish_list/wishlist_screen.dart';
import 'package:bpp_shop/islamic/widget/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../bpp/screen/navbar/bottom_app_bar.dart';
import '../../../bpp/screen/navbar/history_screen/history_screen.dart';
import '../../../bpp/screen/navbar/home_screen.dart';
import '../../../bpp/screen/navbar/profile_screen.dart';


class LatestDiscountShopNow extends StatefulWidget {
  const LatestDiscountShopNow({Key? key}) : super(key: key);

  @override
  State<LatestDiscountShopNow> createState() => _LatestDiscountShopNowState();
}

class _LatestDiscountShopNowState extends State<LatestDiscountShopNow> {
//  HttpRequests _httpRequests = HttpRequests();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            title: const Text(
              "Latest Discount",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: const [
              Icon(Icons.search, color: Colors.white),
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.notifications_outlined, color: Colors.white),
              ),
            ],
          ),
          //  bottomNavigationBar: Bottom_NavBar() ,
          body: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                Container(
                  height: 35,
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.filter_alt_outlined,
                              color: Colors.grey,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Filter()));
                                },
                                child: Text(
                                  'Filters',
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.height,
                              color: Colors.grey,
                            ),
                            MyDropDown(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                height: MediaQuery.of(context).size.height * .68,
                  width: MediaQuery.of(context).size.width,
                  child: FutureBuilder(
                      future: getlatestDiscountData(), //getPopularData(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          List<Latestdiscountproduct> get = snapshot.data ?? <Latestdiscountproduct>[];
                          return Container(
                            height:get.length<3?MediaQuery.of(context).size.width/2+20:get.length>=3?(MediaQuery.of(context).size.width/2+25)*2:0,
                            child: GridView.builder(
                              itemCount: get.length,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 2 / 2.5,
                                  crossAxisSpacing: 15,
                                  mainAxisSpacing: 10),
                              itemBuilder:(context,index)=> Container(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width,

                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey, width: 1)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 90,
                                      alignment: Alignment.center,
                                      child:get[index].productThambnail != null? Image.network(
                                        'https://bppshops.com/${get[index].productThambnail}',
                                        fit: BoxFit.cover,
                                      ):
                                      Image.network('https://st3.depositphotos.com/23594922/31822/v/600/depositphotos_318221368-stock-illustration-missing-picture-page-for-website.jpg'),
                                    ),
                                    Text(
                                      '${get[index].productName}',
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 12,
                                          color: Colors.orangeAccent,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 12,
                                          color: Colors.orangeAccent,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 12,
                                          color: Colors.orangeAccent,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 12,
                                          color: Colors.grey,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 12,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '(4)',
                                          style: TextStyle(color: Colors.black),
                                        )
                                      ],
                                    ),
                                    FittedBox(
                                      child: RichText(
                                        text: TextSpan(
                                          text: '৳ ${double.tryParse(get[index].sellingPrice!)!.toStringAsFixed(1)}  ',
                                          style: TextStyle(color: Colors.green),
                                          children:  <TextSpan>[
                                            TextSpan(text:  '৳ ${double.tryParse(get[index].discountPrice!)!.toStringAsFixed(1)}', style: TextStyle(
                                                color: Theme.of(context).errorColor,
                                                decoration: TextDecoration
                                                    .lineThrough)),

                                          ],
                                        ),
                                      ),
                                    ),

                                    Center(
                                      child: FittedBox(
                                        child: ElevatedButton.icon(
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.amber,
                                            minimumSize: Size(90, 30),
                                          ),
                                          onPressed: () {
                                            showModalBottomSheet<void>(
                                              isDismissible: false,
                                              isScrollControlled: true,
                                              context: context,
                                              builder: (BuildContext context) {
                                                return MyBottomSheet(
                                                  productId: get[index].id.toString(),
                                                  productImage:get[index].productThambnail != null?
                                                  'https://bppshops.com/${get[index]
                                                      .productThambnail}':'https://st3.depositphotos.com/23594922/31822/v/600/depositphotos_318221368-stock-illustration-missing-picture-page-for-website.jpg',
                                                  productName: get[index].productName,
                                                  productDetail: get[index].metaDesc,
                                                 productPrePrice: get[index].discountPrice,
                                                //  shipping: double.tryParse(get[index].shipping!),
                                                  productPrice:
                                                  double.tryParse(get[index].sellingPrice!),
                                                );
                                              },
                                            );
                                          },
                                          icon: Icon(
                                            Icons.shopping_bag_outlined,
                                            color: Colors.white,
                                            size: 17,
                                          ),
                                          label: Text(
                                            'Add to Bag',
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),

                                      ),
                                    ),
                                  ],
                                ),
                              ) ,
                            ),
                          );

                        } else {
                          return Container(
                            height: (MediaQuery.of(context).size.width/2+25)*3,
                            child: GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 2 / 2.5,
                                    crossAxisSpacing: 15,
                                    mainAxisSpacing: 10),
                                itemCount: 6,
                                itemBuilder:(context,index)=> Shimmer(
                                  duration: Duration(seconds: 2), //Default value
                                  interval: Duration(seconds: 1), //Default value: Duration(seconds: 0)
                                  color: Colors.black,//Colors.grey.shade700, //Default value
                                  colorOpacity: 0, //Default value
                                  enabled: true, //Default value
                                  direction: ShimmerDirection.fromLTRB(),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(6),

                                    ),
                                  ),
                                )
                            ),
                          );
                        }
                      }),
                ),
              ],
            ),
          ),
          floatingActionButton: Consumer<Cart>(
            builder: (_, cart, ch) => Badge(
              value: cart.itemCount.toString(),
              child: ch,
            ),
            child: FloatingActionButton(
              backgroundColor: Theme.of(context).colorScheme.primary,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CartScreen()));
              },
              child: Icon(
                Icons.shopping_bag_sharp,
                color: Colors.white,
              ),
            ),
          ),
          floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 6,
            child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            // currentScreen =
                            //     Home_Page(); // if user taps on this dashboard tab will be active
                            // currentTab = 0;
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNavBar(
                                      currentTab: 0,
                                      currentScreen: HomeScreen(),
                                    )),
                                    (route) => false);
                            //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 0,currentScreen: Home_Page(),)));
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.home,
                              color: Colors
                                  .amber, //currentTab == 0 ? Colors.amber,//: Colors.grey,
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                color: Colors
                                    .amber, //currentTab == 0 ? Colors.amber : Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Home_Page(),
                      // MyWishList(),
                      // HistoryTabbar(),
                      // ProfileScreen(),
                      // PopularProduct(),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNavBar(
                                      currentTab: 1,
                                      currentScreen: MyWishList(),
                                    )),
                                    (route) => false);
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 1,currentScreen: MyWishList(),)));
                            // currentScreen =
                            //     MyWishList(); // if user taps on this dashboard tab will be active
                            // currentTab = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.favorite_border_outlined,
                              color: Colors
                                  .grey, //currentTab == 1 ? Colors.amber : Colors.grey,
                            ),
                            Text(
                              'Favorite',
                              style: TextStyle(
                                color: Colors
                                    .grey, //,currentTab == 1 ? Colors.amber: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  // Right Tab bar icons

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNavBar(
                                      currentTab: 2,
                                      currentScreen: HistoryScreen(),
                                    )),
                                    (route) => false);
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 2,currentScreen: HistoryTabbar(),)));
                            // currentScreen =
                            //     HistoryTabbar(); // if user taps on this dashboard tab will be active
                            // currentTab = 2;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.dashboard_outlined,
                              color: Colors
                                  .grey, //currentTab == 2 ? Colors.amber: Colors.grey,
                            ),
                            Text(
                              'History',
                              style: TextStyle(
                                color: Colors
                                    .grey, //,currentTab == 2 ? Colors.amber : Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNavBar(
                                      currentTab: 3,
                                      currentScreen: ProfileScreen(),
                                    )),
                                    (route) => false);
                            //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 3,currentScreen: ProfileScreen(),)));
                            // currentScreen =
                            //     ProfileScreen(); // if user taps on this dashboard tab will be active
                            // currentTab = 3;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.account_circle,
                              color: Colors
                                  .grey, //currentTab == 3 ? Colors.amber : Colors.grey,
                            ),
                            Text(
                              'Profile',
                              style: TextStyle(
                                color: Colors
                                    .grey, //currentTab == 3 ? Colors.amber: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}
