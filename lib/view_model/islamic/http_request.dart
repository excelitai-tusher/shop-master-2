// import 'dart:convert';
// import 'package:http/http.dart'as http;
// import '../../models/islamic/islamic_home_page.dart';
//
// class HttpRequests{
//   final String status='status';
//   final String baseUrl="https://bppshops.com/";
//   final String sendOtpUrl="api/sendOtp";
//   final String logInWithOtpUrl="api/loginWithOtp";
//   final String newRegisterUrl="api/newregister";
//   final String productManageUrl="api/product/manage";
//   final String islamicHomepage="api/islamic";
//   final String returnMostPopularAll="mostPopularAll";
//   final String returnDailyBestSales="dailyBestSales";
//   final String returnlatestdiscountproduct="latestdiscountproduct";
//   final String returntrendingProducts="trendingProducts";
//   final String returntopRated="topRated";
//   final String returnSpecialOffers="specialOffers";
//   final String returnSliders="sliders";
//   final String returnLatestProducts="latest_products";
//
//
//   httpPostRequest({required String suffixUrl,required Map<String, dynamic> body}) async {
//     http.Response response= await http.post(Uri.parse(baseUrl+suffixUrl),body: body);
//     if(response.statusCode==200 || response.statusCode==201){
//       if(suffixUrl=="api/sendOtp"){
//         return response.statusCode;
//       }
//
//       if(suffixUrl=="api/loginWithOtp"){
//         return response.body;
//       }
//       if(suffixUrl=="api/newregister"){
//         return response.body;
//       }
//     }
//     else{
//       throw "Error:: Status Code: ${response.statusCode}";
//     }
//   }
//
//   httpGetRequest({required String suffixUrl,required String returnValue}) async {
//     http.Response response= await http.get(Uri.parse(baseUrl+suffixUrl));
//
//     if(response.statusCode==200 || response.statusCode==201){
//       if(suffixUrl=="api/islamic"){
//         if(returnValue=="status"){
//           // final json=jsonDecode(response.body);
//           // IslamicHomePage islamicHomePageData=IslamicHomePage.fromJson(json);
//           return response.statusCode;
//         }
//         if(returnValue=="mostPopularAll"){
//           final json=jsonDecode(response.body);
//           IslamicHomePage islamicHomePageData=IslamicHomePage.fromJson(json);
//           return islamicHomePageData.mostPopularAll;
//         }
//         if(returnValue=="dailyBestSales"){
//           final json=jsonDecode(response.body);
//           IslamicHomePage islamicHomePageData=IslamicHomePage.fromJson(json);
//           return islamicHomePageData.dailyBestSales;
//         }
//         if(returnValue=="latestdiscountproduct"){
//           final json=jsonDecode(response.body);
//           IslamicHomePage islamicHomePageData=IslamicHomePage.fromJson(json);
//           return islamicHomePageData.latestdiscountproduct;
//         }
//         if(returnValue=="trendingProducts"){
//           final json=jsonDecode(response.body);
//           IslamicHomePage islamicHomePageData=IslamicHomePage.fromJson(json);
//           return islamicHomePageData.trendingProducts;
//         }
//         if(returnValue=="topRated"){
//           final json=jsonDecode(response.body);
//           IslamicHomePage islamicHomePageData=IslamicHomePage.fromJson(json);
//           return islamicHomePageData.topRated;
//         }//SpecialOffers
//         if(returnValue=="specialOffers"){
//           final json=jsonDecode(response.body);
//           IslamicHomePage islamicHomePageData=IslamicHomePage.fromJson(json);
//           return islamicHomePageData.specialOffers;
//         }
//         if(returnValue=="sliders"){
//           final json=jsonDecode(response.body);
//           IslamicHomePage islamicHomePageData=IslamicHomePage.fromJson(json);
//           return islamicHomePageData.sliders;
//         }//Sliders
//         if(returnValue=="latest_products"){
//           final json=jsonDecode(response.body);
//           IslamicHomePage islamicHomePageData=IslamicHomePage.fromJson(json);
//           return islamicHomePageData.latestProducts;
//         }
//       }
//     }
//     else{
//       throw "Error:: Status Code: ${response.statusCode}";
//     }
//   }
//
//
// }