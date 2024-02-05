import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:i_click/general/widgets/circle_avatar.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/custom-text.dart';

Widget containerOfStory()=> Stack(
 //alignment: Alignment.bottomCenter,
  children: [
   Container(
     width: 143,
       height:280,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10),
         image: const DecorationImage(
           image:      NetworkImage("https://img.freepik.com/free-photo/portrait-smiling-casual-woman_171337-11866.jpg?w=360&t=st=1706673586~exp=1706674186~hmac=54cff1d97260c9ffd965b8f8df8bdeb1f6b1efef4431341146e58ae67dd69978")),
               //'https://img.freepik.com/premium-vector/cute-hijabi-girl-vector-illustration_228218-131.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph')),
            //   'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph')),

       )
       ),
      // child:
     //  Image.network('https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph')),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
            padding: const EdgeInsets.only(left:10.0,top: 4),
            child: circlePicture(20,22)),
        const SizedBox(height:90),

        const Padding(
          padding: EdgeInsets.only(left:28.0),
          child: CustomText(text: 'Fatma Ahmed',
            color: AppColors.containerColor,
            textAlign: TextAlign.center,
            size: 15,),
        ),
        Padding(
          padding: const EdgeInsets.only(left:105.0),
          child: IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/images/svg_images/union.svg',
            height: 13,
            width: 20,)
          ),
        ),
      ],
    )
  ],
);