import 'package:bpp_shop/islamic/provider/constants/app_style.dart';
import 'package:bpp_shop/islamic/provider/constants/size_configs.dart';
import 'package:bpp_shop/islamic/screen/bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class OtpInputScreen extends StatefulWidget {
  final String phoneNumber;
  OtpInputScreen({Key? key,required this.phoneNumber}) : super(key: key);

  @override
  _OtpInputScreenState createState() => _OtpInputScreenState();
}

class _OtpInputScreenState extends State<OtpInputScreen> {
  TextEditingController textEditingController = TextEditingController();

  String currentText = "";

@override
  void initState() {
    // TODO: implement initState
    super.initState();

    textEditingController.text=currentText;
  }
  @override
  Widget build(BuildContext context) {
    SizeConfigure().init(context);
    double sizeV = SizeConfigure.blockSizeV!;
    double sizeH = SizeConfigure.blockSizeH!;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10),
              child: Text(
                "Verify your phone number",
                style: kTitleTextBlack,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: sizeV * 5,
            ),
            Text("We have send an Otp on your mobile number\n"+widget.phoneNumber,
                style: kSubTitleTextGrey, textAlign: TextAlign.center),

            SizedBox(height: sizeV*5,),
            Center(
              child: PinCodeTextField(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                enablePinAutofill: true,

                keyboardType: TextInputType.number,
                length: 4,

                 obscureText: false,
                //animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  inactiveColor: Colors.grey,
                  activeColor: Colors.amber,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  //activeFillColor: Colors.white,
                ),
                //animationDuration: const Duration(milliseconds: 100)
                controller: textEditingController,
                // onCompleted: (v) {
                //   debugPrint("Completed");
                // },
                onChanged: (value) {
                  //debugPrint(value);
                  setState(() {
                    currentText=value;
                  });
                },
                beforeTextPaste: (text) {
                  return true;
                },
                appContext: context,
              ),
            ),

            Text(currentText),
            SizedBox(height: sizeV*5,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:const [
                Text("Don't receive an OTP?",style:  TextStyle(
                  fontSize: 15,
                ),),
                SizedBox(width: 10,),
                Text("Resend OTP",style:  TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFF9B92E)
                ),),
              ],
            ),
            SizedBox(height: sizeV*3,),

            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  if(currentText.length < 4){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter Your OTP")));
                  }else{
                   // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Bottom_NavBar()));
                  }

                },
                style: ElevatedButton.styleFrom(primary: const Color(0xFFF9B92E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Padding(
                  padding: const  EdgeInsets.symmetric(vertical: 10,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [

                      Text("Submit",
                        style: TextStyle(color: Colors.white,fontSize: 18),

                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}