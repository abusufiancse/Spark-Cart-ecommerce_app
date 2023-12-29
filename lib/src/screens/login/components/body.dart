import 'package:flutter/material.dart';
import 'package:spark_cart/constants.dart';
import 'package:spark_cart/src/screens/login/components/textfield_decoration.dart';
import 'package:spark_cart/src/screens/login/components/widgets.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(40.0),
      children: [
        buildHeroThumbnail(profileThumb),
        const SizedBox(height: 20),
        buildTextLoginNow(),
        const SizedBox(height: 20),
        buildRowCreateNew(),
        const SizedBox(height: 20),
        emailField,
        const SizedBox(height: 20),
        passwordField,
        const SizedBox(height: 40),
        buildRowForgotPassword(),
        const SizedBox(height: 10),
        buildLoginButton(),
      ],
    );
  }
}
