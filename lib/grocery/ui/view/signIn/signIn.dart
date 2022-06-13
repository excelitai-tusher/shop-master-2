import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../forget_password/forget_password.dart';
import '../home_page/home_page_main.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.asset("assets/SignIn.png").image,
                fit: BoxFit.cover)),
        child: Center(
          child: FrostedGlassBox(),
        ),
      ),
    );
  }
}

class FrostedGlassBox extends StatelessWidget {
// String name,email;

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  bool isChecked = false;
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _key,
            child: Container(
              width: 340,
              height: 480,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Username",
                          hintText: "Enter user name",
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.grey,
                          )),
                      //validator: validateText ,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter secure password",
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                          suffixIcon: Icon(
                            Icons.lock,
                            color: Colors.grey,
                          )),
                      //validator: validatePassword ,
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 0.7,
                        child: Checkbox(
                            value: isChecked,
                            onChanged: (bool? newValue) {
                              isChecked = newValue!;
                            }),
                      ),
                      Text("Remember me"),
                      SizedBox(
                        width: 40,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (Context) => Forget_password()));
                          // Respond to button press
                        },
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 120,
                          height: 1,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("OR"),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 120,
                          height: 1,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                    height: 20,
                  ),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .4,
                      height: 70,
                      child: Row(
                        children: [
                          Expanded(
                            child: RawMaterialButton(
                              onPressed: () {},
                              elevation: 1.5,
                              fillColor: Colors.blue,
                              child: Icon(
                                (FontAwesomeIcons.facebook),
                                size: 15.0,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(15.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Expanded(
                            child: RawMaterialButton(
                              onPressed: () {},
                              elevation: 1.5,
                              fillColor: Colors.brown,
                              child: Icon(
                                (FontAwesomeIcons.google),
                                color: Colors.white,
                                size: 15.0,
                              ),
                              padding: EdgeInsets.all(15.0),
                              shape: CircleBorder(),
                            ),
                          ),
                          Expanded(
                            child: RawMaterialButton(
                              onPressed: () {},
                              elevation: 1.5,
                              fillColor: Colors.lightBlueAccent,
                              child: Icon(
                                (FontAwesomeIcons.twitter),
                                size: 15.0,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(15.0),
                              shape: CircleBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: InkWell(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_key.currentState!.validate()) {
                            print("sucessfully");
                          }

                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (Context) =>HomePage()));
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (Context) => GroceryHomePage()),
                              (route) => false);
                          // Respond to button press
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Text(
                                    "SIGIN IN",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "Already have an account ?",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


String? validateText(String formText) {
  if (formText.isEmpty) return 'Enter your name.';
  return null;
  //ggg
}

String? validatePassword(String formPassword) {
  if (formPassword.isEmpty) return 'Enter your password.';

  String pattern = r"^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*?[!@#\$&*]).{8,}$";
  RegExp regExp = RegExp(pattern);
  if (!regExp.hasMatch(formPassword))
    return '''password must be at least 8 characters,
    include an uppercase letter , number and symbol .''';

  return null;
}
