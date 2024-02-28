import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:i_click/core/errors/failures.dart';
import 'package:i_click/features/chat_room/data/model/chat_model.dart';
import 'package:i_click/features/chat_room/data/repos/chat_repo.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/custom-text.dart';
class ChatRepoImplement extends ChatRepo{
//   CollectionReference messages = FirebaseFirestore.instance.collection('messages');
//   final Stream<QuerySnapshot> messageStream = FirebaseFirestore.instance.collection('messages').snapshots();
//   @override
//   Future<Either<Failure, ChatModel>> addMessageToChat(ChatModel chatModel)async {
//     try {
//       await messages.add(chatModel.toMap());
//       print(chatModel.message);
//       return Right(chatModel);
//
//     } catch (e) {
//       return Left(ServerFailure(
//           e.toString(), errorMessage: 'The password provided is too weak.'));
//     }
//   }
//
//   @override
//   Future<StreamBuilder<QuerySnapshot>> getMessages(ChatModel chatModel,context) async {
//    return StreamBuilder<QuerySnapshot>(
//        stream: messageStream,
//      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//          if(snapshot.hasData){
//            List<ChatModel> messageList = [];
//            for(int i =0; i<snapshot.data!.docs.length; i++){
//              messageList.add(ChatModel.fromJson(snapshot.data!.docs[i]));
//            }
//            return SizedBox(
//              height: 430,
//              child: ListView.builder(
//                itemBuilder: (context, index) => Align(
//                  alignment: Alignment.topLeft,
//                  child: Container(
//                    // alignment: Alignment.centerLeft,
//                    decoration: const BoxDecoration(
//                        borderRadius: BorderRadius.only(
//                          topLeft: Radius.circular(15),
//                          bottomRight: Radius.circular(15),
//                          topRight: Radius.circular(15),
//                        ),
//                        color: AppColors.backgroundColor),
//                    child:  Padding(
//                      padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 10),
//                      child: CustomText(
//                        text:snapshot.data!.docs[index].toString() ,
//                        color: AppColors.containerColor,
//                        // maxLines: 2,
//                        textOverflow: TextOverflow.ellipsis,
//                      ),
//                    ),
//                  ),
//                ),
//                itemCount:messageList.length,
//              ),
//            );
//          }
//        if  (snapshot.connectionState == ConnectionState.waiting) {
//          return const Text("Loading");
//        }
// return const Text(' Sorry Something wrong');
//        // return ListView(
//        //   children: snapshot.data!.docs.map((DocumentSnapshot document) {
//        //     Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
//        //     return ListTile(
//        //       title: Text(data['full_name']),
//        //       subtitle: Text(data['company']),
//        //     );
//        //   }).toList(),
//        // );
//      },
//    );
 // }
    }


