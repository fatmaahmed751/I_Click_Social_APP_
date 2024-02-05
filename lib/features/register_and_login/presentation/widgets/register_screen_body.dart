import 'package:flutter/material.dart';

import '../../../../core/components/componenets.dart';
import '../../../../core/components/constants.dart';

import '../../../home/presentation/view/categories_screen.dart';
import '../../../home/presentation/view/home_screen.dart';
import '../../../home/presentation/widgets/bottom_nav_and_tabBar.dart';


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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height:20,
              ),
            Image.asset('assets/images/app_icon-removebg-preview.png',
            height: 120,),
              const SizedBox(
                height:50,
              ),
              const Text(
                textAlign: TextAlign.center,
                'Sign Up',
                style:  TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Bacute Regular',
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: AppColors.categoryTextColor),
              ),
              const SizedBox(
                height: 20,
              ),
              defaultFormField(
                  prefixIcon: const Icon(
                    Icons.short_text_sharp,
                    color: AppColors.containerTextColor,
                    size: 17,
                  ) ,
                  hintText: 'Name',
                  controller: nameController,
                  type: TextInputType.text),
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
                navigationByScreens(context, const BottomNavWidget());
              }),
              const SizedBox(height: 15),

              const SizedBox(height: 15),
              stayLoginIn(
                  text: 'I Have an account ? ', secText: 'Sign In', onPressed: () {
                    Navigator.pop(context);
              }),
            ],
          ),
        ],
      ),
    );
  }
}