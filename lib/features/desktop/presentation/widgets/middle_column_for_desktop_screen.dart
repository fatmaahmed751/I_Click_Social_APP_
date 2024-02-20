import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/custom-text.dart';
import '../../../home/presentation/widgets/container_of_story.dart';
import '../../../tablet/presentation/widgets/card_of_new_news_tablet.dart';
import '../../../tablet/presentation/widgets/container_for_reels_tablet.dart';

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
                  itemBuilder: (context, index) => containerOfStory(),
                  itemCount: 6,
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
