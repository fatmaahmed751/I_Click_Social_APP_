import 'package:flutter/material.dart';

import '../../../../core/components/componenets.dart';
import '../../../../core/components/constants.dart';
import '../../../../general/widgets/custom-text.dart';
import '../screens/login_screen.dart';
import '../screens/register_screen.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: 370,
            height: 760,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/splash_image.jpg',
                    ),
                    fit: BoxFit.cover)),
          ),
          Container(
            width: 360,
            height: 500,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                )),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                defaultFormField(
                    hintText: 'Email',
                    controller: emailController,
                    type: TextInputType.text),
                defaultFormField(
                    hintText: 'Password',
                    controller: passwordController,
                    type: TextInputType.text,
                    suffixIcon: const Icon(
                      Icons.visibility_off_outlined,
                      color: AppColors.containerTextColor,
                    )),
                SizedBox(
                  height: 15,
                ),
                const CustomText(
                  text: 'Start with Awesome experience',
                  color: AppColors.primaryColor,
                  size: 15,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(
                  height: 15,
                ),
                defaultButton(text: 'Sign In', function: () {}),
                SizedBox(height: 15),
                const CustomText(
                  text: 'Or Login With',
                  color: AppColors.primaryColor,
                  size: 15,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(height: 20),
                const SizedBox(
                  height: 60,
                  width: 140,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/google.jpg'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/face.jpg'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),


                stayLoginIn(
                    text: 'Already have an account?', secText: 'Sign up', onPressed: () {
                      navigationByScreens(context, const RegisterScreen());
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}