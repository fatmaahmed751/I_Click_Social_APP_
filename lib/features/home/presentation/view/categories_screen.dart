import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:i_click/core/components/constants.dart';
import 'package:i_click/general/widgets/custom-text.dart';

import '../../../../core/components/componenets.dart';
import '../../../../general/widgets/app_bar_widget.dart';
import '../widgets/container_of_story.dart';
import '../widgets/grid_view_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return Scaffold(
        // backgroundColor:AppColors.containerColor,
        //  appBar:  const MyAppBar(),
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 280,
                          height: 41,
                          decoration: BoxDecoration(
                              color: AppColors.kPrimaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CustomText(
                                text: '  Search...',
                                size: 14,
                                color: AppColors.backgroundMainColor,
                              ),
                              const Spacer(),


                              Align(
                                alignment: AlignmentDirectional.centerEnd,
                                child: SvgPicture.asset(
                                  'assets/images/svg_images/search_icon.svg',
                                  height: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                       // SizedBox(width: 15,),
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph'),
                        ),
                        // Image.asset(
                        //   'assets/images/category_images/profile.png',
                        //   height: 78,
                        // ),
                      ],
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
                      height: 5,
                    ),
                    Container(
                      //  color: Colors.red,
                      height: 140,
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
                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        color: AppColors.backgroundScaffoldColor,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shadowColor: AppColors.kPrimaryColor,
                        elevation: 70.0,
                        margin: EdgeInsets.all(10.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
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
                                      CustomText(
                                        text: now.toLocal().toString(),
                                        color: Colors.white38,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const CustomText(text:"Fatma Ahmed",
                              color:AppColors.deepOrangeColor,
                              size: 18,),
                              CustomText(text:"Hello It is A good Day to be more excellent in Flutter..Hello It is A good Day to be more excellent in Flutter  ",
                                maxLines: 2,
textOverflow: TextOverflow.ellipsis,
                                color: Colors.yellow[50],
                                size: 15,),
                              SizedBox(height:10),
                              Stack(
                                  alignment: AlignmentDirectional.bottomEnd,
                                  children: [
                                    Container(
                                      height:210,
                                      width: double.infinity,
                                      decoration:BoxDecoration(
                                        color:Colors.red,

                                  borderRadius: BorderRadius.circular(10),

                                     image:DecorationImage(
                                      image: NetworkImage(
                                          'https://img.freepik.com/free-photo/indoor-shot-positive-bearded-male-casual-red-t-shirt-points-with-index-finger-aside_273609-16274.jpg?w=740&t=st=1676455489~exp=1676456089~hmac=194b92bce1f23e043af42fa8c0056a7bc52d540ae8a894f583622fa095cc06c4'),
                                    fit: BoxFit.cover ) ,

                                        // height: 250.0,
                                        // width: double.infinity,
                                      ),
                      ),

                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'communicate with friends',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13.0,
                                        ),
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        color: AppColors.kPrimaryColor,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation: 5.0,
                        margin: const EdgeInsets.all(1.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  color: Colors.red,
                                  child: Image.asset(
                                    'assets/images/category_images/profile.png',
                                    width: 50,
                                    height: 70,
                                    //backgroundImage: AssetImage('assets/images/category_images/profile.png'),
                                  ),
                                ),
                                const CustomText(
                                  text: 'Fatma Ahmed',
                                  color: AppColors.primaryColor,
                                  size: 15,
                                )
                              ],
                            ),
                            const Stack(
                                alignment: AlignmentDirectional.bottomEnd,
                                children: [
                                  Image(
                                    image: NetworkImage(
                                        'https://img.freepik.com/free-photo/indoor-shot-positive-bearded-male-casual-red-t-shirt-points-with-index-finger-aside_273609-16274.jpg?w=740&t=st=1676455489~exp=1676456089~hmac=194b92bce1f23e043af42fa8c0056a7bc52d540ae8a894f583622fa095cc06c4'),
                                    // fit: BoxFit.cover,
                                    height: 210.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'communicate with friends',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13.0,
                                      ),
                                    ),
                                  ),
                                ]),
                          ],
                        ),
                      ),
                    ),
                  ]),
            )));
  }
}
