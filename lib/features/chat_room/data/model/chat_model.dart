class ChatModel{
  final String message;
  final String date;

  ChatModel(
    this.message ,
      this.date,
);
  factory ChatModel.fromJson( json){

    return ChatModel(
        json['message'],
        json['date']

    );
  }
  Map<String, dynamic>toMap(){
    return {
    "message" : message,
      "date":date
  };
  }
}

// class ChatMessages extends StatelessWidget {
//   const ChatMessages({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<QuerySnapshot>(
//       stream: FirebaseFirestore.instance
//           .collection('messages')
//           .orderBy('date', descending: true) // Order by date descending
//           .snapshots(),
//       builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
//         if (snapshot.hasData) {
//           final messageList = snapshot.data!.docs
//               .map((doc) => ChatModel.fromJson(doc.data()))
//               .toList();
//           messageList.sort((a, b) => a.date.compareTo(b.date)); // Sort locally
//
//           return SizedBox(
//             height: 430,
//             child: ListView.separated(
//               separatorBuilder: (context, index) => const SizedBox(height: 10),
//               itemBuilder: (context, index) {
//                 final message = messageList[index];
//                 return Align(
//                   alignment: message.isSentByMe ? Alignment.topRight
//                       : Alignment.topLeft, // Adjust alignment based on sender
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: const BorderRadius.only(
//                         topLeft: Radius.circular(15),
//                         bottomRight: Radius.circular(15),
//                         topRight: Radius.circular(15),
//                       ),
//                       color: message.isSentByMe
//                           ? AppColors.sentMessageColor
//                           : AppColors.receivedMessageColor, // Set colors based on sender
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: CustomText(
//                         text: message.message,
//                         color: Colors.black, // Adjust text color for better contrast
//                         textOverflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                   ),
//                 );
//               },
//               itemCount: messageList.length,
//             ),
//           );
//         } else if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Text("Loading");
//         }
//         return const Text('Something went wrong.'); // Improved error message
//       },
//     );
//   }
// }

// class ChatModel {
//   final String message;
//   final String date;
//   final bool isSentByMe; // Add a flag to indicate sender
//
//   ChatModel({
//     required this.message,
//     required this.date,
//     this.isSentByMe = false, // Default to received message
//   });
//
//   factory ChatModel.fromJson(Map<String, dynamic> json) {
//     return ChatModel(
//       message: json['message'],
//       date: json['date'],
//       isSentByMe: json['isSentByMe'] ?? false, // Handle potential missing field
//     );
//   }
//
//   Map<String, dynamic> toMap() {
//     return {
//       "message": message,
//       "date": date,
//       "isSentByMe": isSentByMe,
//     };
//   }
// }