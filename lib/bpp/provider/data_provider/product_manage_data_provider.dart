//
// import 'package:bpp_shop/bpp/service/http_request.dart';
// import 'package:flutter/material.dart';
//
// import '../../api/islamic_home_page.dart';
//
//
// class ProductManageDataProvider with ChangeNotifier{
//   List<Latestdiscountproduct> list=[];
//   HttpRequests httpRequests=HttpRequests();
//   void fetchList()async{
//     list=[...await httpRequests.httpGetRequest(suffixUrl: httpRequests.islamicHomepage,returnValue: httpRequests.returnlatestdiscountproduct)];
//     notifyListeners();
//   }
// }