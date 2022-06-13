import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/model/popular_listModels.dart';
import 'component/Popular_offers_list.dart';
import 'component/bundle_offers_list.dart';


class Home extends StatefulWidget {
  const Home({Key ?key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool onPressed0 = true;
  bool onPressed1= false;
  bool onPressed2 = false;
  bool onPressed3 = false;
  bool onPressed4 = false;
  Color colorz=Colors.greenAccent;

  getColor(){
    if(onPressed0 == true){
      return Colors.lightGreen;
    }
    // if(onPressed1 == true){
    //   return Colors.lightGreen;
    // }
    // if(onPressed2 == true){
    //   return Colors.lightGreen;
    // }
    // if(onPressed3 == true){
    //   return Colors.lightGreen;
    // }
    // if(onPressed4 == true){
    //   return Colors.lightGreen;
    // }
    else{
      return Colors.red;
    }
  }

  TextEditingController searchController = new TextEditingController();
  //final bundleOffersModel = Provider.of<BundleOffersModel>(context);
  // List<String> navBarItem = [
  //   "All",
  //   "Fruits",
  //   "Vegetables",
  //   "Dairy",
  //   "Meat",
  //   "Fish",
  // ];

  @override
  Widget build(BuildContext context) {
    //final buttonModel = Provider.of<ButtonModel>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: const BoxDecoration(boxShadow: []),
          child: Row(
            children: [
              SizedBox(
                width: 60,
              ),
              const Text(
                'Top Deals',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Icon(
                  Icons.search,
                  size: 35,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    margin: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24)),
                  ),
                  Container(
                    height: 50,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: ButtonModel.list.length,
                        itemBuilder: (context, index) {
                          final item =ButtonModel.list[index];
                          return InkWell(
                            onTap: () {
                              setState(() {
                                if(item.productName.toString()=="All"){
                                  colorz=Colors.deepOrange;
                                }
                                // if(item.productName.toString()=="Fruits"){
                                //
                                //   colorz=Colors.deepOrange;
                                // }
                                // if(item.productName.toString()=="Vegetables"){
                                //   colorz=Colors.deepOrange;
                                // }
                                // if(item.productName.toString()=="Dairy"){
                                //   colorz=Colors.deepOrange;
                                // }
                                // if(item.productName.toString()=="Meat"){
                                //   colorz=Colors.deepOrange;
                                // }
                                else{
                                  colorz=Colors.greenAccent;
                                }

                                //onPressed = !onPressed;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: colorz,//getColor(),//onPressed0 ? Colors.lightGreen : Colors.red,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(item.productName.toString(),
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Text(
                      "Bundle Offers",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BundleOffersListView1(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Popular",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  PopularOfferListView(),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SizedBox(
                height: 40,
                width: 190,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green
                  ),
                  onPressed: (){
                    },
                  child: Row(
                    children: [
                      Icon(
                        Icons.shopping_bag,
                        color:Colors.white,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('4 Items in cart',style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
