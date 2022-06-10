import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget(
      {required this.hintText, this.obscureText = false, Key? key})
      : super(key: key);
  final String hintText;
  final bool obscureText;
  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        obscureText: widget.obscureText,
        style: TextStyle(color: Colors.white, fontSize: 18),
        cursorColor: Color(0xFFBEC2C2),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 10),
            hintText: widget.hintText,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFBEC2C2)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFBEC2C2)),
            ),
            hintStyle: Theme.of(context).textTheme.headline5),
      ),
    );
  }
}
