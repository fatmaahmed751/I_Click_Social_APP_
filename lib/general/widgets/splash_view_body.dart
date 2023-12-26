import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
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
          Image.asset(
            'assets/images/splash.png',
            width: 350,
            height: 300,
          ),
        ],
      ),
    );
  }
}