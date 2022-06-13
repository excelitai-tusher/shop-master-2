import 'package:bpp_shop/grocery/core/controller/app_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/controller/product_detail_data_controller.dart';
import '../../../../core/model/BundleOffersModel.dart';
import '../../../../core/model/cart_model.dart';
import '../../../../core/model/my_favourite_data_model.dart';
import '../../../constant/app_colors.dart';
import '../../product_details/product details.dart';

class BundleOfferSeeAll extends StatelessWidget {
  const BundleOfferSeeAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final pageState=Provider.of<AppStateController>(context,listen: false);
    final productDetailData = Provider.of<ProductDetailDataController>(context);
    final myFavouriteListData=Provider.of<MyFavouriteDataModel>(context);//BundleOffersModel
    final bundleOffersModel = Provider.of<BundleOffersModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
elevation: 0,
        title: Text("Bundle Offers",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
        onPressed: (){  pageState.setAppBarViewState(true);
        pageState.setPrimaryPageState(true);},),
      ),
      body: Container(
        height:MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3/4,
        crossAxisSpacing: 6
        ),
            itemCount:BundleOffersModel.list.length ,
            itemBuilder: (BuildContext context, index) {
              BundleOffersModel item = BundleOffersModel.list[index];
              return Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: GestureDetector(
                  onTap: () {
                    productDetailData.setProductDetailData(
                      productName: item.productName,
                      productImageUrl: item.productImageUrl,
                      productPrice: item.productPrice,
                    );
                    ///way:1
                    showDialog(
                      context: context,
                      builder: (context) => ProductDetails(),
                    );
                    ///way:1
                    ///way:2
                    // showGeneralDialog(
                    //   context: context,
                    //   pageBuilder: (context, animation1, animation2) {
                    //     return SizedBox();
                    //   },
                    //   transitionBuilder: (context, a1, a2, widget) {
                    //     return Transform.scale(
                    //       scale: a1.value,
                    //       child: ProductDetails(),
                    //     );
                    //   },
                    // );
                    ///way:2
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      height: 220,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
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
                                    color: tertiaryColor1,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image:
                                      AssetImage(item.productImageUrl.toString()),
                                      fit: BoxFit.contain,
                                    )),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: GestureDetector(
                                        onTap: (){
                                          bundleOffersModel.setFavourite(index);
                                          myFavouriteListData.addToFavouriteList(
                                            index: index,
                                            productImageUrl: item.productImageUrl.toString(),
                                            productName: item.productName.toString(),
                                            productPrice: item.productPrice.toString(),
                                            productUnit: item.productUnit.toString(),
                                            isFavourite: item.favourite,
                                          );
                                        },
                                        child: Container(
                                          height: 20,
                                          width: 20,
                                          // onPressed: () {
                                          //   bundleOffersModel.setFavourite(index);
                                          //   myFavouriteListData.addToFavouriteList(
                                          //     index: index,
                                          //     productImageUrl: item.productImageUrl.toString(),
                                          //     productName: item.productName.toString(),
                                          //     productPrice: item.productPrice.toString(),
                                          //     productUnit: item.productUnit.toString(),
                                          //     isFavourite: item.favourite,
                                          //   );
                                          //   // if(item.favourite!){
                                          //   // }else{
                                          //   //   myFavouriteListData.deleteFavouriteList(index);
                                          //   // }
                                          // },
                                          child: item.favourite!?Icon(
                                            Icons.favorite,
                                            color: primaryColor,
                                          ):Icon(
                                            Icons.favorite_border_outlined,
                                            color: primaryColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Image.asset("images/bundelOffers.png"),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: GestureDetector(
                                        onTap: () {
                                          final cartControll = Provider.of<CartModels>(context);
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
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Text(
                                      item.productName.toString(),
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: titleFontColor,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      item.runtimeType.toString(),
                                      style: TextStyle(
                                        //fontSize: 20,
                                        color: tertiaryColor2,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      item.productPrice.toString(),
                                      style: TextStyle(
                                        //fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: primaryColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },

        )

        
      ),
    );
  }
}
