import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:i_click/general/widgets/search_bar_for_desktop_screen.dart';

import '../../core/components/constants.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100);
  const MyAppBar({
    Key? key,
    this.leading,
    this.title,
    this.actions,
    this.backgroundColor,
    this.textTheme,
   this.bottom , // Specify if it's a bottom app bar
  }) : super(key: key);

  final Widget? leading;
  final Widget? title;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final TextTheme? textTheme;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: Container(
       padding:const EdgeInsets.only(left:10,right:10,top:10),
       decoration: const BoxDecoration(
//color:Colors.red,
  color: AppColors.backgroundColor,
    gradient: LinearGradient(
    colors: [AppColors.backgroundColor, Colors.black],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    ),
       ),

        child: AppBar(
         backgroundColor: Colors.transparent,

          elevation:0, // Remove default shadow
          leading:  Image.asset(
            'assets/images/i_click.png',
            height: 90,
            width: 70,
          ),
          title: const SearchAppBarForDesktop(),

          actions:actions,
          bottom:  PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: Center(
              child: TabBar(
                tabs: [
                  Tab(icon:IconButton(
                    onPressed: (){},
                    icon: const GradientIcon(
                      icon: Icons.home_outlined,
                      gradient: LinearGradient(
                        colors: [Colors.deepOrangeAccent, Colors.grey],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      size: 30,
                    ),
                    // icon:const Icon(FontAwesomeIcons.houseUser) ,

                  ),),
                  Tab(icon:IconButton(
                    onPressed: (){},
                    icon: const GradientIcon(
                      icon: Icons.group,
                      gradient: LinearGradient(
                        colors: [Colors.deepOrangeAccent, Colors.grey],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      size: 28,
                    ),
                    // icon:const Icon(FontAwesomeIcons.houseUser) ,

                  ),),
                  Tab(icon:IconButton(
                    onPressed: (){},
                    icon: const GradientIcon(
                      icon: Icons.tv_rounded,
                      gradient: LinearGradient(
                        colors: [Colors.deepOrangeAccent, Colors.grey],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      size: 30,
                    ),
                    // icon:const Icon(FontAwesomeIcons.houseUser) ,

                  ),),
                  Tab(icon:IconButton(
                    onPressed: (){},
                    icon: const GradientIcon(
                      icon: Icons.shop,
                      gradient: LinearGradient(
                        colors: [Colors.deepOrangeAccent, Colors.grey],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      size: 30,
                    ),
                    // icon:const Icon(FontAwesomeIcons.houseUser) ,

                  ),),
                  Tab(icon:IconButton(
                    onPressed: (){},
                    icon: const GradientIcon(
                      icon: Icons.person_pin,
                      gradient: LinearGradient(
                        colors: [Colors.deepOrangeAccent, Colors.grey],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      size: 30,
                    ),
                    // icon:const Icon(FontAwesomeIcons.houseUser) ,

                  ),),
                ],
                //isScrollable: true,
                indicatorColor: AppColors.deepOrangeColor,
                indicatorWeight: 1,
                padding: EdgeInsets.only(right:370,left:370,),
              ),
            ),
          ),
          // [
          //   Container(
          //     width: 36,
          //     height: 36,
          //     decoration: BoxDecoration(
          //         color: AppColors.backgroundScaffoldColor,
          //         borderRadius: BorderRadius.circular(30)),
          //     child: const Icon(
          //       Icons.add,
          //       color: Colors.white,
          //       size: 25.0,
          //     ),
          //   ),
          //   const SizedBox(
          //     width: 5,
          //   ),
          //   Container(
          //     width: 36,
          //     height: 36,
          //     decoration: BoxDecoration(
          //         color: AppColors.backgroundScaffoldColor,
          //         borderRadius: BorderRadius.circular(30)),
          //     child: const Icon(
          //       Icons.manage_accounts_outlined,
          //       color: Colors.white,
          //       size: 20.0,
          //     ),
          //   ),
          //   const SizedBox(
          //     width: 5,
          //   ),
          //   const CircleAvatar(
          //     radius: 22,
          //     backgroundImage: NetworkImage(
          //         'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph'),
          //   ),
          // ],

         // textTheme: textTheme,
        //  centerTitle: true, // Center the title (optional)
        ),
      ),
    );
  }
}