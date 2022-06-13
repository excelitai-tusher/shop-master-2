import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Order_Details_1 extends StatefulWidget {
  const Order_Details_1({Key? key}) : super(key: key);

  @override
  State<Order_Details_1> createState() => _Order_Details_1State();
}

class _Order_Details_1State extends State<Order_Details_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.2,
        centerTitle: true,
        backgroundColor: Color(0xffE37D4E),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Order Details',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Container(
                  margin: EdgeInsets.fromLTRB(15, 30, 15, 30),
                  height: MediaQuery.of(context).size.height * .6,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0XFFF8EBD0),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Text(
                            'Your Order is on its way',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          Image.asset('assets/Rectangle 237.webp'),
                          SizedBox(
                            height: 10,
                          ),

                          Text(
                            'Select Delivery Slot',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text('9:00 AM -10:00 AM'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                elevation: 3,
                                //minimumSize: Size(100, 40),
                              ),
                              onPressed: () async {
                                // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>()));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Pay with",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.money,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        "Cash on Delivery : ৳ 300.0",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 60, right: 60),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(20), // <-- Radius
                                ),
                                primary: Colors.amber,
                                minimumSize: Size(100, 40),
                              ),
                              onPressed: () async {
                                // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Track Order",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          // ElevatedButton(
                          //   // style: ElevatedButton.styleFrom(minimumSize: Size(80, 40)),
                          //     onPressed: (){
                          //     //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TrackOrder()));
                          //     },
                          //     child:
                          //     Text('TRACK ORDER',
                          //       style: TextStyle(color: Colors.white),)),
                          Text(
                            'Go to Homepage',
                            style: TextStyle(
                                fontSize: 18, color: Color(0xffE37D4E)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Order Number"), Text("309")],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Invoice Number"), Text("67754347")],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Order total (Incl.VAT"), Text("300.00")],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Delivery Change"), Text("50.00")],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Grand Total"), Text("350.00")],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Address"), Text("350.00")],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
