
import 'package:flutter/material.dart';
import '../../core/components/componenets.dart';
import '../../features/register_and_login/presentation/view/login_screen.dart';
import '../widgets/splash_view_body.dart';
import '../widgets/splash_view_body_two.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    delayNavigation(context);
  }

  void delayNavigation(context) {
     Future.delayed(const Duration(seconds: 2),(){
      navigationByScreens(context,const LoginScreen());
    });
  }



  @override
  Widget build(BuildContext context) {
    return const SplashViewBody();
  }
}


