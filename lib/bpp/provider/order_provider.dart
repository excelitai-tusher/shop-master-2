import 'dart:convert';
import 'package:bpp_shop/bpp/provider/cart_provider.dart';
import 'package:bpp_shop/view_model/bpp/local_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class OrderItem {
  final String customerId;
  final List<CartItem> carts;
  final DateTime deliveryDate;
  final DateTime deliveryTime;
  OrderItem(
      {
        required this.deliveryDate,
        required this.deliveryTime,
        required this.customerId,
        required this.carts,
        });
}

class Order with ChangeNotifier {
  List<OrderItem> _orders = [];
  // final String authToken;
  // final String userId;
  // Order(
  //    // this.authToken, this.userId,
  //     this._orders);
  List<OrderItem> get orders {
    return [..._orders];

  }

  LocalStorageStore localStorageStore=LocalStorageStore();
  Future<http.Response> addOrder(List<CartItem> cartProducts, double total) async {
    final url = Uri.parse('https://bppshops.com/api/checkout/process');
    final token=await localStorageStore.getUserToken();


    final timestamp = DateTime.now();
    final datestamp = DateTime.now();
    final jsonData = jsonEncode({
      // 'amount': total,
      'deliveryDate': datestamp.toIso8601String(),
      'deliveryTime': timestamp.toIso8601String(),
      'carts': cartProducts
          .map((cp) =>
      {
       // 'id': cp.id,
        'product_id': cp.productId,
        'qty': cp.quantity,
        'price': int.tryParse(cp.price.toString()),
        //'shipping': cp.shipping,
        'options': {
          'color': cp.option.color,
          'size': cp.option.size,
          'vat': cp.option.vat,
        }
      })
          .toList(),
    });

    print(jsonData);
    print("???????????????????????????????????????????????????/");
    final response = await http.post(
      url,
      body: jsonData,

      headers: {
        'Authorization': "Bearer ${token}",//47|ZSoxBWu2Nar7x6B4c7xIqxr4fmKmrjGNMHtwZ1lI",
        "Content-Type": "application/json",
        "Accept":"application/json"
      },
    );
    print("status Code : ${response.statusCode} ??????????????");
    return response;
  }
}
