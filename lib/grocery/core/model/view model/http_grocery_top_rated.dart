// import 'dart:convert';
// import 'package:bpp_shop/models/islamic/trending_product_model.dart';
// import 'package:http/http.dart'as http;
// import '../TopRatedModelClass.dart';
// import '../TrendingModelClass.dart';
//
// Future<List<Null>?> getTrendProduct() async {
//   final response = await http.get(Uri.parse('https://bppshops.com/api/top_rated_2'));
//
//   if (response.statusCode == 200) {
//     final json=jsonDecode(response.body);
//     print(response.body);
//     Grocery_Top_Rated trendingProductData =Grocery_Top_Rated.fromJson(json);
//     return trendingProductData.topRated;
//
//   } else {
//
//     throw Exception('Failed to load');
//   }
//
// }