import 'dart:convert';
import 'package:bpp_shop/bpp/screen/coupon/my_coupon.dart';
import 'package:bpp_shop/islamic/screen/special_offer_screen.dart';
import 'package:bpp_shop/models/islamic/special_offers.dart';
import 'package:bpp_shop/view_model/islamic/http_special_offer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../screen/category/screen_sub_category.dart';
import '../screen/category/screen_sub_sub_category.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool isLoading = false;
  List categoryList = [];
  List subcategoryList = [];
  String? categorySlugName;
  String? subCategorySlugName;
  List<SpecialOffers> special =[];
  String? subcategory;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSpecialOffer();
    getData();
  }

  getData() async {
    var clint = http.Client();
    var uri = Uri.parse('https://bppshops.com/api/subsubcategory/view');

    var response = await clint.get(uri);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);

      setState(() {
        categoryList = json['category'];
        subcategoryList = json['subcategory'];
      });
    } else {
      throw "Unable to retrieve the post data";
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    List<String> category =[];
    categoryList.map((element) =>{
      if(element['ecom_id']=='1'){
        category.add(element['category_name'])
      }
    } ).toList();
    print(category);


    List<String> _categoryId =[];
    categoryList.map((element) =>{
      if(element['ecom_id']=='1'){
        _categoryId.add(element['id'].toString())
      }
    } ).toList();
    print(_categoryId);

    List<String> _categorySlagName =[];
    categoryList.map((element) =>{
      if(element['ecom_id']=='1'){
        _categorySlagName.add(element['category_slug_name'].toString())
      }
    } ).toList();
    print(_categorySlagName);


    List<String> _categoryImage =[];
    categoryList.map((element) =>{
      if(element['ecom_id']=='1'){
        _categoryImage.add(element['category_image'])
      }
    } ).toList();
    print(_categoryImage);

    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.amber, width: 2)),
        child: Column(
          children: [
            buildDrawerHeader(),
            Container(
              height: 1,
              width: double.maxFinite,
              color: Colors.grey,
            ),

            Expanded(
              child: category.length<1?Center(
                child: CircularProgressIndicator(),
              ): ListView.builder(
                itemBuilder: (BuildContext context, categoryindex) {
                  String categoryId = _categoryId[categoryindex];
                  List<String> subcategoryMenuList = [];
                  List<String> subcategorySlagName = [];

                  categorySlugName=_categorySlagName[categoryindex];


                  subcategoryList
                      .map((e) => {
                    if (e['category_id'] == categoryId)
                      {subcategoryMenuList.add(e["sub_category_name"])}
                  }).toString();
                  print(subcategoryMenuList);

                  subcategoryList
                      .map((e) => {
                    if (e['category_id'] == categoryId)
                      {subcategorySlagName.add(e["sub_category_slug_name"])}
                  }).toString();
                  print(subcategorySlagName);



                  return Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 28.0, bottom: 8),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 1,
                                  height: subcategoryMenuList.length * 30,
                                  color: Colors.amber,
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                SizedBox(
                                    height: subcategoryMenuList.length * 32,
                                    width: 150,
                                    child: ListView.builder(
                                      itemBuilder:
                                          (BuildContext context, subcategoryindex) {

                                        subCategorySlugName =  subcategorySlagName[subcategoryindex];
                                        return GestureDetector(
                                          onTap: (){

                                            // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenSubSubCategory(
                                            //   categorySlugName: _categorySlagName[categoryindex],
                                            //   subCategorySlugName: subcategorySlagName[subcategoryindex],
                                            // )));
                                            //print("${_categorySlagName[categoryindex]}${subcategorySlagName[subcategoryindex]}");
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              subcategoryMenuList[subcategoryindex],
                                              style: const TextStyle(
                                                  letterSpacing: .8),
                                            ),
                                          ),
                                        );
                                      },
                                      itemCount: subcategoryMenuList.length,
                                      physics:
                                      const NeverScrollableScrollPhysics(),
                                    )),
                              ]),
                        )
                      ],
                      leading: Container(
                        height: 25,
                        width: 25,
                        child: Image.network(
                          "https://bppshops.com/" + _categoryImage[categoryindex],
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: GestureDetector(
                        onTap: (){
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenSubCategory(
                          //   categorySlugName: _categorySlagName[categoryindex],
                          // )
                          // )
                          // );
                        },
                        child: Text(
                          category[categoryindex],
                          style: const TextStyle(letterSpacing: 1, fontSize: 15),
                        ),
                      ),
                      iconColor: Colors.amber,
                      textColor: Colors.amber,
                      collapsedTextColor: Colors.black,
                    ),
                  );
                },
                itemCount: category.length,
              ),
            ),

            //Expanded(child: SizedBox(width: 100,))
          ],
        ),
      ),
    );
  }

  Widget buildDrawerHeader() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20.0, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SpecialOfferScreen()));
                },
                child: Row(
                  children: [
                    const Text(
                      'Special Offers',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.deepOrangeAccent, width: 2),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child:  Center(
                        child: Text(
                          '${special.length}',
                          style: TextStyle(
                              fontSize: 18, color: Colors.deepOrangeAccent),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.menu_open),
                alignment: Alignment.topRight,
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MyCoupons()));
            },
            child: Row(
              children: [
                const Text(
                  'Coupon',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    border:
                    Border.all(color: Colors.deepOrangeAccent, width: 2),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      '25',
                      style: TextStyle(
                          fontSize: 18, color: Colors.deepOrangeAccent),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

