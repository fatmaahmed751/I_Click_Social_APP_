import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:intl/intl.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/custom-text.dart';
import '../../../../general/widgets/users_post_model.dart';

Widget cardOfNewPostForTablet(UserPostModel userPostModel) => Card(
      color: Colors.black54,
//AppColors.kPrimaryColor,
      clipBehavior: Clip.hardEdge,
      shadowColor: AppColors.containerTextColor,
      elevation: 50.0,
//margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.only(left: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 310,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 80,

                    child: Image(
                        //radius: 25,
                        image: AssetImage(userPostModel.profileImage)
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: userPostModel.name,
                          color: AppColors.categoryTextColor,
                          size: 15,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                         CustomText(
                          text:  DateFormat('MMMd').format(userPostModel.dateOfPost),
                          color: Colors.white38,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0,bottom:8),
              child: CustomText(
                text: userPostModel.hashTage,
                color: AppColors.deepOrangeColor,
                size: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0,bottom:8),
              child: CustomText(
                text: userPostModel.post,
                maxLines: 2,
                textOverflow: TextOverflow.ellipsis,
                color: Colors.yellow[50],
                size: 15,
              ),
            ),
            const SizedBox(height: 15),
            Stack(alignment: AlignmentDirectional.bottomEnd, children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                 // color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                  fit: BoxFit.cover,
                    image: NetworkImage(
                      userPostModel.postImage,
                    ),
                  ),
                ),
              ),
            ]),
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
                      icon: Icons.favorite_border,
// color:
// AppColors.containerColor,
                    )),
                const Padding(
                  padding: EdgeInsets.only(left: 0, right: 8, top: 15),
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
                      icon: Icons.cloud_circle_sharp,
// color:
// AppColors.containerColor,
                    )),
                const Padding(
                  padding: EdgeInsets.only(top: 15.0, left: 0, right: 8),
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
                      icon: Icons.share,
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
                        icon: Icons.bookmark
                        )),
              ],
            ),
            SizedBox(height:10),
          ],
        ),
      ),
    );
