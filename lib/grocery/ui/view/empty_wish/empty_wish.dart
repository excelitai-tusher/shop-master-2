import 'package:flutter/material.dart';

class EmptyFavourite extends StatefulWidget {
  const EmptyFavourite({Key? key}) : super(key: key);

  @override
  _EmptyFavouriteState createState() => _EmptyFavouriteState();
}

class _EmptyFavouriteState extends State<EmptyFavourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   leading: Icon(Icons.arrow_back_ios_outlined, size: 18, color: Colors.grey),
      //   title: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 50),
      //     child: Text("Cart",
      //       style: TextStyle(
      //         color: Colors.black,
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 50),
        child: Column(
          children: [
            Image(image: AssetImage("images/empty cart.png"),
            ),
            SizedBox(height: 20,),
            Text("Empty Favourite",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),
            Text("Looks like you haven't added \n                  any items yet",
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
                child: Text("Let's Shop >",
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
