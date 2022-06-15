import 'package:bpp_shop/bpp/screen/order/track%20order/track%20order.dart';
import 'package:bpp_shop/view_model/bpp/app_provider.dart';
import 'package:bpp_shop/bpp/provider/data_provider/product_manage_data_provider.dart';
import 'package:bpp_shop/bpp/provider/order_provider.dart';
import 'package:bpp_shop/bpp/screen/navbar/bottom_app_bar.dart';
import 'package:bpp_shop/bpp/screen/navbar/history_screen/myOrder_provider.dart';
import 'package:bpp_shop/bpp/screen/navbar/home_screen.dart';
import 'package:bpp_shop/view_model/bpp/local_storage_service.dart';
import 'package:bpp_shop/fashion/controller/peimary_page_controller.dart';
import 'package:bpp_shop/fashion/controller/product_detail_controller.dart';
import 'package:bpp_shop/fashion/controller/secondary_page_controller.dart';
import 'package:bpp_shop/fashion/controller/sub_category_controller.dart';
import 'package:bpp_shop/fashion/model/cart_model.dart';
import 'package:bpp_shop/fashion/model/sub_category_model.dart';
import 'package:bpp_shop/fashion/model/sub_sub_categories_product_model.dart';
import 'package:bpp_shop/fashion/model/wishlist_model.dart';
import 'package:bpp_shop/fashion/model/woman_category_model.dart';
import 'package:bpp_shop/grocery/core/controller/app_state_controller.dart';
import 'package:bpp_shop/grocery/core/controller/home_page_event_handeller.dart';
import 'package:bpp_shop/grocery/core/controller/order_history_event_handler.dart';
import 'package:bpp_shop/grocery/core/controller/product_detail_data_controller.dart';
import 'package:bpp_shop/grocery/core/model/BundleOffersModel.dart';
import 'package:bpp_shop/grocery/core/model/cart_model.dart';
import 'package:bpp_shop/grocery/core/model/my_favourite_data_model.dart';
import 'package:bpp_shop/bpp/provider/cart_provider.dart';
import 'package:bpp_shop/islamic/provider/model/order/cancelled/cancelled%20model%20class.dart';
import 'package:bpp_shop/islamic/provider/model/order/track%20order/track%20order%20model%20class.dart';
import 'package:bpp_shop/islamic/provider/model/search%20result%20view/serach%20result%20model.dart';
import 'package:bpp_shop/islamic/provider/model/wishlist_provider.dart';
import 'package:bpp_shop/islamic/screen/product%20details.dart';
import 'package:bpp_shop/view_model/profile_provider.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bpp/login/fb&mail_login_screen.dart';
import 'bpp/screen/address/demo_address.dart';
import 'bpp/screen/order/order details.dart';
import 'fashion/controller/app_bar_controler.dart';
import 'fashion/view/home_page/home_page.dart';
import 'grocery/ui/view/hamburger/hamburger1.dart';
import 'grocery/ui/view/home_page/component/categories_list_view.dart';
import 'grocery/ui/view/home_page/component/custom_tab_bar_right.dart';
import 'grocery/ui/view/home_page/home_page_main.dart';

final List<String> imgList = [
  'images/bike.png',
  'images/headPhone.png',
  'images/phone.png',
  'images/food.png',
  'images/bike.png',
];
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //LocalStorageStore localStorageStore=LocalStorageStore();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: BppApps()),

        // ChangeNotifierProvider.value(value: Cancelled2()),

        ChangeNotifierProvider.value(value: OrderTracking()),
        ChangeNotifierProvider.value(
          value: MyOrderProvider(),
        ),
        //ChangeNotifierProvider.value(value: Order_Details_1()),

        //oshin
        ChangeNotifierProvider.value(value: Cart()),
        ChangeNotifierProvider.value(value: Wish()),
        ChangeNotifierProvider.value(value: Order()),
        //ChangeNotifierProvider.value(value: ProfileProvider()),

        //fashion
        ChangeNotifierProvider.value(value: PrimaryScreenState()),
        ChangeNotifierProvider.value(value: ProductDetailController()),
        ChangeNotifierProvider.value(value: SecondaryPage()),
        ChangeNotifierProvider.value(value: PrimaryPageController()),
        ChangeNotifierProvider.value(value: ProdCategoryModel()),
        ChangeNotifierProvider.value(value: SubCategoriesController()),
        ChangeNotifierProvider.value(value: ProdSubCatModel()),
        ChangeNotifierProvider.value(value: SubSubProductsModel()), //CartModel
        ChangeNotifierProvider.value(value: CartModel()),
        ChangeNotifierProvider.value(value: WishlistModel()),

        //grocery
        ChangeNotifierProvider.value(value: AppStateController()),
        ChangeNotifierProvider.value(
            value: ProductDetailDataController()), //MyFavouriteDataModel
        ChangeNotifierProvider.value(
            value: MyFavouriteDataModel()), //BundleOffersModel
        ChangeNotifierProvider.value(value: BundleOffersModel()), //CartModel
        ChangeNotifierProvider.value(
            value: CartModels()), //OrderHistoryEventHandler
        ChangeNotifierProvider.value(value: OrderHistoryEventHandler()),
        ChangeNotifierProvider.value(
            value: CustomScafoldKey()), //OrderHistoryEventHandler
        ChangeNotifierProvider.value(
            value: OrderHistoryEventHandler()), //CustomScafoldKey
        ChangeNotifierProvider.value(
            value: CustomScafoldKey()), //CustomScafoldKey

        ChangeNotifierProvider.value(value: AddressModelDemo()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 640),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: GoogleFonts.robotoSlab().fontFamily,
            scaffoldBackgroundColor: Colors.white,
            canvasColor: Colors.transparent,
            primarySwatch: Colors.amber,
          ),
          supportedLocales: [
            Locale("af"),
            Locale("am"),
            Locale("ar"),
            Locale("az"),
            Locale("be"),
            Locale("bg"),
            Locale("bn"),
            Locale("bs"),
            Locale("ca"),
            Locale("cs"),
            Locale("da"),
            Locale("de"),
            Locale("el"),
            Locale("en"),
            Locale("es"),
            Locale("et"),
            Locale("fa"),
            Locale("fi"),
            Locale("fr"),
            Locale("gl"),
            Locale("ha"),
            Locale("he"),
            Locale("hi"),
            Locale("hr"),
            Locale("hu"),
            Locale("hy"),
            Locale("id"),
            Locale("is"),
            Locale("it"),
            Locale("ja"),
            Locale("ka"),
            Locale("kk"),
            Locale("km"),
            Locale("ko"),
            Locale("ku"),
            Locale("ky"),
            Locale("lt"),
            Locale("lv"),
            Locale("mk"),
            Locale("ml"),
            Locale("mn"),
            Locale("ms"),
            Locale("nb"),
            Locale("nl"),
            Locale("nn"),
            Locale("no"),
            Locale("pl"),
            Locale("ps"),
            Locale("pt"),
            Locale("ro"),
            Locale("ru"),
            Locale("sd"),
            Locale("sk"),
            Locale("sl"),
            Locale("so"),
            Locale("sq"),
            Locale("sr"),
            Locale("sv"),
            Locale("ta"),
            Locale("tg"),
            Locale("th"),
            Locale("tk"),
            Locale("tr"),
            Locale("tt"),
            Locale("uk"),
            Locale("ug"),
            Locale("ur"),
            Locale("uz"),
            Locale("vi"),
            Locale("zh"),
          ],
          localizationsDelegates: [
            CountryLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          home: GroceryHomePage(),//BottomNavBar(currentTab: 0,currentScreen: HomeScreen(),),
          //home:EmailLogin(),
          routes: {
            ProductDetails.routeName: (context) => ProductDetails(),
          },
        ),
      ),
    );
  }
}
