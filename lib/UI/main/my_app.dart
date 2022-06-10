import 'package:flutter/material.dart';
import 'package:recognizer/UI/camera/camera_screen.dart';
import 'package:recognizer/UI/home/home_screen.dart';
import 'package:recognizer/UI/shared_widgets/registration_screen.dart';
import 'package:recognizer/UI/sign_in/sign_in_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'AlegreyaSans',
        backgroundColor: const Color(0xFF283434),
        textTheme: TextTheme(
          headline1: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          headline3: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          headline4: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          headline2: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: Colors.white.withOpacity(0.7)),
          headline5: const TextStyle(fontSize: 18.0, color: Color(0xFFBEC2C2)),
          headline6: const TextStyle(fontSize: 14.0, color: Color(0xFFBEC2C2)),
          bodyText2: const TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/signUp': (context) => const SignUpScreen(),
        '/signIn': (context) => const SignInScreen(),
        '/homeScreen': (context) => const HomeScreen(),
        '/homeScreen/camera': (context) => const CameraScreen(),
      },
      home: const HomeScreen(),
    );
  }
}
