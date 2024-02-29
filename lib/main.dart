import 'dart:math';
import 'dart:ui';

import 'package:desktop_window/desktop_window.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_click/features/chat_room/data/repos/chat_repo_implement.dart';
import 'package:i_click/general/screens/splash_screen.dart';
//import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'core/utils/bloc_observer.dart';
import 'features/chat_room/presentation/manager/chat_cubit/chat_cubit.dart';
import 'features/desktop/presentation/views/desktop_screen.dart';
import 'features/home/presentation/manager/home_cubit/home_cubit.dart';

import 'features/home/presentation/widgets/container_of_story.dart';
import 'features/register_and_login/data/repos/login_and_register_repo_impl.dart';
import 'features/register_and_login/presentation/manager_view_model/login_cubit/login_cubit.dart';
import 'features/register_and_login/presentation/manager_view_model/register_cubit/register_cubit.dart';
import 'features/tablet/presentation/view/tablet_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
//   await Firebase.initializeApp(
// // Replace with actual values
//       options: const FirebaseOptions(
//         apiKey: "AIzaSyDlcbJA3Fyko6ByQ4SYHNWmmNSThyQ6yrU",
//         appId: "1:296340636091:web:235f4c6fb5b7df463c449e",
//         messagingSenderId: "296340636091",
//         projectId: "i-click-app-d0f07",
//       )
//      );
  await DesktopWindow.setMinWindowSize(const Size(350, 600));
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
           create: (context) => HomeCubit(),
    //   BlocProvider(
    //         create: (context) => HomeCubit(),
    //  child: MaterialApp(
    //     theme: ThemeData(),
    //     scrollBehavior: MyCustomScrollBehavior(),
    //     debugShowCheckedModeBanner: false,
    //     // theme: ThemeData.dark().copyWith(
    //     //   scaffoldBackgroundColor: Colors.black,
    //     // ),
    //     home:
    //     ScreenTypeLayout.builder(
    //       breakpoints:
    //       const ScreenBreakpoints(tablet: 700, desktop: 1000, watch: 300),
    //       mobile: (context) => const SplashScreen(),
    //       tablet: (context) =>  const TabletScreen(),
    //       desktop: (context) =>
    //       const DeskTopScreen(),
    //       watch: (context) => Container(color: Colors.purple),
    //     ))
    // );
    //   MultiBlocProvider(
    //   providers: [
    //     BlocProvider(
    //       create: (context) => HomeCubit(),
    //     ),
    //     // BlocProvider(
    //     //   create: (context) => UserLoginCubit(),
    //     //       //LoginAndRegisterRepoImplement()),
    //     // ),
    //     BlocProvider(
    //       create: (context) =>
    //           UserRegisterCubit(),
    //              // LoginAndRegisterRepoImplement()),
    //     ),
    //     BlocProvider(
    //       create: (context) => ChatCubit(
    //        //   ChatRepoImplement()
    //       ),
    //     ),
    //   ],
    //   child:
    child:  MaterialApp(
      debugShowCheckedModeBanner: false,
          theme: ThemeData(),
        scrollBehavior: MyCustomScrollBehavior(),

    //           builder: (context, child) => ResponsiveBreakpoints.builder(
    //   child: child!,
    //   breakpoints: [
    //     const Breakpoint(start: 0, end: 450, name: MOBILE),
    //     const Breakpoint(start: 451, end: 800, name: TABLET),
    //     const Breakpoint(start: 801, end: 1920, name: DESKTOP),
    //     const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
    //   ],
    // ),
    // //initialRoute: '/',
          home:   ScreenTypeLayout.builder(
            // breakpoints:
            //     const ScreenBreakpoints(tablet: 700, desktop: 1000, watch: 300),
               mobile: (context) => const SplashScreen(),
                tablet: (context) =>  const TabletScreen(),
                desktop: (context) =>
                    const DeskTopScreen(),
               watch: (context) => Container(color: Colors.purple),
          )
    ),
    );

   // );
   //    ),
   //  );
  }
}
