import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/controller/app_state_controller.dart';

class AllCategory extends StatefulWidget {
  const AllCategory({Key? key}) : super(key: key);

  @override
  _AllCategoryState createState() => _AllCategoryState();
}

class _AllCategoryState extends State<AllCategory> {
  @override
  Widget build(BuildContext context) {
    final pageState=Provider.of<AppStateController>(context,listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: (){
            pageState.setAppBarViewState(true);
            pageState.setPrimaryPageState(true);
          },
          child: Icon(
            Icons.arrow_back_ios_outlined,
            size: 25,
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Text(
            "All categories",
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.search, size: 30, color: Colors.grey),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Image(
                              image: AssetImage("images/category1.png"),
                              fit: BoxFit.cover,
                            ),
                            radius: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Fruits",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: (){
                        pageState.setTertiaryCurrentIndex(1);
                        pageState.setTertiaryPageState(true);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            CircleAvatar(
                              child: Image(
                                image: AssetImage("images/category2.png"),
                                fit: BoxFit.cover,
                              ),
                              radius: 30,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Vegetables",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Image(
                              image: AssetImage("images/category3.png"),
                              fit: BoxFit.cover,
                            ),
                            radius: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Fish",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Image(
                              image: AssetImage("images/category4.png"),
                              fit: BoxFit.cover,
                            ),
                            radius: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Meat",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Image(
                              image: AssetImage("images/category5.png"),
                              fit: BoxFit.cover,
                            ),
                            radius: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Dairy",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Image(
                              image: AssetImage("images/category6.png"),
                              fit: BoxFit.cover,
                            ),
                            radius: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Cleaning",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Image(
                              image: AssetImage("images/category7.png"),
                              fit: BoxFit.cover,
                            ),
                            radius: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Dry Fruits",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Image(
                              image: AssetImage("images/category8.png"),
                              fit: BoxFit.cover,
                            ),
                            radius: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Snacks",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Image(
                              image: AssetImage("images/category9.png"),
                              fit: BoxFit.cover,
                            ),
                            radius: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Drinks",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Image(
                              image: AssetImage("images/category10.png"),
                              fit: BoxFit.cover,
                            ),
                            radius: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Stationary",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Image(
                              image: AssetImage("images/category11.png"),
                              fit: BoxFit.cover,
                            ),
                            radius: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Cooking \n Essentials",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Image(
                              image: AssetImage("images/category12.png"),
                              fit: BoxFit.cover,
                            ),
                            radius: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Frozen Food",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Image(
                              image: AssetImage("images/category13.png"),
                              fit: BoxFit.cover,
                            ),
                            radius: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Stationary",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Image(
                              image: AssetImage("images/category14.png"),
                              fit: BoxFit.cover,
                            ),
                            radius: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Cooking \n Essentials",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Image(
                              image: AssetImage("images/category15.png"),
                              fit: BoxFit.cover,
                            ),
                            radius: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Frozen Food",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
