
import 'package:flutter/material.dart';
import 'package:i_click/core/components/constants.dart';

import '../../../../general/calcualate_responsive__font-size.dart';
import '../../../../general/widgets/circle_avatar.dart';
import '../../../../general/widgets/custom-text.dart';

Widget containerOfChat(
    DateTime now
    )=> Row(
  children: [
    circleOfChats(25,5),
    const SizedBox(width: 5,),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         const CustomText(text:'Ahmed Badry',

          color: AppColors.containerColor,),
        Row(
          children: [
            const CustomText(text:'Ahmed Badry',
              size:12,
              color: AppColors.containerColor,),
            const SizedBox(width: 2,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(20)
              ),
              height: 3,
              width:3,

            ),
            const SizedBox(width: 2,),
            CustomText(
              text: now.toLocal().toString(),
              color: Colors.white38,
             // size: 10,
            ),
            const SizedBox(width: 30,),
            circlePicture(10,12),
          ],
        ),
      ],
    ),

  ],
);