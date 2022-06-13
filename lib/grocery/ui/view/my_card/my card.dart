import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCards extends StatefulWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  _MyCardsState createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  int? _groupValue;
  TextEditingController nameController = TextEditingController();
  TextEditingController cardController = TextEditingController();
  String fullName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text("Payment",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Roboto-Regular.ttf'
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 0,
              child: CarouselSlider(
                  items: [
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("images/visa card.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 0),
                  viewportFraction: 0.8,
                ),
               ),
            ),
            SizedBox(height: 15,),
            Expanded(
              flex: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Add New Card",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Image(image: AssetImage("images/master card.png"),),
                                Radio<int>(
                                  groupValue: _groupValue,
                                  value: 1,
                                  onChanged: (int? value) {
                                    setState(() {
                                      _groupValue = value;
                                    });
                                  },
                                )
                              ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: [
                                Image(image: AssetImage("images/visa icon.png")),
                                Radio<int>(
                                  groupValue: _groupValue,
                                  value: 2,
                                  onChanged: (int? value) {
                                    setState(() {
                                      _groupValue = value;
                                    });
                                  },
                                )
                              ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: [
                                Image(image: AssetImage("images/american express icon.png")),
                                Radio<int>(
                                  groupValue: _groupValue,
                                  value: 3,
                                  onChanged: (int? value) {
                                    setState(() {
                                      _groupValue = value;
                                    });
                                  },
                                )
                              ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: [
                                Image(image: AssetImage("images/bKash icon.png")),
                                Radio<int>(
                                  groupValue: _groupValue,
                                  value: 4,
                                  onChanged: (int? value) {
                                    setState(() {
                                      _groupValue = value;
                                    });
                                  },
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                child: TextField(
                                  controller: nameController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Cardholder Name',
                                  ),
                                  onChanged: (text) {
                                    setState(() {
                                      fullName = text;
                                      //you can access nameController in its scope to get
                                      // the value of text entered as shown below
                                      //fullName = nameController.text;
                                    });
                                  },
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(10),
                                child: TextField(
                                  controller: cardController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Card Number',
                                  ),
                                  onChanged: (text) {
                                    setState(() {
                                      fullName = text;
                                      //you can access nameController in its scope to get
                                      // the value of text entered as shown below
                                      //fullName = nameController.text;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(height: 10,),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 170,
                                      margin: EdgeInsets.all(10),
                                      child: TextField(
                                        controller: nameController,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'MM/YY',
                                        ),
                                        onChanged: (text) {
                                          setState(() {
                                            fullName = text;
                                            //you can access nameController in its scope to get
                                            // the value of text entered as shown below
                                            //fullName = nameController.text;
                                          });
                                        },
                                      ),
                                    ),
                                    //SizedBox(width: 10,),
                                    Container(
                                      width: 165,
                                      margin: EdgeInsets.all(10),
                                      child: TextField(
                                        controller: nameController,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'CVV',
                                        ),
                                        onChanged: (text) {
                                          setState(() {
                                            fullName = text;
                                            //you can access nameController in its scope to get
                                            // the value of text entered as shown below
                                            //fullName = nameController.text;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               IconButton(
                                   onPressed: (){},
                                 icon: Icon(FontAwesomeIcons.checkSquare, color: Colors.green,size: 10,),
                               ),
                                Padding(
                                  padding: const EdgeInsets.only( top: 15),
                                  child: Text("Set as default payment card",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                // Image(image: AssetImage("images/success button.png")),

                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 40),
                          child: SizedBox(
                            height: 50,
                            width: 250,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                              onPressed: (){
                                //Navigator.push(context, MaterialPageRoute(builder: (context) =>Payment()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Save Card",
                                    style: TextStyle(
                                      color: Colors.white,
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
