import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:i_click/features/register_and_login/presentation/widgets/picturs_for_profile.dart';
import 'package:i_click/features/register_and_login/presentation/widgets/row_of_icons_profile_screen.dart';
import 'package:i_click/features/register_and_login/presentation/widgets/row_of_profile_details.dart';

import '../../../../core/components/constants.dart';
import 'grid_view_posts_widget.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
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
              const IconsOfProfileRow(),
              gridViewWidget(context)
            ],
          ),
        ),
      ),
    );
  }
}
