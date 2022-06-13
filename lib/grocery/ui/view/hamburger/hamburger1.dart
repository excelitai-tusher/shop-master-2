import 'package:bpp_shop/grocery/ui/view/home_page/component/bundle_offers_list_view.dart';
import 'package:bpp_shop/grocery/ui/view/home_page/component/bundle_offers_see_all.dart';
import 'package:bpp_shop/grocery/ui/view/home_page/component/top_selling.dart';
import 'package:bpp_shop/grocery/ui/view/home_page/component/trending.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../../../core/controller/app_state_controller.dart';
import '../../../core/controller/home_page_event_handeller.dart';
import '../my_card/my card.dart';
import '../my_coupon/my coupon.dart';
import '../product_request/product request.dart';
import '../top_deals/deals_screen.dart';
import '../track_order/track order.dart';

class Hamburger1 extends StatefulWidget {
  const Hamburger1({Key? key}) : super(key: key);

  @override
  _Hamburger1State createState() => _Hamburger1State();
}

class _Hamburger1State extends State<Hamburger1> {
  @override
  Widget build(BuildContext context) {
    final customScafoldKey = Provider.of<CustomScafoldKey>(context);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Drawer(
        child: Scaffold(
          body: ListView(
            children: [
              ListTile(
                trailing: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.menu_open,
                    size: 25,
                    color: Colors.black,
                  ),
                  alignment: Alignment.topRight,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Offers',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFE37D4E), width: 2),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          '25',
                          style:
                              TextStyle(fontSize: 18, color: Color(0xFFE37D4E)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: .5,
                indent: 15,
                endIndent: 15,
              ),
              ListTile(
                onTap: () {
                  final pageState =
                      Provider.of<AppStateController>(context, listen: false);
                  pageState.setAppBarViewState(false);
                  pageState.setSecondaryPageState(true);
                  pageState.setSecondaryCurrentIndex(1);
                  customScafoldKey.scaffoldKey.currentState!.openEndDrawer();
                },
                leading: Icon(
                  Icons.category,
                  color: Colors.green,
                ),
                title: Text(
                  'All Categories',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TopDealsPage()));
                },
                leading: Icon(
                  Icons.add_shopping_cart_rounded,
                  color: Colors.green,
                ),
                title: Text(
                  'Top Deals',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  //ProductRequest
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TopSellingDrawer()));
                },
                leading: Icon(
                  Icons.trending_up,
                  color: Colors.green,
                ),
                title: Text(
                  'Top Selling',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  //ProductRequest
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TrendingDrawer()));
                },
                leading: Icon(
                  Icons.hourglass_top,
                  color: Colors.green,
                ),
                title: Text(
                  'Trending Products',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  final pageState =
                      Provider.of<AppStateController>(context, listen: false);
                  pageState.setAppBarViewState(false);
                  pageState.setSecondaryPageState(true);
                  pageState.setSecondaryCurrentIndex(6);
                  customScafoldKey.scaffoldKey.currentState!.openEndDrawer();
                },
                leading: Icon(
                  Icons.local_offer,
                  color: Colors.green,
                ),
                title: Text(
                  'Deals Of The Day',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  final pageState =
                      Provider.of<AppStateController>(context, listen: false);
                  pageState.setAppBarViewState(false);
                  pageState.setSecondaryPageState(true);
                  pageState.setSecondaryCurrentIndex(4);
                  customScafoldKey.scaffoldKey.currentState!.openEndDrawer();
                },
                // onTap: () {
                //
                //   //ProductRequest
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => BundleOfferSeeAll()));
                // },
                leading: Icon(
                  Icons.wallet_giftcard,
                  color: Colors.green,
                ),
                title: Text(
                  'Bundle Offers ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  final pageState =
                      Provider.of<AppStateController>(context, listen: false);
                  pageState.setAppBarViewState(false);
                  pageState.setSecondaryPageState(true);
                  pageState.setSecondaryCurrentIndex(5);
                  customScafoldKey.scaffoldKey.currentState!.openEndDrawer();
                },
                leading: Icon(
                  Icons.fast_forward_outlined,
                  color: Colors.green,
                ),
                title: Text(
                  'Popular Product',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  //ProductRequest
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductRequest()));
                },
                leading: Icon(
                  Icons.mark_chat_read_rounded,
                  color: Colors.green,
                ),
                title: Text(
                  'Make product request',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
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
