import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/controller/app_state_controller.dart';
import '../../../../core/controller/product_detail_data_controller.dart';
import '../../../../core/model/model class/model_class1.dart';
import '../../../constant/app_colors.dart';
import '../../product_details/product details.dart';

class Vegetables extends StatefulWidget {
  const Vegetables({Key? key}) : super(key: key);

  @override
  _VegetablesState createState() => _VegetablesState();
}

class _VegetablesState extends State<Vegetables> {
  @override
  Widget build(BuildContext context) {
    final productDetailData = Provider.of<ProductDetailDataController>(context);
    final pageState=Provider.of<AppStateController>(context,listen: false);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: (){
              pageState.setAppBarViewState(false);
              pageState.setSecondaryPageState(true);
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              size: 25,
              color: Colors.black,
            ),
          ),
          title: Center(
            child: Text(
              "Vegetables",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.filter_list_alt, size: 30, color: Colors.green),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                child: Container(
                  height: 35,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Color(0xffF7FFEF),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffF7FFEF),
                          blurRadius: 10.0,
                          offset: Offset(10.0, 10.0),
                        )
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      hintText: 'Search Product',
                      fillColor: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                    //padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5 ),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: false,
                    itemCount: BundleOffersModel2.list.length, //NewArrivalModel.list.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      childAspectRatio: 3 / 2,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 220,
                      //MediaQuery.of(context).size.height,
                    ),
                    itemBuilder: (BuildContext context, i) {
                      BundleOffersModel2 item = BundleOffersModel2.list[i];
                      // NewArrivalModel product =
                      // NewArrivalModel.list[i];
                      return Padding(
                        padding: const EdgeInsets.only( bottom: 8.0),
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
                          child: Container(
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
                                        color: tertiaryColor1,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.favorite_border_outlined,
                                                color: primaryColor,
                                              ),
                                            ),
                                          ),
                                          Image.asset("images/bundle.jpeg"),
                                          Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              height: MediaQuery.of(context).size.height * .1,
                                              width: MediaQuery.of(context).size.width * .2,
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
                                          item.productTypes.toString(),
                                          style: TextStyle(
                                            //fontSize: 20,
                                            color: tertiaryColor2,
                                          ),
                                        ),
                                        //SizedBox(height: 10,),
                                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                              onTap: () {},
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
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
