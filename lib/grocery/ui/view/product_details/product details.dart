import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../core/controller/product_detail_data_controller.dart';
import '../../../core/model/product model class.dart';
import '../../constant/app_colors.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    scaleAnimation =
        CurvedAnimation(parent: controller!, curve: Curves.elasticInOut);

    controller!.addListener(() {
      setState(() {});
    });

    controller!.forward();
  }

  @override
  Widget build(BuildContext context) {
    final productDetailData = Provider.of<ProductDetailDataController>(context);
    return Material(
      color: Colors.transparent,
      child: ScaleTransition(
        scale: scaleAnimation!,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xffF7FFEF),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_outlined,
                size: 25,
                color: Colors.black,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(FontAwesomeIcons.cartPlus,
                    size: 30, color: Colors.green),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Color(0xffF7FFEF),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffF7FFEF),
                          blurRadius: 10.0,
                          offset: Offset(10.0, 10.0),
                        ),
                      ]),
                  child: Image(
                    image: AssetImage(
                        productDetailData.productImageUrl.toString()),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            productDetailData.productName.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: titleFontColor,
                              fontSize: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Row(
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      productDetailData.setAddQuantity();
                                    },
                                    child: Icon(
                                      FontAwesomeIcons.plusSquare,
                                      size: 25,
                                      color: primaryColor,
                                    )),
                                SizedBox(width: 5),
                                Text(
                                  productDetailData.quantity.toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    productDetailData.setMinusQuantity();
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.minusSquare,
                                    size: 25,
                                    color: primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            productDetailData.unit.toString(),
                            style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              color: titleFontColor,
                              fontSize: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Text(
                              "\$" + productDetailData.productPrice.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: titleFontColor,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                    text: "*",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 18,
                                        letterSpacing: 3),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "*",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.orange,
                                          letterSpacing: 3,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "*",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.orange,
                                            letterSpacing: 3),
                                      ),
                                      TextSpan(
                                        text: "*",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.orange,
                                            letterSpacing: 3),
                                      ),
                                      TextSpan(
                                        text: "*",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.grey,
                                            letterSpacing: 3),
                                      ),
                                      TextSpan(
                                        text: "4.0",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.orange,
                                        ),
                                      ),
                                    ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Text(
                                  "\$20000.0",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 15,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 25,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: Offset(
                                          0, 1), // changes position of shadow
                                    ),
                                  ],
                                  color: Colors.green,
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: Text(
                                        "Free Ship",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(children: [
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              "Details",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ]),
                          Row(children: [
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              "Lorem Ipsum is simply dummy text of the printing \n and typesetting industry. Lorem Ipsum has been \n the industry's  standard dummy text ever since \n the 1500s.",
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: 20,
                          ),
                          Row(children: [
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              "Related Products",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                ListView.separated(
                                  separatorBuilder: (context, index) {
                                    return SizedBox(width: 20);
                                  },
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: ProductModel.list.length,
                                  itemBuilder: (BuildContext context, i) {
                                    ProductModel categoryData =
                                        ProductModel.list[i];
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 50,
                                          //color: Colors.deepOrangeAccent,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            image: DecorationImage(
                                              image: AssetImage(categoryData
                                                  .imageURL
                                                  .toString()),
                                              fit: BoxFit.cover,
                                            ),
                                            //borderRadius: BorderRadius.circular(15),
                                            shape: BoxShape.rectangle,
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
                                        ),
                                        SizedBox(height: 4),
                                        Center(
                                          child: Text(
                                            categoryData.ProductTitle
                                                .toString(),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 250,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.lightGreen,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      //Navigator.push(context, MaterialPageRoute(builder: (context) =>Payment()));
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.shopping_cart_outlined,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              "Add to Cart",
                                              style: TextStyle(
                                                color: Colors.white,
                                                //fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Icon(
                                  FontAwesomeIcons.heart,
                                  size: 18,
                                  color: Colors.green,
                                ),
                              ],
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
  }
}
