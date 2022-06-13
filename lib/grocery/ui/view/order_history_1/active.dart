// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:gapp/core/controller/app_state_controller.dart';
// import 'package:gapp/ui/constant/app_colors.dart';
// import 'package:provider/provider.dart';
//
// class ActiveBody extends StatelessWidget {
//   const ActiveBody({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final pageState= Provider.of<AppStateController>(context);
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height * .10,
//             width: MediaQuery.of(context).size.width * .2,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: new BorderRadius.circular(10.0),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey,
//                   blurRadius: 30,
//                   offset: Offset(0, 8), // Shadow position
//                 ),
//               ],
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 GestureDetector(
//                   onTap: (){
//                     pageState.setAppBarViewState(false);
//                     pageState.setSecondaryPageState(true);
//                     pageState.setSecondaryCurrentIndex(2);
//                   },
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // SizedBox(
//                       //   height: 20,
//                       // ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             "Sat, 15 jan, 2022",
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                             ),
//                           ),
//                           Text(
//                             "\$11,60.0>",
//                             style: TextStyle(
//                               color: Colors.green,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                             ),
//                           ),
//                         ],
//                       ),
//                       // SizedBox(
//                       //   height: 10,
//                       // ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Order #123456",
//                             style: TextStyle(
//                               color: Colors.black87,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                             ),
//                           ),
//                         ],
//                       ),
//                       // SizedBox(
//                       //   height: 20,
//                       // ),
//                       Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Icon(Icons.shopping_bag_outlined,
//                                 size: 20, color: Colors.grey),
//                             // SizedBox(
//                             //   width: 10,
//                             // ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "Lorem Ipsum is simply dummy text \n of the printing and typesetting \n industry. ",
//                                   style: TextStyle(
//                                     color: Colors.grey,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 16,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ]),
//                       //SizedBox(height: 10),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.symmetric(vertical: 5),
//                             child: Icon(
//                               Icons.circle,
//                               size: 12,
//                               color: Color(0xff9FF348),
//                             ),
//                           ),
//                           // SizedBox(
//                           //   width: 5,
//                           // ),
//                           Text(
//                             "Out for delivery",
//                             style: TextStyle(
//                               color: Color(0xff9FF348),
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                             ),
//                           ),
//                         ],
//                       ),
//                       // SizedBox(
//                       //   height: 25,
//                       // ),
//                       Container(
//                         height: 1,
//                         width: MediaQuery.of(context).size.width,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 // SizedBox(
//                 //   height: 20,
//                 // ),
//                 IntrinsicHeight(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                         child: Text(
//                           "Cancel order",
//                           style: TextStyle(
//                             color: Colors.grey,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                           ),
//                         ),
//                       ),
//                       //SizedBox(width: 10,),
//                       VerticalDivider(
//                         thickness: 1,
//                         width: 20,
//                         color: Colors.grey
//                         ,
//                       ),
//                       //SizedBox(width: 40),
//                       Text(
//                         "Track your order",
//                         style: TextStyle(
//                           color: Colors.green,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 20,),
//           Container(
//             height: 280,
//             width: 350,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: new BorderRadius.circular(10.0),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey,
//                   blurRadius: 30,
//                   offset: Offset(0, 8), // Shadow position
//                 ),
//               ],
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(vertical: 15),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Sat, 15 jan, 2022",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                           ),
//                         ),
//                         Text(
//                           "\$9,60.0 >",
//                           style: TextStyle(
//                             color: Colors.green,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Order #1236757",
//                           style: TextStyle(
//                             color: Colors.black87,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Icon(Icons.shopping_bag_outlined,
//                               size: 20, color: Colors.grey),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "Lorem Ipsum is simply dummy text \n of the printing and typesetting",
//                                 style: TextStyle(
//                                   color: Colors.grey,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ]),
//                   ),
//                   SizedBox(height: 10),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.symmetric(vertical: 5),
//                           child: Icon(
//                             Icons.circle,
//                             size: 12,
//                             color: Color(0xff9FF348),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 5,
//                         ),
//                         Text(
//                           "Processing order",
//                           style: TextStyle(
//                             color: Color(0xff9FF348),
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 25),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 20, right: 20),
//                     child: Container(
//                       height: 1,
//                       width: MediaQuery.of(context).size.width,
//                       decoration: BoxDecoration(
//                         color: Colors.grey,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: IntrinsicHeight(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Expanded(
//                             child: Text(
//                               "Cancel order",
//                               style: TextStyle(
//                                 color: Colors.grey,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: 10,),
//                           VerticalDivider(
//                             thickness: 1,
//                             width: 20,
//                             color: Colors.grey
//                             ,
//                           ),
//                           SizedBox(width: 40),
//                           Text(
//                             "Track your order",
//                             style: TextStyle(
//                               color: Colors.green,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
