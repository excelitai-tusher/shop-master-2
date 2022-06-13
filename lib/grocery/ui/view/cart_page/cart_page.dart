import 'package:bpp_shop/islamic/component/badge.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../../../core/controller/app_state_controller.dart';
import '../../../core/model/cart_model.dart';
import '../../constant/app_colors.dart';
import '../checkout/checkout1.dart';
import '../empty_cart/empty cart.dart';
import 'component/item_count.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int countSet = 1;
  @override
  Widget build(BuildContext context) {
    final cartControll = Provider.of<CartModels>(context);
    final pageState = Provider.of<AppStateController>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            pageState.setAppBarViewState(true);
            pageState.setPrimaryCurrentIndex(0);
            // pageState.setAppBarViewState(false);
            // pageState.setSecondaryPageState(true);
          },
          child: Icon(
            Icons.arrow_back_ios_outlined,
            size: 25,
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Text(
            "Cart",
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Consumer<CartModels>(
              builder: (_, cart, ch) => Badge(
                child: ch!,
                value: cart.itemCount.toString(),
              ),
              child: Container(
                height: 20,
                width: 70,
              ),
            ),
          ),
        ],
      ),
      body: CartModels.list.length!=0?SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.height * .55,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemCount: CartModels.list.length,
                //itemExtent: 100,
                itemBuilder: (context, index) {
                  CartModels item = CartModels.list[index];
                  int itemCount = item.count!;

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Dismissible(
                      key: ValueKey(cartControll.productName),
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction) {
                        cartControll.deleteList(index);
                      },
                      confirmDismiss: (direction) {
                        return showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                                  title: const Text('Are you sure?'),
                                  content: const Text(
                                      'Dou tou wnt to delete item from the cart? '),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(ctx).pop(false);
                                        },
                                        child: const Text(
                                          'No',
                                          style: TextStyle(
                                              color: Colors.deepOrange),
                                        )),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(ctx).pop(true);

                                          cartControll.deleteList(index);
                                        },
                                        child: const Text('Yes',
                                            style: TextStyle(
                                                color: Colors.deepOrange)))
                                  ],
                                ));
                      },
                      background: Container(
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(
                                15)), //Theme.of(context).errorColor,
                        child: const Icon(
                          Icons.delete,
                          color: Colors.white,
                          size: 40,
                        ),
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 20),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                      ),
                      child: Container(
                        //margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 100,
                        decoration: BoxDecoration(
                          color: tertiaryColor1,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                          child: ListTile(
                            leading: SizedBox(
                              height: MediaQuery.of(context).size.height,
                              width: 100,
                              child: Image.asset(
                                item.imageUrl.toString(),
                                fit: BoxFit.contain,
                              ),
                            ),
                            title: Text(
                              item.productName.toString(),
                              style: TextStyle(fontSize: 15),
                            ),
                            subtitle: Text(
                              item.productPrice.toString(),
                              style: TextStyle(fontSize: 15),
                            ),
                            trailing: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 100,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            cartControll.addCount(index);
                                          });
                                        },
                                        child: Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                            color: secondaryColor,
                                            borderRadius:
                                                BorderRadius.circular(5),
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
                                          child: Center(child: Text("+")),
                                        ),
                                      ),
                                      Text(
                                          //itemCount.toString(),
                                          cartControll
                                              .getcount(index)
                                              .toString()),
                                      GestureDetector(
                                        onTap: () {
                                          if (itemCount > 1) {
                                            setState(() {
                                              cartControll.subCount(index);
                                            });
                                          }
                                          if (itemCount <= 1) {
                                            setState(() {
                                              showDialog(
                                                context: context,
                                                builder: (ctx) => AlertDialog(
                                                  title: const Text(
                                                      'Are you sure?'),
                                                  content: const Text(
                                                      'Dou tou wnt to delete item from the cart? '),
                                                  actions: [
                                                    TextButton(
                                                        onPressed: () {
                                                          Navigator.of(ctx)
                                                              .pop(false);
                                                        },
                                                        child: const Text(
                                                          'No',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .deepOrange),
                                                        )),
                                                    TextButton(
                                                        onPressed: () {
                                                          Navigator.of(ctx)
                                                              .pop(true);

                                                          cartControll
                                                              .deleteList(
                                                                  index);
                                                        },
                                                        child: const Text('Yes',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .deepOrange))),
                                                  ],
                                                ),
                                              );
                                            });
                                          }
                                        },
                                        child: Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                            color: secondaryColor,
                                            borderRadius:
                                                BorderRadius.circular(5),
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
                                          child: Center(child: Text("-")),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "\$" + item.productPrice.toString(),
                                  style: TextStyle(
                                      color: primaryColor, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0),
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * .9,
                child: Stack(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  fit: StackFit.expand,
                  children: [
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter your promo code",
                            prefixIcon: Icon(
                              FontAwesomeIcons.tag,
                              size: 15,
                              color: primaryColor,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(),
                            )),
                      ),
                    ),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                //height: 400,
                width: MediaQuery.of(context).size.width * .9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Subtotal",
                            style: TextStyle(
                              color: tertiaryColor2,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),),
                          Text("\$" + "1241",
                            style: TextStyle(
                              color: tertiaryColor2,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Discount on Order",
                            style: TextStyle(
                              color: tertiaryColor2,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),),
                          Text("\$" + "50",
                            style: TextStyle(
                              color: tertiaryColor2,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Coupon Discount",
                            style: TextStyle(
                              color: tertiaryColor2,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),),
                          Text("\$" + "50",
                            style: TextStyle(
                              color: tertiaryColor2,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Shipping Fee",
                            style: TextStyle(
                              color: tertiaryColor2,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("\$" + "60",
                            style: TextStyle(
                              color: tertiaryColor2,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),),
                        ],
                      ),
                      Divider(height: 20,thickness: 2,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("\$" + "12457",
                            style: TextStyle(
                              color: tertiaryColor2,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width * .9,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff3dc73c),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => Checkout()));
                  },
                  child: Text(
                    "Proceed to Checkout",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ):EmptyCart(),
    );
  }
}
