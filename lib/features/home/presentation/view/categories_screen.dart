import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:i_click/core/components/constants.dart';
import 'package:i_click/general/widgets/custom-text.dart';

import '../../../../core/components/componenets.dart';
import '../../../../general/widgets/search_widget.dart';
import '../widgets/bottom_nav_and_tabBar.dart';
import '../widgets/container_of_story.dart';
import '../widgets/grid_view_widget.dart';

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
                      Container(
                        width: double.infinity,
                        child: const Row(
                          children: [
                            SearchBarWidget(),

                           SizedBox(width: 40,),
                            // SizedBox(width: 15,),
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph'),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 5,
                      ),
                      const Row(
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
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        //  color: Colors.red,
                        height: 200,
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => containerOfStory(),
                          itemCount: 6,
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 7),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                          decoration:   BoxDecoration(
                            color: AppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(6),
                        gradient: const LinearGradient(
                          colors: [ AppColors.backgroundColor, Colors.black],

                          begin: Alignment.topLeft,
                          end: Alignment.topLeft,
                        ),
                          ),
                        width: double.infinity,
                        child: Card(
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
                                Row(
                                  children: [
                                    const CircleAvatar(
                                      radius: 25,
                                      backgroundImage: NetworkImage(
                                          'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph'),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const CustomText(
                                          text: 'Fatma Ahmed',
                                          color: AppColors.categoryTextColor,
                                          size: 15,
                                        ),
                                        const SizedBox(
                                          height: 3,
                                        ),
                                        CustomText(
                                          text: now.toLocal().toString(),
                                          color: Colors.white38,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const CustomText(text:"Fatma Ahmed",
                                color:AppColors.deepOrangeColor,
                                size: 18,),
                                CustomText(text:"Hello It is A good Day to be more excellent in Flutter..Hello It is A good Day to be more excellent in Flutter  ",
                                  maxLines: 2,
textOverflow: TextOverflow.ellipsis,
                                  color: Colors.yellow[50],
                                  size: 15,),
                                const SizedBox(height:15),
                                Stack(
                                    alignment: AlignmentDirectional.bottomEnd,
                                    children: [
                                      Container(
                                        height:210,
                                        width: double.infinity,
                                        decoration:BoxDecoration(
                                          color:Colors.red,

                                    borderRadius: BorderRadius.circular(10),

                                       image:const DecorationImage(
                                        image: NetworkImage(
                                            'https://img.freepik.com/free-photo/indoor-shot-positive-bearded-male-casual-red-t-shirt-points-with-index-finger-aside_273609-16274.jpg?w=740&t=st=1676455489~exp=1676456089~hmac=194b92bce1f23e043af42fa8c0056a7bc52d540ae8a894f583622fa095cc06c4'),
                                      fit: BoxFit.cover ) ,

                                          // height: 250.0,
                                          // width: double.infinity,
                                        ),
                        ),

                                  Row(
                                        children: [
                                          IconButton(
                                          onPressed: (){},
                                              icon:const Icon(Icons.favorite_border,
                                              color: AppColors.backgroundScaffoldColor,)
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(bottom:5.0,left:0,right: 8),
                                            child: Text(
                                              'Likes',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13.0,
                                              ),
                                            ),
                                          ),
                                          IconButton(
                                              onPressed: (){},
                                              icon:const Icon(Icons.mode_comment_outlined,
                                                color: AppColors.backgroundScaffoldColor,)
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(bottom:5.0,left:0,right: 8),
                                            child: Text(
                                              'Likes',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]),
                              ],
                            ),
                          ),
                        ),
                      ),

                    ]
                ),
              ),
          ),
        ),
    //bottomNavigationBar:const BottomNavWidget(),
    );
  }


}
