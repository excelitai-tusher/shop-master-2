import 'dart:convert';
import 'package:bpp_shop/bpp/provider/cart_provider.dart';
import 'package:bpp_shop/bpp/screen/navbar/bottom_app_bar.dart';
import 'package:bpp_shop/bpp/screen/navbar/history_screen/history_screen.dart';
import 'package:bpp_shop/bpp/screen/navbar/home_screen.dart';
import 'package:bpp_shop/islamic/component/badge.dart';
import 'package:bpp_shop/islamic/component/filter.dart';
import 'package:bpp_shop/islamic/component/dropdown.dart';
import 'package:bpp_shop/islamic/screen/wish_list/wishlist_screen.dart';
import 'package:bpp_shop/models/islamic/SubSubCategory.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import '../../../bpp/screen/cart/cart_screen.dart';
import '../../../bpp/screen/navbar/profile_screen.dart';
import '../../widget/bottom_sheet.dart';

class SubCategoryWiseProductView extends StatefulWidget {
  SubCategoryWiseProductView({Key? key,this.title,this.productUnderSubCategoryList}) : super(key: key);
  String? title;
  List<ProductUnderSubCategory>? productUnderSubCategoryList;

  @override
  _SubCategoryWiseProductViewState createState() => _SubCategoryWiseProductViewState();
}
class _SubCategoryWiseProductViewState extends State<SubCategoryWiseProductView> {

  // String baseUrl = "https://bppshops.com/api/bs/yyy/yyyyy/dd";
  // List subSubCategoryList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
            // Navigator.pushAndRemoveUntil(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => PopularProductHome(
            //           categorySlugName: widget.categorySlugName.toString(),
            //           subCategorySlugName: "${subCategoryList[index]["sub_category_slug_name"]}",
            //           //subCategoryID: subCateGoryId,
            //         ),
            //     ),
            //         (route) => false);
            // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Bottom_NavBar()));
            // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Bottom_NavBar()));
          },
        ),
        title: Text(widget.title.toString()),
        actions: [
          // Text("All Category"),
          // Text(widget.categorySlugName.toString()),
          Icon(Icons.search, color: Colors.white),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications_outlined, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //height: MediaQuery.of(context).size.height*.,
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.filter_alt_outlined,
                          color: Colors.grey,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Filter()));
                            },
                            child: Text(
                              'Filters',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.height,
                          color: Colors.grey,
                        ),
                        MyDropDown(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2 /3,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 10,
                  ),
                  physics:NeverScrollableScrollPhysics(),
                  itemCount:widget.productUnderSubCategoryList!.length,
                  itemBuilder: (context,index)=> Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: GridTile(
                      footer: GridTileBar(
                        title: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            minimumSize: Size(90, 30),
                          ),
                          onPressed: () {
                            showModalBottomSheet<void>(
                              isDismissible: false,
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                return MyBottomSheet(
                                  productId: widget.productUnderSubCategoryList![index].id.toString(),
                                  productImage:widget.productUnderSubCategoryList![index].productThambnail != null?'https://bppshops.com/${widget.productUnderSubCategoryList![index].productThambnail}':'https://st3.depositphotos.com/23594922/31822/v/600/depositphotos_318221368-stock-illustration-missing-picture-page-for-website.jpg',
                                  productName: widget.productUnderSubCategoryList![index].productName,
                                  productDetail: widget.productUnderSubCategoryList![index].productDescp,
                                  //  shipping: double.tryParse(get[index].shipping!),
                                  productPrePrice: widget.productUnderSubCategoryList![index].discountPrice,
                                  productPrice:double.tryParse(widget.productUnderSubCategoryList![index].sellingPrice!) ,
                                );
                              },
                            );
                          },
                          icon: Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                            size: 17,
                          ),
                          label: Text(
                            'Add to Bag',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Center(
                                child: Container(

                                  child:widget.productUnderSubCategoryList![index].productThambnail != null? Image.network(
                                    'https://bppshops.com/${widget.productUnderSubCategoryList![index].productThambnail}',
                                    fit: BoxFit.cover,
                                  ):
                                  Image.network('https://st3.depositphotos.com/23594922/31822/v/600/depositphotos_318221368-stock-illustration-missing-picture-page-for-website.jpg'),

                                ),
                              ),),


                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5,),
                                child: Text(
                                  '${widget.productUnderSubCategoryList![index].productName}',
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 15),overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex:4,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '৳ ${double.tryParse(widget.productUnderSubCategoryList![index].sellingPrice!)?.toStringAsFixed(1)}',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                        Text(
                                          '৳ ${double.tryParse(widget.productUnderSubCategoryList![index].discountPrice!)?.toStringAsFixed(1)}',
                                          style: TextStyle(color: Colors.red,decoration: TextDecoration.lineThrough),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Expanded(

                                            child: Icon(
                                              Icons.star,
                                              size: 11,
                                              color: Colors.orangeAccent,
                                            ),
                                          ),
                                          Expanded(
                                            child: Icon(
                                              Icons.star,
                                              size: 11,
                                              color: Colors.orangeAccent,
                                            ),
                                          ),
                                          Expanded(
                                            child: Icon(

                                              Icons.star,
                                              size: 11,
                                              color: Colors.orangeAccent,
                                            ),
                                          ),
                                          Expanded(
                                            child: Icon(

                                              Icons.star,
                                              size: 11,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Expanded(
                                            child: Icon(

                                              Icons.star,
                                              size: 11,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          //  SizedBox(width: 5,),
                                          Expanded(
                                            child: Text(
                                              '(4)',
                                              style: TextStyle(color:Colors.black,fontSize: 8),
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Padding(
                            //   padding: const EdgeInsets.symmetric(horizontal: 5,),
                            //   child: Text(
                            //     'Sold: ${get[index].unit}',
                            //     style: TextStyle(fontSize: 15),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
        floatingActionButton: Consumer<Cart>(
          builder: (_, cart, ch) => Badge(
            value: cart.itemCount.toString(),
            child: ch,
          ),
          child: FloatingActionButton(
            backgroundColor: Theme.of(context).colorScheme.primary,
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CartScreen()));
            },
            child: Icon(
              Icons.shopping_bag_sharp,
              color: Colors.white,
            ),
          ),
        ),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 6,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          // currentScreen =
                          //     Home_Page(); // if user taps on this dashboard tab will be active
                          // currentTab = 0;
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomNavBar(
                                    currentTab: 0,
                                    currentScreen: HomeScreen(),
                                  )),
                                  (route) => false);
                          //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 0,currentScreen: Home_Page(),)));
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.home,
                            color: Colors
                                .amber, //currentTab == 0 ? Colors.amber,//: Colors.grey,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                              color: Colors
                                  .amber, //currentTab == 0 ? Colors.amber : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Home_Page(),
                    // MyWishList(),
                    // HistoryTabbar(),
                    // ProfileScreen(),
                    // PopularProduct(),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomNavBar(
                                    currentTab: 1,
                                    currentScreen: MyWishList(),
                                  )),
                                  (route) => false);
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 1,currentScreen: MyWishList(),)));
                          // currentScreen =
                          //     MyWishList(); // if user taps on this dashboard tab will be active
                          // currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Colors
                                .grey, //currentTab == 1 ? Colors.amber : Colors.grey,
                          ),
                          Text(
                            'Favorite',
                            style: TextStyle(
                              color: Colors
                                  .grey, //,currentTab == 1 ? Colors.amber: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),

                // Right Tab bar icons

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomNavBar(
                                    currentTab: 2,
                                    currentScreen: HistoryScreen(),
                                  )),
                                  (route) => false);
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 2,currentScreen: HistoryTabbar(),)));
                          // currentScreen =
                          //     HistoryTabbar(); // if user taps on this dashboard tab will be active
                          // currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.dashboard_outlined,
                            color: Colors
                                .grey, //currentTab == 2 ? Colors.amber: Colors.grey,
                          ),
                          Text(
                            'History',
                            style: TextStyle(
                              color: Colors
                                  .grey, //,currentTab == 2 ? Colors.amber : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomNavBar(
                                    currentTab: 3,
                                    currentScreen: ProfileScreen(),
                                  )),
                                  (route) => false);
                          //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 3,currentScreen: ProfileScreen(),)));
                          // currentScreen =
                          //     ProfileScreen(); // if user taps on this dashboard tab will be active
                          // currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.account_circle,
                            color: Colors
                                .grey, //currentTab == 3 ? Colors.amber : Colors.grey,
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(
                              color: Colors
                                  .grey, //currentTab == 3 ? Colors.amber: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}
