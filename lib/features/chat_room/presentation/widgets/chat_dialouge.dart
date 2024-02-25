import 'package:flutter/material.dart';

import '../../../../core/components/componenets.dart';
import '../../../../core/components/constants.dart';
import '../../../../general/widgets/circle_avatar.dart';
import '../../../../general/widgets/custom-text.dart';

Future chatBubbles(context) => showDialog(
    context: context,
    builder: (context) => Center(
        child: Container(
            padding: const EdgeInsets.only(
                right: 10,
top: 10,
                left: 10,
               ),
            width: 322,
            height: 450,
            decoration: BoxDecoration(
                color: AppColors.kPrimaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Row(
                   children: [
                     circleOfChats(15,5),
                     SizedBox(width: 5,),
                     const CustomText(text:'Ahmed Badry',
                       size:11,
                       color: AppColors.containerColor,),
                     SizedBox(width: 5,),
                     Icon(Icons.arrow_drop_down,
                     color: Colors.purple[200],
                     size: 15,),
Spacer(),
                     Icon(Icons.call,
                       color: Colors.purple[200],
                       size: 15,),
                     SizedBox(width: 5,),
                     Icon(Icons.do_disturb_alt,
                       color: Colors.purple[200],
                       size: 15,),
                   ],
                 ),
                  const Divider(

                    height: 15.0,
                    // thickness: 0.3,
                    color: AppColors.containerColor,
                  ),
Column(
  children: [
    Container(
      height:45,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft:Radius.circular(10),
          bottomRight:Radius.circular(10),
          topRight:Radius.circular(10),
        ),
        color: AppColors.backgroundColor
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CustomText(text: 'Hello i\'m fatma',
        color: AppColors.containerColor,),
      ),
    ),
  ],
),
                ]))));
