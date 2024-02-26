abstract class ChatStates{}

class ChatInitialState extends ChatStates{}

class ChatSuccessState extends ChatStates{}

class ChatLoadingState extends ChatStates{}

class ChatErrorState extends ChatStates{
  final String errorMessage;

  ChatErrorState(this.errorMessage);
}