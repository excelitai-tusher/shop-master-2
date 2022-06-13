// import 'package:bpp_shop/islamic/provider/model/order/cancelled/cancelled%20model%20class.dart';
// import 'package:flutter/material.dart';
//
// import 'package:provider/provider.dart';
//
// class Cancelled extends StatefulWidget {
//   const Cancelled({Key? key}) : super(key: key);
//
//   @override
//   _CancelledState createState() => _CancelledState();
// }
//
// class _CancelledState extends State<Cancelled> {
//   var _itemCount = null;
//   @override
//   Widget build(BuildContext context) {
//     final cencelledItem = Provider.of<Cancelled2>(context);
//     final itemCencelled = cencelledItem.items;
//     return SingleChildScrollView(
//       physics: NeverScrollableScrollPhysics(),
//       child: Container(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 30),
//               child: Center(child: Image(image: AssetImage("images/shopping cart.png"))),
//             ),
//             SizedBox(height: 20,),
//             Container(
//               child: Column(
//                 children: [
//                   Text("This order will no longer be visible in your cart.",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontFamily: 'Roboto-Regular.ttf'
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 20),
//               height: MediaQuery.of(context).size.height*.5,
//               child: ListView.builder(
//                 itemCount: itemCencelled.length,
//                   itemBuilder: (context, index) => ChangeNotifierProvider.value(value: itemCencelled[index], child:
//                     ListTile(
//                       isThreeLine: true,
//                       leading: Image.asset("${itemCencelled[index].image}"),
//                       title: Text("${itemCencelled[index].name}", style: TextStyle(color: Theme.of(context).errorColor),),
//                       subtitle: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Icon(Icons.star, color: Colors.amber,size: 12,),
//                               Icon(Icons.star, color: Colors.amber,size: 12,),
//                               Icon(Icons.star, color: Colors.amber,size: 12,),
//                               Icon(Icons.star, color: Colors.amber,size: 12,),
//                               Icon(Icons.star, color: Colors.amber,size: 12,),
//                               Text("42", style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 12,
//                               ),)
//
//                             ],
//                           ),
//                           Text("tk.${itemCencelled[index].price}")
//                         ],
//                       ),
//                       trailing: IconButton(onPressed: (){},icon: Icon(Icons.close, color: Theme.of(context).errorColor),),
//
//                     )),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
