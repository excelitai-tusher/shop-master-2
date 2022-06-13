import 'package:flutter/material.dart';

import '../empty_cart/empty_cart.dart';

class No_History extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {},
        ),
        title: Text("Order History",style:  TextStyle(
            color: Colors.black,
            fontSize: 20
        ),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 7
              ),
          child: Column(
            children: [
              Image.asset('assets/no_history.png',
                // width: 120,
                // height: 180,
                fit: BoxFit.fill,),
              SizedBox(height: 50,),
              Text('No order history',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20,
              ),
              Text("Buy somethimg to see your order here. \n            "
                  "Have fun shopping!"),

              SizedBox(height: 40,),

              InkWell(
                child: SizedBox(
                  height: 35,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                       MaterialPageRoute(builder: (Context) =>empty_cart ()));

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

      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 10),
        child: SizedBox(
          height: 55,
          width: 70,
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            elevation: 0,
            onPressed: () {},
            child: Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 4),
                  shape: BoxShape.circle,
                  color: Colors.greenAccent
              ),
              child: Icon(Icons.my_library_books_sharp, size: 25, color: Colors.green,),

            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: new Container(
        height:90.0,
        color: Colors.white,
        //padding: new EdgeInsets.only(top: 20.0),
        child: new Theme(

          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
              canvasColor: Colors.white,
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              //primaryColor: Colors.red,
              bottomAppBarColor: Colors.green,
              textTheme: Theme
                  .of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.grey))), // sets the inactive color of the `BottomNavigationBar`
          child:
          new BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex:0 ,
              items: [
                BottomNavigationBarItem(
                    icon: new Icon(Icons.home),
                    label: 'Home',
                    backgroundColor: Colors.grey
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.favorite_border),
                  label: 'Favourite',
                ),
                // BottomNavigationBarItem(
                //     icon: Icon(Icons.my_library_books_sharp,color: Colors.greenAccent,),
                //     title: Text('')
                // ),

                BottomNavigationBarItem(
                    icon: Icon(Icons.book_online_outlined),
                    label: 'History',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle, color: Colors.greenAccent,),
                    label: 'Profile',
                ),

              ]),
        ),
      ),

    );
  }
}
