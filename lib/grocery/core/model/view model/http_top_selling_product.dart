import 'dart:convert';
import 'package:bpp_shop/models/islamic/trending_product_model.dart';
import 'package:http/http.dart'as http;
import '../TopSellingModelClass.dart';

Future<List<GroceryPopularProduct>?> getSellingProduct() async {
  final response = await http
      .get(Uri.parse('https://bppshops.com/api/top_selling_2'));

  if (response.statusCode == 200) {
    final json=jsonDecode(response.body);
    print(response.body);
    GroceryTopSellingProduct topSellingProductData =GroceryTopSellingProduct.fromJson(json);
    return topSellingProductData.popularProduct;

  } else {
    throw Exception('Failed to load');
  }

}