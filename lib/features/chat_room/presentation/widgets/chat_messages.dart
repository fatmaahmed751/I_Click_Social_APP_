import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/custom-text.dart';
import '../../data/model/chat_model.dart';
import '../manager/chat_cubit/chat_cubit.dart';

class ChatMessages extends StatelessWidget {
  // const ChatMessages({super.key});
  Stream<QuerySnapshot> messagesStream = FirebaseFirestore.instance
      .collection('messages')
      .orderBy("date", descending: true)
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: messagesStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasData) {
          List<ChatModel> messageList = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            messageList.add(ChatModel.fromJson(snapshot.data!.docs[i]));
          }
          return SizedBox(
            height: 450,
            child: ListView.separated(
              reverse: true,
              // controller: controller,
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemBuilder: (context, index) => Align(
                alignment: Alignment.topLeft,
                child: Container(
                  // alignment: Alignment.centerLeft,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      color: AppColors.backgroundColor),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10, left: 10, right: 20),
                    child: CustomText(
                      text: messageList[index].message,
                      //snapshot.data!.docs[index].data(). ,
                      color: AppColors.containerColor,
                      // maxLines: 2,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              itemCount: messageList.length,
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading");
        }
        return const Text(' Sorry Something wrong');
        // return ListView(
        //   children: snapshot.data!.docs.map((DocumentSnapshot document) {
        //     Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
        //     return ListTile(
        //       title: Text(data['full_name']),
        //       subtitle: Text(data['company']),
        //     );
        //   }).toList(),
        // );
      },
    );
  }
}
