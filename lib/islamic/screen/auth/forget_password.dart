import 'package:bpp_shop/islamic/provider/constants/app_style.dart';
import 'package:bpp_shop/islamic/provider/constants/size_configs.dart';
import 'package:bpp_shop/islamic/screen/auth/otp_input_screen.dart';
import 'package:flutter/material.dart';



class GuestLogin extends StatefulWidget {
  GuestLogin({Key? key}) : super(key: key);

  @override
  State<GuestLogin> createState() => _GuestLoginState();
}

class _GuestLoginState extends State<GuestLogin> {
  TextEditingController _phoneController = TextEditingController();
  String phoneErrorText = '';

  @override
  Widget build(BuildContext context) {
    SizeConfigure().init(context);
    double sizeV = SizeConfigure.blockSizeV!;
    double sizeH = SizeConfigure.blockSizeH!;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            children: [
              SizedBox(
                height: sizeV * 10,
              ),
              Container(
                child: Center(
                  child: Text('Create Account'),
                ),
              ),
              SizedBox(
                height: sizeV * 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Text(
                      "Enter your mobile number to create account",
                      style: kTitleTextBlack,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: sizeV * 7,
                  ),
                  Text("We will send you one time password (OTP)",
                      style: kSubTitleTextGrey, textAlign: TextAlign.center),
                  SizedBox(
                    height: sizeV * 7,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, right: 50),
                    child: TextFormField(
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1),

                      maxLength: 11,
                      onChanged: (value) {
                        if (value[0] != '0' || value[1] != '1') {
                          setState(() {
                            phoneErrorText = "Enter Valid Number";
                          });
                        } else {
                          setState(() {
                            phoneErrorText = "";
                          });
                        }
                        if (value.length == 11) {
                          setState(() {
                            FocusScope.of(context).unfocus();
                          });
                        }

                      },
                      //initialValue: '01',
                      controller: _phoneController,
                      textAlign: TextAlign.center,
                      cursorColor: Colors.amber,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(

                        errorText: phoneErrorText,
                        errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
                        focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber,)
                        ),
                        errorStyle: TextStyle(color: Colors.red),
                        hintText: "01700-000000",
                        hintStyle: const TextStyle(
                            fontSize: 18,
                            letterSpacing: 2,
                            color: Colors.black12),
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.amber,
                        ),
                        suffix: Text('         '),),
                    ),
                  ),
                  SizedBox(
                    height: sizeV * 7,
                  ),
                  SizedBox(
                    child: ElevatedButton(
                      onPressed: () {


                        if(_phoneController.text.length<11){
                          setState(() {
                            phoneErrorText = "Length must be 11 digits";
                          });
                        }
                        else{
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OtpInputScreen(
                                      phoneNumber: _phoneController.text)));
                        }


                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFF9B92E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Send",
                              style:
                              TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
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
}
