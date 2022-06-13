import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../../../../core/model/BundleOfferModels.dart';
import '../../../constant/app_colors.dart';

class BundleOffersListView1 extends StatelessWidget {
  const BundleOffersListView1({Key ?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bundleOffersModel = Provider.of<BundleOffersModel1>(context);
    print(bundleOffersModel.getList[0].productName.toString());
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          BundleOffersModel1 item = BundleOffersModel1.list[index];
          print(item.productName.toString());
          return
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: tertiaryColor1, borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(item.productImageUrl.toString()),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                onPressed: () {
                                  bundleOffersModel.setFavourite(index);

                                },
                                icon: item.favourite?Icon(
                                  Icons.favorite,
                                  color: primaryColor,
                                ): Icon(
                                  Icons.favorite_border_outlined,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            Image.asset("assets/bundelOffers.png")
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.productName.toString(),
                            style: TextStyle(
                              fontSize: 20,
                              color: titleFontColor,
                            ),
                          ),
                          Text(
                            item.runtimeType.toString(),
                            style: TextStyle(
                              //fontSize: 20,
                              // color: tertiaryColor2,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("\$300.0",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),),

                          // Text(
                          //   item.productPrice.toString(),
                          //   style: TextStyle(
                          //     //fontSize: 20,
                          //     fontWeight: FontWeight.bold,
                          //     color: primaryColor,
                          //   ),
                           ],

                      ),



              ],
                ),

              ),
          ],
          ),
          ),
            );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 20,
          );
        },
        itemCount: BundleOffersModel1.list.length,
      ),

    );
  }
}
