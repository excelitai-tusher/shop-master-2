import 'package:bpp_shop/bpp/drawer/bpp_drawer.dart';
import 'package:bpp_shop/view_model/bpp/app_provider.dart';
import 'package:bpp_shop/bpp/provider/cart_provider.dart';
import 'package:bpp_shop/bpp/screen/cart/cart_screen.dart';
import 'package:bpp_shop/islamic/component/badge.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../../bpp/screen/navbar/bottom_app_bar.dart';
import '../../../../bpp/screen/navbar/history_screen/history_screen.dart';
import '../../../../bpp/screen/navbar/home_screen.dart';
import '../../../../bpp/screen/navbar/profile_screen.dart';
import '../../../../bpp/screen/navbar/wishlist_screen.dart';
import '../../../core/controller/app_state_controller.dart';
import '../../../core/controller/home_page_event_handeller.dart';
import '../../constant/app_colors.dart';
import '../hamburger/hamburger1.dart';
import 'component/custom_appbar_search_and_filter_widget.dart';

class GroceryHomePage extends StatefulWidget {
  const GroceryHomePage({Key? key}) : super(key: key);

  @override
  State<GroceryHomePage> createState() => _GroceryHomePageState();
}

class _GroceryHomePageState extends State<GroceryHomePage> {
  GlobalKey<ScaffoldState> _bppScafoldKey = GlobalKey();
  final CarouselController? _carouselSlider = CarouselController();
  //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final pageState = Provider.of<AppStateController>(context);
    final customScafoldKey = Provider.of<CustomScafoldKey>(context);
    final appsData = Provider.of<BppApps>(context);

    final apps = appsData.items;
    return Scaffold(
      key: _bppScafoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFE37D4E),
        leading: IconButton(
          onPressed: () {
            _bppScafoldKey.currentState!.openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: TextButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BottomNavBar(currentTab: 0,currentScreen: HomeScreen(),),));
          },
          child: Text(
            "BPP Shop",
            style: TextStyle(color: Colors.white,fontSize: 18),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileScreen()));
            },
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 50),
          child: Container(
            height: 50,
            color: Color(0xffF3D0B7),
            child: CarouselSlider.builder(
                itemCount: apps.length,
                options: CarouselOptions(
                    viewportFraction:.4,
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
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  apps[itemIndex];
                  return GestureDetector(
                    onTap: apps[itemIndex].subApps!= null?
                        (){
                      Navigator.of(context).push(MaterialPageRoute(builder:(context)=> apps[itemIndex].subApps!));

                    } :null,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      height: 30,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            height: 25,
                            width: 25,
                            child: Image.asset('${apps[itemIndex].icon}',fit: BoxFit.cover,),
                          ),
                          Flexible(
                            child: Container(
                              width:90,
                              child: Text(
                                '${apps[itemIndex].title}',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.indigo),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
      drawer: BPPMainPageDrawer(),
      body: Scaffold(
          key: customScafoldKey.scaffoldKey,
          backgroundColor: backGroundColor,
          appBar: pageState.homePageAppBarView
              ? AppBar(
                  backgroundColor: backGroundColor,
                  elevation: 0.0,
                  toolbarHeight: 150,
                  leadingWidth: 0,
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: backGroundColor,
                    statusBarIconBrightness: Brightness.dark,
                    statusBarBrightness: Brightness.light,
                  ),
                  leading: Padding(
                    padding: const EdgeInsets.only(right: 100.0),
                    child: Container(),
                  ),
                  title: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50.0),
                        child: SizedBox(
                          height: 120,
                          width: MediaQuery.of(context).size.width,
                          child: CustomAppBarSearchAndFilterWidget(),
                        ),
                      ),
                    ],
                  ),
                )
              : null,
          drawer: Drawer(
            child: Hamburger1(),
          ),

          ///body..........
          body: pageState.appBodyState(
            context: context,
          ),
          // pageState.primaryPageState
          //     ? pageState.primaryBody(
          //         context: context, currentIndex: pageState.primaryCurrentIndex)
          //     : pageState.secondaryBody(
          //         context:
          //             context), //primaryBody(context: context,currentIndex: currentIndex),
          ///body..........

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
                                      currentScreen: WishListScreen(),
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
          //
          // floatingActionButton: FloatingActionButton(
          //   backgroundColor: pageState.primaryCurrentIndex == 4
          //       ? primaryColor
          //       : secondaryColor,
          //   onPressed: () {
          //     pageState.primaryCurrentIndex = 4;
          //     pageState.setAppBarViewState(false);
          //   },
          //   child: Icon(
          //     Icons.shopping_bag_outlined,
          //     size: 30,
          //   ),
          // ),
          // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          // bottomNavigationBar: BottomAppBar(
          //   shape: CircularNotchedRectangle(),
          //   child: Row(
          //     mainAxisSize: MainAxisSize.max,
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       ...MainHomePageBottomAppBarModel.list
          //           .map((MainHomePageBottomAppBarModel data) {
          //         return data.isBlank
          //             ? SizedBox(
          //                 width: 10,
          //               )
          //             : InkWell(
          //                 onTap: () {
          //                   pageState.setPrimaryCurrentIndex(data.index);
          //                   pageState.setPrimaryPageState(true);
          //                   //stateController.currentIndex = data.index;
          //                   if (pageState.primaryCurrentIndex == 0) {
          //                     pageState.setAppBarViewState(true);
          //                   } else {
          //                     pageState.setAppBarViewState(false);
          //                   }
          //                   // setState(() {
          //                   //   // primaryPageState.setPrimaryPage(data.index);
          //                   //   // productAppBar.setPrimaryState(true);Excel#G+@2021
          //                   //   stateController.setCurrentIndex(data.index);
          //                   //   //stateController.currentIndex = data.index;
          //                   //   if(stateController.currentIndex==0){
          //                   //     stateController.setAppBarViewState(true);
          //                   //   }else{
          //                   //     stateController.setAppBarViewState(false);
          //                   //   }
          //                   // });
          //                   print(data.index.toString());
          //                 },
          //                 child: Padding(
          //                   padding: EdgeInsets.symmetric(
          //                       horizontal: 20, vertical: 10),
          //                   child: Column(
          //                     mainAxisSize: MainAxisSize.min,
          //                     children: [
          //                       //SizedBox(height: 10,),
          //                       Icon(
          //                         data.icon,
          //                         color: pageState.primaryCurrentIndex ==
          //                                 data.index //currentIndex == data.index
          //                             ? secondaryColor //Excel#G+P@2021
          //                             : tertiaryColor2,
          //                       ),
          //                       SizedBox(
          //                         height: 12,
          //                       ),
          //                       Text(
          //                         data.label!,
          //                         style: Theme.of(context)
          //                             .textTheme
          //                             .bodyText1!
          //                             .copyWith(
          //                               color: pageState.primaryCurrentIndex ==
          //                                       data.index //currentIndex == data.index
          //                                   ? secondaryColor
          //                                   : tertiaryColor2,
          //                             ),
          //                       )
          //                     ],
          //                   ),
          //                 ),
          //               );
          //       })
          //     ],
          //   ),
          // )

      ),
    );
  }
}
