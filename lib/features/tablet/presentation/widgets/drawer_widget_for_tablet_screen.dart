import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:i_click/features/tablet/presentation/widgets/tablet_drawer_widget.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/custom-text.dart';

List<DrawerWidgetModel> items = [
  const DrawerWidgetModel(
    iconButton: GradientIcon(
      icon: Icons.home_outlined,
      gradient: LinearGradient(
        colors: [Colors.deepOrangeAccent, Colors.grey],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      size: 40,
    ),
    text: Text('Home'),
  ),
  const DrawerWidgetModel(
    iconButton: GradientIcon(
      icon: Icons.messenger_outline_outlined,
      gradient: LinearGradient(
        colors: [Colors.deepOrangeAccent, Colors.grey],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      size: 30,
    ),
    text: Text('Chat'),
  ),
  const DrawerWidgetModel(
    iconButton: GradientIcon(
      icon: Icons.tv_rounded,
      gradient: LinearGradient(
        colors: [Colors.deepOrangeAccent, Colors.grey],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      size: 35,
    ),
    text: Text('Videos'),
  ),
  const DrawerWidgetModel(
    iconButton: GradientIcon(
      icon: Icons.shop_2_sharp,
      gradient: LinearGradient(
        colors: [Colors.deepOrangeAccent, Colors.grey],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      size:35,
    ),
    text: Text('Market'),
  ),
  const DrawerWidgetModel(
    iconButton: GradientIcon(
      icon: Icons.person_pin,
      gradient: LinearGradient(
        colors: [Colors.deepOrangeAccent, Colors.grey],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      size: 40,
    ),
    text: Text('Profile'),
  )
];
Widget drawerForTablet(context) => Container(
      width: 100,
      height: MediaQuery.sizeOf(context).height,
      decoration: const BoxDecoration(
        color: AppColors.backgroundColor,
      ),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => listTileWidget(items[index]),
          //separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemCount: items.length),
    );

Widget listTileWidget(DrawerWidgetModel drawerWidgetModel) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 33.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: drawerWidgetModel.iconButton,

            //subtitle: drawerWidgetModel.text,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomText(
            text: "${drawerWidgetModel.text.data}",
            size: 17,
            color: AppColors.categoryTextColor,
          ),
        ],
      ),
    );
