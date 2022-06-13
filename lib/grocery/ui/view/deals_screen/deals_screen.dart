
import 'package:flutter/material.dart';

class Deals_screen extends StatefulWidget {

  @override
  _Deals_screenState createState() => _Deals_screenState();
}

class _Deals_screenState extends State<Deals_screen> {
  TextEditingController searchController = new TextEditingController();
  List<String> navBarItem = ["All" , "Fruits" , "Vegetables" , "Dairy" , "Meat","Fish"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
        onTap: () {},
    child: const Icon(
    Icons.arrow_back_ios,
    color: Colors.black,
    ),
    ),
    title: Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    decoration: const BoxDecoration(boxShadow: [

    ]),
    child: Row(

    children: [
    SizedBox(
    width: 60,
    ),
    const Text(
    'Top Deals',
    style: TextStyle(
    color: Colors.black,
    fontSize: 20,
    ),
    ),
      SizedBox(
        width: 100,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,),
        child: Icon(
          Icons.search,
          size: 35,
          color: Colors.black54,
        ),
      ),
    ],
    ),
    ),
         ),
      body: Column(
        children: [
          Container(

            padding: EdgeInsets.symmetric(horizontal: 8),
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24)),


          ),

          Container(
              height: 50,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: navBarItem.length,
                  itemBuilder : (context , index){
                    return InkWell(
                      onTap: () {
                        print(navBarItem[index]);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20 , vertical : 10),
                        margin: EdgeInsets.symmetric(horizontal : 5),
                        decoration : BoxDecoration(
                            color: Colors.limeAccent,
                            borderRadius : BorderRadius.circular(15)
                        ),

                        child : Center(
                          child: Text(
                              navBarItem[index] ,
                              style: TextStyle(
                                  fontSize:19 ,
                                  color: Colors.white,
                                  fontWeight:FontWeight.bold
                              )),
                        ),
                      ),
                    );
                  }
              )
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Bundle Offers",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(width: 150,),
          Text(
            "view all",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),),
            ],
          ),

        ],
      ),


    );
  }
}













// import 'package:flutter/material.dart';
// import 'screen/Mylist.dart';
// class Deals_screen extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         leading: GestureDetector(
//         onTap: () {},
//     child: const Icon(
//     Icons.arrow_back_ios,
//     color: Colors.black,
//     ),
//     ),
//     title: Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 10),
//     child: Container(
//     padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//     decoration: const BoxDecoration(boxShadow: [
//
//     ]),
//     child: Row(
//
//     children: [
//     SizedBox(
//     width: 50,
//     ),
//     const Text(
//     'Top Deals',
//     style: TextStyle(
//     color: Colors.black,
//     fontSize: 18,
//     ),
//     ),
//       SizedBox(
//         width: 110,
//       ),
//       Icon(
//         Icons.search,
//         size: 35,
//         color: Colors.black54,
//       ),
//     ],
//     ),
//     ),
//     ),
//         ),
//     body: ListView(
//       scrollDirection: Axis.horizontal,
//       children: <Widget>[
//         Padding(
//             padding:const EdgeInsets.all(20),
//           child: Text(
//             'My list',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//         ),
//         Mylist(),
//
//       ],
//     ),
//     //   body: Padding(
//     //     padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 5),
//     //     child: Column(
//     //       crossAxisAlignment: CrossAxisAlignment.start,
//     //       children: [
//     //     Row(
//     //     //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     //     children: [
//     //     SizedBox(
//     //     width: 50,
//     //       height: 25,
//     //       child: ElevatedButton(
//     //         style: ElevatedButton.styleFrom(
//     //           primary: Colors.green,
//     //           shape: RoundedRectangleBorder(
//     //             borderRadius: BorderRadius.circular(30.0),
//     //           ),
//     //         ),
//     //         onPressed: () {},
//     //         child: Text("All",
//     //           style: TextStyle(
//     //             color: Colors.white,
//     //             fontSize: 15,
//     //           ),
//     //         ),
//     //       ),
//     //     ),
//     //     SizedBox(
//     //       width: 2,
//     //     ),
//     //     SizedBox(
//     //       width: 80,
//     //       height: 25,
//     //       child: ElevatedButton(
//     //         style: ElevatedButton.styleFrom(
//     //           primary: Colors.limeAccent,
//     //           shape: RoundedRectangleBorder(
//     //             borderRadius: BorderRadius.circular(30.0),
//     //           ),
//     //         ),
//     //         onPressed: () {},
//     //         child: Text(
//     //           "Fruits",
//     //           style: TextStyle(
//     //             color: Colors.black,
//     //             fontSize: 12,
//     //           ),
//     //         ),
//     //       ),
//     //     ),
//     //     SizedBox(
//     //       width: 2,
//     //     ),
//     //     SizedBox(
//     //       width: 95,
//     //       height: 25,
//     //       child: ElevatedButton(
//     //         style: ElevatedButton.styleFrom(
//     //           primary: Colors.limeAccent,
//     //           shape: RoundedRectangleBorder(
//     //             borderRadius: BorderRadius.circular(30.0),
//     //           ),
//     //         ),
//     //         onPressed: () {},
//     //         child: Text(
//     //           "Vegetables",
//     //           style: TextStyle(
//     //             color: Colors.black,
//     //             fontSize: 12,
//     //           ),
//     //         ),
//     //       ),
//     //     ),
//     //     SizedBox(width: 2),
//     //     SizedBox(
//     //       width: 80,
//     //       height: 25,
//     //       child: ElevatedButton(
//     //         style: ElevatedButton.styleFrom(
//     //           primary: Colors.lightGreen,
//     //           shape: RoundedRectangleBorder(
//     //             borderRadius: BorderRadius.circular(30.0),
//     //           ),
//     //         ),
//     //         onPressed: () {},
//     //         child: Text(
//     //           "Dairy",
//     //           style: TextStyle(
//     //             color: Colors.black,
//     //             fontSize: 12,
//     //           ),
//     //         ),
//     //       ),
//     //     ),
//     //     SizedBox(
//     //       width: 2,
//     //     ),
//     //     SizedBox(
//     //       width: 65,
//     //       height: 25,
//     //       child: ElevatedButton(
//     //         style: ElevatedButton.styleFrom(
//     //           primary: Colors.limeAccent,
//     //           shape: RoundedRectangleBorder(
//     //             borderRadius: BorderRadius.circular(30.0),
//     //           ),
//     //         ),
//     //         onPressed: () {},
//     //         child: Text(
//     //           "Meat",
//     //           style: TextStyle(
//     //             color: Colors.black,
//     //             fontSize: 10,
//     //           ),
//     //         ),
//     //       ),
//     //     ),
//     //     ],
//     //   ),
//     // ],
//     // ),
//     // ),
//     );
//   }
// }
//
