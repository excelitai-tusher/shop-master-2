import 'package:bpp_shop/grocery/core/model/deals_of_the_day_model.dart';
import 'package:bpp_shop/grocery/ui/constant/app_colors.dart';
import 'package:flutter/material.dart';
class TopSellingDrawer extends StatelessWidget {
  const TopSellingDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Top Selling",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          onPressed: (){
         Navigator.pop(context);
          },),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView.separated(
          //scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SizedBox(
             height: 20,
            );
          },
          separatorBuilder: (context, index) {
            DealsOfTheDayModel item = DealsOfTheDayModel.list[index];
            return Container(

             // height: 100,
              width: MediaQuery.of(context).size.width*.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Container(
                  height: 160,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage(
                            item.productImageUrl.toString(),
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                 Positioned(
                  bottom: -5,
                   right: 0,
                   // alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        //margin: EdgeInsets.symmetric(horizontal: 60),
                        height: 60,
                        width: MediaQuery.of(context).size.width*.4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item.productName.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: titleFontColor,
                                ),
                              ),
                              Row(
                             //   crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 8,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 8,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 8,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 8,
                                  ),
                                  Icon(
                                    Icons.star_border_sharp,
                                    color: Colors.orangeAccent,
                                    size: 8,
                                  ),
                                ],
                              ),
                              Text(
                                "\$ " + item.price.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: DealsOfTheDayModel.list.length,
        ),
      ),
    );
  }
}
