import 'package:flutter/material.dart';
import 'package:recognizer/UI/shared_widgets/background_image.dart';
import 'package:recognizer/UI/shared_widgets/button.dart';
import 'package:recognizer/UI/shared_widgets/logo.dart';
import 'package:recognizer/UI/shared_widgets/text_field_widget.dart';

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
        backgroundColor: Theme.of(context).backgroundColor,
        body: Stack(
          children: [
            const BackgroundImage(),
            Padding(
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
                  // Row(children: <Widget>[
                  //   Expanded(
                  //       child: Divider(
                  //     height: 1,
                  //     thickness: 1,
                  //     color: Colors.white.withOpacity(0.7),
                  //   )),
                  //   Padding(
                  //     padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  //     child: Text(
                  //       "OR",
                  //       style: TextStyle(
                  //           fontSize: 18,
                  //           fontWeight: FontWeight.w400,
                  //           color: Colors.white.withOpacity(0.7)),
                  //     ),
                  //   ),
                  //   Expanded(
                  //       child: Divider(
                  //     height: 1,
                  //     thickness: 1,
                  //     color: Colors.white.withOpacity(0.7),
                  //   )),
                  // ]),
                  // Container(
                  //   height: 50,
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //       color: Color(0xFF7C9A92).withOpacity(0.5),
                  //       borderRadius: BorderRadius.all(Radius.circular(10))),
                  //   child: Center(
                  //     child: Text('Continue with Google',
                  //         style: Theme.of(context).textTheme.headline4),
                  //   ),
                  // )
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
    Navigator.of(context).pushNamed(navigateTo);
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
