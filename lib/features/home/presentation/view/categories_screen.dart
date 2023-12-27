import 'package:flutter/material.dart';
import 'package:i_click/core/components/constants.dart';
import 'package:i_click/general/widgets/custom-text.dart';

import '../../../../core/components/componenets.dart';
import '../../../../general/widgets/app_bar_widget.dart';
import '../widgets/grid_view_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:AppColors.containerColor,
    appBar:  const MyAppBar(),
      body: SingleChildScrollView(
        child: Stack(
          //alignment: Alignment.topCenter,
          children: [
            Container(
              height: 700,
              color:AppColors.containerColor,
              child:Column(
                children: [
                 const SizedBox(height:30,),
                  const CustomText(text: 'Who are you?',
                  size: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColors.kPrimaryColor,),
                  const SizedBox(height:20,),
                  GridViewWidget(),
                  const SizedBox(height: 35,),
                  defaultButton(text: 'Discover YourSelf', function: () {}),
                ],
              ),
            ),
            // Container(
            //     height: 120,
            //     width: 400,
            //     decoration:  const BoxDecoration(
            //         borderRadius: BorderRadius.only(
            //           bottomRight: Radius.circular(50),
            //           bottomLeft:  Radius.circular(50),
            //         ),
            //         image: DecorationImage(
            //             image: AssetImage(
            //               'assets/images/back_two.jpg',
            //             ),
            //             fit: BoxFit.cover)
            //
            //     )
            // ),
          ],
        ),
      ),

    );
  }
}
