import 'package:flutter/material.dart';

import '../../../../core/model/polpular_model.dart';
import '../../../constant/app_colors.dart';

class PopularProductListView extends StatelessWidget {
  const PopularProductListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, i) {
          PopularModel item = PopularModel.list[i];
          return Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 8.0),
            child: ListTile(
              tileColor: tertiaryColor1,
              leading: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(
                  item.productImageUrl.toString(),
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                item.productName.toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: titleFontColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                item.productQuantity.toString(),
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.productPrice.toString(),
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primaryColor),
                    child: Icon(
                      Icons.add_shopping_cart_outlined,
                      color: tertiaryColor1,
                      size: 18,
                    ),
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10,
          );
        },
        itemCount: PopularModel.list.length,
      ),
    );
  }
}
