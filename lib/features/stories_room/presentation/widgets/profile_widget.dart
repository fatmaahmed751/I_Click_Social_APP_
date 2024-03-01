import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:intl/intl.dart';
import '../../../home/presentation/widgets/container_of_story.dart';


class ProfileWidget extends StatelessWidget {
  final UserStory user;
  final DateTime date;

   const ProfileWidget({super.key,
    required this.user,
    required this.date,

  }) ;
  String formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inSeconds < 60) {
      return 'just now';
    } else if (difference.inMinutes < 60) {
      final minutes = difference.inMinutes;
      return Intl.plural(
        minutes,
        zero: 'just now',
        one: '$minutes minute ago',
        other: '$minutes minutes ago',
      );
    } else if (difference.inHours < 24) {
      final hours = difference.inHours;
      return Intl.plural(
        hours,
        zero: 'just now',
        one: '$hours hour ago',
        other: '$hours hours ago',
      );
    } else {
      return DateFormat('yMMMd').format(date);
    }
  }
  @override
  Widget build(BuildContext context) => Material(
    type: MaterialType.transparency,
    child: Container(
     margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Image(
              image: AssetImage(user.profileImage),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  user.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  formatDate(date),
                  style: const TextStyle(color: Colors.white38),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(onPressed: (){
                    Navigator.pop(context);
                  },  icon: const GradientIcon(
                    icon: Icons.arrow_back_ios,
                    gradient: LinearGradient(
                      colors: [
                        Colors.deepOrangeAccent,
                        Colors.purple
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    size: 25,
                  ),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    ),
  );
}