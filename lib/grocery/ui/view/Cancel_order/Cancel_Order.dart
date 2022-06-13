import 'package:flutter/material.dart';

import '../HomePage_listview/HomePage_listview.dart';

class Cancel_Order extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {},
        ),
        title: Text("Cancel Order",style:  TextStyle(
            color: Colors.black,
            fontSize: 20
        ),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 90),
          child: Column(
            children: [
              Image.asset('assets/Vector.png',
                // width: 80,
                // height: 90,
              //  fit: BoxFit.fill,
            ),
              Image.asset('assets/Cancel_order.png',
                // width: 80,
                // height: 90,
                //  fit: BoxFit.fill,
              ),

              Text('Order cancellation',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20,
              ),
              Center(
                child: Text("  Are you sure you want to \n"
                    "send a cancellation request ?"),
              ),

              SizedBox(height: 40,),

              InkWell(
                child: SizedBox(
                  height: 35,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (Context) =>Home()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: new
                      RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: Center(
                            child: Text("Cancel Order ",
                              style: TextStyle(color: Colors.white,fontSize: 20),

                            ),

                          ),
                          )

                        ],
                      ),
                    ),
                  ),
                ),
              ),

            ],


          ),

        ),

      ),
    );
  }
}
