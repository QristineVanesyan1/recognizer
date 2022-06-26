import 'package:flutter/material.dart';
import 'package:recognizer/UI/shared_widgets/background_image.dart';
import 'package:recognizer/UI/shared_widgets/button.dart';
import 'package:recognizer/UI/shared_widgets/logo.dart';
import 'package:recognizer/UI/shared_widgets/text_field_widget.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

abstract class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => RegistrationScreenState();
}

class RegistrationScreenState extends State<RegistrationScreen> {
  String get title => "";
  String get subTitle => "";
  String get submitButtnTxt => "";
  String get messageTxt => "";
  String get navigateTo => "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).backgroundColor,
        body: Stack(
          children: [
            Container(child: const BackgroundImage()),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Logo(),
                  _renderTitle(),
                  _renderSubtitle(),
                  ...renderTextFields(),
                  renderForgetWidget(),
                  renderButton(),
                  renderAccount(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _renderTitle() {
    return Text(
      title,
      maxLines: 2,
      style: Theme.of(context).textTheme.headline1,
    );
  }

  Widget _renderSubtitle() {
    return Text(
      subTitle,
      style: Theme.of(context).textTheme.headline2,
    );
  }

  Widget renderForgetWidget() {
    return Align(
      alignment: Alignment.topRight,
      child: Text(
        "Forgot Password?",
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget renderButton() {
    return ButtonWidget(
      title: submitButtnTxt,
    );
  }

  void _navigateTo() {
    Navigator.of(context).pushReplacementNamed(navigateTo);
  }

  Widget renderAccount() {
    return Center(
        child: InkWell(
      onTap: _navigateTo,
      child: RichText(
        text: TextSpan(
          text: messageTxt,
          style: Theme.of(context).textTheme.headline4,
          children: <TextSpan>[
            TextSpan(
                text: 'Sign Up',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    ));
  }

  List<Widget> renderTextFields() {
    return const [
      TextFieldWidget(hintText: 'Email Address'),
      TextFieldWidget(
        hintText: "Password",
        obscureText: false,
      )
    ];
  }
}
