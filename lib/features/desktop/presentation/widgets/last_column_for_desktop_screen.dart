import 'package:flutter/material.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/circle_avatar.dart';
import '../../../../general/widgets/custom-text.dart';
import '../../../../general/widgets/users_post_model.dart';

Widget lastColumnForDesktopScreen()=>Expanded(
  flex:2,
  child: SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.only(right:8.0,left:30),
      child: Column(
        children: [
          // const SizedBox(
          //   height: 10,
          // ),
// SizedBox(width: 15,),

          const SizedBox(
            height: 3,
          ),

          const Align(
            alignment: Alignment.topLeft,
            child: CustomText(
              text: 'Sponsored',
              size: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.containerTextColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
              children: [
                Expanded(
                  flex:1,
                  child: Container(
                    height: 80,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: NetworkImage(
                            'https://i.pinimg.com/564x/96/c1/72/96c1720919baa5c867e1f4f2afc2a4f3.jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(right: 4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Build Your Future With Us",
                          color: AppColors.containerColor,
                          // maxLines: 2,
                          size: 16,
                          fontWeight: FontWeight.w400,
                          textOverflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        CustomText(
                          text: "Contact Us@gmail.com",
                          fontWeight: FontWeight.w100,
                          color: AppColors.containerColor,
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
          const SizedBox(height: 5,),
          Row(
              children: [
                Expanded(
                  flex:1,
                  child: Container(
                    height: 80,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: NetworkImage(
                            'https://i.pinimg.com/564x/97/8d/af/978dafe30a0f51a9baeaae03017f89b3.jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(right: 4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Build Your Future With Us",
                          color: AppColors.containerColor,
                          // maxLines: 2,
                          size: 16,
                          fontWeight: FontWeight.w400,
                          textOverflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        CustomText(
                          text: "Contact Us@gmail.com",
                          fontWeight: FontWeight.w100,
                          color: AppColors.containerColor,
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
          const SizedBox(
            height:10,
          ),
          const Divider(
            indent: 1,
            endIndent: 3,
            height: 11.0,
// thickness: 0.3,
            color: AppColors.containerTextColor,
          ),
          const SizedBox(
            height:7,
          ),
          const Padding(
            padding: EdgeInsets.only(right:8.0),
            child: Row(
              children: [
                CustomText(
                  text: "Contacts",
                  color: AppColors.containerTextColor,
                  maxLines: 2,
                  size: 16,
                  fontWeight: FontWeight.w600,

                ),
                Spacer(),
                Icon(
                  Icons.search_outlined,
                  color: AppColors.containerTextColor,
                  size: 20.0,
                ),
                SizedBox(width: 3,),
                Icon(
                  Icons.more_horiz_sharp,
                  color: AppColors.containerTextColor,
                  size: 22.0,
                ),
              ],
            ),
          ),
          const SizedBox(height: 18,),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 80.0),
                child: ListView.separated(
                  shrinkWrap: true,
                  //scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => contactItem(usersPosts[index]),
                  itemCount: usersPosts.length,
                  separatorBuilder: (context, index) =>
                  const SizedBox(height: 5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                      color: AppColors.backgroundScaffoldColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Icon(
                    Icons.create_outlined,
                    color: Colors.white,
                    size: 22.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ),
);

Widget contactItem(UserPostModel userPostModel)=>SizedBox(

 // color: Colors.yellow,
  height: 50,
  child:   Row(
mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

      FittedBox(
        fit: BoxFit.cover,
        child: Image(
       // color: Colors.red,

          width:70,
     height: 70,
//fit: BoxFit.cover,
     image:  AssetImage(

  userPostModel.profileImage,),

  ),
      ),

      //   Padding(

      //   padding: const EdgeInsets.only(left: 40.0,top: 30

      //   ),

      //   child: CircleAvatar(

      //     backgroundColor:Colors.green ,

      //     foregroundColor: Colors.green,

      //     radius: 15,

      //

      //

      //   ),

      // ),







         CustomText(text:userPostModel.name,

          size: 12,

          color: AppColors.containerColor,

        ),

     ]



  ),
);