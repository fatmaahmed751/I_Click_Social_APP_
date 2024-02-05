import 'package:flutter/material.dart';

import '../../../../core/components/constants.dart';

Widget gridViewWidget()=> Expanded(
  child: GridView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 16,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:3 ,
        //mainAxisExtent: 4,
        mainAxisSpacing:3.0,
        childAspectRatio:17.65/18.6,
        crossAxisSpacing: 3.0,

      ),
      itemBuilder:(context,index)=>SizedBox(
        // width: double.infinity,
        // height: double.infinity,
        // width: 150,
        // height: 100,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Image.network(
              'https://i.pinimg.com/564x/bb/1b/57/bb1b574f144015df982dc80634536426.jpg',
              fit: BoxFit.cover,
              height: 500,
              width: 600,
              // height: double.infinity,
              // width: double.infinity,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 4.0,top: 3),
              child: Icon(Icons.camera_enhance_outlined,
                color: AppColors.containerColor,
                size: 17,),
            ),
          ],
        ),
      ) ),
);