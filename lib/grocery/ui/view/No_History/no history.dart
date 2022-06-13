import 'package:flutter/material.dart';

class NoOrderHistory extends StatefulWidget {
  const NoOrderHistory({Key? key}) : super(key: key);

  @override
  _NoOrderHistoryState createState() => _NoOrderHistoryState();
}

class _NoOrderHistoryState extends State<NoOrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_outlined, size: 18, color: Colors.grey),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text("Order History",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        child: Column(
          children: [
            Image(image: AssetImage("images/order history.png"),
            ),
            SizedBox(height: 20,),
            Text("No order history",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),
            Text("Buy something to see your order here. \n                  Have fun shopping",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              height: 40,
              width: 200,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                child: Text("Let's shop >",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
