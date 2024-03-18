import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:i_click/core/components/constants.dart';
import 'package:i_click/general/widgets/custom-text.dart';
import 'package:story_view/widgets/story_view.dart';

import '../../../../general/widgets/search_widget.dart';
import '../../../../general/widgets/users_post_model.dart';
import '../../../tablet/presentation/widgets/card_of_new_news_tablet.dart';
import '../widgets/container_of_story.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return Scaffold(
        // backgroundColor:AppColors.containerColor,
        //  appBar:  const MyAppBar(),
        body: Container(
          decoration:  const BoxDecoration(
            color: AppColors.backgroundColor,
            gradient: LinearGradient(
              colors: [ AppColors.backgroundColor, Colors.black],

              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25,),
                      const Row(
                        children: [
                          Expanded(
                            flex:2,
                              child: SearchBarWidget()),
Spacer(),
                        // SizedBox(width: 50,),
                          // SizedBox(width: 15,),
                          CircleAvatar(
                            radius: 22,
                            backgroundImage: NetworkImage(
                                'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph'),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Row(
                          children: [
                            CustomText(
                              text: 'Discover',
                              color: AppColors.categoryTextColor,
                              size: 20,
                            ),
                            Spacer(),
                            CustomText(
                              text: 'View All',
                              color: AppColors.deepOrangeColor,
                              size: 14,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height:13,
                      ),
                      Container(
                        //  color: Colors.red,
                        height: 220,
                        child: ListView.separated(
                         shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => containerOfStory(
                             storyUsers[index],context,index
                          ),
                          itemCount: storyUsers.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 5),
                        ),
                      ),
                      const SizedBox(height: 15),
                      ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) =>
                              cardOfNewPostForTablet(usersPosts[index],DateTime.now()),
                          separatorBuilder: (context, index) =>
                          const SizedBox(
                            height: 8,
                          ),
                          itemCount: usersPosts.length),

                    ]
                ),
              ),
          ),
        ),
    //bottomNavigationBar:const BottomNavWidget(),
    );
  }


}
