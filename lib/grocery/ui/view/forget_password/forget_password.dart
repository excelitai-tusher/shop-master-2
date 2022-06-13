import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../otp_screen/otp_screen.dart';

class Forget_password extends StatefulWidget {

  @override
  _Forget_passwordState createState() => _Forget_passwordState();
}

class _Forget_passwordState extends State<Forget_password> {

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
                padding: const EdgeInsets.all(8.0),
                child: Text('Forget Password',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20,
              ),
              Text("You can type new password and confirm it below\n            "
                  "and we can help you reset password"),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Email or Phone Number",
                      suffixIcon: Icon(Icons.lock,color: Colors.grey,)
                  ),
                ),
              ),

              SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.only(left: 40,right: 40),
                child: SizedBox(
                  height: 30,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (Context) =>otp_screen()));
                      // Respond to button press
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: new
                      RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: Center(
                            child: Text("Save",
                              style: TextStyle(color: Colors.white,fontSize: 20),
                            ),
                          ),
                          )

                        ],
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}



