// import 'package:bpp_shop/bpp/screen/checkout1.dart';
// import 'package:bpp_shop/islamic/screen/tap_bar/order%20history%20tabbar.dart';
// import 'package:bpp_shop/islamic/screen/auth/sign_in_page.dart';
//
// import 'package:bpp_shop/islamic/screen/track%20order/track%20order.dart';
// import 'package:bpp_shop/islamic/screen/wishlist_screen.dart';
// import 'package:flutter/material.dart';
//
//
// class IslamicProfileScreen extends StatelessWidget {
//   const IslamicProfileScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor:Color(0xFFfff2df),
//       appBar: AppBar(
//         elevation: 0,
//         title: Text('Profile',style: TextStyle(color: Colors.white),),
//         centerTitle: true,
//
//
//         ),
//
//       body: ListView(children: [
//         ListTile(
//           isThreeLine: true,
//           leading: CircleAvatar(
//               radius: 35,
//               backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIdPuCovwlEDU1DMy_NbYedAXmEMaZaG0o4g&usqp=CAU')
//           ),
//           title: Text('User Name'),
//           subtitle: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('01xxxxxxxxx'),
//               Row(children: [
//                 Icon(Icons.email,size: 15,),
//                 Text('user@gmail.com'),
//               ],)
//             ],
//           ),
//           trailing: IconButton(
//             onPressed: (){},
//             icon: Icon(Icons.edit,color: Theme.of(context).primaryColor,),
//           ),),
//         Container(
//           height:500,
//           margin: EdgeInsets.symmetric(horizontal: 30),
//           child: ListView(
//             children: [
//               Card(
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: ListTile(
//                   onTap: (){
//                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyWishList(button: 'pop',)));
//                   },
//                   leading: Icon(Icons.favorite_border,color: Theme.of(context).primaryColor,),
//                   trailing: Icon(Icons.arrow_forward_ios),
//                   title: Text('My Wishlist'),
//                 ),
//               ),
//               Card(
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: ListTile(
//                   onTap: (){
//                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Checkout1()));
//                   },
//                   leading: Icon(Icons.library_add_check,color: Theme.of(context).primaryColor,),
//                   trailing: Icon(Icons.arrow_forward_ios),
//                   title: Text('Check Out'),
//                 ),
//               ),
//               Card(
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: ListTile(
//                   onTap: (){
//                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TrackOrder()));
//                   },
//                   leading: Icon(Icons.note_outlined,color: Theme.of(context).primaryColor,),
//                   trailing: Icon(Icons.arrow_forward_ios),
//                   title: Text('Order Tracking'),
//                 ),
//               ),
//               Card(
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: ListTile(
//                   onTap: (){
//                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HistoryTabbar(button: 'button',)));
//                   },
//                   leading: Icon(Icons.shopping_bag_outlined,color: Theme.of(context).primaryColor,),
//                   trailing: Icon(Icons.arrow_forward_ios),
//                   title: Text('Order History'),
//                 ),
//               ),
//               Card(
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: ListTile(
//                   onTap: (){
//                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Checkout1()));
//                   },
//                   leading: Icon(Icons.payment,color: Theme.of(context).primaryColor,),
//                   trailing: Icon(Icons.arrow_forward_ios),
//                   title: Text('Payment Method'),
//                 ),
//               ),
//               Card(
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child:ListTile(
//                   onTap: (){
//                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignInPage()));
//                   },
//                   leading: Icon(Icons.logout,color: Theme.of(context).primaryColor,),
//                   trailing: Icon(Icons.arrow_forward_ios),
//                   title: Text('Logout'),
//                 ),
//               ),
//             ],
//           ),)
//       ],),);
//   }
// }
