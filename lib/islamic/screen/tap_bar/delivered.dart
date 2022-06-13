// import 'package:flutter/material.dart';
// import '../../provider/model/order/delivered.dart';
//
// class Delivered extends StatefulWidget {
//   const Delivered({Key? key}) : super(key: key);
//
//   @override
//   _DeliveredState createState() => _DeliveredState();
// }
//
// class _DeliveredState extends State<Delivered> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//       shrinkWrap: true,
//       scrollDirection: Axis.vertical,
//       itemCount: Item.list.length,
//       itemBuilder: (BuildContext context, i) {
//         Item product= Item.list[i];
//         return Container(
//           height: 120,
//           child: Padding(
//             padding: const EdgeInsets.only(left: 20, right: 20),
//             child: Card(
//               color: Colors.white,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Text("Item name: ", style: TextStyle(color: Colors.black, fontFamily: 'Roboto-Regular.ttf'),
//                             ),
//                             Text(product.ItemName.toString(), style: TextStyle(color: Colors.black38, fontFamily: 'Roboto-Regular.ttf')),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Text("Order No: ", style: TextStyle(color: Colors.black, fontFamily: 'Roboto-Regular.ttf'),
//                             ),
//                             Text(product.OrderNo.toString(), style: TextStyle(color: Colors.black38, fontFamily: 'Roboto-Regular.ttf')),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Text("Quantity: ", style: TextStyle(color: Colors.black, fontFamily: 'Roboto-Regular.ttf'),
//                             ),
//                             Text(product.Quantity.toString(), style: TextStyle(color: Colors.black38, fontFamily: 'Roboto-Regular.ttf')),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Text(product.Date.toString()),
//                         Row(
//                           children: [
//                             Text("Total Amount: ", style: TextStyle(color: Colors.black, fontFamily: 'Roboto-Regular.ttf'),
//                             ),
//                             Text(product.TotalAmount.toString(), style: TextStyle(color: Colors.black38, fontFamily: 'Roboto-Regular.ttf')),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Text("Status: ", style: TextStyle(color: Colors.black, fontFamily: 'Roboto-Regular.ttf'),
//                             ),
//                             Text(product.Status.toString(), style: TextStyle(color: Colors.green, fontFamily: 'Roboto-Regular.ttf')),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//       separatorBuilder: (context, index) {
//         return SizedBox(width: 3,);
//       },
//     );
//   }
// }
