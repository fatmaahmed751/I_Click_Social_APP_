


import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:i_click/general/screens/splash_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';
//import 'package:responsive_framework/responsive_framework.dart';
import 'core/components/constants.dart';
import 'features/home/presentation/view/categories_screen.dart';
import 'features/register_and_login/presentation/screens/login_screen.dart';
import 'general/widgets/app_bar_widget.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DesktopWindow.setMinWindowSize(const Size(
   350,300
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor:AppColors.backgroundScaffoldColor
      ),
        // builder: (context, child) => ResponsiveBreakpoints.builder(
        //   child: child!,
        //   breakpoints: [
        //     const Breakpoint(start: 0, end: 450, name: MOBILE),
        //     const Breakpoint(start: 451, end: 650, name: TABLET),
        //     const Breakpoint(start: 320, end:500, name: DESKTOP),
        //     const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        //   ],
        // ),
        debugShowCheckedModeBanner: false,
        // theme: ThemeData.dark().copyWith(
        //   scaffoldBackgroundColor: Colors.black,
        // ),
        home:// import the package

    ScreenTypeLayout.builder(
    breakpoints: const ScreenBreakpoints(
    tablet: 500,
        desktop: 950,
        watch: 300
    ),
    mobile:(context)=>
    const CategoryScreen(),
    //(context)=>Container(color:Colors.blue),
    tablet:(context)=> Container(color: Colors.yellow),
    desktop:(context)=> Container(color: Colors.red),
    watch: (context)=>Container(color: Colors.purple),
    )
    );

   // );
  }
}
