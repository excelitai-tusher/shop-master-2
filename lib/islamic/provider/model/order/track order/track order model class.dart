import 'package:bpp_shop/islamic/provider/model/order/track%20order/track%20order%20list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';


class OrderTracking with ChangeNotifier {


  List<TrackModel1> _trackOrder= [
    TrackModel1(
      title: "Order Placed",
      subtitle: "We have received your order",
      image: "images/todo list.png",
      time: "2.30 PM",
    ),
    TrackModel1(
      title: "Order Confirmed",
      subtitle: "Your order has been confirmed",
      image: "images/communication.png",
      time: "2.35 PM",
    ),
    TrackModel1(
      title: "Order Processed",
      subtitle: "We are prearing your order",
      image: "images/order procced.png",
      time: "2.45 PM",
    ),
    TrackModel1(
      title: "Ready to pickup",
      subtitle: "Your order is ready for pickup",
      image: "images/pickup point.png",
      time: "2.50 PM",
    ),
    TrackModel1(
      title: "Payment Confirmed",
      subtitle: "Awaiting confirmation",
      image: "images/payment confirmed.png",
      time: "3.00 PM",
    ),
    TrackModel1(
      title: "Delivered",
      subtitle: "Successfully delivered",
      image: "images/delivered.png",
      time: "3.15 PM",
    ),
  ];


  List<TrackModel1> get item {
    return [..._trackOrder];
  }

  void setProductDetailData(
      {required String productName,
        required String productImageUrl,
        required String productPrice}) {}
}
