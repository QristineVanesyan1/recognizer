import 'package:flutter/material.dart';

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
    return TextField(
      obscureText: widget.obscureText,
      style: const TextStyle(color: Colors.white, fontSize: 18),
      cursorColor: const Color(0xFFBEC2C2),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 10),
          hintText: widget.hintText,
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFBEC2C2)),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFBEC2C2)),
          ),
          hintStyle: Theme.of(context).textTheme.headline5),
    );
  }
}
