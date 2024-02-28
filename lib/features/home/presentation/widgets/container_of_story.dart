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

  UserStory({
    required this.profileImage,
      required this.name,
      required this.storyItems
      });
}

List<Story> storyItem = [
Story(
    mediaType: MediaType.text,
    caption: 'Free Palestine',
    color: Colors.redAccent,
    date: DateTime.now().toLocal()),
  Story(
      mediaType: MediaType.image,
      url: "https://img.freepik.com/free-photo/portrait-smiling-casual-woman_171337-11866.jpg?w=360&t=st=1706673586~exp=1706674186~hmac=54cff1d97260c9ffd965b8f8df8bdeb1f6b1efef4431341146e58ae67dd69978",
      caption: 'Free Palestine',
      date: DateTime.now().toLocal()),
  Story(
      mediaType: MediaType.text,
      caption: 'Free Palestine',
      color: Colors.lightBlueAccent,
      date: DateTime.now().toLocal()),
];

List<UserStory> storyUsers = [
  UserStory(
      profileImage:
          "https://img.freepik.com/free-photo/portrait-smiling-casual-woman_171337-11866.jpg?w=360&t=st=1706673586~exp=1706674186~hmac=54cff1d97260c9ffd965b8f8df8bdeb1f6b1efef4431341146e58ae67dd69978",
      name: "Fatma Ahmed",
      storyItems: storyItem),
  UserStory(
      profileImage:
          "https://img.freepik.com/free-photo/portrait-smiling-casual-woman_171337-11866.jpg?w=360&t=st=1706673586~exp=1706674186~hmac=54cff1d97260c9ffd965b8f8df8bdeb1f6b1efef4431341146e58ae67dd69978",
      name: "Fatma Ahmed",
      storyItems: storyItem),
  UserStory(
      profileImage:
          'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph',
      name: "Fatma Ahmed",
      storyItems: storyItem),
  UserStory(
      profileImage:
          "https://img.freepik.com/free-photo/portrait-smiling-casual-woman_171337-11866.jpg?w=360&t=st=1706673586~exp=1706674186~hmac=54cff1d97260c9ffd965b8f8df8bdeb1f6b1efef4431341146e58ae67dd69978",
      name: "Fatma Ahmed",
      storyItems: storyItem),
  UserStory(
      profileImage:
          "https://img.freepik.com/free-photo/portrait-smiling-casual-woman_171337-11866.jpg?w=360&t=st=1706673586~exp=1706674186~hmac=54cff1d97260c9ffd965b8f8df8bdeb1f6b1efef4431341146e58ae67dd69978",
      name: "Fatma Ahmed",
      storyItems: storyItem),
];



Widget containerOfStory(UserStory userStory, context, int index) => Stack(
      //alignment: Alignment.bottomCenter,
      children: [
        GestureDetector(
          onTap: () {
           Navigator.push(context, MaterialPageRoute( builder:(context)=>StoryPage(userStory: userStory,)));
          },
          child:Container(
width:150,
height: 200,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
  image: DecorationImage(
  image: NetworkImage(storyItem[index].url)  // Wrap in Image.network()
   // No image for text stories
  )
),
        //  Image.network('https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph')),
      child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 4),
              child: CircleAvatar(
                radius: 20,
                child: CircleAvatar(
                    radius: 22,
                    backgroundImage: NetworkImage(userStory.profileImage)),
              ),
            ),
            const SizedBox(height: 90),
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: CustomText(
                text: userStory.name,
                color: AppColors.containerColor,
                textAlign: TextAlign.center,
                size: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 105.0),
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
