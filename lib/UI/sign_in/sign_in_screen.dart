import 'package:flutter/material.dart';
import 'package:recognizer/UI/sign_up/sign_up_screen.dart';

class SignInScreen extends RegistrationScreen {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  RegistrationScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends RegistrationScreenState {
  @override
  String get title => "Sign In";
  @override
  String get subTitle => "Sign in now to access your saved pictures.";
  @override
  String get submitButtnTxt => "LOGIN";
  @override
  String get messageTxt => 'Don’t have an account? ';
  @override
  String get navigateTo => '/signUp';
}
