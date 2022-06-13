import 'package:bpp_shop/islamic/screen/auth/sign_in_page.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountLogInBTN extends StatelessWidget {
  const AlreadyHaveAccountLogInBTN({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(26.0),
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
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => SignInPage()));
            },
            child: Text(
              "Log in",
              style: TextStyle(fontSize: 15, color: Color(0xFFF9B92E)),
            ),
          ),
        ],
      ),
    );
  }
}