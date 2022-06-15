import 'dart:convert';
import 'package:bpp_shop/models/islamic/trending_product_model.dart';
import 'package:http/http.dart'as http;
import '../TrendingModelClass.dart';

Future<List<GroceryTrendProducts>?> getTrendProduct() async {
  final response = await http.get(Uri.parse('https://bppshops.com/api/trending_product_2'));

  if (response.statusCode == 200) {
    final json=jsonDecode(response.body);
    print(response.body);
    GroceryTrendingProduct trendingProductData =GroceryTrendingProduct.fromJson(json);
    return trendingProductData.trendingProduct;

  } else {

    throw Exception('Failed to load');
  }

}