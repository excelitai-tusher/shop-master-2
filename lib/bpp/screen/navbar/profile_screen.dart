
import 'package:bpp_shop/bpp/google_map/Add_new_Address.dart';
import 'package:bpp_shop/bpp/login/fb&mail_login_screen.dart';
import 'package:bpp_shop/bpp/screen/navbar/bottom_app_bar.dart';
import 'package:bpp_shop/bpp/screen/navbar/my_profile.dart';
import 'package:bpp_shop/bpp/screen/order/track%20order/track%20order.dart';
import 'package:bpp_shop/view_model/bpp/local_storage_service.dart';
import 'package:bpp_shop/view_model/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';





class ProfileScreen extends StatefulWidget {
   ProfileScreen({Key? key,this.from}) : super(key: key);

   String? from;
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
String token="null";
String phNumber="null";
getToken()async{
  final tok= await LocalStorageStore().getUserToken();
  setState(() {
    token=tok.toString();
    print(tok);
    print(token);
  });
}
getNumber()async{
  final number= await LocalStorageStore().getUserNumber();
  setState(() {
    phNumber=number.toString();
    print(number);
    print(phNumber);
  });
}
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  getToken();
  }

  @override
  Widget build(BuildContext context) {
   // final profile = Provider.of<ProfileProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: token=="null"?EmailLogin():Column(
        children: [
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * .24,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      radius: MediaQuery.of(context).size.height*.06,
                      //maxRadius: 30,
                      backgroundColor: const Color(0xffe4e8e9),
                      backgroundImage:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkspTGDaYI0SloxfqGWTJMZYniyE8q9oqahw&usqp=CAU")),
                  const SizedBox(height: 10,),

            //   Text('${context.watch<ProfileProvider>().number}',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,),)
 //Text('${profile.items.values.toList()[0].phNumber}',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),)
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.07,
            child: ListTile(
              onTap: (){


                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyProfile()));
              },

              leading: Icon(
                Icons.account_circle_outlined,
                color: Color(0xffE47D4E),
                size: 30,
              ),
              title: Text(
                'My Profile',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: Colors.black,
              ),
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height*.07,
            child: ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TrackOrder()));
              },
              minVerticalPadding: 10,
              leading: Icon(
                Icons.history_rounded,
                color: Color(0xffE47D4E),
                size: 30,
              ),
              title: Text(
                'Order Track',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: Colors.black,
              ),
            ),
          ),
          InkWell(
            onTap: (){
              showDialog(

                context: context,
                builder: (BuildContext context) {
                  return Scaffold(
                    backgroundColor: Colors.transparent,
                    body: Center(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 140,
                          width: MediaQuery.of(context).size.width*.8,

                          child:
                          Column(

                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Are You Sure want to log out"),
                              const SizedBox(height: 20,),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                    child: const Text("No",style: TextStyle(color: Colors.red,fontSize: 18),),
                                    onPressed: () {

                                      Navigator.pop(context);
                                    },
                                  ),

                                  TextButton(
                                    child: const Text("Yes",style:  TextStyle(color: Colors.green,fontSize: 18),),
                                    onPressed: () {
                                      LocalStorageStore().userDeleteToken();

                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => widget.from=="cart"?Address():BottomNavBar(currentTab: 3,currentScreen: ProfileScreen(from: widget.from,),),),
                                              (route) => false);
                                     // Navigator.push(context, MaterialPageRoute(builder: (_)=>widget.from=="cart"?Address():BottomNavBar(currentTab: 3,currentScreen: ProfileScreen(mobile: widget.mobile,from: widget.from,),)));
                                      //Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            ],
                          )


                      ),
                    ),
                  );
                },
              );
            },
            child:  const ListTile(
              leading: Icon(
                Icons.logout,
                color: Color(0xffE47D4E),
                size: 30,
              ),
              title: Text(
                'Logout',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .06,
          )
        ],
      ),
    );
  }

}
