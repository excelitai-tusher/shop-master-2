import 'package:flutter/material.dart';
import '../../../../core/model/deals_of_the_day_model.dart';
import '../../../constant/app_colors.dart';

class DealsOfTheDayListView extends StatelessWidget {
  const DealsOfTheDayListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, i) {
          DealsOfTheDayModel item = DealsOfTheDayModel.list[i];
          return Padding(
            padding: const EdgeInsets.only(left: 8,top: 8.0, bottom: 8.0),
            child: Container(
              height: 250,
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
                      flex: 4,
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: tertiaryColor1,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image:
                                  AssetImage(item.productImageUrl.toString()),
                              fit: BoxFit.fill,
                            )),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 2),
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: tertiaryColor1,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                spreadRadius: 1,
                                                blurRadius: 3,
                                                offset: Offset(0,
                                                    1), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                item.day.toString(),
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: primaryColor,
                                                ),
                                              ),
                                              Text(
                                                "D",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: tertiaryColor2,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 2),
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: tertiaryColor1,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  item.hours.toString(),
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: primaryColor,
                                                  ),
                                                ),
                                                Text(
                                                  "H",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: tertiaryColor2,
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ),
                                      Expanded(
                                        child: Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 2),
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: tertiaryColor1,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  item.minuets.toString(),
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: primaryColor,
                                                  ),
                                                ),
                                                Text(
                                                  "M",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: tertiaryColor2,
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ),
                                      Expanded(
                                        child: Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 2),
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: tertiaryColor1,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  item.second.toString(),
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: primaryColor,
                                                  ),
                                                ),
                                                Text(
                                                  "S",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: tertiaryColor2,
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
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
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                                size: 15,
                              ),
                              Icon(
                                Icons.star_border_sharp,
                                color: Colors.orangeAccent,
                                size: 15,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "\$ " + item.price.toString(),
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: primaryColor,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text(
                                          "\$ " + item.prePrice.toString(),
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: tertiaryColor2,
                                              decoration: TextDecoration.lineThrough,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add_shopping_cart_outlined,
                                  color: primaryColor,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 0,
          );
        },
        itemCount: DealsOfTheDayModel.list.length,
      ),
    );
  }
}
