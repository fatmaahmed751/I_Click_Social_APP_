import 'package:flutter/material.dart';
import '../../../home/presentation/widgets/container_of_story.dart';


class ProfileWidget extends StatelessWidget {
  final UserStory user;
  final DateTime date;

   ProfileWidget({super.key,
    required this.user,
    required this.date,

  }) ;

  @override
  Widget build(BuildContext context) => Material(
    type: MaterialType.transparency,
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 48),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(user.profileImage),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  user.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  date.toString(),
                  style: TextStyle(color: Colors.white38),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}