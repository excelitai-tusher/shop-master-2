import 'dart:convert';
import 'package:bpp_shop/bpp/screen/address/Address%20.dart';
import 'package:bpp_shop/view_model/bpp/local_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import '../../../bpp/google_map/Google_map_screen.dart';
import '../../../bpp/google_map/getdist_api.dart';
import 'demo_address.dart';
import '../../../models/bpp/devision_api_list.dart';

class AddNewAddress extends StatefulWidget {

  //AddNewAddress({this.streetAddress, this.district, this.thana, this.phoneNumber});
  // String? streetAddress;
  // String? district;
  // String? thana;
  // String? phoneNumber;

  @override
  State<AddNewAddress> createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  var district = '';
  var thana = "";
  var districtId;
  var thanaId;

  List<division>? subAreaList;
//List<division>? subAreaListCopy;
  List<Autogenerated>? areaList;

  TextEditingController _districtController = TextEditingController();
  TextEditingController _thanaController = TextEditingController();
  TextEditingController _streetAddressController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();

  LocalStorageStore localStorageStore=LocalStorageStore();

  Future getAreaHttpRequest() async {
    String url = "https://bppshops.com/api/district/ajax/3";
    var result = await http.get(Uri.parse(url));
    // print(result.body);
    final json = jsonDecode(result.body);
    print(json);

    setState(() {
      areaList = json
          .map((item) => Autogenerated.fromJson(item))
          .toList()
          .cast<Autogenerated>();
    });
  }

  Future getSubAreaHttpRequest(String id) async {

    String url = "https://bppshops.com/api/state/ajax/" + id.toString();
    var result = await http.get(Uri.parse(url));

    setState(() {
      subAreaList = jsonDecode(result.body)
          .map((item) => division.fromJson(item))
          .toList()
          .cast<division>();
      //subAreaListCopy=subAreaList;
    });
  }

  saveAddressHttps()async{
    final token=await localStorageStore.getUserToken();
    Map data ={
      "street_address": _streetAddressController.text,
      "district_id": districtId,
      "thana_id": thanaId,
      "name": "Enter Your Name",
      "phone_no": _phoneNumberController.text,
    };

    var body = jsonEncode(data);

    var response = await http.post(Uri.parse("https://bppshops.com/api/checkout/store"), headers: {
      'Content-type': 'application/json',
      'Authorization': "Bearer ${token}",//47|ZSoxBWu2Nar7x6B4c7xIqxr4fmKmrjGNMHtwZ1lI"
    }, body:body);

    print("Response ???????????? : ${response.statusCode}");
    if (response.statusCode == 200){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Address()), (route) => false);
    } else {
      throw "response error:code-${response.statusCode}";
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //getAreaHttpRequest();
    //getSubAreaHttpRequest();
  }

  @override
  Widget build(BuildContext context) {
    final provider= Provider.of<AddressModelDemo>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        title: Text(
          'Confirm Delivery Address',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Street Address",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 100,
                child: TextFormField(
                  controller: _streetAddressController,
                  maxLines: 3,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "736 New Gulbadan Super Market,5 Moulvi Bazar,Dhaka",
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "District Select",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 40,
                width: MediaQuery.of(context).size.width * .9,
                child: TextFormField(
                  onTap: () async {
                    await getAreaHttpRequest();
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          getAreaHttpRequest();
                          return Scaffold(
                            backgroundColor: Colors.transparent,
                            body: Center(
                              child: Container(
                                color: Colors.white,
                                height: 200,
                                width: MediaQuery.of(context).size.width * .9,
                                child: _buildGetAreaListView(areaList!),
                              ),
                            ),
                          );
                        });
                  },
                  controller: _districtController,
                  decoration: InputDecoration(
                    hintText: (district),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Area/ Thana",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 40,
                width: MediaQuery.of(context).size.width * .9,
                child: TextFormField(
                  onTap: () async {
                    await getSubAreaHttpRequest(districtId);
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Scaffold(
                            backgroundColor: Colors.transparent,
                            body: Center(
                              child: Container(
                                color: Colors.white,
                                height: 600,
                                width: MediaQuery.of(context).size.width * .9,
                                child: subAreaList != null
                                    ? buildGetSubAreaList()
                                    : Center(
                                    child: CircularProgressIndicator()),
                              ),
                            ),
                          );
                        });
                  },
                  decoration: InputDecoration(
                    //hintText:('Select'),
                    border: OutlineInputBorder(),
                  ),
                  controller: _thanaController,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Phone Number",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 40,
                width: MediaQuery.of(context).size.width * .9,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: _phoneNumberController,
                  decoration: InputDecoration(
                    //hintText: '+880145*******',
                    border: OutlineInputBorder(),
//hintText: 'Full Name',
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffF5DCD0),
                      width: 1,
                    ), //Border.all
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [],
                  ),
                  child: GoogleMapScreen()),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: const Text(
                  'Save Address',
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  saveAddressHttps();
                  // provider.addAddress(
                  //   streetAddress: _streetAddressController.text,
                  //   thana: _thanaController.text,
                  //   district: _districtController.text,
                  //   phone: _phoneNumberController.text,
                  // );


                  // var response = await http.post(Uri.parse("https://bppshops.com/api/user/profile/store"),
                  //     headers: {
                  //       'Authorization': "Bearer 12|BpZ9TAYLw6I4YT0FxnM9Qw0uT85IBZtVR6CO4MDW"
                  //     },
                  //     body: {
                  //       "address": _districtController.text
                  //     }
                  // );

                  // if(response.statusCode==200){
                  //   print("OKKKKKKKKKKKKKKKK");
                  //   Navigator.push(context, MaterialPageRoute(builder: (context) =>  ManageAddress()));
                  // }
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  maximumSize: Size(400, 100),
                  minimumSize: Size(360, 50),
                  primary: Colors.orange,
                  //padding: EdgeInsets.symmetric(horizontal: 90,vertical: 15)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGetSubAreaList() {
    return ListView.builder(
        itemCount: subAreaList!.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _thanaController.text =
                        subAreaList![index].postOffice.toString();
                    thanaId = subAreaList![index].id.toString();
                  });
                  Navigator.pop(context);
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Address(districtName: apiList![index].name,)));
                },
                child: Card(
                    elevation: 5,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
                      child: Text("${subAreaList![index].postOffice}"),
                    )),
              ),
            ],
          );
        });
  }

  Widget _buildGetAreaListView(List areaList) {
    return ListView.builder(
        itemCount: areaList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _districtController.text = areaList[index].name.toString();
                    districtId = areaList[index].id.toString();
                    // subAreaListCopy=subAreaList!.where((element) => element.id.toString()==id.toString()).toList();
                  });
                  Navigator.pop(context);
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Address(districtName: apiList![index].name,)));
                },
                child: Card(
                    elevation: 5,
                    child:
                    // Container(
                    //   height: 15,
                    //   child: Text("${areaList[index].name}"),
                    // )
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
                      child: Text("${areaList[index].name}"),
                    )),
              ),
            ],
          );
        });
  }
}