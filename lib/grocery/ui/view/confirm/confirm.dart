import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../signIn/signIn.dart';

class Confirm extends StatefulWidget {

  @override
  _ConfirmState createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {

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
              Image.asset("assets/confirm.png",height: 180,),
             
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("You successfully reset your password.Now \n "
                    "                 you are good to go"),
              ),

              SizedBox(height: 20,),

              InkWell(
                child: SizedBox(
                  height: 35,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (Context) =>SignIn()), (route) => false);
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
                            child: Text("Jump Into Login",
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



