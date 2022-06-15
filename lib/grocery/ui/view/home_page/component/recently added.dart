import 'package:bpp_shop/bpp/component/gradient_text.dart';
import 'package:bpp_shop/models/islamic/trending_product_model.dart';
import 'package:bpp_shop/view_model/islamic/http_trending_product.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/model/view model/http_recently_added_product.dart';
import '../../../../core/model/view model/http_top_selling_product.dart';

class GroceryRecentlyAddedProduct extends StatefulWidget {
  String title;
  GroceryRecentlyAddedProduct(
      this.title,
      );
  @override
  State<GroceryRecentlyAddedProduct> createState() => _GroceryRecentlyAddedProductState();
}

class _GroceryRecentlyAddedProductState extends State<GroceryRecentlyAddedProduct> {
  //HttpRequests _httpRequests =HttpRequests();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getRecentAdded(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            List<TrendingProducts> get = snapshot.data ?? <TrendingProducts>[];
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    widget.title == 'topselling'
                        ? "Top Selling"
                        : widget.title == 'TrendingProduct'
                        ? 'Trending Product'
                        : widget.title == 'TopRated'
                        ? "Top Rated"
                        : '',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    // Container(
                    //   width: 120,
                    //   height: 4,
                    //   color: Colors.amber,
                    // ),
                    // Container(
                    //   width: 80,
                    //   height: 4,
                    //   color: Colors.grey[300],
                    // ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: get.length < 3
                      ? MediaQuery.of(context).size.width / 4
                      : get.length >= 3
                      ? (MediaQuery.of(context).size.width / 4) * 2
                      : 0,
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 4 / 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                      itemCount: get.length == 1
                          ? 1
                          : get.length == 2
                          ? 2
                          : get.length == 3
                          ? 3
                          : 4,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ListTile(
                          isThreeLine: true,
                          leading: get[index].productThambnail != null
                              ? Image.network(
                            "https://bppshops.com/${get[index].productThambnail}",
                            fit: BoxFit.cover,
                          )
                              : Image.network(
                            'https://st3.depositphotos.com/23594922/31822/v/600/depositphotos_318221368-stock-illustration-missing-picture-page-for-website.jpg',
                            fit: BoxFit.cover,
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Text(
                              "${get[index].productName}",
                              style: TextStyle(color: Colors.black),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          subtitle: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 11,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 11,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 11,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 11,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey,
                                      size: 10,
                                    ),
                                    Text(
                                      "(14)",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  "৳ ${double.tryParse(get[index].sellingPrice!)?.toStringAsFixed(1)}",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  "৳ ${double.tryParse(get[index].discountPrice!)?.toStringAsFixed(1)}",
                                  style: TextStyle(
                                    color: Colors.red,
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            );
          } else {
            return Column(
              children: [
                Shimmer(
                  duration: Duration(seconds: 2), //Default value
                  interval: Duration(
                      seconds: 1), //Default value: Duration(seconds: 0)
                  color: Colors.black, //Colors.grey.shade700, //Default value
                  colorOpacity: 0, //Default value
                  enabled: true, //Default value
                  direction: ShimmerDirection.fromLTRB(),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 35,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(6),
                      // border:
                      // Border.all(color: Colors.grey, width: 1)
                    ),
                  ),
                ),
                Container(
                    height: (MediaQuery.of(context).size.width / 4) * 2,
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 4 / 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Shimmer(
                              duration: Duration(seconds: 2), //Default value
                              interval: Duration(
                                  seconds:
                                  1), //Default value: Duration(seconds: 0)
                              color: Colors
                                  .black, //Colors.grey.shade700, //Default value
                              colorOpacity: 0, //Default value
                              enabled: true, //Default value
                              direction: ShimmerDirection.fromLTRB(),
                              child: Container(
                                child: Center(
                                  child: GradientText(
                                    'Bpp Shop',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0,
                                    ),
                                    gradient: LinearGradient(colors: [
                                      // Colors.grey.shade900,
                                      // Colors.grey.shade800,
                                      // Colors.grey.shade700,
                                      Colors.grey.shade500,
                                      Colors.grey.shade500,
                                      Colors.grey.shade500,
                                      Colors.grey.shade500,
                                      Colors.grey.shade500,
                                      // Colors.grey.shade400,
                                      // Colors.grey.shade300,
                                      // Colors.grey.shade200,
                                      // Colors.grey.shade100,
                                      // Colors.teal,
                                      // Colors.green,
                                      // Colors.lightGreen,
                                      // Colors.lime,
                                      // Colors.yellow,
                                      // Colors.amber,
                                      // Colors.orange,
                                      // Colors.deepOrange,
                                    ]),
                                    align: TextAlign.center,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ));
                        })),
              ],
            );
          }
        });
  }
}
