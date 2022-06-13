import 'package:bpp_shop/grocery/core/controller/app_state_controller.dart';
import 'package:bpp_shop/grocery/core/model/polpular_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/controller/product_detail_data_controller.dart';
import '../../../../core/model/BundleOffersModel.dart';
import '../../../../core/model/cart_model.dart';
import '../../../../core/model/my_favourite_data_model.dart';
import '../../../constant/app_colors.dart';
import '../../product_details/product details.dart';

class PopularSeeAll extends StatelessWidget {
  const PopularSeeAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final pageState=Provider.of<AppStateController>(context,listen: false);
    // final productDetailData = Provider.of<ProductDetailDataController>(context);
    // final myFavouriteListData=Provider.of<MyFavouriteDataModel>(context);//BundleOffersModel
    // final bundleOffersModel = Provider.of<BundleOffersModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Popular Product",style: TextStyle(color: Colors.black),),
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
              childAspectRatio: 2/1.5,
              crossAxisSpacing: 6,
            mainAxisSpacing: 6
          ),
            itemCount: PopularModel.list.length ,
           itemBuilder: (BuildContext context, i) {
                PopularModel item = PopularModel.list[i];
                return

                  Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                  child: GridTile(
                    // header: GridTileBar(trailing:     Container(
                    //   height: 30,
                    //   width: 30,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(10),
                    //       color: primaryColor),
                    //   child: Icon(
                    //     Icons.add_shopping_cart_outlined,
                    //     color: tertiaryColor1,
                    //     size: 18,
                    //   ),
                    // ),),
                   // tileColor: tertiaryColor1,
                    footer: GridTileBar(
                     // backgroundColor: Colors.black54,
                      title: Text(
                        item.productName.toString(),
                        style: TextStyle(
                          fontSize: 18,
                          color: titleFontColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Column(
                        children: [
                          Text(
                            item.productPrice.toString(),
                            style: TextStyle(
                              color: primaryColor,
                            ),
                          ),
                          // Text(
                          //   item.productQuantity.toString(),
                          // ),
                        ],
                      ),

                      trailing: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: primaryColor),
                        child: Icon(
                          Icons.add_shopping_cart_outlined,
                          color: tertiaryColor1,
                          size: 12,
                        ),
                      ),
                    ),
                    child:SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        item.productImageUrl.toString(),
                        fit: BoxFit.cover,
                      ),
                    ),




                  ),
                );
              }
    ),
    ),
    );
              }
}




