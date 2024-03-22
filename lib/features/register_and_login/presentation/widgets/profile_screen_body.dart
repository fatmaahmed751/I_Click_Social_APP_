import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_click/features/register_and_login/presentation/manager_view_model/register_cubit/register_cubit.dart';
import 'package:i_click/features/register_and_login/presentation/manager_view_model/register_cubit/register_states.dart';
import 'package:i_click/features/register_and_login/presentation/widgets/picturs_for_profile.dart';
import 'package:i_click/features/register_and_login/presentation/widgets/row_of_icons_profile_screen.dart';
import 'package:i_click/features/register_and_login/presentation/widgets/row_of_profile_details.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/custom-text.dart';
import '../../data/models/user_register_model.dart';
import 'grid_view_posts_widget.dart';

class ProfileScreenBody extends StatefulWidget {
  const ProfileScreenBody({super.key});

  @override
  State<ProfileScreenBody> createState() => _ProfileScreenBodyState();
}

class _ProfileScreenBodyState extends State<ProfileScreenBody> {
  //const ProfileScreenBody({super.key});
  String userName = '';
  var userProfileImage ;
  String userBio = '';
  var userCoverImage;
  @override
  void initState() {
    super.initState();
    UserRegisterCubit.get(context).getUserRegisterData();
    // AppLoginCubit.get(context).firebaseAuthenticate(
    //
    // );
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserRegisterCubit,UserRegisterStates>(
    builder: (context,state) {
      UserRegisterCubit cubit = UserRegisterCubit.get(context);
      if (state is GetUserRegisterDataSuccessState) {
        UserRegisterModel userRegisterModel = state.userRegisterModel;
        userName = userRegisterModel.name;
        userProfileImage = cubit.file;
        userBio = userRegisterModel.bio;
        userCoverImage = cubit.file;

        return Scaffold(
          body: Container(
            height: MediaQuery
                .of(context)
                .size
                .height,
            decoration: const BoxDecoration(
              color: AppColors.backgroundColor,
              gradient: LinearGradient(
                colors: [AppColors.backgroundColor, Colors.black],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                           const SizedBox(
                            width: double.infinity,
                            height: 250,
                            child: Card(
                              color: Colors.black54,
                              shadowColor: AppColors.containerTextColor,
                              elevation: 50.0,

                            //       child:Image(
                            //           image:
                            //           userCoverImage == null ?
                            //      NetworkImage(userRegisterModel.coverImage
                            //
                            //      )
                            //           :FileImage(userCoverImage) as ImageProvider,
                            //           fit: BoxFit.fitWidth
                            // ),
                            ),
              ),

                          Padding(
                            padding: const EdgeInsets.only(
                                left: 1.0, top: 20, bottom: 10, right: 15),
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: AppColors
                                  .backgroundScaffoldColor,
                              child: IconButton(
                                onPressed: () async {
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
                            padding: const EdgeInsets.only(
                                left: 3.0, bottom: 3),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                 CircleAvatar(
                                  radius: 49,
                                  backgroundImage:
                                  const AssetImage(
                                      'assets/images/profile_circle.png'
                                  ),
                                  child: CircleAvatar(
                                    radius: 47,
                                    backgroundImage:userProfileImage == null ?
                                    NetworkImage(
                                      userRegisterModel.image,
    //                                 loadingBuilder: (context, child, loadingProgress) {
    // if (loadingProgress == null) return child;
    // return const Center(child: CircularProgressIndicator());
    //                                  //   fit: BoxFit.fitWidth
                                    ) : FileImage(userProfileImage) as ImageProvider ,


                                       // 'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph'
      ),
                                  ),

                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 1.0, top: 20
                                  ),
                                  child: CircleAvatar(
                                    radius: 16,
                                    backgroundColor: AppColors
                                        .backgroundScaffoldColor,
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() async {
                                          await cubit.getImage();
                                         // userCoverImage = File(pickedFile.path);
                                        });
                                     //   await cubit.getImage();
                                       // print();
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
                           Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: userName,
                                  color: AppColors.categoryTextColor,
                                  size: 15,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                CustomText(
                                  text: userBio,
                                  color: Colors.white38,
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  //picturesOfProfile(),
                  const SizedBox(
                    height: 10,
                  ),
                  rowOfProfileDetails(),
                  const Divider(
                    indent: 10,
                    endIndent: 10,
                    height: 15.0,
                    // thickness: 0.3,
                    color: AppColors.containerColor,
                  ),
                  const IconsOfProfileRow(),
                  // gridViewWidget(context)
                ],
              ),
            ),
          ),
        );
      }
      else{
        print('can\'t fitch data');
      }
return  Container(
  color: Colors.red,
);
    },
      listener:  (context,state){},
    );
  }
}
