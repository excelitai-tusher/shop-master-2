import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import '../../../models/islamic/Category.dart';
import '../../../view_model/islamic/http_category.dart';
import 'screen_sub_category.dart';

class Category_offer extends StatefulWidget {
  const Category_offer({Key? key}) : super(key: key);
  @override
  State<Category_offer> createState() => _Category_offerState();
}

class _Category_offerState extends State<Category_offer> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    //getCategoryData();
  }

  List<Getcategory>? categoryList;
  getData() async{
    final list=await getCategory();
    setState(() {
      categoryList = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return categoryList != null
        ? Column(
            children: [
              Center(
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 30,
                      );
                    },
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryList!.length,
                    itemBuilder: (BuildContext context, i) {
                      //int categoryId = categoryList[i].categoryImage;
                      // List<int> subCateGoryId = [];
                      // subcategoryList
                      //     .map((e) => {
                      //           if (e['category_id'] == categoryId.toString())
                      //             {subCateGoryId.add(e["id"])}
                      //         })
                      //     .toString();

                      //print(subCateGoryId);
                      // CategoryApi categoriData = category!.[i];
                      return Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => ScreenSubCategory(
                                      categoryId:
                                              "${categoryList![i].id}",
                                          categorySlugName: "${categoryList![i].categorySlugName}",
                                        )),
                              );
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * .14,
                              width: 90,
                              //color: Colors.deepOrangeAccent,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: categoryList![i].categoryImage != null
                                      ? NetworkImage(
                                          "https://bppshops.com/${categoryList![i].categoryImage}",
                                        )
                                      : NetworkImage(
                                          'https://st3.depositphotos.com/23594922/31822/v/600/depositphotos_318221368-stock-illustration-missing-picture-page-for-website.jpg',
                                        ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   height: 4,
                          // ),
                          SizedBox(
                            width: 90,
                            child: Text(
                              "${categoryList![i].categoryName}", //categoryList.categoryName.toString(),
                              style: TextStyle(color: Colors.black),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          )
        : Column(
            children: [
              Shimmer(
                duration: Duration(seconds: 2), //Default value
                interval:
                    Duration(seconds: 1), //Default value: Duration(seconds: 0)
                color: Colors.black, //Colors.grey.shade700, //Default value
                colorOpacity: 0, //Default value
                enabled: true, //Default value
                direction: ShimmerDirection.fromLTRB(),
                child: Container(
                  height: 35,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(6),
                    // border:
                    // Border.all(color: Colors.grey, width: 1)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * .2,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10),
                      // childAspectRatio: 2/2.5),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, i) {
                        return Shimmer(
                          duration: Duration(seconds: 2), //Default value
                          interval: Duration(
                              seconds: 1), //Default value: Duration(seconds: 0)
                          color: Colors
                              .black, //Colors.grey.shade700, //Default value
                          colorOpacity: 0, //Default value
                          enabled: true, //Default value
                          direction: ShimmerDirection.fromLTRB(),
                          child: Container(
                            //height: MediaQuery.of(context).size.height * .14,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(6),
                              // border:
                              // Border.all(color: Colors.grey, width: 1)
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          );
  }
}
