import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../reset_password/reset_password.dart';

class otp_screen extends StatefulWidget {
  @override
  State<otp_screen> createState() => _otp_screenState();
}

class _otp_screenState extends State<otp_screen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: Image.asset("assets/SignIn.png").image, fit: BoxFit.cover)),
        child: Center(
          child: FrostedGlassBox(

          ),
        ),
      ),
    );
  }
}

class FrostedGlassBox extends StatelessWidget {
  @override
  bool isChecked = false;
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Center(
        child: Container(
          width: 340,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child:   Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                child: Text("Enter your 4-digit code to send your mobile number",
                  style: TextStyle(
                  fontSize: 12,
                    color: Colors.black
                ),
                ),
              ),
              Text("(+88017000000)",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.green
                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textFieldOTP(context: context,first: true, last: false),
                        _textFieldOTP(context: context,first: false, last: false),
                        _textFieldOTP(context: context,first: false, last: false),
                        _textFieldOTP(context: context,first: false, last: true),
                      ],
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                      height: 40,
                    ),

                  ],
                ),
              ),
              
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Resend Code",style: TextStyle(
                      fontSize: 15,
                      color: Colors.green
                    ),),
                  ),
                SizedBox(width: 180,),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 15,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(Icons.arrow_forward_ios,size: 20,),
                      color: Colors.white,
                      onPressed: () {
                          Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (_) => Reset_password(),
                          ),
                          );

                      },
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP({required BuildContext context, required bool first, last}) {
    return Container(
      height: 60,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),

          ),
        ),
      ),
    );
  }
}
