class ChatModel{
  final String message;

  ChatModel(
    this.message ,
);
  factory ChatModel.fromJson( json){

    return ChatModel(
        json['message']);
  }
  Map<String, dynamic>toMap(){
    return {
    "message" : message,
  };
  }
}