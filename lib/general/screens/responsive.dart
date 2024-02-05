// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:i_click/general/widgets/search_widget.dart';
//
// import '../../core/components/constants.dart';
// import '../../features/home/presentation/widgets/container_of_story.dart';
// import '../widgets/circle_avatar.dart';
// import '../widgets/custom-text.dart';
//
// class Responsive extends StatelessWidget {
//   const Responsive({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final now = DateTime.now();
//     return SizedBox(
//       width: 500,
//       height: 400,
//       child: Scaffold(
//         body: Column(
//           children: [
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             const SearchBarWidget(),
//                             const Spacer(),
//                             // SizedBox(width: 15,),
//                             const CircleAvatar(
//                               radius: 25,
//                               backgroundImage: NetworkImage(
//                                   'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph'),
//                             ),
//                             // Image.asset(
//                             //   'assets/images/category_images/profile.png',
//                             //   height: 78,
//                             // ),
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         const Row(
//                           children: [
//                             CustomText(
//                               text: 'Discover',
//                               color: AppColors.categoryTextColor,
//                               size: 20,
//                             ),
//                             Spacer(),
//                             CustomText(
//                               text: 'View All',
//                               color: AppColors.deepOrangeColor,
//                               size: 14,
//                             )
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Container(
//                           //  color: Colors.red,
//                           height: 140,
//                           child: ListView.separated(
//                             shrinkWrap: true,
//                             physics: NeverScrollableScrollPhysics(),
//                             scrollDirection: Axis.horizontal,
//                             itemBuilder: (context, index) => containerOfStory(),
//                             itemCount: 6,
//                             separatorBuilder: (context, index) =>
//                             const SizedBox(width: 7),
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         SizedBox(
//                           width: double.infinity,
//                           child: Card(
//                             color: AppColors.backgroundScaffoldColor,
//                             clipBehavior: Clip.antiAliasWithSaveLayer,
//                             shadowColor: AppColors.kPrimaryColor,
//                             elevation: 70.0,
//                             margin: const EdgeInsets.all(10.0),
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Row(
//                                     children: [
//                                       const CircleAvatar(
//                                         radius: 25,
//                                         backgroundImage: NetworkImage(
//                                             'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph'),
//                                       ),
//                                       const SizedBox(
//                                         width: 8,
//                                       ),
//                                       Column(
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           const CustomText(
//                                             text: 'Fatma Ahmed',
//                                             color: AppColors.categoryTextColor,
//                                             size: 15,
//                                           ),
//                                           CustomText(
//                                             text: now.toLocal().toString(),
//                                             color: Colors.white38,
//                                           )
//                                         ],
//                                       )
//                                     ],
//                                   ),
//                                   const CustomText(text:"Fatma Ahmed",
//                                     color:AppColors.deepOrangeColor,
//                                     size: 18,),
//                                   CustomText(text:"Hello It is A good Day to be more excellent in Flutter..Hello It is A good Day to be more excellent in Flutter  ",
//                                     maxLines: 2,
//                                     textOverflow: TextOverflow.ellipsis,
//                                     color: Colors.yellow[50],
//                                     size: 15,),
//                                   const SizedBox(height:10),
//                                   Stack(
//                                       alignment: AlignmentDirectional.bottomEnd,
//                                       children: [
//                                         Container(
//                                           height:210,
//                                           width: double.infinity,
//                                           decoration:BoxDecoration(
//                                             color:Colors.red,
//
//                                             borderRadius: BorderRadius.circular(10),
//
//                                             image:const DecorationImage(
//                                                 image: NetworkImage(
//                                                     'https://img.freepik.com/free-photo/indoor-shot-positive-bearded-male-casual-red-t-shirt-points-with-index-finger-aside_273609-16274.jpg?w=740&t=st=1676455489~exp=1676456089~hmac=194b92bce1f23e043af42fa8c0056a7bc52d540ae8a894f583622fa095cc06c4'),
//                                                 fit: BoxFit.cover ) ,
//
//                                             // height: 250.0,
//                                             // width: double.infinity,
//                                           ),
//                                         ),
//
//                                         Row(
//                                           children: [
//                                             IconButton(
//                                                 onPressed: (){},
//                                                 icon:const Icon(Icons.favorite_border,
//                                                   color: AppColors.backgroundScaffoldColor,)
//                                             ),
//                                             const Padding(
//                                               padding: EdgeInsets.only(bottom:5.0,left:0,right: 8),
//                                               child: Text(
//                                                 'Likes',
//                                                 style: TextStyle(
//                                                   color: Colors.black,
//                                                   fontSize: 13.0,
//                                                 ),
//                                               ),
//                                             ),
//                                             IconButton(
//                                                 onPressed: (){},
//                                                 icon:const Icon(Icons.mode_comment_outlined,
//                                                   color: AppColors.backgroundScaffoldColor,)
//                                             ),
//                                             const Padding(
//                                               padding: EdgeInsets.only(bottom:5.0,left:0,right: 8),
//                                               child: Text(
//                                                 'Likes',
//                                                 style: TextStyle(
//                                                   color: Colors.black,
//                                                   fontSize: 13.0,
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ]),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//
//                       ]
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 17.0,top: 10),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const CustomText(text:'Chats',
//                           size:20,
//                           fontWeight: FontWeight.w700,
//                           color:AppColors.categoryTextColor),
//                       const SearchBarWidget(),
//                       const SizedBox(height:10),
//                       SizedBox(
//                         //  color: Colors.red,
//                         height: 50,
//                         child: ListView.separated(
//                           shrinkWrap: true,
//                           physics: NeverScrollableScrollPhysics(),
//                           scrollDirection: Axis.horizontal,
//                           itemBuilder: (context, index) => circlePicture(25),
//                           itemCount: 6,
//                           separatorBuilder: (context, index) =>
//                           const SizedBox(width: 7),
//                         ),
//                       ),
//                       const SizedBox(height: 20,),
//                       Row(
//                         children: [
//                           circlePicture(25),
//                           const SizedBox(width: 5,),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const CustomText(text:'Ahmed Badry',
//                                 size:12,
//                                 color: AppColors.containerColor,),
//                               Row(
//                                 children: [
//                                   const CustomText(text:'Ahmed Badry',
//                                     size:12,
//                                     color: AppColors.containerColor,),
//                                   Container(
//                                     decoration: BoxDecoration(
//                                         color: Colors.white38,
//                                         borderRadius: BorderRadius.circular(20)
//                                     ),
//                                     height: 3,
//                                     width:3,
//
//                                   ),
//                                   CustomText(
//                                     text: now.toLocal().toString(),
//                                     color: Colors.white38,
//                                     size: 10,
//                                   ),
//                                   const SizedBox(width: 30,),
//                                   circlePicture(10),
//                                 ],
//                               ),
//                             ],
//                           ),
//
//                         ],
//                       ),
//
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//
//       ),
//     );
//   }
// }
