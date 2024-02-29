import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';
import '../../../home/presentation/widgets/container_of_story.dart';


class ProfileWidget extends StatelessWidget {
  final UserStory user;
  final DateTime date;

   const ProfileWidget({super.key,
    required this.user,
    required this.date,

  }) ;

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
                  date.toString(),
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