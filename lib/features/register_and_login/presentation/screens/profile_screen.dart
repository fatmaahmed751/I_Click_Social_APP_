import 'package:flutter/material.dart';

import 'package:gradient_icon/gradient_icon.dart';

import '../../../../core/components/constants.dart';

import '../../../../general/widgets/custom-text.dart';
import '../widgets/grid_view_posts_widget.dart';
import '../widgets/picturs_for_profile.dart';
import '../widgets/row_of_profile_details.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: AppColors.backgroundColor,
            gradient: LinearGradient(
              colors: [AppColors.backgroundColor, Colors.black],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              picturesOfProfile(),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const GradientIcon(
                      icon: Icons.window_sharp,
                      gradient: LinearGradient(
                        colors: [Colors.deepOrangeAccent, Colors.grey],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      size: 30,
                    ),
                    // icon: Icon(Icons.window_sharp,
                    // color: AppColors.containerColor,),
                  ),
                  IconButton(
                    onPressed: () {

                    },
                    icon: const GradientIcon(
                      icon: Icons.video_collection_sharp,
                      gradient: LinearGradient(
                        colors: [Colors.deepOrangeAccent, Colors.grey],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      size: 30,
                    ),
                    // Icon(Icons.video_collection_sharp,
                    //   color: AppColors.containerColor,  ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const GradientIcon(
                      icon: Icons.memory,
                      gradient: LinearGradient(
                        colors: [Colors.deepOrangeAccent, Colors.grey],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              gridViewWidget()

            ],
          ),
        ),
      ),

    //   void showVideos(
    //
    // )=> Expanded(
    //   child: GridView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: 9,
    //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //         crossAxisCount: 3,
    //         mainAxisSpacing:3.0,
    //         childAspectRatio:7.5/9.6,
    //         crossAxisSpacing: 3.0,
    //
    //       ),
    //       itemBuilder:(context,index)=>SizedBox(
    //         // width: double.infinity,
    //         // height: double.infinity,
    //         // width: 150,
    //         // height: 100,
    //         child: Stack(
    //           alignment: Alignment.topRight,
    //           children: [
    //             Image.network(
    //               'https://i.pinimg.com/564x/bb/1b/57/bb1b574f144015df982dc80634536426.jpg',
    //               fit: BoxFit.cover,
    //               height: double.infinity,
    //               width: double.infinity,
    //             ),
    //             const Padding(
    //               padding: EdgeInsets.only(right: 4.0,top: 3),
    //               child: Icon(Icons.camera_enhance_outlined,
    //                 color: AppColors.containerColor,
    //                 size: 17,),
    //             ),
    //           ],
    //         ),
    //       ) ),
    // );
    );
  }
}
