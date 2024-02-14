import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/custom-text.dart';

class CardOfNewPostForTablet  extends StatelessWidget{
  const CardOfNewPostForTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black54,
//AppColors.kPrimaryColor,
      clipBehavior: Clip.hardEdge,
      shadowColor: AppColors.containerTextColor,
      elevation: 50.0,
//margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph'),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Fatma Ahmed',
                      color: AppColors.categoryTextColor,
                      size: 15,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    CustomText(
                      text: 'hi',
// now.toLocal().toString(),
                      color: Colors.white38,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const CustomText(
              text: "Fatma Ahmed",
              color: AppColors.deepOrangeColor,
              size: 18,
            ),
            CustomText(
              text:
              "Hello It is A good Day to be more excellent in Flutter..Hello It is A good Day to be more excellent in Flutter  ",
              maxLines: 2,
              textOverflow: TextOverflow.ellipsis,
              color: Colors.yellow[50],
              size: 15,
            ),
            const SizedBox(height: 15),
            Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Container(
                    height: 210,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red,

                      borderRadius: BorderRadius.circular(10),

                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://img.freepik.com/free-photo/indoor-shot-positive-bearded-male-casual-red-t-shirt-points-with-index-finger-aside_273609-16274.jpg?w=740&t=st=1676455489~exp=1676456089~hmac=194b92bce1f23e043af42fa8c0056a7bc52d540ae8a894f583622fa095cc06c4'),
                          fit: BoxFit.cover),

// height: 250.0,
// width: double.infinity,
                    ),
                  ),

                ]
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const GradientIcon(
                      gradient: LinearGradient(
                        colors: [Colors.deepOrangeAccent, Colors.purple],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      icon:
                      Icons.favorite_border,
// color:
// AppColors.containerColor,

                    )
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 0, right: 8, top: 15),
                  child: Text(
                    'Likes',
                    style: TextStyle(
                      color: AppColors.containerColor,
                      fontSize: 13.0,
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const GradientIcon(
                      gradient: LinearGradient(
                        colors: [Colors.deepOrangeAccent, Colors.purple],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      icon:
                      Icons.cloud_circle_sharp,
// color:
// AppColors.containerColor,

                    )),
                const Padding(
                  padding: EdgeInsets.only(
                      top: 15.0, left: 0, right: 8),
                  child: Text(
                    'Likes',
                    style: TextStyle(
                      color: AppColors.containerColor,
                      fontSize: 13.0,
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const GradientIcon(
                      gradient: LinearGradient(
                        colors: [Colors.deepOrangeAccent, Colors.purple],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      icon:
                      Icons.share,
// color:
// AppColors.containerColor,

                    )),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const GradientIcon(
                      gradient: LinearGradient(
                        colors: [Colors.deepOrangeAccent, Colors.purple],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      icon:
                      Icons.bookmark
                      //density_small_rounded,
// color:
// AppColors.containerColor,

                    )),

              ],
            ),
          ],
        ),
      ),
    );
  }}