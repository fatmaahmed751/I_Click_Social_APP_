import 'package:flutter/material.dart';
import 'package:i_click/general/widgets/users_post_model.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/circle_avatar.dart';
import '../../../../general/widgets/custom-text.dart';
import '../../../../general/widgets/search_widget.dart';
import '../widgets/chat_bubble.dart';
import '../widgets/chat_item.dart';
import '../widgets/chat_messages.dart';

class ChatRoomsScreen extends StatelessWidget {
  const ChatRoomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return   Scaffold(
      body: Container(
        decoration:   const BoxDecoration(
          color: AppColors.backgroundColor,

          gradient: LinearGradient(
            colors: [ AppColors.backgroundColor, Colors.black],

            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 17.0,top: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      const CustomText(text:'Chats',
                          size:20,
                          fontWeight: FontWeight.w700,
                          color:AppColors.categoryTextColor),
                      const Spacer(),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.edit_note_sharp,
                      color: AppColors.categoryTextColor,
                      size: 25,))
                    ],
                  ),
                ),
                const SizedBox(height:10),
                const SearchBarWidget(),
                const SizedBox(height:15),
                SizedBox(
                  //  color: Colors.red,
                  height: 54,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => circlePicture(34,34,users[index]),
                    itemCount:users.length,
                    separatorBuilder: (context, index) =>
                    const SizedBox(width: 7),
                  ),
                ),
                const SizedBox(height: 20,),

                Container(
                  //  color: Colors.red,
                 height: MediaQuery.sizeOf(context).height,
                  child: ListView.separated(
                    shrinkWrap: true,
                    //scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: (){
                        chatBubbles(context);
                      },
                        child: containerOfChat(now,users[index])),
                    itemCount: usersPosts.length,
                    separatorBuilder: (context, index) =>
                    const SizedBox(height: 9),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}