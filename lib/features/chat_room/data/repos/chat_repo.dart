import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:i_click/core/errors/failures.dart';
import 'package:i_click/features/chat_room/data/model/chat_model.dart';

abstract class ChatRepo{

Future<Either<Failure, ChatModel>>  addMessageToChat(ChatModel chatModel);

Future<StreamBuilder<QuerySnapshot>>getMessages(ChatModel chatModel,context);
}