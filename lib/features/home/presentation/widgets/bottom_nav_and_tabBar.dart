import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:i_click/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:i_click/features/home/presentation/manager/home_cubit/home_states.dart';

import '../../../../core/components/constants.dart';
class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit,HomeAppStates>(
  listener:(context,state){} ,
      builder: (context,state){
        HomeCubit cubit = HomeCubit.get(context);
       return Scaffold(
         body: cubit.screens[cubit.currentIndex] ,
        bottomNavigationBar:
        //ClipRRect(
        //     borderRadius: const BorderRadius.only(
        //     topLeft: Radius.circular(22.0),
        // topRight: Radius.circular(22.0),
        // ),
        //
        //   child:
          Container(
            decoration: const BoxDecoration(
                color: AppColors.kPrimaryColor,
                //color: Colors.red,
                gradient: LinearGradient(
                  colors: [ AppColors.backgroundColor, Colors.black],

                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                      blurRadius:40,
                      color: AppColors.kPrimaryColor,
                      offset: Offset(2, 1)
                  )
                ]
              // borderRadius: BorderRadius.only(
              //   topRight: Radius.circular(60)
              // )
            ),
               //color:Colors.red,
               height:85,
               child: BottomNavigationBar(
                   onTap: (index){
                     // setState(() {
                     cubit.changeBottomNav(index);
                     // });
                   },
                   currentIndex: cubit.currentIndex,
                   elevation: 50,
                   selectedIconTheme: const IconThemeData(
                       color: AppColors.deepOrangeColor,
                       size: 35
                   ),
                   type: BottomNavigationBarType.fixed,
                   backgroundColor: Colors.black54,
                   selectedItemColor: AppColors.deepOrangeColor,
                   unselectedItemColor:Colors.white38 ,
                   items:[

                     BottomNavigationBarItem(
                         icon:IconButton(
                           onPressed: (){},
                           icon: const GradientIcon(
                             icon: Icons.home_outlined,
                             gradient: LinearGradient(
                               colors: [Colors.deepOrangeAccent, Colors.grey],
                               begin: Alignment.topLeft,
                               end: Alignment.bottomRight,
                             ),
                             size: 28,
                           ),
                           // icon:const Icon(FontAwesomeIcons.houseUser) ,

                         ),
                         label: 'Home'
                     ),
                     BottomNavigationBarItem(
                         icon:IconButton(
                           onPressed: (){},
                           icon: const GradientIcon(
                             icon: Icons.messenger_outline_outlined,
                             gradient: LinearGradient(
                               colors: [Colors.deepOrangeAccent, Colors.grey],
                               begin: Alignment.topLeft,
                               end: Alignment.bottomRight,
                             ),
                             size: 28,
                           ),
                           // icon:const Icon(FontAwesomeIcons.houseUser) ,

                         ),
                         label: 'Chat'
                     ),
                     BottomNavigationBarItem(
                         icon:IconButton(
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

                         ),
                         label: 'Videos'
                     ),
                     BottomNavigationBarItem(
                         icon:IconButton(
                           onPressed: (){},
                           icon: const GradientIcon(
                             icon: Icons.shop_2_sharp,
                             gradient: LinearGradient(
                               colors: [Colors.deepOrangeAccent, Colors.grey],
                               begin: Alignment.topLeft,
                               end: Alignment.bottomRight,
                             ),
                             size: 30,
                           ),
                           // icon:const Icon(FontAwesomeIcons.houseUser) ,

                         ),
                         label: 'Market'
                     ),
                     BottomNavigationBarItem(
                         icon:IconButton(
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

                         ),
                         label: 'Profile'
                     ),
                   ]
               ),
             ),
        );
       //);

      }

    );
  }
}

