import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/controller/app_state_controller.dart';
import '../../../core/controller/order_history_event_handler.dart';
import '../../constant/app_colors.dart';
import 'component/active.dart';
import 'component/past_order.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final event = Provider.of<OrderHistoryEventHandler>(context);
    final pageState=Provider.of<AppStateController>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: (){
            pageState.setAppBarViewState(true);
            pageState.setPrimaryCurrentIndex(0);
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Text(
            "Order History",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                children: [
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary:
                            event.activeButton ? primaryColor : tertiaryColor1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onPressed: () {
                        event.onActivePress(true);
                        //Navigator.push(context, MaterialPageRoute(builder: (context) =>Payment()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Active (2)",
                                style: TextStyle(
                                  color: event.activeButton
                                      ? Colors.white
                                      : tertiaryColor2,
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 40,
                    width: 180,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: event.pastOrderButton
                            ? primaryColor
                            : tertiaryColor1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onPressed: () {
                        event.onPastOrderPress(true);
                        //Navigator.push(context, MaterialPageRoute(builder: (context) =>Payment()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Past Orders (10)",
                                style: TextStyle(
                                  color: event.pastOrderButton
                                      ? Colors.white
                                      : tertiaryColor2,
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            event.activeButton ? ActiveBody() : PastOrderBody(),
          ],
        ),
      ),
    );
  }
}
