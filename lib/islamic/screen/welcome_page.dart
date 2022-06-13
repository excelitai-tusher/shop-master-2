import 'package:bpp_shop/islamic/provider/constants/size_configs.dart';
import 'package:bpp_shop/islamic/screen/auth/sign_in_page.dart';
import 'package:bpp_shop/islamic/screen/auth/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'auth/forget_password.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfigure().init(context);
    double sizeV = SizeConfigure.blockSizeV!;
    double sizeH = SizeConfigure.blockSizeH!;

    return Scaffold(
      backgroundColor: Colors.black87,
      body: Container(
        height: sizeV * 100,
        width: sizeH * 100,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/welcomeImage.png'),
                colorFilter:
                ColorFilter.mode(Colors.black54, BlendMode.hardLight),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome To Muslim Store',
                    style: TextStyle(fontSize: sizeH * 5, color: Colors.white),
                  ),
                  SizedBox(
                    height: sizeV * 5,
                  ),
                  Text(
                    'Get Started By Logging\n into your account',
                    style: TextStyle(fontSize: sizeH * 3, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: sizeV * 8,
                  ),
                  Padding(
                    padding: EdgeInsets.all(sizeV * 2),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'SIGN IN',
                              style: TextStyle(color: Colors.amber, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                    btnName: 'Sign Up',
                    btnColor: Colors.blueAccent,
                    textColor: Colors.white,
                    sizev: sizeV,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                    },
                  ),
                  CustomButton(
                    onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> GuestLogin()));
                    },
                    sizev: sizeV,
                    btnName: 'As A Guest',
                    btnColor: Colors.blueAccent,
                    textColor: Colors.white,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Text(
                  "@ 2022, Islamic",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.btnName,
    required this.btnColor,
    required this.sizev,
    required this.textColor,
    required this.onPressed
  }) : super(key: key);

  final String btnName;
  final Color btnColor;
  final Color textColor;
  final double sizev;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(sizev * 2),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.white)))),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                btnName,
                style: TextStyle(color: textColor, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}