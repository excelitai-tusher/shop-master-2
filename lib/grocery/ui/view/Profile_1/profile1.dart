import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../registration/registration.dart';
import '../signIn/signIn.dart';

class Profile1 extends StatefulWidget {
  const Profile1({Key? key}) : super(key: key);

  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  final maxLines = 1;
  get borderRadius => BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: AutoSizeText(
            "Profile",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
            maxFontSize: 35,
            minFontSize: 10,
            maxLines: maxLines,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 100,
                  //margin: EdgeInsets.,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      // image: DecorationImage(
                      //  image: AssetImage(""),
                      // ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Hello, Wellcome to Grocery!",
                  style: TextStyle(
                    color: Colors.black,
                    //fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 65),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 250,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            onPressed: () {
                              //Navigator.push(context, MaterialPageRoute(builder: (context) =>Payment()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignIn()),
                                    );
                                  },
                                  child: Text(
                                    "Sign In /",
                                    style: TextStyle(
                                      color: Colors.white,
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Registation()),
                                    );
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      color: Colors.white,
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height:
                                      MediaQuery.of(context).size.height * .10,
                                      width: MediaQuery.of(context).size.width * .2,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        shape: BoxShape.circle,
                                        // image: DecorationImage(
                                        //  image: AssetImage("Allu arjun.jpeg"),
                                        // ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    AutoSizeText(
                                      "Hello, Wellcome to Grocery!",
                                      style: TextStyle(
                                        color: Colors.black,
                                        //fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                      maxFontSize: 35,
                                      minFontSize: 10,
                                      maxLines: maxLines,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 65),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            height:
                                            MediaQuery.of(context).size.height *
                                                .06,
                                            width: MediaQuery.of(context).size.width *
                                                .60,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.green,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(15.0),
                                                ),
                                              ),
                                              onPressed: () {
                                                //Navigator.push(context, MaterialPageRoute(builder: (context) =>Payment()));
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                SignIn()),
                                                      );
                                                    },
                                                    child: AutoSizeText(
                                                      "Sign In /",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        //fontWeight: FontWeight.bold,
                                                        fontSize: 20,
                                                      ),
                                                      maxFontSize: 35,
                                                      minFontSize: 10,
                                                      maxLines: maxLines,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                Registation()),
                                                      );
                                                    },
                                                    child: AutoSizeText(
                                                      "Sign Up",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        //fontWeight: FontWeight.bold,
                                                        fontSize: 20,
                                                      ),
                                                      maxFontSize: 35,
                                                      minFontSize: 10,
                                                      maxLines: maxLines,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                    .10,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    .2,
                                                decoration: BoxDecoration(
                                                  color: Colors.lime,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                      spreadRadius: 1,
                                                      blurRadius: 3,
                                                      offset: Offset(0,
                                                          1), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.symmetric(
                                                      vertical: 5),
                                                  child: Column(
                                                    children: [
                                                      AutoSizeText(
                                                        "0",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          //fontWeight: FontWeight.bold,
                                                          fontSize: 20,
                                                        ),
                                                        maxFontSize: 35,
                                                        minFontSize: 10,
                                                        maxLines: maxLines,
                                                        overflow:
                                                        TextOverflow.ellipsis,
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      AutoSizeText(
                                                        "Orders",
                                                        style: TextStyle(
                                                          color: Colors.grey,
                                                          //fontWeight: FontWeight.bold,
                                                          fontSize: 20,
                                                        ),
                                                        maxFontSize: 35,
                                                        minFontSize: 10,
                                                        maxLines: maxLines,
                                                        overflow:
                                                        TextOverflow.ellipsis,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                    .10,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    .2,
                                                decoration: BoxDecoration(
                                                  color: Colors.lime,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                      spreadRadius: 1,
                                                      blurRadius: 3,
                                                      offset: Offset(0,
                                                          1), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.symmetric(
                                                      vertical: 5),
                                                  child: Column(
                                                    children: [
                                                      AutoSizeText(
                                                        "\$0",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          //fontWeight: FontWeight.bold,
                                                          fontSize: 20,
                                                        ),
                                                        maxFontSize: 35,
                                                        minFontSize: 10,
                                                        maxLines: maxLines,
                                                        overflow:
                                                        TextOverflow.ellipsis,
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      AutoSizeText(
                                                        "Saved",
                                                        style: TextStyle(
                                                          color: Colors.grey,
                                                          //fontWeight: FontWeight.bold,
                                                          fontSize: 20,
                                                        ),
                                                        maxFontSize: 35,
                                                        minFontSize: 10,
                                                        maxLines: maxLines,
                                                        overflow:
                                                        TextOverflow.ellipsis,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                    .10,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    .2,
                                                decoration: BoxDecoration(
                                                  color: Colors.lime,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                      spreadRadius: 1,
                                                      blurRadius: 3,
                                                      offset: Offset(0,
                                                          1), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.symmetric(
                                                      vertical: 5),
                                                  child: Column(children: [
                                                    AutoSizeText(
                                                      "\$0",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        //fontWeight: FontWeight.bold,
                                                        fontSize: 20,
                                                      ),
                                                      maxFontSize: 35,
                                                      minFontSize: 10,
                                                      maxLines: maxLines,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    AutoSizeText(
                                                      "Spent",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        //fontWeight: FontWeight.bold,
                                                        fontSize: 20,
                                                      ),
                                                      maxFontSize: 35,
                                                      minFontSize: 10,
                                                      maxLines: maxLines,
                                                      overflow: TextOverflow.ellipsis,
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Column(
//                       children: [
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Container(
//                               width: 80,
//                               //margin: EdgeInsets.symmetric(horizontal: 50),
//                               height: 70,
//                               decoration: BoxDecoration(
//                                 color: Colors.lime,
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey.withOpacity(0.5),
//                                     spreadRadius: 1,
//                                     blurRadius: 3,
//                                     offset: Offset(0, 1), // changes position of shadow
// =======
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Column(
//                 children: [
//                   Container(
//                     height: MediaQuery.of(context).size.height * .25,
//                     width: MediaQuery.of(context).size.width* .90,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: new BorderRadius.circular(10.0),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey,
//                           blurRadius: 30,
//                           offset: Offset(0, 8), // Shadow position
//                         ),
//                       ],
//                     ),
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding:
//                               const EdgeInsets.symmetric(horizontal: 20),
//                           child:  Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 children: [
//                                   Icon(
//                                     Icons.email,
//                                     color: Colors.green,
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Column(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       AutoSizeText(
//                                         "Email",
//                                         style: TextStyle(
//                                           color: Colors.green,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 16,
//                                         ),
//                                         maxFontSize: 35,
//                                         minFontSize: 10,
//                                         maxLines: maxLines,
//                                         overflow: TextOverflow.ellipsis,
//                                       ),
//                                       SizedBox(
//                                         height: 2,
//                                       ),
//                                       AutoSizeText(
//                                         "ExcelItAI@gmail.com",
//                                         style: TextStyle(
//                                           color: Colors.grey,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 16,
//                                         ),
//                                         maxFontSize: 35,
//                                         minFontSize: 10,
//                                         maxLines: maxLines,
//                                         overflow: TextOverflow.ellipsis,
//                                       ),
//                                     ],
//                                   )
//                                 ],
//                               ),
// <<<<<<< HEAD
//                               child: Padding(
//                                 padding: const EdgeInsets.symmetric(vertical: 5),
//                                 child: Column(
//                                   children: [
//                                     Text("0",
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                         //fontWeight: FontWeight.bold,
//                                         fontSize: 20,
//                                       ),
//                                     ),
//                                     SizedBox(height: 10,),
//                                     Text("Orders",
//                                       style: TextStyle(
//                                         color: Colors.grey,
//                                         //fontWeight: FontWeight.bold,
//                                         fontSize: 20,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: 30,),
//                             Container(
//                               width: 80,
//                               //margin: EdgeInsets.symmetric(horizontal: 160),
//                               height: 70,
//                               decoration: BoxDecoration(
//                                 color: Colors.lime,
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey.withOpacity(0.5),
//                                     spreadRadius: 1,
//                                     blurRadius: 3,
//                                     offset: Offset(0, 1), // changes position of shadow
//                                   ),
//                                 ],
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsets.symmetric(vertical: 5),
//                                 child: Column(
//                                   children: [
//                                     Text("\$0",
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                         //fontWeight: FontWeight.bold,
//                                         fontSize: 20,
//                                       ),
//                                     ),
//                                     SizedBox(height: 10,),
//                                     Text("Saved",
//                                       style: TextStyle(
//                                         color: Colors.grey,
//                                         //fontWeight: FontWeight.bold,
//                                         fontSize: 20,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: 30,),
//                             Container(
//                               width: 80,
//                               //margin: EdgeInsets.symmetric(horizontal: 160),
//                               height: 70,
//                               decoration: BoxDecoration(
//                                 color: Colors.lime,
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey.withOpacity(0.5),
//                                     spreadRadius: 1,
//                                     blurRadius: 3,
//                                     offset: Offset(0, 1), // changes position of shadow
//                                   ),
//                                 ],
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsets.symmetric(vertical: 5),
//                                 child: Column(
//                                   children: [
//                                     Text("\$0",
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                         //fontWeight: FontWeight.bold,
//                                         fontSize: 20,
//                                       ),
//                                     ),
//                                     SizedBox(height: 10,),
//                                     Text("Spent",
//                                       style: TextStyle(
//                                         color: Colors.grey,
//                                         //fontWeight: FontWeight.bold,
//                                         fontSize: 20,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 20,),
//                         Column(
//                           children: [
//                             Container(
//                               height: 220,
//                               width: 350,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: new BorderRadius.circular(10.0),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 30,
//                                     offset: Offset(0, 8), // Shadow position
//                                   ),
//
//                                 ],
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsets.symmetric(vertical: 15),
//                                 child: Column(
//                                   children: [
//                                     SizedBox(height: 20,),
//                                     Padding(
//                                       padding: const EdgeInsets.symmetric(horizontal: 20),
//                                       child: Row(
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           Icon(Icons.email, size: 20, color: Colors.green,),
//                                           SizedBox(width: 10,),
//                                           Column(
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                               Text("Email",
//                                                 style: TextStyle(
//                                                   color: Colors.green,
//                                                   fontWeight: FontWeight.bold,
//                                                   fontSize: 16,
//                                                 ),
//                                               ),
//                                               SizedBox(height: 5,),
//                                               Text("ExcelItAI@gmail.com",
//                                                 style: TextStyle(
//                                                   color: Colors.grey,
//                                                   fontWeight: FontWeight.bold,
//                                                   fontSize: 16,
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                           Padding(
//                                             padding: const EdgeInsets.symmetric(horizontal: 50),
//                                             child: Icon(Icons.edit, size: 16, color: Colors.green,),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     SizedBox(height: 20,),
//                                     Padding(
//                                       padding: const EdgeInsets.symmetric(horizontal: 20),
//                                       child: Row(
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           Icon(Icons.location_on_sharp, size: 20, color: Colors.green,),
//                                           SizedBox(width: 10,),
//                                           Column(
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                               Text("Address",
//                                                 style: TextStyle(
//                                                   color: Colors.green,
//                                                   fontWeight: FontWeight.bold,
//                                                   fontSize: 16,
//                                                 ),
//                                               ),
//                                               SizedBox(height: 5,),
//                                               Text("Moghbazar, New Eskaton, Ramna, Dhaka-1217.",
//                                                 style: TextStyle(
//                                                   color: Colors.grey,
//                                                   fontWeight: FontWeight.bold,
//                                                   fontSize: 12,
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//
//                                         ],
//                                       ),
//                                     ),
//                                     SizedBox(height: 20,),
//                                     Padding(
//                                       padding: const EdgeInsets.symmetric(horizontal: 20),
//                                       child: Row(
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           Icon(Icons.phone, size: 20, color: Colors.green,),
//                                           SizedBox(width: 10,),
//                                           Column(
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                               Text("Phone Number",
//                                                 style: TextStyle(
//                                                   color: Colors.green,
//                                                   fontWeight: FontWeight.bold,
//                                                   fontSize: 16,
//                                                 ),
//                                               ),
//                                               SizedBox(height: 5,),
//                                               Text("+898 01700000000",
//                                                 style: TextStyle(
//                                                   color: Colors.grey,
//                                                   fontWeight: FontWeight.bold,
//                                                   fontSize: 12,
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 10,),
//                         Container(
//                           height: 65,
//                           width: 350,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: new BorderRadius.circular(10.0),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey,
//                                 blurRadius: 30,
//                                 offset: Offset(0, 8), // Shadow position
//                               ),
//
//                             ],
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 10, right: 10),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Icon(
//                                   Icons.payment,
//                                   color: Colors.green,
//                                 ),
//                                 Text(
//                                   'Select Default Payment Card',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 18,
//                                   ),
//                                 ),
//                                 Icon(
//                                   Icons.arrow_forward_ios,
//                                   color: Colors.grey,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 10,),
//                         Container(
//                           height: 65,
//                           width: 350,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: new BorderRadius.circular(10.0),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey,
//                                 blurRadius: 30,
//                                 offset: Offset(0, 8), // Shadow position
//                               ),
//                             ],
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 10, right: 10),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Icon(
//                                       Icons.logout,
//                                       color: Colors.green,
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text(
//                                       'Log Out',
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//
//                                 Icon(
//                                   Icons.arrow_forward_ios,
//                                   color: Colors.grey,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_forward_ios,
                                                color: Colors.grey,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.location_on_sharp,
                                                size: 20,
                                                color: Colors.green,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  AutoSizeText(
                                                    "Address",
                                                    style: TextStyle(
                                                      color: Colors.green,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 16,
                                                    ),
                                                    maxFontSize: 35,
                                                    minFontSize: 10,
                                                    maxLines: maxLines,
                                                    overflow: TextOverflow.ellipsis,
                                                  ),
                                                  //SizedBox(height: 5,),
                                                  AutoSizeText(
                                                    "Moghbazar, New Eskaton, Ramna, Dhaka-1217.",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12,
                                                    ),
                                                    maxFontSize: 35,
                                                    minFontSize: 10,
                                                    maxLines: maxLines,
                                                    overflow: TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.phone,
                                                size: 20,
                                                color: Colors.green,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  AutoSizeText(
                                                    "Phone Number",
                                                    style: TextStyle(
                                                      color: Colors.green,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 16,
                                                    ),
                                                    maxFontSize: 35,
                                                    minFontSize: 10,
                                                    maxLines: maxLines,
                                                    overflow: TextOverflow.ellipsis,
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  AutoSizeText(
                                                    "+898 01700000000",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12,
                                                    ),
                                                    maxFontSize: 35,
                                                    minFontSize: 10,
                                                    maxLines: maxLines,
                                                    overflow: TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),




                        ),
                      ),
                            ])),
                  // SizedBox(height: 10,),
                  // Container(
                  //   height: MediaQuery.of(context).size.height * .06,
                  //   width: MediaQuery.of(context).size.width* .90,
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: new BorderRadius.circular(10.0),
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: Colors.grey,
                  //         blurRadius: 30,
                  //         offset: Offset(0, 8), // Shadow position
                  //       ),
                  //     ],
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(left: 10, right: 10),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         Row(
                  //           children: [
                  //             Icon(
                  //               Icons.payment,
                  //               color: Colors.green,
                  //             ),
                  //             SizedBox(
                  //               width: 2,
                  //             ),
                  //             AutoSizeText(
                  //               'Select Default Payment Card',
                  //               textAlign: TextAlign.center,
                  //               style: TextStyle(
                  //                 color: Colors.black,
                  //                 fontSize: 18,
                  //               ),
                  //               maxFontSize: 35,
                  //               minFontSize: 10,
                  //               maxLines: maxLines,
                  //               overflow: TextOverflow.ellipsis,
                  //             ),
                  //           ],
                  //         ),
                  //         Icon(
                  //           Icons.arrow_forward_ios,
                  //           color: Colors.grey,
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 10,),
                  // Container(
                  //   height: MediaQuery.of(context).size.height * .06,
                  //   width: MediaQuery.of(context).size.width* .90,
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: new BorderRadius.circular(10.0),
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: Colors.grey,
                  //         blurRadius: 30,
                  //         offset: Offset(0, 8), // Shadow position
                  //       ),
                  //     ],
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(left: 10, right: 10),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         Row(
                  //           children: [
                  //             Icon(
                  //               Icons.logout,
                  //               color: Colors.green,
                  //             ),
                  //             SizedBox(
                  //               width: 2,
                  //             ),
                  //             AutoSizeText(
                  //               'Log Out',
                  //               textAlign: TextAlign.center,
                  //               style: TextStyle(
                  //                 color: Colors.black,
                  //                 fontSize: 18,
                  //               ),
                  //               maxFontSize: 35,
                  //               minFontSize: 10,
                  //               maxLines: maxLines,
                  //               overflow: TextOverflow.ellipsis,
                  //             ),
                  //           ],
                  //         ),
                  //         Icon(
                  //           Icons.arrow_forward_ios,
                  //           color: Colors.grey,
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),

                        ]
            )
          )
        )
      )

            );
  }
}
