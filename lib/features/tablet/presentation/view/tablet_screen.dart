import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';
import '../../../../core/components/constants.dart';
import '../../../../general/widgets/custom-text.dart';
import '../../../home/presentation/widgets/container_of_story.dart';
import '../widgets/card_of_new_news_tablet.dart';
import '../widgets/container_for_reels_tablet.dart';
import '../widgets/drawer_widget_for_tablet_screen.dart';
import '../widgets/middle_column_for_tablet_screen.dart';



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
                flex:1,
                child: drawerForTablet(context)),

            middleColumnForTabletScreen(),
            //const LastColumnForTabletScreen(),
          ],
        ),
      ),
    );
  }


}







