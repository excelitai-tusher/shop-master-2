//
// import 'package:flutter/material.dart';
//
// class Checkout extends StatefulWidget {
//   const Checkout({Key? key}) : super(key: key);
//
//   @override
//   _CheckoutState createState() => _CheckoutState();
// }
//
// class _CheckoutState extends State<Checkout> {
//   @override
//   Widget build(BuildContext context) {
//     final cartControll = Provider.of<CartModel>(context);
//     final pageState = Provider.of<AppStateController>(context,listen: false);
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         leading: GestureDetector(
//           onTap: () {
//             //Navigator.pop(context);
//             pageState.setAppBarViewState(false);
//             pageState.setPrimaryCurrentIndex(4);
//             Navigator.pop(context);
//           },
//           child: Icon(
//             Icons.arrow_back_ios,
//             size: 30,
//             color: Colors.black,
//           ),
//         ),
//         title: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 30),
//           child: Text(
//             "Checkout",
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 20,
//             ),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Shipping to",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//                 fontSize: 20,
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               height: 100,
//               width: 350,
//               decoration: BoxDecoration(
//                 color: Color(0xffF7FFEF),
//                 borderRadius: new BorderRadius.circular(10.0),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 1,
//                     blurRadius: 3,
//                     offset: Offset(0, 1), // changes position of shadow
//                   ),
//                 ],
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Icon(Icons.circle, size: 20, color: Colors.green),
//                               SizedBox(width: 5),
//                               Text(
//                                 "Home",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                             ]),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Icon(Icons.edit, size: 20, color: Colors.green),
//                           ],
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 20),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20),
//                       child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "Lorem Ipsum is simply dummy text \n of the printing and typesetting",
//                                   style: TextStyle(
//                                     color: Colors.grey,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 16,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ]),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               height: 100,
//               width: 350,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: new BorderRadius.circular(10.0),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 1,
//                     blurRadius: 3,
//                     offset: Offset(0, 1), // changes position of shadow
//                   ),
//                 ],
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Icon(Icons.stop_circle_sharp,
//                                   size: 20, color: Colors.green),
//                               SizedBox(width: 5),
//                               Text(
//                                 "Office",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                             ]),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Icon(Icons.edit, size: 20, color: Colors.green),
//                           ],
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 20),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20),
//                       child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "Lorem Ipsum is simply dummy text \n of the printing and typesetting",
//                                   style: TextStyle(
//                                     color: Colors.grey,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 16,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ]),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Text(
//               "Add new address",
//               style: TextStyle(
//                 color: Colors.green,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Text(
//               "Preferred delivery time",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 8.0),
//               child: SizedBox(
//                 height: 70,
//                 child: Row(
//                   children: [
//                     Expanded(
//                       flex: 9,
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           primary: Color(0xffF7FFEF),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8.0),
//                           ),
//                         ),
//                         onPressed: () {
//                           //Navigator.push(context, MaterialPageRoute(builder: (context) =>Payment()));
//                         },
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 2.0, vertical: 2),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 "Date",
//                                 style: TextStyle(
//                                   color: Colors.grey,
//                                   //fontWeight: FontWeight.bold,
//                                   fontSize: 13,
//                                 ),
//                               ),
//                               Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Flexible(
//                                     child: Text(
//                                       "Sat, 15 Jan",
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 12,
//                                       ),
//                                     ),
//                                   ),
//                                   Icon(Icons.keyboard_arrow_down,
//                                       size: 20, color: Colors.black),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       flex: 1,
//                       child: SizedBox(),
//                     ),
//                     Expanded(
//                       flex: 9,
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           primary: Color(0xffF7FFEF),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8.0),
//                           ),
//                         ),
//                         onPressed: () {
//                           //Navigator.push(context, MaterialPageRoute(builder: (context) =>Payment()));
//                         },
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 2.0, vertical: 2),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 "Time",
//                                 style: TextStyle(
//                                   color: Colors.grey,
//                                   //fontWeight: FontWeight.bold,
//                                   fontSize: 13,
//                                 ),
//                               ),
//                               Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Flexible(
//                                     child: Text(
//                                       "9.00 AM - 10.00 AM",
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 12,
//                                       ),
//                                     ),
//                                   ),
//                                   Icon(Icons.keyboard_arrow_down,
//                                       size: 20, color: Colors.black),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Text(
//               "Payment Method",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20,
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
//                   Icon(Icons.stop_circle_sharp, size: 20, color: Colors.green),
//                   SizedBox(width: 5),
//                   Text(
//                     "cash on delivery",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ]),
//                 Row(
//                   //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       height: 25,
//                       width: 60,
//                       decoration: BoxDecoration(
//                         color: Colors.green,
//                         borderRadius: BorderRadius.circular(10.0),
//                         border: Border.all(),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 3, horizontal: 3),
//                         child: Text(
//                           "Add new",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 12,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 5,
//             ),
//             Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
//               Icon(Icons.stop_circle_sharp, size: 20, color: Colors.green),
//               SizedBox(width: 5),
//               Text(
//                 "Bkash",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16,
//                 ),
//               ),
//             ]),
//             SizedBox(
//               height: 10,
//             ),
//             Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
//               Icon(Icons.stop_circle_sharp, size: 20, color: Colors.green),
//               SizedBox(width: 5),
//               Text(
//                 "DBBL Rocket",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16,
//                 ),
//               ),
//             ]),
//             SizedBox(
//               height: 10,
//             ),
//             Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
//               Icon(Icons.stop_circle_sharp, size: 20, color: Colors.green),
//               SizedBox(width: 5),
//               Text(
//                 "Credit or Debit Card",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16,
//                 ),
//               ),
//             ]),
//           ],
//         ),
//       ),
//       bottomNavigationBar: Container(
//         height: 100,
//         width: MediaQuery.of(context).size.height,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(15),
//             topRight: Radius.circular(15),
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.5),
//               spreadRadius: 1,
//               blurRadius: 3,
//               offset: Offset(0, 1), // changes position of shadow
//             ),
//           ],
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Flexible(
//                     child: Text(
//                       "Total "+cartControll.itemCount.toString()+" items in cart",
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 15,
//                       ),
//                     ),
//                   ),
//                   Text(
//                     "\$ 11,60.0",
//                     style: TextStyle(
//                       color: primaryColor,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 15,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 50,
//                 width: MediaQuery.of(context).size.width,
//                 child: SliderButton(
//                   action: () {
//                     _showDialog(context);
//                     ///Do something here OnSlide
//                   },
//
//                   ///Put label over here
//                   label: Text(
//                     "Swipe to place order",
//                     style: TextStyle(
//                         color: Color(0xff4a4a4a),
//                         fontWeight: FontWeight.w500,
//                         fontSize: 17),
//                   ),
//                   icon: Center(
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         Icons.arrow_forward_ios_outlined,
//                         color: Colors.white,
//                         size: 15.0,
//                         semanticLabel:
//                             'Text to announce in accessibility modes',
//                       ),
//                       Icon(
//                         Icons.arrow_forward_ios_outlined,
//                         color: Colors.white,
//                         size: 15.0,
//                         semanticLabel:
//                             'Text to announce in accessibility modes',
//                       ),
//                       Icon(
//                         Icons.arrow_forward_ios_outlined,
//                         color: Colors.white,
//                         size: 15.0,
//                         semanticLabel:
//                             'Text to announce in accessibility modes',
//                       ),
//                     ],
//                   )),
//
//                   ///Change All the color and size from here.
//                   width: 300,
//                   radius: 10,
//                   buttonColor: primaryColor,
//                   backgroundColor: tertiaryColor1,
//                   highlightedColor: primaryColor,
//                   baseColor: tertiaryColor2,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// void _showDialog(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return Material(
//         color: Colors.transparent,
//         child: Center(
//           child: Container(
//             height: 350,
//             width: 350,
//             decoration: BoxDecoration(
//               color: Color(0xffF7FFEF),
//               borderRadius: new BorderRadius.circular(20.0),
//             ),
//             child: ListView(
//               children: [
//                 Padding(
//                   padding:
//                   const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
//                   child: Column(
//                     children: [
//                       Image.asset("images/Order Successfull.png"),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         "Order Successful",
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 30,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         "Your order id #1245 successfully placed",
//                         style: TextStyle(
//                           color: Colors.grey,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 14,
//                         ),
//                       ),
//                       SizedBox(height: 20,),
//                       SizedBox(
//                         height: 45,
//                         width: 220,
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             primary: Colors.lightGreen,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                           ),
//                           onPressed: () {
//                             Navigator.push(context, MaterialPageRoute(builder: (context) => TrackOrder()));
//                           },
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Row(
//                                 children: [
//                                   Text(
//                                     "Track my order",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       //fontWeight: FontWeight.bold,
//                                       fontSize: 15,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       InkWell(
//                         onTap: () {
//                           Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
//                         },
//                         child: Text(
//                           "Go Home",
//                           style: TextStyle(
//                             color: Colors.green,
//                             //fontWeight: FontWeight.bold,
//                             fontSize: 15,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     },
//   );
// }
