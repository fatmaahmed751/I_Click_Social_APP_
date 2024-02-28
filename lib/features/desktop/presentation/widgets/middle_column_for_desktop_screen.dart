import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/custom-text.dart';
import '../../../home/presentation/widgets/container_of_story.dart';
import '../../../tablet/presentation/widgets/card_of_new_news_tablet.dart';
import '../../../tablet/presentation/widgets/container_for_reels_tablet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:i_click/general/widgets/circle_avatar.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/custom-text.dart';
import "package:story_view/story_view.dart";








Widget containerOfStory(UserStory userStory) => Stack(
  //alignment: Alignment.bottomCenter,
  children: [
    Container(
        width: 143,
        height: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:  DecorationImage(
              image:AssetImage(userStory.profileImage)
            // NetworkImage(
            //     "https://img.freepik.com/free-photo/portrait-smiling-casual-woman_171337-11866.jpg?w=360&t=st=1706673586~exp=1706674186~hmac=54cff1d97260c9ffd965b8f8df8bdeb1f6b1efef4431341146e58ae67dd69978"),
          ),
          //'https://img.freepik.com/premium-vector/cute-hijabi-girl-vector-illustration_228218-131.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph')),
          //   'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph')),
        )),
    // child:
    //  Image.network('https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph')),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 4),
            child: circlePicture(20, 22)),
        const SizedBox(height: 90),
        Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: CustomText(
            text:userStory.name,
            color: AppColors.containerColor,
            textAlign: TextAlign.center,
            size: 15,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 105.0),
          child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/svg_images/union.svg',
                height: 13,
                width: 20,
              )),
        ),
      ],
    )
  ],
);


Widget middleColumnForDesktopScreen() => Expanded(
      flex: 5,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 30),
          child: Column(
//mainAxisAlignment: MainAxisAlignment.start,

// crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const SizedBox(
                height: 10,
              ),

// SizedBox(width: 15,),

              SizedBox(
                height: 200,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => containerOfStory(storyUsers[index]),
                  itemCount:storyUsers.length ,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 5),
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              Card(
                color: Colors.black54,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 8),
                      child: Row(
//crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          const CircleAvatar(
                            radius: 22,
                            backgroundImage: NetworkImage(
                                'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph'),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Container(
//padding: EdgeInsets.symmetric(vertical: 7),

                            width: 300,

                            height: 48,

                            decoration: BoxDecoration(
                              color: AppColors.backgroundColor,
                              borderRadius: BorderRadius.circular(35),
                            ),

                            child: const Padding(
                              padding: EdgeInsets.only(left: 15, top: 12),
                              child: CustomText(
                                text: 'What\'s on your mind, Fatma ?',

                                color: AppColors.containerColor,

                                size: 15,

                                fontWeight: FontWeight.w300,

//textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      indent: 1,

                      endIndent: 1,

                      height: 15.0,

// thickness: 0.3,

                      color: AppColors.greyColor,
                    ),
                    Container(
                      height: 70,
                      padding: const EdgeInsets.only(right: 50, left: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
// crossAxisAlignment: CrossAxisAlignment.baseline,

                        children: [
                          Container(
                            // color:Colors.red,
                            width: 120,
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},

                                  icon: const GradientIcon(
                                    icon: Icons.video_camera_back,
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.deepOrangeAccent,
                                        Colors.purple
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    size: 28,
                                  ),

// icon:const Icon(FontAwesomeIcons.houseUser) ,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: CustomText(
                                      text: 'Live video',
                                      color: AppColors.containerColor,
                                      size: 15,
                                      fontWeight: FontWeight.w200),
                                ),
                              ],
                            ),
                          ),

                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},

                                icon: const GradientIcon(
                                  icon: Icons.add_photo_alternate_outlined,
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.deepOrangeAccent,
                                      Colors.purple
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  size: 28,
                                ),

// icon:const Icon(FontAwesomeIcons.houseUser) ,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: CustomText(
                                    text: 'Photo/video',
                                    color: AppColors.containerColor,
                                    size: 15,
                                    fontWeight: FontWeight.w200),
                              ),
                            ],
                          ),

                          // const SizedBox(
                          //
                          //   width: 7,
                          //
                          // ),

                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},

                                icon: const GradientIcon(
                                  icon: Icons.emoji_emotions_outlined,
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.deepOrangeAccent,
                                      Colors.purple
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  size: 28,
                                ),

// icon:const Icon(FontAwesomeIcons.houseUser) ,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: CustomText(
                                    text: 'Feeling/activity',
                                    color: AppColors.containerColor,
                                    size: 15,
                                    fontWeight: FontWeight.w200),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const CardOfNewPostForTablet(),

              Card(
                color: Colors.black54,
                clipBehavior: Clip.hardEdge,
                shadowColor: AppColors.containerTextColor,
                elevation: 50.0,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/ree-removebg-preview.png',
                          height: 60,
                          width: 60,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 5.0),
                          child: CustomText(
                              text: 'Reels and short videos',
                              color: AppColors.containerColor,
                              size: 16,
                              fontWeight: FontWeight.w200),
                        ),
                        const Spacer(),
                        CustomText(
                            text: 'Create',
                            color: Colors.blue[500],

//AppColors.containerColor,

                            size: 16,
                            fontWeight: FontWeight.w200),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: const Icon(
                            Icons.more_horiz_sharp,
                            color: AppColors.containerColor,
                            size: 22.0,
                          ),
                        ),
                      ],
                    ),
                    const ContainerForReelsForTablet(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
