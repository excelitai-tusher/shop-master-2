import 'package:bpp_shop/bpp/screen/navbar/history_screen/http_services.dart';
import 'package:bpp_shop/bpp/screen/navbar/history_screen/order_details_model.dart';
import 'package:bpp_shop/view_model/bpp/local_storage_service.dart';
import 'package:flutter/cupertino.dart';
import 'OrderModel.dart';

class MyOrderProvider extends ChangeNotifier{
  List<OrderModel> orderList=[];
  bool isLoading = false;

  LocalStorageStore localStorageStore=LocalStorageStore();


  void getOrderList()async{
    final token=await localStorageStore.getUserToken();
    isLoading = true;
    orderList = (await HttpServices().getMyOrderServices(token.toString()));
    isLoading = false;
    notifyListeners();
  }

  Future<void> canceledOrder(int orderId) async{
    final token=await localStorageStore.getUserToken();
    await HttpServices().canceledOrderServices(orderId,token.toString());
    orderList = await HttpServices().getMyOrderServices(token.toString());
    notifyListeners();
  }

  OrderDetailsModel? orderDetailsModel;
  Future<void> getOrderDetails(int orderId) async{
    final token=await localStorageStore.getUserToken();
    orderDetailsModel =await HttpServices().getOrderDetails(orderId,token.toString());
    print(orderDetailsModel!.orderItems!.length);

    notifyListeners();
  }

}