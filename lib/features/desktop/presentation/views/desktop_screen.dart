import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/app_bar_widget.dart';
import '../widgets/first_column_for_desktop_screen.dart';
import '../widgets/last_column_for_desktop_screen.dart';
import '../widgets/middle_column_for_desktop_screen.dart';

class DeskTopScreen extends StatelessWidget {
  const DeskTopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length:5,
      child: Scaffold(
        appBar:   const MyAppBar(
          actions: [
            CircleAvatar(
              backgroundColor:AppColors.backgroundScaffoldColor ,
              radius:24,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size:24.0,
              ),
            ),
            SizedBox(width:3),
            CircleAvatar(
              backgroundColor:AppColors.backgroundScaffoldColor ,
              radius:24,
              child: Icon(
                Icons.backup_rounded,
                color: Colors.white,
                size:24.0,
              ),
            ),

            SizedBox(
              width: 3,
            ),
            CircleAvatar(
              backgroundColor:AppColors.backgroundScaffoldColor ,
              radius:24,
              child: Icon(
                Icons.notification_important_sharp,
                color: Colors.white,
                size:24.0,
              ),
            ),

            SizedBox(
              width: 3,
            ),
            CircleAvatar(
              backgroundColor:AppColors.backgroundScaffoldColor ,
              radius:24,
              child: Icon(
                Icons.manage_accounts_outlined,
                color: Colors.white,
                size:24.0,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              radius:24,
              backgroundImage: NetworkImage(
                  'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph'),
            ),
          ],

        ),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
         //    const Divider(
//               indent: 1,
//               endIndent: 1,
//               height: 18.0,
// // thickness: 0.3,
//               color: AppColors.containerTextColor,
//             ),
              const DrawerForFirstColumnDesktop(),
              middleColumnForDesktopScreen(),
              lastColumnForDesktopScreen()
            ],
          ),
        ),
      ),
    );
  }
}
