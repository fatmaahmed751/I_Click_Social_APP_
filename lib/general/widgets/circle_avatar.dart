import 'package:flutter/material.dart';
import 'package:i_click/general/widgets/users_post_model.dart';

Widget circlePicture(double radius,double backRadius,UserPostModel userPostModel)=>  CircleAvatar(
  backgroundColor: Colors.transparent,
  radius: backRadius,
  child:   CircleAvatar(
backgroundColor: Colors.transparent,
    radius: radius,

    backgroundImage: AssetImage(userPostModel.secImage)

  ),
);

Widget circleOfChats(double radius,double backRadius)=>  CircleAvatar(
  radius: radius,
  backgroundImage: const NetworkImage(

      'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph'),
  child:   Padding(
    padding: const EdgeInsets.only(left: 40.0,top: 30
    ),
    child: CircleAvatar(
      backgroundColor:Colors.green ,
      foregroundColor: Colors.green,
      radius: backRadius,


    ),
  ),
);