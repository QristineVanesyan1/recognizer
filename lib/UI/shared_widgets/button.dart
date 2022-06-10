import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({required this.title, Key? key}) : super(key: key);
  final String title;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xFF7C9A92),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Center(
        child: Text(widget.title, style: Theme.of(context).textTheme.headline3),
      ),
    );
  }
}
