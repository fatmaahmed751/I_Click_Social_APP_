import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:i_click/general/widgets/circle_avatar.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/custom-text.dart';
import "package:story_view/story_view.dart";

import '../../../stories_room/presentation/widgets/story_of_user.dart';
import '../../../stories_room/presentation/widgets/story_show.dart';

StoryController storyController = StoryController();

class UserStory {
  final String profileImage;
  final String name;
  final List<Story> storyItems;

  UserStory(
      {required this.profileImage,
      required this.name,
      required this.storyItems});
}

List<Story> storyItem = [
  Story(
      mediaType: MediaType.image,
      url:
          'https://i.pinimg.com/736x/44/a5/cc/44a5ccd00e9d20bb58693d8dd78d4e51.jpg',
      caption: 'Free Palestine',
      color: Colors.redAccent,
      date: DateTime.now().toLocal()),
  Story(
      mediaType: MediaType.image,
      url: "https://img.freepik.com/premium-photo/blue-bmw-m5-driving-down-road_866324-3.jpg?w=360",
      caption: 'The Monster',
      date: DateTime.now().toLocal()),
  ];
List<Story> storyItemTwo = [
  Story(
      mediaType: MediaType.image,
      url:
          "https://i.pinimg.com/564x/8c/ee/c3/8ceec3a8ecbf2285f1815740c02a855f.jpg",
      caption: 'Galaxy World',
      date: DateTime.now().toLocal()
  ),
  Story(
      mediaType: MediaType.image,
      url:
          "https://i.pinimg.com/564x/6f/08/73/6f0873a70d373f4d3840275fa4b717f7.jpg",
      caption: 'It\'s Our Coffee Time',
      //color: Colors.lightBlueAccent,
      date: DateTime.now().toLocal()),
];
List<Story> storyItemThree = [

  Story(
      mediaType: MediaType.image,
      url:
          "https://img.freepik.com/free-photo/airplane-window-with-blue-sky-wing_1150-11034.jpg?t=st=1709177741~exp=1709181341~hmac=b243ffae530fc0a31f58613ef2cb89c79c17ff8bee2c795ae689fc5695c07f01&w=360",
      caption: 'Go Home...',
      //color: Colors.lightBlueAccent,
      date: DateTime.now().toLocal()),
  Story(
      mediaType: MediaType.image,
      url:
      "https://i.pinimg.com/564x/8c/ee/c3/8ceec3a8ecbf2285f1815740c02a855f.jpg",
      caption: '**Galaxy World**',
      date: DateTime.now().toLocal()),
];

List<UserStory> storyUsers = [
  UserStory(
      profileImage: "assets/images/user_profile_image/image_three.png",
      name: "Ahmed Shrief",
      storyItems: storyItem),
  UserStory(
      profileImage: "assets/images/user_profile_image/image_one.png",
      name: "Mark Sooll",
      storyItems: storyItemTwo),
  UserStory(
      profileImage: 'assets/images/user_profile_image/image_four.png',
      name: "Sally Tony",
      storyItems: storyItemThree),
  UserStory(
      profileImage: 'assets/images/user_profile_image/Image_six.png',
      name: "Sozy zakey",
      storyItems: storyItem),
  UserStory(
      profileImage: "assets/images/user_profile_image/image_two.png",
      name: "Abdoo Ahmed",
      storyItems: storyItemTwo),
];

// Widget containerOfStory()=> Stack(
//   //alignment: Alignment.bottomCenter,
//   children: [
//     Container(
//         width: 143,
//         height:280,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           image: const DecorationImage(
//               image:      NetworkImage("https://img.freepik.com/free-photo/portrait-smiling-casual-woman_171337-11866.jpg?w=360&t=st=1706673586~exp=1706674186~hmac=54cff1d97260c9ffd965b8f8df8bdeb1f6b1efef4431341146e58ae67dd69978")),
//           //'https://img.freepik.com/premium-vector/cute-hijabi-girl-vector-illustration_228218-131.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph')),
//           //   'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph')),
//
//         )
//     ),
//     // child:
//     //  Image.network('https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph')),
//     Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         Padding(
//             padding: const EdgeInsets.only(left:10.0,top: 4),
//             child: circlePicture(20,22)),
//         const SizedBox(height:90),
//
//         const Padding(
//           padding: EdgeInsets.only(left:28.0),
//           child: CustomText(text: 'Fatma Ahmed',
//             color: AppColors.containerColor,
//             textAlign: TextAlign.center,
//             size: 15,),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left:105.0),
//           child: IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/images/svg_images/union.svg',
//             height: 13,
//             width: 20,)
//           ),
//         ),
//       ],
//     )
//   ],
// );

Widget containerOfStory(UserStory userStory, context, int index) => Stack(
      //alignment: Alignment.bottomCenter,
      children: [
        for (int i = 0; i < userStory.storyItems.length; i++)
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => StoryPage(
                          userStory: userStory,
                        )));
          },
          child: Container(
            width: 138,
            height: 222,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                    image: NetworkImage(
                        userStory.storyItems[i].url) // Wrap in Image.network()
                    // No image for text stories
                    )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Image(
                        image: AssetImage(userStory.profileImage)
                    // ),
                  ),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 22.0,top: 20),
                  child: CustomText(
                    text: userStory.name,
                    color: AppColors.containerColor,
                    textAlign: TextAlign.center,
                    size: 15,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/images/svg_images/union.svg',
                        height: 13,
                        width: 20,
                      )),
                ),
              ],
            ),
          ),
        ),
      ],
    );
