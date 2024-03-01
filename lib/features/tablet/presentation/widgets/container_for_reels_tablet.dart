import 'package:flutter/material.dart';
import 'package:i_click/general/widgets/custom-text.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/users_post_model.dart';

class ContainerForReelsForTablet extends StatelessWidget {
  const ContainerForReelsForTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          //color: Colors.purple,
          height: 360,
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, bottom: 16),
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => containerOfReel(usersPosts[index]),
              itemCount: usersPosts.length,
              separatorBuilder: (context, index) => const SizedBox(width: 5),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 5),
          child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.backgroundMainColor),
              child: TextButton(
                onPressed: () {},
                child: const Center(
                  child: CustomText(
                    text: 'See more',
                    color: AppColors.categoryTextColor,
                  ),
                ),
              )),
        ),
        SizedBox(height: 10,),
      ],
    );
  }

  Widget containerOfReel(UserPostModel userPostModel) => Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              width: 170,
              height: 330,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(30),
                // image: const DecorationImage(
                //     image:      NetworkImage("https://img.freepik.com/free-photo/portrait-smiling-casual-woman_171337-11866.jpg?w=360&t=st=1706673586~exp=1706674186~hmac=54cff1d97260c9ffd965b8f8df8bdeb1f6b1efef4431341146e58ae67dd69978"
                //     ),
                // ),
              ),
              child: Image.network(
                userPostModel.postImage,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 15),
              child: CustomText(
                text: '335k',
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
}
