// import 'package:flutter/material.dart';
//
// import '../../../constant/app_colors.dart';
//
// class Badge extends StatelessWidget {
//   const Badge({
//     Key? key,
//     required this.child,
//     required this.value,
//     this.color,
//   }) : super(key: key);
//
//   final Widget child;
//   final String value;
//   final Color? color;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       //alignment: Alignment.center,
//       children: [
//         child,
//         GestureDetector(
//           onTap: (){
//             //Navigator.of(context).pushNamed(CartScreen.routeName);
//           },
//           child: Container(
//             padding: EdgeInsets.all(2.0),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10.0),
//               //color: color != null?color : Theme.of(context).accentColor,
//             ),
//             constraints: BoxConstraints(
//                 maxWidth: 20,
//                 minHeight: 20
//             ),
//             child: Text(
//               value,
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 20,
//                 color: primaryColor
//               ),
//             ),
//           ),
//         ),
//         Center(
//           child: Text(
//             "items",
//             style: TextStyle(
//               color: primaryColor,
//               fontSize: 20,
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
