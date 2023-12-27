
import 'package:flutter/material.dart';
import 'package:i_click/general/screens/splash_screen.dart';

import 'features/home/presentation/view/categories_screen.dart';
import 'features/register_and_login/presentation/screens/login_screen.dart';
import 'general/widgets/app_bar_widget.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData.dark().copyWith(
        //   scaffoldBackgroundColor: Colors.black,
        // ),
        home: const SplashScreen());
  }
}
