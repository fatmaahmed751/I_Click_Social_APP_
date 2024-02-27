abstract class ChatStates{}

class ChatInitialState extends ChatStates{}

class ChatSuccessState extends ChatStates{}

class ChatLoadingState extends ChatStates{}

class ChatErrorState extends ChatStates{
  final String errorMessage;

  ChatErrorState(this.errorMessage);
}

class GetMessagesSuccessState extends ChatStates{}

class GetMessagesLoadingState extends ChatStates{}

class GetMessagesErrorState extends ChatStates{
 // final String errorMessage;

  GetMessagesErrorState();
}