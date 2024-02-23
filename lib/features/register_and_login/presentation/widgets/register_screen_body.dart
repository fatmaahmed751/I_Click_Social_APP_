import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/componenets.dart';
import '../../../../core/components/constants.dart';

import '../../../home/presentation/widgets/bottom_nav_and_tabBar.dart';
import '../../data/models/user_register_model.dart';


class RegisterScreenBody extends StatefulWidget {
  const RegisterScreenBody({
    super.key,
  });



  @override
  State<RegisterScreenBody> createState() => _RegisterScreenBodyState();
}

class _RegisterScreenBodyState extends State<RegisterScreenBody> {
  GlobalKey<FormState>  formKey = GlobalKey();

  FirebaseAuth auth = FirebaseAuth.instance;

  UserRegisterModel? registerModel;
 TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

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
          Form(
            key:formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height:20,
                ),
              Image.asset('assets/images/i_click.png',
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
                    controller:nameController,
                    type: TextInputType.text),
                defaultFormField(
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: AppColors.containerTextColor,
                      size: 17,
                    ) ,
                    hintText: 'Email',
                    controller:emailController,
                    type: TextInputType.text),
                defaultFormField(
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: AppColors.containerTextColor,
                      size: 17,
                    ),
                    hintText: 'Password',
                    controller:passwordController,
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
                defaultButton(text: 'Sign Up', function: ()async {
    if (formKey.currentState!.validate()) {
    registerModel= UserRegisterModel(
    email:emailController.text,
    password: passwordController.text,
    name:nameController.text,
    );
    // cubit.firebaseAuthenticate(registerModel!);
    //cubit.getUserData(registerModel!);
    print(registerModel!.email);
    navigationByScreens(context, const BottomNavWidget());
    }else{
    print('not valide');
    }
    }
    ),

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