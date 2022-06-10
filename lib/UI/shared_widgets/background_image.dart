import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('assets/images/plant.png'),
      alignment: Alignment.bottomCenter,
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.fitWidth,
    );
  }
}
