import 'package:flutter/material.dart';

import '../../../../core/components/componenets.dart';
import '../../../../core/components/constants.dart';
import '../../../../general/widgets/custom-text.dart';
import '../widgets/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    TextEditingController emailController = TextEditingController();

    return LoginScreenBody(emailController: emailController, passwordController: passwordController);
  }
}


