import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
class AddressModelDemo with ChangeNotifier {
  String? streetAddress;
  String? district;
  String? thana;
  String? phone;
  //String? streetAddress;
  AddressModelDemo({
    this.streetAddress,
    this.district,
    this.thana,
    this.phone,
  });
  static List<AddressModelDemo> demoAddressList = [
    // AddressModelDemo(
    //   streetAddress: "1/4,BatarGoli",
    //   district: "Dhaka City",
    //   thana: "Mogbazar",
    //   phone: "01766609988",
    // ),
    // AddressModelDemo(
    //   streetAddress: "1/4,BatarGoli",
    //   district: "Dhaka City",
    //   thana: "Mogbazar",
    //   phone: "01766609988",
    // ),
    // AddressModelDemo(
    //   streetAddress: "1/4,BatarGoli",
    //   district: "Dhaka City",
    //   thana: "Mogbazar",
    //   phone: "01766609988",
    // ),
  ];
  void addAddress(
      {String? streetAddress, String? district, String? thana, String? phone}) {
    demoAddressList.add(AddressModelDemo(
      streetAddress: streetAddress,
      district: district,
      thana: thana,
      phone: phone,
    ));
    notifyListeners();
  }
  void deleteAddress(
      {required String streetAddress,
        required String district,
        required String thana,
        required String phone}) {
    demoAddressList.remove(AddressModelDemo(
      streetAddress: streetAddress,
      district: district,
      thana: thana,
      phone: phone,
    ));
    notifyListeners();
    // demoAddressList.removeWhere((element) =>
    //     element.streetAddress == streetAddress && element.thana == thana && element.district==district);
  }
  void deleteByIndex(int index){
    demoAddressList.removeAt(index);
    notifyListeners();
  }
}
//List<AddressModel> demoAddressList=[];