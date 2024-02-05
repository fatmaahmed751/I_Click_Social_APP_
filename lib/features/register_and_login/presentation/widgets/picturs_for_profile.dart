import 'package:flutter/material.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/custom-text.dart';

Widget picturesOfProfile()=>  Stack(
  alignment: Alignment.bottomLeft,
  children: [
    Stack(
      alignment: Alignment.bottomRight,
      children: [
        SizedBox(
          width: double.infinity,
          height: 250,
          child: Card(
            color: Colors.black54,
            //AppColors.kPrimaryColor,
            // clipBehavior: Clip.hardEdge,
            shadowColor: AppColors.containerTextColor,
            elevation: 50.0,
            //margin: const EdgeInsets.all(10.0),
            child: Image.network(
                'https://i.pinimg.com/564x/bb/1b/57/bb1b574f144015df982dc80634536426.jpg',
                fit: BoxFit.fitWidth),
          ),
        ),
        Padding(
          padding:
          const EdgeInsets.only(left: 1.0, top: 20,bottom: 10,
          right: 15),
          child: CircleAvatar(
            radius: 16,
            backgroundColor: AppColors.backgroundScaffoldColor,
            child: IconButton(
              onPressed: () {
                print('hhhhhhh');
              },
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white.withOpacity(.5),
                size: 17,
              ),
            ),
          ),
        )
      ],
    ),
    Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 3.0, bottom: 3),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              const CircleAvatar(
                radius: 49,
                backgroundImage: AssetImage(
                    'assets/images/profile_circle.png'),
                child: CircleAvatar(
                  radius: 47,
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph'),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.only(left: 1.0, top: 20),
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: AppColors.backgroundScaffoldColor,
                  child: IconButton(
                    onPressed: () {
                      print('hhhhhhh');
                    },
                    icon: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white.withOpacity(.5),
                      size: 17,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
         const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Fatma Ahmed',
                color: AppColors.categoryTextColor,
                size: 15,
              ),
              SizedBox(
                height: 3,
              ),
              CustomText(
                text: 'Flutter Developer',
                color: Colors.white38,
              )
            ],
          ),
        )
      ],
    )
  ],
);