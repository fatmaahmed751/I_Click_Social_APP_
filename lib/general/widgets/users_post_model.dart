import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:intl/intl.dart';

import '../../core/components/constants.dart';
import '../../features/home/presentation/widgets/container_of_story.dart';
import '../../features/tablet/presentation/widgets/card_of_new_news_tablet.dart';
import '../../features/tablet/presentation/widgets/container_for_reels_tablet.dart';
import 'custom-text.dart';
//DateTime date = DateTime.now().copyWith();

// String formatDate(DateTime date) {
//   final date = DateTime.now();
//   final difference = date.difference(date);
//
//   if (difference.inSeconds < 60) {
//     return 'just now';
//   } else if (difference.inMinutes < 60) {
//     final minutes = difference.inMinutes;
//     return Intl.plural(
//       minutes,
//       zero: 'just now',
//       one: '$minutes minute ago',
//       other: '$minutes minutes ago',
//     );
//   } else if (difference.inHours < 24) {
//     final hours = difference.inHours;
//     return Intl.plural(
//       hours,
//       zero: 'just now',
//       one: '$hours hour ago',
//       other: '$hours hours ago',
//     );
//   } else {
//     // Format date as YYYY-MM-DD for older dates
//     return DateFormat('yyyy-MM-dd').format(date);
//   }
// }

class UserPostModel {
  final String profileImage;
  final String post;
  final String name;
  final DateTime dateOfPost;
  final String postImage;
  final String hashTage;

  UserPostModel({
    required this.profileImage,
    required this.post,
    required this.name,
    required this.dateOfPost,
    required this.postImage,
    required this.hashTage,
  });
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
}

//String formattedDate = DateFormat('yMMMd').format(UserPostModel.dateOfPost);
  List<UserPostModel> usersPosts = [

    UserPostModel(
      hashTage: '#Programming',
      postImage: 'https://i.pinimg.com/564x/15/61/0b/15610b6fe881d13404ce790f8d2d088a.jpg',
      profileImage: "assets/images/user_profile_image/image_one.png",
      post: "That'\s How I ReCharge My Soul...",
      name: 'Mark Sooll',
      dateOfPost:DateTime.now(),
      //  dateOfPost: Jiffy.parseFromDateTime(date).fromNow().toString(),
    ),
    UserPostModel(
      hashTage: '#Developer',
      postImage: 'https://i.pinimg.com/564x/03/2b/b4/032bb4387d0796e02d7e23ac92adea99.jpg',
      profileImage: 'assets/images/user_profile_image/image_four.png',
      post: '..Hello It is A good Day to be more excellent..',
      name: 'Sally Tony',
      dateOfPost:DateTime.now(),
    ),
    //dateOfPost: Jiffy.parseFromDateTime(date).fromNow().toString()),
    UserPostModel(
      hashTage: '#Passion',
      postImage: 'https://i.pinimg.com/564x/ee/59/d7/ee59d747baf54cc50385f6152ec4dacd.jpg',
      profileImage: 'assets/images/user_profile_image/Image_six.png',
      post:" Please Don'\'t Waste Your Time.. You Can Make A lot...",
      name: 'Sozy zakey',
      dateOfPost:DateTime.now(),
    ),
    UserPostModel(
        hashTage: '#Travelling',
        postImage: 'https://i.pinimg.com/564x/cc/1c/ea/cc1ceadf40f22d7db7fe160a86b5c366.jpg',
      profileImage: "assets/images/user_profile_image/image_two.png",
      post: "Where'\s Your Next Destination......?",
      name: 'Abdoo Ahmed',
      dateOfPost:DateTime.now()),
    UserPostModel(
      hashTage: '#Palestine',
      postImage: 'https://i.pinimg.com/564x/41/fc/d4/41fcd46f874df438ed1d140624ba170e.jpg',
      profileImage:
      "assets/images/user_profile_image/f_one-removebg-preview.png",
      post: "WE WiLL NEVER Forget...\n WE WiLL NEVER Forget...",
      name: 'Sally Tony',
      // dateOfPost: Jiffy.parse(date).fromNow(),
      dateOfPost:DateTime.now(),
      //  Jiffy.now(),
      //  Jiffy.parse(date as String).from(Jiffy.parse('2024/3/1'))
    ),


    UserPostModel(
        hashTage: '#Future',
        postImage: 'https://i.pinimg.com/564x/41/30/54/41305442707380e5a84cff9bdf9d8910.jpg',
      profileImage:
      "assets/images/user_profile_image/image_three.png",
      post: "Let's Make Our Future it's Our Day and Our Present",
      name: 'Ahmed Shrief',
      dateOfPost:DateTime.now()),

  ];


