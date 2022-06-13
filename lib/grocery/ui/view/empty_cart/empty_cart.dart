import 'package:flutter/material.dart';

import '../Cancel_order/Cancel_Order.dart';

class empty_cart extends StatelessWidget {

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
        title: Text("Cart",style:  TextStyle(
            color: Colors.black,
            fontSize: 20
        ),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 90),
          child: Column(
            children: [
              Image.asset('assets/Empty_cart.png',
                width: 180,
                height: 190,
                fit: BoxFit.fill,),
              Text('Empty Cart',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20,
              ),
              Text("Looks like you haven't added \n            "
                  "any items yet ."),

              SizedBox(height: 40,),

              InkWell(
                child: SizedBox(
                  height: 35,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (Context) =>Cancel_Order()));

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
                            child: Text("Let's Shop >",
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
