import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/controller/app_state_controller.dart';
import '../../../core/model/cart_model.dart';
import '../../../core/model/my_favourite_data_model.dart';
import '../../constant/app_colors.dart';
import '../empty_wish/empty_wish.dart';


class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    final cartControll = Provider.of<CartModels>(context);
    final myFavouriteListData=Provider.of<MyFavouriteDataModel>(context);
    final pageState = Provider.of<AppStateController>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: (){
            pageState.setAppBarViewState(true);
            pageState.setPrimaryCurrentIndex(0);

          },
          child: Icon(
            Icons.arrow_back_ios_outlined,
            size: 25,
            color: Colors.black,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Text(
            "Favourite",
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: MyFavouriteDataModel.list.length!=0?ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                    //padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5 ),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: false,
                    itemCount: MyFavouriteDataModel.list.length, //NewArrivalModel.list.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      childAspectRatio: 3 / 2,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 220,
                      //MediaQuery.of(context).size.height,
                    ),
                    itemBuilder: (BuildContext context, index) {
                      MyFavouriteDataModel item = MyFavouriteDataModel.list[index];
                      // NewArrivalModel product =
                      // NewArrivalModel.list[i];
                      return Container(
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
                                flex: 1,
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: tertiaryColor1,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: IconButton(
                                          onPressed: () {
                                            myFavouriteListData.deleteFavouriteList(index,context: context);
                                          },
                                          icon: Icon(
                                            Icons.clear_outlined,
                                            color: primaryColor,
                                          ),
                                        ),
                                      ),
                                      Image.asset("images/bundle.jpeg"),
                                      Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          height: MediaQuery.of(context).size.height * .1,
                                          width: MediaQuery.of(context).size.width *.2,
                                          child: Image.asset(
                                            item.productImageUrl.toString(),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      item.productName.toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: titleFontColor,
                                      ),
                                    ),
                                    Text(
                                      item.productUnit.toString(),
                                      style: TextStyle(
                                        //fontSize: 20,
                                        color: tertiaryColor2,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          item.productPrice.toString(),
                                          style: TextStyle(
                                            //fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: primaryColor,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            cartControll.addCartList(
                                              imageUrl: item.productImageUrl,
                                              productName: item.productName,
                                              productPrice: item.productPrice,
                                              count: 1,
                                            );
                                          },
                                          child: Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                              BorderRadius.circular(5),
                                            ),
                                            child: Icon(
                                              Icons.add_shopping_cart_outlined,
                                              color: tertiaryColor1,
                                              size: 15,
                                            ),
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
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ):EmptyFavourite(),
      // floatingActionButton: Padding(
      //   padding: EdgeInsets.only(top: 20),
      //   child: SizedBox(
      //     height: 45,
      //     width: 70,
      //     child: FloatingActionButton(
      //       backgroundColor: Colors.transparent,
      //       elevation: 0,
      //       onPressed: () {},
      //       child: Container(
      //         height: 75,
      //         width: 75,
      //         decoration: BoxDecoration(
      //             border: Border.all(color: Colors.white, width: 4),
      //             shape: BoxShape.circle,
      //             color: Colors.greenAccent
      //         ),
      //         child: Icon(Icons.my_library_books_sharp, size: 25, color: Colors.green,),
      //
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
