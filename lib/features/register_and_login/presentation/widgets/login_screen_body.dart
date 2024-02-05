import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_icon/gradient_icon.dart';

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
            width: double.infinity,
            height: 760,
            decoration:  const BoxDecoration(
              color: AppColors.backgroundColor,
                gradient: LinearGradient(
                colors: [ AppColors.backgroundColor, Colors.black],

            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
                ),
                // image: DecorationImage(
                //     image: AssetImage(
                //       'assets/images/login.jpg',
                //     ),
                //     fit: BoxFit.cover)
                  ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/app_icon-removebg-preview.png',
                  height: 120,),
                const SizedBox(
                  height:40,
                ),
                const Text(
                  textAlign: TextAlign.center,
                  'Sign in',
                  style:  TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Bacute Regular',
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: AppColors.categoryTextColor),
                ),
                const SizedBox(
                  height:30,
                ),
                defaultFormField(
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: AppColors.containerTextColor,
                    size: 17,
                  ) ,
                    hintText: 'Email',
                    controller: emailController,
                    type: TextInputType.text),
                defaultFormField(
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: AppColors.containerTextColor,
                      size: 17,
                    ),
                    hintText: 'Password',
                    controller: passwordController,
                    type: TextInputType.text,
                    suffixIcon: const Icon(
                      Icons.visibility_off_outlined,
                      color: AppColors.containerTextColor,
                      size: 20,
                    )),
                const SizedBox(
                  height: 15,
                ),
                const CustomText(
                  text: 'Start with Awesome experience',
                  color: AppColors.categoryTextColor,
                  size: 15,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(
                  height: 15,
                ),
                defaultButton(text: 'Sign In', function: () {}),
                const SizedBox(height: 15),
                const CustomText(
                  text: 'Or Login With',
                  color: AppColors.categoryTextColor,
                  size: 15,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(height: 20),
                 SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon:  const GradientIcon(
                        icon: Icons.apple_rounded,
                        gradient: LinearGradient(
                          colors: [Colors.deepOrangeAccent, Colors.grey],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        size: 50,
                      ),),
                      const SizedBox(
                        width:5,
                      ),
                      IconButton(onPressed: (){}, icon:   const GradientIcon(
                        icon:
                        Icons.g_mobiledata_outlined,
                        //facebook_outlined,
                        gradient: LinearGradient(
                          colors: [Colors.deepOrangeAccent, Colors.grey],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        size: 70,
                      ),),
                      const SizedBox(width: 27,),
                      IconButton(onPressed: (){}, icon:   const GradientIcon(
                        icon:
                        Icons.
                        facebook_outlined,
                        gradient: LinearGradient(
                          colors: [Colors.deepOrangeAccent, Colors.grey],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        size: 42,
                      ),),
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