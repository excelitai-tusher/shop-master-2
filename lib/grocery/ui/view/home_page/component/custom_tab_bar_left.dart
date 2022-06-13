import 'package:flutter/material.dart';

import '../../../../core/model/deals_of_the_day_model.dart';
import '../../../constant/app_colors.dart';

class CustomTabBarLeft extends StatefulWidget {
  CustomTabBarLeft({Key? key,this.tab1,this.tab2,}) : super(key: key);

  String? tab1;
  String? tab2;

  @override
  _CustomTabBarLeftState createState() => _CustomTabBarLeftState(tab1: tab1!,tab2:tab2!);
}

class _CustomTabBarLeftState extends State<CustomTabBarLeft>
    with SingleTickerProviderStateMixin {

  _CustomTabBarLeftState({this.tab1,this.tab2,});

  String? tab1;
  String? tab2;
  TabController? _controllerTab;

  @override
  void initState() {
    // TODO: implement initState
    _controllerTab = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controllerTab!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: tertiaryColor1,
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: TabBar(
                      labelColor: primaryColor,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: primaryColor,
                      controller: _controllerTab,
                      tabs: [
                        Tab(
                          //icon: Icon(Icons.directions_bike),
                          child: Text(
                            tab1!,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Tab(
                          // icon: Icon(
                          //   Icons.directions_car,
                          // ),
                          child: Text(
                            tab2!,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(),
                  ),
                ],
              ),
            ),

            // create widgets for each tab bar here
            Expanded(
              flex: 2,
              child: TabBarView(
                controller: _controllerTab,
                children: [
                  ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 5,
                      );
                    },
                    separatorBuilder: (context, index) {
                      DealsOfTheDayModel item = DealsOfTheDayModel.list[index];
                      return Container(
                        height: 100,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(
                                      item.productImageUrl.toString(),
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 80,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          item.productName.toString(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 8,
                                            color: titleFontColor,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.orangeAccent,
                                              size: 8,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orangeAccent,
                                              size: 8,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orangeAccent,
                                              size: 8,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orangeAccent,
                                              size: 8,
                                            ),
                                            Icon(
                                              Icons.star_border_sharp,
                                              color: Colors.orangeAccent,
                                              size: 8,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "\$ " + item.price.toString(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            color: primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: DealsOfTheDayModel.list.length,
                  ),
                  ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 5,
                      );
                    },
                    separatorBuilder: (context, index) {
                      DealsOfTheDayModel item = DealsOfTheDayModel.list[index];
                      return Container(
                        height: 100,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: backGroundColor,
                        ),
                        child: Stack(
                          children: [
                            Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(
                                      item.productImageUrl.toString(),
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 80,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          item.productName.toString(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 8,
                                            color: titleFontColor,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.orangeAccent,
                                              size: 8,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orangeAccent,
                                              size: 8,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orangeAccent,
                                              size: 8,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orangeAccent,
                                              size: 8,
                                            ),
                                            Icon(
                                              Icons.star_border_sharp,
                                              color: Colors.orangeAccent,
                                              size: 8,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "\$ " + item.price.toString(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            color: primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: DealsOfTheDayModel.list.length,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
