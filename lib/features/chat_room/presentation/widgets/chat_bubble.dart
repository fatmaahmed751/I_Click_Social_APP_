//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:i_click/features/chat_room/presentation/manager/chat_cubit/chat_cubit.dart';
import 'package:i_click/features/chat_room/presentation/manager/chat_cubit/chat_states.dart';

import '../../../../core/components/componenets.dart';
import '../../../../core/components/constants.dart';
import '../../../../general/widgets/circle_avatar.dart';
import '../../../../general/widgets/custom-text.dart';
import '../../data/model/chat_model.dart';
import 'chat_messages.dart';

Future chatBubbles(context) => showDialog(
      context: context,
      builder: (context) => BlocConsumer<ChatCubit,ChatStates>(
      builder: (context,state){
      TextEditingController controller = TextEditingController();
     final listController = ScrollController();
        ChatCubit cubit = ChatCubit.get(context);
DateTime now =  DateTime.now();
        return
         Center(
            child: Container(
        padding: const EdgeInsets.only(
          right: 10,
          top: 10,
          left: 10,
        ),
        width: 322,
             // height:MediaQuery.sizeOf(context).height,
             height:600,
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
              const SizedBox(
                height: 4,
              ),
              const Divider(
                height: 10.0,
                // thickness: 0.3,
                color: AppColors.containerColor,
              ),
              const SizedBox(
                height: 7,
              ),
             ChatMessages(),
              const Spacer(),
              Card(
                elevation: 0,
                clipBehavior: Clip.hardEdge,
                color: Colors.transparent,
                child: TextFormField(
                  controller: controller,
                  onFieldSubmitted: (data){
                    ChatModel chatModel = ChatModel( data.toString(),
                        now.toString()
                    );
                    cubit.addMessageToChat(chatModel);
                    // messages.add({
                    //   'message':data
                    // });
                 controller.clear();
                    listController.animateTo(
                      0,
                    //  listController.position.maxScrollExtent,
                         duration: const Duration(microseconds: 100),
                        curve: Curves.fastOutSlowIn);
                  },
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
                          width: 100,
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
const SizedBox(height: 10)

            ]
        ),
            ),

          );
      },
        listener:(context,state){} ,
      ),
    );

