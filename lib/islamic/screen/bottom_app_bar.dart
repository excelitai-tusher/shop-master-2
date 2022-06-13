//
// import 'package:bpp_shop/bpp/navbar/profile_screen.dart';
// import 'package:bpp_shop/islamic/provider/model/cart_provider.dart';
// import 'package:bpp_shop/bpp/navbar/cart_screen.dart';
// import 'package:bpp_shop/islamic/screen/home_page.dart';
// import 'package:bpp_shop/islamic/screen/order%20history%20tabbar.dart';
// import 'package:bpp_shop/islamic/screen/popolar_product.dart';
// import 'package:bpp_shop/islamic/screen/profile_screen.dart';
// import 'package:bpp_shop/islamic/screen/wishlist_screen.dart';
// import 'package:bpp_shop/islamic/widget/badge.dart';
// import 'package:flutter/material.dart';
//
// import 'package:provider/provider.dart';
//
//
// class Bottom_NavBar extends StatefulWidget {
//   Bottom_NavBar({this.currentTab,this.currentScreen});
//   final int? currentTab;
//   Widget? currentScreen;
//   @override
//   _Bottom_NavBarState createState() => _Bottom_NavBarState(currentTab!,currentScreen!);
// }
//
// class _Bottom_NavBarState extends State<Bottom_NavBar> {
//   // Properties & Variables needed
//
//   _Bottom_NavBarState(
//       this.currentTab,
//       this.currentScreen
//       );
//   int currentTab ; // to keep track of active tab index
//   final List<Widget> screens = [
//     Home_Page(),
//     MyWishList(),
//     HistoryTabbar(),
//     ProfileScreen(),
//     PopularProduct(),
//   ]; // to store nested tabs
//   final PageStorageBucket bucket = PageStorageBucket();
//   Widget currentScreen; //= Home_Page(); // Our first view in viewport
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: PageStorage(
//         child: currentScreen,
//         bucket: bucket,
//       ),
//       floatingActionButton:   Consumer<Cart>(
//         builder: (_, cart, ch) => Badge(
//           value: cart.itemCount.toString(),
//           child: ch,
//         ),
//         child: FloatingActionButton(
//
//           backgroundColor: Theme.of(context).colorScheme.primary,
//           onPressed: (){
//           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CartScreen()));
//           },
//           child: Icon(Icons.shopping_bag_sharp,color: Colors.white,),
//
//
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//
//       bottomNavigationBar: BottomAppBar(
//         shape: CircularNotchedRectangle(),
//         notchMargin: 6,
//         child: Container(
//           height: 60,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen =
//                             Home_Page(); // if user taps on this dashboard tab will be active
//                         currentTab = 0;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Icon(
//                           Icons.home,
//                           color: currentTab == 0 ? Colors.amber: Colors.grey,
//                         ),
//                         Text(
//                           'Home',
//                           style: TextStyle(
//                             color: currentTab == 0 ? Colors.amber : Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen =
//                             MyWishList(); // if user taps on this dashboard tab will be active
//                         currentTab = 1;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Icon(
//                           Icons.favorite_border_outlined,
//                           color: currentTab == 1 ? Colors.amber : Colors.grey,
//                         ),
//                         Text(
//                           'Favorite',
//                           style: TextStyle(
//                             color: currentTab == 1 ? Colors.amber: Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//
//               // Right Tab bar icons
//
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen =
//                             HistoryTabbar(); // if user taps on this dashboard tab will be active
//                         currentTab = 2;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Icon(
//                           Icons.dashboard_outlined,
//                           color: currentTab == 2 ? Colors.amber: Colors.grey,
//                         ),
//                         Text(
//                           'History',
//                           style: TextStyle(
//                             color: currentTab == 2 ? Colors.amber : Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen =
//                             IslamicProfileScreen(); // if user taps on this dashboard tab will be active
//                         currentTab = 3;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Icon(
//                           Icons.account_circle,
//                           color: currentTab == 3 ? Colors.amber : Colors.grey,
//                         ),
//                         Text(
//                           'Profile',
//                           style: TextStyle(
//                             color: currentTab == 3 ? Colors.amber: Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               )
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
