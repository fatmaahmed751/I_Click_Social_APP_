import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';

class IconsOfProfileRow extends StatelessWidget {
  const IconsOfProfileRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
