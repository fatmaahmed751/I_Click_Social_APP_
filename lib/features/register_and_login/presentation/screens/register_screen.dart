import 'package:flutter/material.dart';

import '../widgets/register_screen_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    return RegisterScreenBody(
      emailController:emailController,
    passwordController: passwordController,
    nameController:nameController);
  }
}
