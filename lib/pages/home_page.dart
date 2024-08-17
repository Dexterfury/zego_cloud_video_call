import 'package:flutter/material.dart';
import 'package:zego_cloud_video_call/models/chat_model.dart';
import 'package:zego_cloud_video_call/pages/chat_messages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Chats'),
        ),
        body: ListView.builder(
          itemCount: ChatModel.chatList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text(ChatModel.chatList[index].name),
              subtitle: Text(ChatModel.chatList[index].lastMessage),
              trailing: Text(ChatModel.chatList[index].lastMessageTime),
              onTap: () {
                // navigate to chat messagess
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChatMessages(
                              chatModel: ChatModel.chatList[index],
                            )));
              },
            );
          },
        ));
  }
}
