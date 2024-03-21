import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_click/features/chat_room/presentation/widgets/chat_item.dart';
import 'package:i_click/features/register_and_login/data/models/user_register_model.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/custom-text.dart';
import '../manager_view_model/register_cubit/register_cubit.dart';
import '../manager_view_model/register_cubit/register_states.dart';

Widget picturesOfProfile() =>
    BlocConsumer<UserRegisterCubit, UserRegisterStates>(
      builder: (context, state) {
        UserRegisterCubit cubit = UserRegisterCubit.get(context);
      // var profileImage =   UserRegisterCubit.get(context).getImage();
        // if(state is GetUserRegisterDataSuccessState) {
        //   UserRegisterModel userRegisterModel = state.userRegisterModel;
        // }
        //   String userProfileImage = userRegisterModel.image;
Future<void> userRegisterModel =  UserRegisterCubit.get(context).getUserRegisterData();
      // String userProfileImage =  userRegisterModel.image;
        return Stack(
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

                //     child:Image.network(userProfileImage)
                //     Image.file(
                //       file!
                // if(file != null )
                //         fit: BoxFit.fitWidth),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 1.0, top: 20, bottom: 10, right: 15),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: AppColors.backgroundScaffoldColor,
                    child: IconButton(
                      onPressed: ()async {
                       await cubit.getImage();
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
                        backgroundImage:
                            AssetImage('assets/images/profile_circle.png'),
                        child: CircleAvatar(
                          radius: 47,
                          backgroundImage: NetworkImage(
                              'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 1.0, top: 20),
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
      },
      listener: (context, state) {},
    );
