import 'package:flutter/material.dart';

import '../../../../core/components/componenets.dart';
import '../../../../core/components/constants.dart';

import '../../../home/presentation/view/home_screen.dart';


class RegisterScreenBody extends StatelessWidget {
  const RegisterScreenBody({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.nameController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: 360,
            height: 760,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/splash_image.jpg',
                    ),
                    fit: BoxFit.cover)),
          ),
          Container(
            width: 350,
            height: 500,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                )),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                defaultFormField(
                    hintText: 'Name',
                    controller: nameController,
                    type: TextInputType.text),
                defaultFormField(
                    hintText: 'Email',
                    controller: emailController,
                    type: TextInputType.text),
                defaultFormField(
                    hintText: 'Password',
                    controller: passwordController,
                    type: TextInputType.visiblePassword,
                    suffixIcon: const Icon(
                      Icons.visibility_off_outlined,
                      color: AppColors.containerTextColor,
                    )),
                const SizedBox(
                  height: 15,
                ),

                const SizedBox(
                  height: 15,
                ),
                defaultButton(text: 'Sign Up', function: () {
                  navigationByScreens(context, const HomeScreen());
                }),
                const SizedBox(height: 15),

                const SizedBox(height: 15),
                stayLoginIn(
                    text: 'I Have an account ? ', secText: 'Sign In', onPressed: () {
                      Navigator.pop(context);
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}