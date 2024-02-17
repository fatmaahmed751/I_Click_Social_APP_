import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:i_click/general/widgets/search_widget.dart';

import '../../../../core/components/constants.dart';
import '../../../home/presentation/widgets/container_of_story.dart';
import '../../../../general/widgets/circle_avatar.dart';
import '../../../../general/widgets/custom-text.dart';
import '../widgets/drawer_widget_for_tablet_screen.dart';
import '../widgets/last_column_for_tablet_screen.dart';
import '../widgets/middle_column_for_tablet_screen.dart';
import '../widgets/tablet_drawer_widget.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {

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
        child:  Row(
          children: [
            Expanded(
                flex:1,child: drawerForTablet(context),
            ),

            middleColumnForTabletScreen(),
            const LastColumnForTabletScreen(),
          ],
        ),
      ),
    );
  }

}







