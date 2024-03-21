import 'package:flutter/material.dart';
import 'package:i_click/core/components/constants.dart';
import 'package:intl/intl.dart';

import '../../../../general/calcualate_responsive__font-size.dart';
import '../../../../general/widgets/circle_avatar.dart';
import '../../../../general/widgets/custom-text.dart';
import '../../../../general/widgets/users_post_model.dart';
import '../../../register_and_login/data/models/user_register_model.dart';

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
List<UserRegisterModel> users =[];
Widget containerOfChat(DateTime now, UserRegisterModel userRegisterModel) => Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 25,
          backgroundImage: AssetImage(userRegisterModel.image),
          child: const Padding(
            padding: EdgeInsets.only(left: 35.0, top: 30),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              foregroundColor: Colors.green,
              radius: 5,
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: userRegisterModel.name,
                size: 14,
                color: AppColors.containerColor,
              ),
              Row(
                children: [
                  IntrinsicWidth(
                    child: CustomText(
                      text: userRegisterModel.name,
                      size: 12,
                      maxLines: 1,
                      // textOverflow: TextOverflow.ellipsis,
                      color: AppColors.containerColor,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(20)),
                    height: 3,
                    width: 3,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  CustomText(
                    text: formatDate(now),
                    //now.toLocal().toString(),
                    color: Colors.white38,
                    size: 12,
                    // size: 10,
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  // CircleAvatar(
                  //   backgroundColor: Colors.transparent,
                  //   radius: 19,
                  //   backgroundImage:
                  //   AssetImage(userRegisterModel.secImage),
                  //   child:   const Padding(
                  //     padding: EdgeInsets.only(left: 20.0,top: 30
                  //     ),
                  //     child: CircleAvatar(
                  //       backgroundColor:Colors.green ,
                  //       foregroundColor: Colors.green,
                  //       radius: 12,
                  //
                  //
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
