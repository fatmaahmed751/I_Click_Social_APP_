

import 'package:flutter/material.dart';


import '../../core/components/constants.dart';
import '../../features/register_and_login/presentation/view/login_screen.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    animationMethod();
    navigationMethod();
  }


  @override
  void dispose(){
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
        color: AppColors.backgroundColor,
        gradient: LinearGradient(
        colors: [AppColors.backgroundColor, Colors.black],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
    ),
    image: DecorationImage(
    image: AssetImage(
    'assets/images/i_click.png',

    ),),
      // height:650,
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Container(
      //       width: 300,
      //       //  MediaQuery.of(context).size.width,
      //       height: 420,
      //       //MediaQuery.of(context).size.height ,
      //       decoration: const BoxDecoration(
      //         color: AppColors.backgroundColor,
      //         gradient: LinearGradient(
      //           colors: [AppColors.backgroundColor, Colors.black],
      //           begin: Alignment.topLeft,
      //           end: Alignment.bottomRight,
      //         ),
      //         image: DecorationImage(
      //           image: AssetImage(
      //             'assets/images/i_click.png',
      //
      //           ),),
      //           //fit: BoxFit.fill,
      //         ),
      //       ),
      //
      //     // AnimatedBuilder(
      //     //     animation: slidingAnimation,
      //     //     builder: (context,_) {
      //     //       return SlideTransition(
      //     //         position:slidingAnimation ,
      //     //         child: const SizedBox(
      //     //           height: 80,
      //     //           width: 335,
      //     //           child: Text('i_click',
      //     //             maxLines: 2,
      //     //             textAlign: TextAlign.center,
      //     //             style: TextStyle(
      //     //               fontFamily:"Bacute Regular",
      //     //               //decoration: TextDecoration.lineThrough,
      //     //               textBaseline: TextBaseline.alphabetic,
      //     //               color: AppColors.primaryColor,
      //     //               fontSize: 32,
      //     //               fontWeight: FontWeight.w500,
      //     //               overflow: TextOverflow.ellipsis,
      //     //
      //     //             ),
      //     //           ),
      //     //         ),
      //     //       );
      //     //     }
      //     // )
      //   ],
      ),
    );
  }
  void navigationMethod() {
    try {
      print('hhhhhhhhhhhhhh');
      Future.delayed(const Duration(seconds:30), () {
//GoRouter.of(context).push(AppRouter.onBoardingScreen);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const LoginScreen()));
        print('object');
      });
    } catch (e) {
      print(e.toString());
    }
  }

  void animationMethod() {
    animationController = AnimationController(vsync:this,duration:const Duration( seconds: 2) );

    slidingAnimation = Tween<Offset>(begin:const Offset(0,10) ,end: Offset.zero).animate(animationController);
    animationController.forward();
  }

}
