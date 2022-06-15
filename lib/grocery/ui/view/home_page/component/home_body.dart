
import 'package:bpp_shop/grocery/ui/view/home_page/component/popular_product_list_view.dart';
import 'package:flutter/material.dart';

import 'bundle_offers_list_view.dart';
import 'categories_list_view.dart';
import 'custom_tab_bar_left.dart';
import 'custom_tab_bar_right.dart';
import 'deals_of_the_day_list_view.dart';
import 'home_page_titles.dart';
import 'image_slide_show.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomHomePageTitles(
                leadingTitle: "Categories",
                trailingTitle: "See All",
              ),
              SizedBox(
                height: 10,
              ),
              ///
              ///
              /// categories
              ///
              ///
              CategoriesListView(),

              ///
              ///
              /// categories_END
              ///
              ///
              ///

              ///
              /// image_slider_START
              ///
              ///
              ///
              ImageSlideShowCustom(),

              ///
              /// image_slider_END
              ///
              ///
              SizedBox(
                height: 20,
              ),
              CustomHomePageTitles(
                leadingTitle: "Bundle Offers",
                trailingTitle: "See All",
              ),

              BundleOffersListView(),

              SizedBox(
                height: 20,
              ),
              CustomHomePageTitles(
                leadingTitle: "Popular",
                trailingTitle: "See All",
              ),
              PopularProductListView(),
              SizedBox(
                height: 20,
              ),
              CustomHomePageTitles(
                leadingTitle: "Daily Best Sells",
                trailingTitle: "See All",
              ),
              BundleOffersListView(),
              SizedBox(
                height: 20,
              ),

              ///
              ///
              /// Deals Of The Day
              ///
              ///
              CustomHomePageTitles(
                leadingTitle: "Deals Of The Day",
                trailingTitle: "View All",
              ),
              //DealsOfTheDayListView(),
              Container(
                //margin: EdgeInsets.symmetric(vertical: 8),
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("images/sales.png"),
                    fit: BoxFit.contain
                  )
                ),
              ),
              ///
              ///
              ///Top_selling_TrendingProducts
              ///
              ///
              SizedBox(
                height: 30,
              ),
              CustomTabBarRight(
                tab1: "Top Selling",
                tab2: "Trending Products",
              ),
              SizedBox(
                height: 30,
              ),
              CustomTabBarLeft(
                tab1: "Recently Added",
                tab2: "Top Rated",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
