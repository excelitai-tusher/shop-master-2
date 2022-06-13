import 'package:flutter/material.dart';

import '../home_page/component/bundle_offers_list_view.dart';
import '../home_page/component/home_page_titles.dart';
import '../home_page/component/popular_product_list_view.dart';

class TopDealsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: const BoxDecoration(boxShadow: []),
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                const Text(
                  'Top Deals',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                // Icon(
                //   Icons.search,
                //   size: 35,
                //   color: Colors.black54,
                // ),
              ],
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            size: 35,
            color: Colors.black54,
          ),
        ],
      ),
      // body: ListView(
      //   scrollDirection: Axis.horizontal,
      //   children: <Widget>[
      //     Padding(
      //       padding: const EdgeInsets.all(20),
      //       child: Text(
      //         'My list',
      //         style: TextStyle(fontWeight: FontWeight.bold),
      //       ),
      //     ),
      //     Mylist(),
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 50,
                        height: 25,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "All",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      SizedBox(
                        width: 80,
                        height: 25,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.limeAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Fruits",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      SizedBox(
                        width: 95,
                        height: 25,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.limeAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Vegetables",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 2),
                      SizedBox(
                        width: 80,
                        height: 25,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lightGreen,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Dairy",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      SizedBox(
                        width: 65,
                        height: 25,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.limeAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Meat",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomHomePageTitles(
                leadingTitle: "Bundle Offers",
                trailingTitle: "See All",
              ),
              SizedBox(
                height: 20,
              ),
              BundleOffersListView(),
              SizedBox(
                height: 20,
              ),
              CustomHomePageTitles(
                leadingTitle: "Popular",
                trailingTitle: "See All",
              ),
              SizedBox(
                height: 20,
              ),
              PopularProductListView(),
            ],
          ),
        ),
      ),
    );
  }
}
