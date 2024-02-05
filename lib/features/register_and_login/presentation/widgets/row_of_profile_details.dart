import 'package:flutter/material.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/custom-text.dart';

Widget rowOfProfileDetails()=>SizedBox(
  width: double.infinity,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
       const Column(
        children: [
          CustomText(
            text: '250k',
            color: AppColors.containerColor,
            fontWeight: FontWeight.w600,
            size: 15,
          ),
          CustomText(
            text: 'Like',
            color: AppColors.containerColor,
            fontWeight: FontWeight.w600,
            size: 18,
          ),
        ],
      ),
      const Column(
        children: [
          CustomText(
            text: '250k',
            color: AppColors.containerColor,
            fontWeight: FontWeight.w600,
            size: 15,
          ),
          CustomText(
            text: 'Post',
            color: AppColors.containerColor,
            fontWeight: FontWeight.w600,
            size: 18,
          ),
        ],
      ),
      const Column(
        children: [
          CustomText(
            text: '250k',
            color: AppColors.containerColor,
            fontWeight: FontWeight.w600,
            size: 15,
          ),
          CustomText(
            text: 'Reel',
            color: AppColors.containerColor,
            fontWeight: FontWeight.w600,
            size: 18,
          ),
        ],
      ),
      Container(
        margin: const EdgeInsets.symmetric(
            vertical: 10, horizontal: 10),
        padding: const EdgeInsets.all(8.0),
        width: 135,
        height: 42,
        decoration: BoxDecoration(
          color: AppColors.defaultButtonColor,
          gradient: const LinearGradient(
            colors: [Colors.redAccent, AppColors.deepOrangeColor],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          // const Color.fromRGBO(252,96 ,17 ,80 ) ,
          borderRadius: BorderRadius.circular(100.0),
        ),
        clipBehavior: Clip.hardEdge,
        child: TextButton(
          onPressed: () {},
          child: const Text(
            'Follow',
            style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    ],
  ),
);