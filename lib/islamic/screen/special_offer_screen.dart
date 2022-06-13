
import 'package:bpp_shop/bpp/drawer/bpp_drawer.dart';


import 'package:bpp_shop/bpp/screen/cart/cart_screen.dart';
import 'package:bpp_shop/models/islamic/special_offers.dart';

import 'package:bpp_shop/view_model/islamic/http_request.dart';
import 'package:bpp_shop/bpp/provider/cart_provider.dart';
import 'package:bpp_shop/islamic/screen/wish_list/wishlist_screen.dart';
import 'package:bpp_shop/islamic/component/badge.dart';
import 'package:bpp_shop/islamic/widget/bottom_sheet.dart';
import 'package:bpp_shop/view_model/islamic/http_special_offer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import '../../models/islamic/islamic_home_page.dart';
import '../../bpp/screen/navbar/bottom_app_bar.dart';
import '../../bpp/screen/navbar/history_screen/history_screen.dart';
import '../../bpp/screen/navbar/home_screen.dart';
import '../../bpp/screen/navbar/profile_screen.dart';

class SpecialOfferScreen extends StatefulWidget {
  const SpecialOfferScreen({Key? key}) : super(key: key);

  @override
  _SpecialOfferScreenState createState() => _SpecialOfferScreenState();
}

class _SpecialOfferScreenState extends State<SpecialOfferScreen> {
  //HttpRequests _httpRequests = HttpRequests();

  GlobalKey<ScaffoldState> _scafoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    return Scaffold(
      key: _scafoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFE37D4E),
        leading: IconButton(
          onPressed: () {
            _scafoldKey.currentState!.openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: Text(
          "BPP Shop",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: BPPMainPageDrawer(),
      body: Scaffold(
        appBar: AppBar(
          title: Text(
            'Special Offer',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                //  Navigator.pop(context);
              },
            ),
          ],
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: FutureBuilder(
              future: getSpecialOffer(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  List<SpecialOffers> get = snapshot.data ?? <SpecialOffers>[];
                  return Container(
                 //  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 2 / 2.5,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 10),

                      children: get
                          .map((SpecialOffers get) => Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                    color: Colors.grey, width: 1)),
                            child: GridTile(
                              footer: GridTileBar(

                              title:  ElevatedButton.icon(
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
                                              productId: get.id.toString(),
                                              productImage:get.productThambnail != null?
                                              'https://bppshops.com/${get.productThambnail}':'https://st3.depositphotos.com/23594922/31822/v/600/depositphotos_318221368-stock-illustration-missing-picture-page-for-website.jpg',
                                              productName: get.productName,
                                              productDetail: get.productDescp,
                                              productPrePrice: get.discountPrice,

                                              productPrice:
                                              double.tryParse(get.sellingPrice!),
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
                              child: Column(
                                children: [
                                  Container(
                                      height: 90,
                                      child:get.productThambnail != null? Image.network(
                                        'https://bppshops.com/${get.productThambnail}',
                                        fit: BoxFit.cover,
                                      ):
                                      Image.network('https://st3.depositphotos.com/23594922/31822/v/600/depositphotos_318221368-stock-illustration-missing-picture-page-for-website.jpg'),

                                  ),
                                  Flexible(
                                    child: Text(
                                      '${get.productName}',overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Text(
                                      '${get.unit}',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: '৳ ${double.tryParse(get.sellingPrice!)!.toStringAsFixed(1)}  ',
                                      style: TextStyle(color: Colors.green),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '৳ ${double.tryParse(get.discountPrice!)!.toStringAsFixed(1)}',
                                          style: TextStyle(
                                              color: Colors.red,
                                              decoration: TextDecoration
                                                  .lineThrough),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ))
                          .toList(),
                    ),
                  );
                } else {
                  return Container(
                    height: (MediaQuery.of(context).size.width/2+25)*3,
                    child: GridView.builder(
                       // physics: NeverScrollableScrollPhysics(),
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
      ),
      floatingActionButton: Consumer<Cart>(
        builder: (_, cart, ch) => Badge(
          value: cart.itemCount.toString(),
          child: ch,
        ),
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.primary,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => CartScreen()));
          },
          child: Icon(
            Icons.shopping_bag_sharp,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
      ),
    );
  }
}
