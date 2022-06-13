import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../location/map_screen.dart';

class LocationScreen extends StatelessWidget {
  static const String routeName = '/location';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => LocationScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.red,
              onPressed: () {},
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            right: 20,
            child: Container(
              height: 200,
              child: Row(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter Your location',
                      suffixIcon: Icon(Icons.search),
                      contentPadding:
                      const EdgeInsets.only(left: 20, bottom: 5, right: 5),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Expanded(
                    child: MapScreen(),
                    //child: Location1_screen(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    // var icon;
    // return Scaffold(
    //   body: Stack(
    //     children: [
    //       Container(
    //         height: MediaQuery.of(context).size.height,
    //         width: double.infinity,
    //         child: GoogleMap(
    //           myLocationEnabled: true,
    //           initialCameraPosition:
    //               CameraPosition(target: LatLng(10, 10), zoom: 10),
    //         ),
    //       ),
    //       Positioned(
    //         top: 40,
    //         left: 20,
    //         right: 20,
    //         child: Container(
    //           height: 100,
    //           child: Row(
    //             children: [
    //               IconButton(
    //                 icon: Icon(Icons.arrow_back),
    //                 color: Colors.red,
    //                 onPressed: () {},
    //               ),
    //               SizedBox(
    //                 width: 100,
    //               ),
    //               Expanded(child: LocationSearchBox()),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}

// class LocationSearchBox extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         children: [
//           Container(
//             child: IconButton(
//               icon: Icon(Icons.arrow_back),
//               color: Colors.red,
//               onPressed: () {},
//             ),
//           ),
//           Positioned(
//             top: 40,
//             left: 20,
//             right: 20,
//             child: Container(
//               height: 200,
//               child: Row(
//                 children: [
//                   TextField(
//                     decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.white,
//                       hintText: 'Enter Your location',
//                       suffixIcon: Icon(Icons.search),
//                       contentPadding:
//                           const EdgeInsets.only(left: 20, bottom: 5, right: 5),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 100,
//                   ),
//                   Expanded(
//                     child: Location1_screen(),
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
