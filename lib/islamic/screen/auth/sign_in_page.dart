import 'package:bpp_shop/islamic/provider/constants/size_configs.dart';
import 'package:bpp_shop/islamic/screen/bottom_app_bar.dart';
import 'package:bpp_shop/islamic/screen/auth/sign_up_page.dart';
import 'package:bpp_shop/islamic/component/custom_text_field.dart';
import 'package:bpp_shop/islamic/screen/auth/remember_me.dart';
import 'package:flutter/material.dart';


class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
final formKey = GlobalKey<FormState>();
bool _rememberCheck= false;
bool _showPasswordText = true;
bool _showEmailText = false;

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfigure().init(context);

    double sizeV = SizeConfigure.blockSizeV!;
    double sizeH = SizeConfigure.blockSizeH!;

    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: 250.0,
                  width: sizeH * 100,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Sign in with your data that you enter during registration',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CustomTextField(
                      labelText: "Email Address",
                      hintText: "example@gmail.com",
                      suffixIcon: Icons.email_outlined,
                      controller: _emailController,
                      obscureText: _showEmailText,
                      textInputType: TextInputType.emailAddress,
                      changeTextVisibility: (){},
                      onPressed: () {},
                    ),
                    CustomTextField(
                      labelText: "Password",
                      hintText: _showPasswordText?"123456789":"*********",
                      suffixIcon:_showPasswordText?Icons.visibility_off_outlined:Icons.visibility,
                      controller: _passwordController,
                      textInputType: TextInputType.visiblePassword,
                      obscureText: _showPasswordText,
                      changeTextVisibility: (){
                        setState(() {
                          _showPasswordText= !_showPasswordText;
                        });
                      },
                      onPressed: () {},
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RememberMe(rememberCheck: _rememberCheck),
                        InkWell(
                          onTap: () {
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (Context) => ResetScreen()));
                          },
                          child: const Text(
                            "Forget Password ?",
                            style: TextStyle(color: Colors.amber, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: Container(
                            width: sizeH * 35,
                            height: 2,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'OR',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: Container(
                            width: sizeH * 35,
                            height: 2,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),

                    const SizedBox(
                      height: 15,
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,


                          decoration: BoxDecoration(

                            shape: BoxShape.circle
                          ),
                          child: Image.asset('assets/icons/facebook.png'),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 40,
                          width: 40,

                          decoration: BoxDecoration(
                              shape: BoxShape.circle
                          ),
                          child: Image.asset('assets/icons/twitter.png'),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 40,
                          width: 40,

                          decoration: BoxDecoration(
                              shape: BoxShape.circle
                          ),
                          child: Image.asset('assets/icons/google.png'),
                        )
                      ],
                    ),


                    SizedBox(
                      height: sizeV * 5,
                    ),


                    SizedBox(
                      child: ElevatedButton(
                        onPressed: () {
                          final form = formKey.currentState!;

                          if (form.validate()) {
                          //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Bottom_NavBar()));

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
                                "Sign In",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't Have An Account?",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (builder)=>SignUpPage()));
                            },

                            child: Text(
                              "Create One",
                              style:
                                  TextStyle(fontSize: 15, color: Color(0xFFF9B92E)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - size.height / 2);
    var controllPoint = Offset(100, size.height);
    var endPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(
        controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
