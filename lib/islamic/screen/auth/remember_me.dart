import 'package:flutter/material.dart';
class RememberMe extends StatefulWidget {
  RememberMe({
    Key? key,
    required this.rememberCheck,
  }) : super(key: key);

  bool rememberCheck;

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox(
                value: widget.rememberCheck,
                onChanged: (value) {
                  setState(() {
                    widget.rememberCheck=!widget.rememberCheck;
                  });
                },
                activeColor: Colors.amber,
                ),
            const Text('Remember me',
                style: TextStyle(
                    fontSize: 12, color: Color(0xFF909090))),
          ],
        ),
      ],
    );
  }
}