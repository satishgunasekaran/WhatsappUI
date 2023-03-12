import 'package:flutter/material.dart';
import 'package:mind_punk_ui/info.dart';
import 'package:mind_punk_ui/widgets/my_message_card.dart';
import 'package:mind_punk_ui/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]['isMe'] == true) {
            return MyMessageCard(
                message: messages[index]['text'].toString(),
                date: messages[index]['time'].toString());
          }
          // Sender Message -> Card
          return SenderMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        });
  }
}
