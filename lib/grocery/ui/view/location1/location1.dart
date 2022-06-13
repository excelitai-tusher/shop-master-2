import 'package:flutter/material.dart';

class Location1 extends StatefulWidget {
  const Location1({Key? key}) : super(key: key);

  @override
  _Location1State createState() => _Location1State();
}

class _Location1State extends State<Location1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height: 130,
              width: 50,
              child: Icon(Icons.arrow_back_ios, size: 30, color: Colors.black,)
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Search for your location',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 50,
                width: 350,
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Color(0xffF7FFEF),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffF7FFEF),
                        blurRadius: 15,
                        offset: Offset(0, 3),
                      ),
                    ]
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 22,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Address search',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 1,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
              ),
              Text(
                'OR',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 1,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Icon(
                  Icons.location_searching,
                  size: 22,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 5,
                ),
                const Text(
                  'Use current location',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Recent Searches',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Icon(
                  Icons.av_timer,
                  size: 22,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                const Text(
                  'Mogbazar, New Easkaton, Ramna, Dhaka-1217',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
