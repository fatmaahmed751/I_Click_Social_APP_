import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_click/features/chat_room/data/model/chat_model.dart';
import 'package:i_click/features/chat_room/data/repos/chat_repo.dart';
import 'package:i_click/features/chat_room/presentation/manager/chat_cubit/chat_states.dart';

class ChatCubit extends Cubit<ChatStates>{
  ChatCubit(this.chatRepo): super(ChatInitialState());

  final ChatRepo chatRepo;
  static ChatCubit get(context)=>BlocProvider.of(context);

  // Future<void> addMessageToChat(ChatModel chatModel)async{
  //   emit(ChatLoadingState());
  //   var result =  await chatRepo.addMessageToChat(chatModel);
  //   result.fold((serverFailure) =>
  //       emit(ChatErrorState(serverFailure.errMessage.toString())),
  //     (chatModel) =>
  //       emit(ChatSuccessState()));
  // }

  // Future<ChatModel> getMessageFromDta(ChatModel chatModel,context)async{
  //   emit(GetMessagesLoadingState());
  //
  //   var result =  await chatRepo.getMessages(chatModel,context);
  //   if(result.hashCode == 200){
  //     emit(GetMessagesSuccessState());
  //   }else{
  //       emit(GetMessagesErrorState());
  //           }
  //
  //   return chatModel;
  // }

}