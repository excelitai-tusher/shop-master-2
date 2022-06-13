import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({Key? key}) : super(key: key);

  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {

  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
    @override
    Widget build(BuildContext context) {
      Path customPath = Path()
        .. moveTo(0, 0)
        .. lineTo(0, 140);
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios, size: 30, color: Colors.black)),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Track Order",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15 , right: 15, top: 10),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height* .20,
                    width: MediaQuery.of(context).size.width* 15,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 30,
                          offset: Offset(0, 8), // Shadow position
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(FontAwesomeIcons.clock, size: 12,
                                  color: Colors.grey,),
                                Text(
                                  "Delivery today at 3.00 pm",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                //SizedBox(width: 5,),
                                Text(
                                  "Change Time",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.location_on_sharp, size: 16,
                                  color: Colors.grey,),
                                Text(
                                  "Mogbazar, New Waskaton, Ramna, Dhaka-1217.",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Icon(
                                  Icons.edit, size: 16, color: Colors.green,),
                              ],
                            ),
                          ),
                          SizedBox(height: 25,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Container(
                              height: 1,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Write Instructions(Optional)",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: MediaQuery.of(context).size.height * .10,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 30,
                          offset: Offset(0, 8), // Shadow position
                        ),

                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 50,
                                //margin: EdgeInsets.,
                                child: Container(
                                  height: 100,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage("images/Abir.jpeg"),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 15,),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Rahim",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Text(
                                      "Your Courier",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.phone_in_talk_outlined, size: 25,
                                color: Colors.green,),
                              SizedBox(width: 10,),
                              Icon(Icons.mail_outline, size: 25,
                                color: Colors.green,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Order #1236757",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 10,),
                            RichText(
                              text: TextSpan(
                                text: 'Amount: ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '\$ 9,60.0',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => const CancelOrder()));
                        },
                        child: Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.green),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 30,
                                offset: Offset(0, 8), // Shadow position
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25),
                                child: Text(
                                  "Cancel order",
                                  style: TextStyle(
                                    color: Colors.green,
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text("ETA: 15 Minutes",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 500,
                  width: 300,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.check_circle_sharp, color: Colors.green,
                            size: 30,),
                          DottedBorder(
                            color: Colors.grey,
                            customPath: (size) => customPath,
                            strokeWidth: 1,
                            strokeCap: StrokeCap.round,
                            borderType: BorderType.Rect,
                            dashPattern: const [2, 2],
                            child: const SizedBox(
                              width: 0,
                              height: 40,
                            ),
                          ),
                          const Icon(
                            Icons.check_circle_sharp, color: Colors.green,
                            size: 30,),
                          DottedBorder(
                            color: Colors.grey,
                            customPath: (size) => customPath,
                            strokeWidth: 1,
                            strokeCap: StrokeCap.round,
                            borderType: BorderType.Rect,
                            dashPattern: const [2, 2],
                            child: const SizedBox(
                              width: 0,
                              height: 40,
                            ),
                          ),

                          const Icon(
                            Icons.check_circle_sharp, color: Colors.green,
                            size: 30,),
                          DottedBorder(
                            color: Colors.grey,
                            customPath: (size) => customPath,
                            strokeWidth: 1,
                            strokeCap: StrokeCap.round,
                            borderType: BorderType.Rect,
                            dashPattern: const [2, 2],
                            child: const SizedBox(
                              width: 0,
                              height: 130,
                            ),
                          ),
                          const Icon(
                            Icons.circle, color: Colors.grey, size: 50,)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: (){
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderHistory()));
                            },
                            child: Text("Order placed",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("2.30pm, 15/Jan/2022",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text("Order placed",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("2.30pm, 15/Jan/2022",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text("Order placed",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("2.30pm, 15/Jan/2022",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.green),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 30,
                                  offset: Offset(0, 8), // Shadow position
                                ),
                              ],
                            ),
                            child: GoogleMap(
                              onMapCreated: _onMapCreated,
                              initialCameraPosition: CameraPosition(
                                target: _center,
                                zoom: 11.0,
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("Order placed",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("2.30pm, 15/Jan/2022",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
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
      );
    }
}
