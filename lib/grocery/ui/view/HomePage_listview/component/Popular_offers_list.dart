import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/model/popular_listModels.dart';
import '../../../constant/app_colors.dart';

// import 'package:untitled2/constant/app_color.dart';
// import 'package:untitled2/model/popular_listModels.dart';

class PopularOfferListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 50,
          );},
        scrollDirection: Axis.vertical,
        itemCount: PopularOffersModel.list.length,
        itemBuilder: (BuildContext context, i) {
          PopularOffersModel product = PopularOffersModel.list[i];
          var image;
          return Container(
            width: 50,
            height: 100,

            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10.0, vertical: 10),
              child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage(product.productImageUrl.toString()), ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          product.productName.toString(),
                          style: TextStyle(
                            fontSize: 12,
                            color: titleFontColor,
                          ),
                        ),
                        Text(
                          product.productTypes.toString(),
                          style: const TextStyle(
                              fontSize: 17, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                  ]
              ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "\$300.0",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                            new BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 30,
                                offset:
                                Offset(0, 8), // Shadow position
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.shopping_cart,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
          ],
          ),
            ),
          );

        },
      ),

    );
  }
}