import 'package:flutter/material.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/circle_avatar.dart';
import '../../../../general/widgets/custom-text.dart';

class LastColumnForTabletScreen extends StatelessWidget {
  const LastColumnForTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
// SizedBox(width: 15,),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                        color: AppColors.backgroundScaffoldColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Icon(
                      Icons.backup_rounded,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                        color: AppColors.backgroundScaffoldColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Icon(
                      Icons.notification_important_sharp,
                      color: Colors.white,
                      size: 22.0,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 3,
            ),

            const Align(
              alignment: Alignment.topLeft,
              child: CustomText(
                text: 'Sponsored',
                size: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.containerTextColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
                children: [
              Expanded(
                flex:1,
                child: Container(
                  height: 80,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: NetworkImage(
                          'https://i.pinimg.com/564x/96/c1/72/96c1720919baa5c867e1f4f2afc2a4f3.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              const Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(right: 4.0),
                  child: Column(
                    children: [
                      CustomText(
                        text: "Build Your Future With Us",
                        color: AppColors.containerColor,
                       // maxLines: 2,
                        size: 16,
                        fontWeight: FontWeight.w400,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      CustomText(
                        text: "Contact Us@gmail.com",
                        fontWeight: FontWeight.w100,
                        color: AppColors.containerColor,
                        size: 14,
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height:10,
            ),
            const Divider(
              indent: 1,
              endIndent: 3,
              height: 11.0,
// thickness: 0.3,
              color: AppColors.containerTextColor,
            ),
            const SizedBox(
              height:7,
            ),
            const Padding(
              padding: EdgeInsets.only(right:8.0),
              child: Row(
                children: [
                  CustomText(
                    text: "Contacts",
                    color: AppColors.containerTextColor,
                    maxLines: 2,
                    size: 16,
                    fontWeight: FontWeight.w600,

                  ),
                  Spacer(),
                  Icon(
                    Icons.search_outlined,
                    color: AppColors.containerTextColor,
                    size: 20.0,
                  ),
                  SizedBox(width: 3,),
                  Icon(
                    Icons.more_horiz_sharp,
                    color: AppColors.containerTextColor,
                    size: 22.0,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18,),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  //scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => contactItem(),
                  itemCount: 10,
                  separatorBuilder: (context, index) =>
                  const SizedBox(height: 11),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                        color: AppColors.backgroundScaffoldColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Icon(
                      Icons.create_outlined,
                      color: Colors.white,
                      size: 22.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget contactItem()=>Row(
      children: [
      circleOfChats(22,15),
  const SizedBox(width: 8,),

  const CustomText(text:'Ahmed Badry',
size: 12,
  color: AppColors.containerColor,
  ),
  ]
  );
}
