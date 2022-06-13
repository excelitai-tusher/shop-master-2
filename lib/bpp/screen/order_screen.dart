// import 'package:bpp_shop/bpp/provider/order_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
//
// class OrderScreen extends StatelessWidget {
//   static const routeName = '/order-screen';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Your Orders'),
//       ),
//      // drawer: AppDrawer(),
//       body: FutureBuilder(
//         future: Provider.of<Order>(context, listen: false).fetchAndSetOrders(),
//         builder: (ctx, dataSnapshot) {
//           if (dataSnapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else {
//             if (dataSnapshot.error != null) {
//               // ...
//               // Do error handling stuff
//               return Center(
//                 child: Text('An error occurred!'),
//               );
//             } else {
//               return Consumer<Order>(
//                 builder: (ctx, orderData, child) => ListView.builder(
//                   itemCount: orderData.orders.length,
//                   itemBuilder: (ctx, i) => OrderItems(orderData.orders[i]),
//                 ),
//               );
//             }
//           }
//         },
//       ),
//     );
//   }
// }
