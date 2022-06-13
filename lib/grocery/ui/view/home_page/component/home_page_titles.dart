import 'package:bpp_shop/grocery/ui/view/home_page/component/bundle_offers_see_all.dart';
import 'package:flutter/material.dart';

import '../../../../core/controller/home_page_event_handeller.dart';
import '../../../constant/app_colors.dart';

class CustomHomePageTitles extends StatelessWidget {
  CustomHomePageTitles({Key? key, this.leadingTitle, this.trailingTitle})
      : super(key: key);
  String? leadingTitle;
  String? trailingTitle;
  final homePageEventHandler = HomePageEventHandler();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leadingTitle!,
            style: TextStyle(fontSize: 20, color: titleFontColor),
          ),
          GestureDetector(
            // onTap: () {
            //
            //   //ProductRequest
            //   Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //           builder: (context) => BundleOfferSeeAll()));
            // },
            onTap: () {
              homePageEventHandler.seeAllOnPressedEventListener(
                context: context,
                leadingTitle: leadingTitle.toString(),
              );
            },
            child: Text(
              trailingTitle!,
              style: TextStyle(
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
