import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';

import '../../../../core/components/componenets.dart';
import '../../../../core/components/constants.dart';
import '../../../../general/widgets/circle_avatar.dart';
import '../../../../general/widgets/custom-text.dart';
import 'chat_messages.dart';

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
          height: 550,
          decoration: BoxDecoration(
              color: AppColors.kPrimaryColor,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    circleOfChats(15, 5),
                    const SizedBox(
                      width: 5,
                    ),
                    const CustomText(
                      text: 'Ahmed Badry',
                      size: 11,
                      color: AppColors.containerColor,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.purple[200],
                      size: 15,
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: GradientIcon(
                        icon: Icons.call,
                        gradient: LinearGradient(
                          colors: [
                            Colors.deepOrangeAccent,
                            Colors.purple
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        size: 16,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),

                     const Padding(
                       padding: EdgeInsets.only(bottom: 10.0),
                       child: GradientIcon(
                          icon: Icons.emergency_recording,
                          gradient: LinearGradient(
                            colors: [
                              Colors.deepOrangeAccent,
                              Colors.purple
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          size: 16,
                        ),
                     ),
                      // Icons.do_disturb_alt,
                      // color: Colors.purple[200],
                      // size: 15,

                  ],
                ),
                const Divider(
                  height: 10.0,
                  // thickness: 0.3,
                  color: AppColors.containerColor,
                ),
                const SizedBox(
                  height: 2,
                ),
                const ChatMessages(),
                Card(
                  elevation: 0,
                  clipBehavior: Clip.hardEdge,
                 color: Colors.transparent,
                  child: TextField(
                    style: const TextStyle(color: AppColors.containerTextColor),
                    decoration: InputDecoration(
                      hintText: 'Send Message',
                        hintStyle: const TextStyle(
                          fontSize: 10,
                          color: AppColors.containerTextColor,

                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: SizedBox(
                            width: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {},

                                  icon: const GradientIcon(
                                    icon: Icons.file_present,
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.deepOrangeAccent,
                                        Colors.purple
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    size: 20,
                                  ),

                                  // icon:const Icon(FontAwesomeIcons.houseUser) ,
                                ),
                                IconButton(
                                  onPressed: () {},

                                  icon: const GradientIcon(
                                    icon: Icons.send,
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.deepOrangeAccent,
                                        Colors.purple
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    size: 20,
                                  ),

                                  // icon:const Icon(FontAwesomeIcons.houseUser) ,
                                ),
                              ],
                            ),
                          ),
                        ),
                        focusColor: AppColors.purpleColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        )),
                  ),
                ),
              ]),
        ),
      ),
    );
