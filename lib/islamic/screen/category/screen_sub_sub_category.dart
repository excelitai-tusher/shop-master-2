import 'package:bpp_shop/bpp/drawer/bpp_drawer.dart';
import 'package:bpp_shop/bpp/screen/cart/cart_screen.dart';
import 'package:bpp_shop/bpp/provider/cart_provider.dart';
import 'package:bpp_shop/islamic/screen/wish_list/wishlist_screen.dart';
import 'package:bpp_shop/islamic/component/badge.dart';
import 'package:bpp_shop/models/islamic/SubSubCategory.dart';
import 'package:bpp_shop/view_model/islamic/http_category.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../bpp/screen/navbar/bottom_app_bar.dart';
import '../../../bpp/screen/navbar/history_screen/history_screen.dart';
import '../../../bpp/screen/navbar/home_screen.dart';
import '../../../bpp/screen/navbar/profile_screen.dart';

class ScreenSubSubCategory extends StatefulWidget {
  List<Getsubsubcategory>? getsubsubcategoryList;
  String? subCategorySlugName;
  ScreenSubSubCategory(
      {Key? key, this.subCategorySlugName, this.getsubsubcategoryList})
      : super(key: key);

  @override
  _ScreenSubSubCategoryState createState() => _ScreenSubSubCategoryState();
}

class _ScreenSubSubCategoryState extends State<ScreenSubSubCategory> {
  GlobalKey<ScaffoldState> _scafoldKey = GlobalKey();
  // String baseUrl = "https://bppshops.com/api/bs/";
  // List<ProductUnderSubCategory>? productUnderSubCategoryList;
  // List<Getsubsubcategory>? getsubsubcategoryList;
  // SubSubCategory? subSubCategory;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getList();
  }

  @override
  Widget build(BuildContext context) {
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
          "BPP Shops",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          SizedBox(
            width: 15,
          ),
        ],
      ),
      drawer: BPPMainPageDrawer(),
      body: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              widget.subCategorySlugName.toString(),
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              // Text("All Category"),
              // Text(widget.categorySlugName.toString()),
              Icon(Icons.search, color: Colors.white),
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.notifications_outlined, color: Colors.white),
              ),
            ],
          ),
          body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 2,
              crossAxisCount: 2,
              mainAxisSpacing: 2,
              childAspectRatio: 2 / 3,
            ),
            itemCount: widget
                .getsubsubcategoryList!.length, //subSubCategoryList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  //Navigator.push(context,MaterialPageRoute(builder: (context)=>ScreenSubSubCategoryProductView(title: subSubCategoryList[index]["subsubcategory_name"],)));
                },
                child: Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: NetworkImage(
                          "https://bppshops.com/" +
                              widget.getsubsubcategoryList![index]
                                  .subsubcategoryImage
                                  .toString(),
                        ),
                      )),
                      //child: ,
                    ),
                    Text(widget.getsubsubcategoryList![index].subsubcategoryName
                        .toString()),
                  ],
                ),
              );
            },
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
          )),
    );
  }
}
