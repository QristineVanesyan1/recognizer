import 'package:flutter/material.dart';
import 'package:recognizer/UI/shared_widgets/text_field_widget.dart';
import 'package:recognizer/UI/sign_up/sign_up_screen.dart';

class SignUpScreen extends RegistrationScreen {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  RegistrationScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends RegistrationScreenState {
  @override
  String get title => "Sign Up";
  @override
  String get subTitle =>
      "Sign up now for free and start meditating, and explore Medic.";
  @override
  String get submitButtnTxt => "SIGNUP";
  @override
  String get messageTxt => 'Already have an account? ';
  @override
  String get navigateTo => '/signIn';
  @override
  List<Widget> renderTextFields() {
    return [
      TextFieldWidget(hintText: 'Name'),
      TextFieldWidget(hintText: 'Email Address'),
      TextFieldWidget(
        hintText: "Password",
        obscureText: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }
}
