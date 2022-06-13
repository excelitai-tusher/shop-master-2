import 'dart:convert';
import 'package:bpp_shop/bpp/provider/cart_provider.dart';
import 'package:bpp_shop/bpp/provider/order_provider.dart';
import 'package:bpp_shop/bpp/screen/order/order_bottom_sheet.dart';
import 'package:bpp_shop/view_model/bpp/local_storage_service.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:time_range/time_range.dart';
import 'package:intl/intl.dart';
import 'Add_new_Address.dart';
import 'package:http/http.dart' as http;

import '../../../models/bpp/address_model.dart';
import 'demo_address.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  var date = DateFormat.MMMEd().format(DateTime.now());

  List<String> dateList = [
    //DateFormat('Today, MMM d, yyyy').format(DateTime.now()),
    DateFormat.MMMEd().format(DateTime.now()),
    DateFormat.MMMEd().format(DateTime.now().add(Duration(days: 1))),
    DateFormat.MMMEd().format(DateTime.now().add(Duration(days: 2))),
    DateFormat.MMMEd().format(DateTime.now().add(Duration(days: 3))),
    DateFormat.MMMEd().format(DateTime.now().add(Duration(days: 4))),
  ];
  String? _selectDate;
  bool? Cash_on_Delivery = false;
  bool? Bank_Card = false;
  bool? Mobile_Banking = false;
  bool isSelectAddress = false;
  int selectedIndex = -1;
  List<AddressModel> addressList = [];

  TextEditingController nameController = TextEditingController();

  _Cash_on_Delivery(bool? value) {
    setState(() {
      Cash_on_Delivery = value;
    });
  }

  _Bank_Card(bool? value) {
    setState(() {
      Bank_Card = value;
    });
  }

  _Mobile_Banking(bool? value) {
    setState(() {
      Mobile_Banking = value;
    });
  }

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2023, DateTime.now().day + 5),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      // setState(() {
      //   _selectDate = pickedDate;
      // });
    });
  }

  static const orange = Color(0xFFFE9A75);
  static const dark = Color(0xFF333A47);
  static const double leftPadding = 50;

  final _defaultTimeRange = TimeRangeResult(
    TimeOfDay(hour: 14, minute: 50),
    TimeOfDay(hour: 15, minute: 20),
  );

  TimeRangeResult? _timeRange;

  @override
  void initState() {
    super.initState();

    getAllAddressData();
  }
  LocalStorageStore localStorageStore=LocalStorageStore();

String url ="https://bppshops.com/api/checkout/info/all";
  String deleteUrl="https://bppshops.com/api/checkout/info/delete";
  getAllAddressData() async {
    final token=await localStorageStore.getUserToken();
    List<AddressModel> _addressList = [];
    var response = await http.get(
        Uri.parse(
          "https://bppshops.com/api/checkout/info/all",
        ),
        headers: {
          'Content-type': 'application/json',
          'Authorization': "Bearer ${token}",//47|ZSoxBWu2Nar7x6B4c7xIqxr4fmKmrjGNMHtwZ1lI"
        });

    if (response.statusCode == 200) {
      List<dynamic> json = jsonDecode(response.body);
      print(response.statusCode);

      json.forEach((element) {
        AddressModel addressModel = AddressModel.fromJson(element);

        _addressList.add(addressModel);

        setState(() {
          addressList = _addressList;
        });
      });
    }
  }

  deletAddressData(int id) async {
    final token=await localStorageStore.getUserToken();
    final response = await http.post(Uri.parse(deleteUrl),body:{
      "id":id.toString()
    },headers: {
      'Authorization': "Bearer ${token}",//47|ZSoxBWu2Nar7x6B4c7xIqxr4fmKmrjGNMHtwZ1lI"
    });
    if(response.statusCode ==200){
      print("delete : id");
      //return true;
    }else{
      //return false;
    }

  }




  @override
  Widget build(BuildContext context) {

    final cart = Provider.of<Cart>(context);
    print(addressList.length.toString());
    final addressModelDemo = Provider.of<AddressModelDemo>(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Manage Address"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  //color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                height:
                    addressList.isEmpty ? 145 : 145 + addressList.length * 60,
                width: size.width * .9,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.black,
                            size: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Select a deliver Address",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Divider(
                        height: 40,
                        color: Colors.black,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewAddress()));
                      },
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * .8,
                        decoration: BoxDecoration(
                          //color: Colors.red,
                          border: Border.all(width: 1, color: Colors.grey),
                          // Border(
                          //   left: BorderSide(width: 8.0, color: Colors.green),
                          // ),
                        ),
                        child: Center(child: Text("+ Add Address")),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    addressList.isNotEmpty
                        ? Container(
                            height: addressList.length * 60,
                            width: MediaQuery.of(context).size.width * .8,
                            //color: Colors.red,
                            child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: addressList.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isSelectAddress = !isSelectAddress;
                                      selectedIndex = index;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top: 5, bottom: 5),
                                    padding: EdgeInsets.only(
                                      top: 5,
                                      left: 15,
                                    ),
                                    height: 50,
                                    width:
                                        MediaQuery.of(context).size.width * .8,
                                    decoration: BoxDecoration(
                                        color: index == selectedIndex &&
                                                isSelectAddress
                                            ? Color(0xffECF9EB)
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.black12, width: .5)),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(addressList[index]
                                                .streetAddress
                                                .toString()),
                                            Row(
                                              children: [
                                                Text(
                                                  addressList[index]
                                                          .thanaId
                                                          .toString() +
                                                      ",",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                    addressList[index]
                                                        .district
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12)),
                                              ],
                                            )
                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 20),
                                          child: Center(
                                            child: TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  deletAddressData(addressList[index].id!);
                                                  getAllAddressData();
                                                  //Navigator.of(ctx).pop(true);
                                                });
                                                // showDialog(
                                                //     context: context,
                                                //     builder: (ctx) => AlertDialog(
                                                //       title: Text('Are you sure?'),
                                                //       content: Text('Do you want to remove the item?'),
                                                //       actions: [
                                                //         TextButton(
                                                //           onPressed: () {
                                                //             Navigator.of(ctx).pop();
                                                //           },
                                                //           child: Text('NO'),
                                                //         ),
                                                //         TextButton(
                                                //             onPressed: () {
                                                //               setState(() {
                                                //                 deletAddressData(addressList[index].id!);
                                                //                 getAllAddressData();
                                                //                 Navigator.of(ctx).pop(true);
                                                //               });
                                                //             },
                                                //             child: Text('Yes'))
                                                //       ],
                                                //     ));


                                              },
                                              child: Text(
                                                'Delete',
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 12),

                                              ),
                                            ),

                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                                //   ChangeNotifierProvider.value(
                                //   value: item,
                                //   child: BuildAddressCustomTile(),
                                // );
                              },
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Container(
                margin: EdgeInsets.only(right:8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                height: 200,
                width: 350,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 7, left: 10, right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.watch_later),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Preferred Delivery Time",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.blueGrey,
                              ),
                            ),
                          )
                          //  When Would You Like Your Regular Delivery ?
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      child: Divider(
                        height: 40,
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.hourglass_bottom_sharp),
                        Text(
                          "When Would You Like Your Regular Delivery ?",
                         style: TextStyle(fontSize: 14),
                        )
                        //  When Would You Like Your Regular Delivery ?
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                Text(
                                  'Date',
                                  style: TextStyle(color: Colors.grey),
                                ),

                                Row(
                                  children: [
                                    DropdownButton(

                                      dropdownColor: Colors.white,
                                      underline: Container(color: Colors.white,),
                                      // hint: Text(
                                      //     'Pick A Date'), // Not necessary for Option 1
                                      value: _selectDate,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _selectDate =
                                          newValue as String?;
                                        });
                                      },
                                      items: dateList.map((location) {
                                        return DropdownMenuItem(
                                          child: new Text(location),
                                          value: location,
                                        );
                                      }).toList(),
                                    ),

                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Column(
                              children: [
                                Text(
                                  'Time',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    Text(_timeRange == null
                                        ? 'Choose Time'
                                        : ' ${_timeRange!.start.format(context)} - ${_timeRange!.end.format(context)}'),
                                    IconButton(
                                      onPressed: () {
                                        showModalBottomSheet<void>(
                                          isDismissible: true,
                                          isScrollControlled: true,
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Container(
                                             // margin: EdgeInsets.symmetric(horizontal: 10),
                                              child: Container(
                                                decoration: BoxDecoration( color: Colors.white,
                                                  borderRadius: BorderRadius.circular(6)
                                                ),

                                                padding: EdgeInsets.symmetric(
                                                    vertical: 20),
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *.3,
                                                child: TimeRange(
                                                  fromTitle: Text(
                                                    'FROM',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: dark,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                  toTitle: Text(
                                                    'TO',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: dark,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                  titlePadding: leftPadding,
                                                  textStyle: TextStyle(
                                                    fontWeight: FontWeight.normal,
                                                    color: dark,
                                                  ),
                                                  activeTextStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                  borderColor: dark,
                                                  activeBorderColor: dark,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  activeBackgroundColor:
                                                      Theme.of(context)
                                                          .colorScheme
                                                          .primary,
                                                  firstTime: TimeOfDay(
                                                      hour: 8, minute: 00),
                                                  lastTime: TimeOfDay(
                                                      hour: 22, minute: 00),
                                                  initialRange: _timeRange,
                                                  timeStep: 10,
                                                  timeBlock: 30,
                                                  onRangeCompleted: (range) =>
                                                      setState(() =>
                                                          _timeRange = range),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      icon: Icon(Icons.arrow_drop_down),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Payment Method",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .05,
              width: MediaQuery.of(context).size.width,
              child: CheckboxListTile(
                title: Text(
                  "Cash on Delivery",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                controlAffinity: ListTileControlAffinity.leading,
                value: Cash_on_Delivery,
                onChanged: _Cash_on_Delivery,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .05,
              width: MediaQuery.of(context).size.width,
              child: CheckboxListTile(
                title: Text(
                  "Bank/Card",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                controlAffinity: ListTileControlAffinity.leading,
                value: Bank_Card,
                onChanged: _Bank_Card,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .05,
              width: MediaQuery.of(context).size.width,
              child: CheckboxListTile(
                title: Text(
                  "Mobile Banking",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                controlAffinity: ListTileControlAffinity.leading,
                value: Mobile_Banking,
                onChanged: _Mobile_Banking,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                "৳ 60 Delivery charge included",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: ()async{
                    Response response=await Provider.of<Order>(context, listen: false).addOrder(
                      cart.items.values.toList(),
                      cart.totalAmount,
                    );
                    cart.clearCart();
                    if(response.statusCode==200){


                      showModalBottomSheet<void>(
                        isDismissible: false,
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return OrderBottomSheet(
                          );
                        },
                      );
                      //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Address()));
                     // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BottomNavBar(currentTab: 0,currentScreen: HomeScreen(),)), (route) => false);
                    }
                    else{
                      throw "Error : ${response.statusCode} ??????????????";
                    }
                  },
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * .5,
                    color: Color(0xFFFE9A75),
                    child: Center(
                      child: Text(
                        "Proceed",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * .2,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      "৳ 149",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
