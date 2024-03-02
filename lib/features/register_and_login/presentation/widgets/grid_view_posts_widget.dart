import 'package:flutter/material.dart';

import '../../../../core/components/constants.dart';

Widget gridViewWidget(context) => GridView.builder(

 shrinkWrap: true,

  itemCount: 26,

  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

    crossAxisCount: 3,

    childAspectRatio: 17.65 / 18.6,



    crossAxisSpacing: 1.0,

  ),

  itemBuilder: (context, index) => Stack(

    alignment: Alignment.topRight,

    children: [

      FittedBox(

        fit: BoxFit.cover,

        child: Image.network(

          'https://i.pinimg.com/564x/bb/1b/57/bb1b574f144015df982dc80634536426.jpg',



          fit: BoxFit.cover,



        ),

      ),

      const Padding(

        padding: EdgeInsets.only(right: 4.0, top: 3),

        child: Icon(

          Icons.camera_enhance_outlined,

          color: AppColors.containerColor,

          size: 17,

        ),

      ),

    ],

  ),

);
// class CustomSliverGrid extends StatelessWidget{
//  // const CustomSliverGrid({super.key});
//   const CustomSliverGrid({Key? key}) : super(key: key);
//   @override
//
//   Widget build(BuildContext context) {
//    return SizedBox(
//      height: MediaQuery.of(context).size.height,
//      child: SliverGrid.builder(
//        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
//          crossAxisCount: 3,
//
//          //mainAxisExtent: 4,
//
//          //mainAxisSpacing:0.5,
//
//          childAspectRatio: 17.65 / 18.6,
//
//          crossAxisSpacing: 1.0,
//        ),
//          itemBuilder: (context, index) => SizedBox(
//            // width: double.infinity,
//
//            // height: double.infinity,
//
//            width: 150,
//
//            height: 100,
//
//            child: Stack(
//              alignment: Alignment.topRight,
//              children: [
//                FittedBox(
//                  fit: BoxFit.cover,
//                  child: Image.network(
//                    'https://i.pinimg.com/564x/bb/1b/57/bb1b574f144015df982dc80634536426.jpg',
//
//                    fit: BoxFit.cover,
//
//                    // height: 200,
//                    //
//                    // width: 300,
//
//                    // height: double.infinity,
//
//                    // width: double.infinity,
//                  ),
//                ),
//                const Padding(
//                  padding: EdgeInsets.only(right: 4.0, top: 3),
//                  child: Icon(
//                    Icons.camera_enhance_outlined,
//                    color: AppColors.containerColor,
//                    size: 17,
//                  ),
//                ),
//              ],
//            ),
//          ),
//      ),
//    );
//   }
//
// }