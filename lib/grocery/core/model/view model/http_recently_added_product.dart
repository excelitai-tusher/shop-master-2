import 'dart:convert';
import 'package:bpp_shop/models/islamic/trending_product_model.dart';
import 'package:http/http.dart'as http;
import '../RecentlyAddedModelClass.dart';
import '../TopSellingModelClass.dart';

Future<List<RecentlyAdded>?> getRecentAdded() async {
  final response = await http.get(Uri.parse('https://bppshops.com/api/recently_added_2'));

  if (response.statusCode == 200) {
    final json=jsonDecode(response.body);
    print(response.body);
    Grocery_recently_added topSellingProductData =Grocery_recently_added.fromJson(json);
    return topSellingProductData.recentlyAdded;
  } else {
    throw Exception('Failed to load');
  }

}