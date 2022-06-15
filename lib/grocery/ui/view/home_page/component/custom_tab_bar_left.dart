import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import '../../../../../bpp/component/gradient_text.dart';
import '../../../../core/model/TrendingModelClass.dart';
import '../../../../core/model/view model/http_grocery_trending _product.dart';
import '../../../constant/app_colors.dart';

class CustomTabBarLeft extends StatefulWidget {
  CustomTabBarLeft({
    Key? key,
    this.tab1,
    this.tab2,
  }) : super(key: key);

  String? tab1;
  String? tab2;

  @override
  _CustomTabBarLeftState createState() =>
      _CustomTabBarLeftState(tab1: tab1!, tab2: tab2!);
}

class _CustomTabBarLeftState extends State<CustomTabBarLeft>
    with SingleTickerProviderStateMixin {
  _CustomTabBarLeftState({
    this.tab1,
    this.tab2,
  });

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
    return FutureBuilder(
        future: getTrendProduct(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            List<GroceryTrendProducts> get =
                snapshot.data ?? <GroceryTrendProducts>[];
            return Container(
              color: tertiaryColor1,
              height: MediaQuery.of(context).size.height * .3,
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
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 3,
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
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                Tab(
                                  // icon: Icon(
                                  //   Icons.directions_car,
                                  // ),
                                  child: Text(
                                    tab2!,
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // create widgets for each tab bar here
                    Expanded(
                      flex: 3,
                      child: TabBarView(
                        controller: _controllerTab,
                        children: [
                          ListView.separated(
                            itemCount: get.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                width: 5,
                              );
                            },
                            separatorBuilder: (context, index) {
                              //GroceryTrendingProduct item = GroceryTrendingProduct.get[index];
                              return Container(
                                height: MediaQuery.of(context).size.height * .1,
                                width: MediaQuery.of(context).size.width * .3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: MediaQuery.of(context).size.width,
                                      child: get[index].productThambnail != null
                                          ? Image.network(
                                              'https://bppshops.com/${get[index].productThambnail}',
                                              fit: BoxFit.contain,
                                            )
                                          : Image.network(
                                              'https://st3.depositphotos.com/23594922/31822/v/600/depositphotos_318221368-stock-illustration-missing-picture-page-for-website.jpg'),
                                      // decoration: BoxDecoration(
                                      // borderRadius: BorderRadius.circular(5),
                                      //
                                      // image: DecorationImage(
                                      // image: NetworkImage(
                                      //   'https://bppshops.com/${get[index].productThambnail}',
                                      //
                                      // ),
                                      // fit: BoxFit.cover),
                                      // ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          height: MediaQuery.of(context).size.height *.1,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  get[index]
                                                      .productName
                                                      .toString(),
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10,
                                                    color: titleFontColor,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color:
                                                          Colors.orangeAccent,
                                                      size: 8,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color:
                                                          Colors.orangeAccent,
                                                      size: 8,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color:
                                                          Colors.orangeAccent,
                                                      size: 8,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color:
                                                          Colors.orangeAccent,
                                                      size: 8,
                                                    ),
                                                    Icon(
                                                      Icons.star_border_sharp,
                                                      color:
                                                          Colors.orangeAccent,
                                                      size: 8,
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  "৳ " +
                                                      get[index]
                                                          .sellingPrice
                                                          .toString(),
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
                          ),
                          ListView.separated(
                            itemCount: get.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                width: 5,
                              );
                            },
                            separatorBuilder: (context, index) {
                              //GroceryTrendingProduct item = GroceryTrendingProduct.get[index];
                              return Container(
                                height: MediaQuery.of(context).size.height * .1,
                                width: MediaQuery.of(context).size.width * .3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: MediaQuery.of(context).size.width,
                                      child: get[index].productThambnail != null
                                          ? Image.network(
                                              'https://bppshops.com/${get[index].productThambnail}',
                                              fit: BoxFit.contain,
                                            )
                                          : Image.network(
                                              'https://st3.depositphotos.com/23594922/31822/v/600/depositphotos_318221368-stock-illustration-missing-picture-page-for-website.jpg'),
                                      // decoration: BoxDecoration(
                                      // borderRadius: BorderRadius.circular(5),
                                      //
                                      // image: DecorationImage(
                                      // image: NetworkImage(
                                      //   'https://bppshops.com/${get[index].productThambnail}',
                                      //
                                      // ),
                                      // fit: BoxFit.cover),
                                      // ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          height: 90,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  get[index]
                                                      .productName
                                                      .toString(),
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10,
                                                    color: titleFontColor,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color:
                                                          Colors.orangeAccent,
                                                      size: 8,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color:
                                                          Colors.orangeAccent,
                                                      size: 8,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color:
                                                          Colors.orangeAccent,
                                                      size: 8,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color:
                                                          Colors.orangeAccent,
                                                      size: 8,
                                                    ),
                                                    Icon(
                                                      Icons.star_border_sharp,
                                                      color:
                                                          Colors.orangeAccent,
                                                      size: 8,
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  "৳ " +
                                                      get[index]
                                                          .sellingPrice
                                                          .toString(),
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return Column(
              children: [
                Shimmer(
                  duration: Duration(seconds: 2),
                  //Default value
                  interval: Duration(seconds: 1),
                  //Default value: Duration(seconds: 0)
                  color: Colors.black,
                  //Colors.grey.shade700, //Default value
                  colorOpacity: 0,
                  //Default value
                  enabled: true,
                  //Default value
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
                            duration: Duration(seconds: 2),
                            //Default value
                            interval: Duration(seconds: 1),
                            //Default value: Duration(seconds: 0)
                            color: Colors.black,
                            //Colors.grey.shade700, //Default value
                            colorOpacity: 0,
                            //Default value
                            enabled: true,
                            //Default value
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
                      }),
                ),
              ],
            );
          }
        });
  }
}
