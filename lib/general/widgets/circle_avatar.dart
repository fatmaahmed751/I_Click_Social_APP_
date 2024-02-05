import 'package:flutter/material.dart';

Widget circlePicture(double radius,double backRadius)=>  CircleAvatar(
  radius: backRadius,
  child:   CircleAvatar(

    radius: radius,

    backgroundImage: const NetworkImage(

        'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph'),

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