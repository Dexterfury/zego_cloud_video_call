import 'package:flutter/material.dart';
import 'package:zego_cloud_video_call/models/chat_model.dart';
import 'package:zego_cloud_video_call/models/message_model.dart';
import 'package:zego_cloud_video_call/pages/call_page.dart';
import 'package:zego_cloud_video_call/widgets/bottom_chat_field.dart';

class ChatMessages extends StatefulWidget {
  const ChatMessages({
    super.key,
    required this.chatModel,
  });

  final ChatModel chatModel;

  @override
  State<ChatMessages> createState() => _ChatMessagesState();
}

class _ChatMessagesState extends State<ChatMessages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: _buildContactInfo(widget.chatModel),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CallPage(callID: '123456'),
                    ),
                  );
                },
                icon: const Icon(Icons.video_call))
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: MessageModel.chatList.length,
                  reverse: true,
                  itemBuilder: (context, index) {
                    final message = MessageModel.chatList[index];
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: message.isMe
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: message.isMe ? Colors.blue : Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                message.message,
                                style: TextStyle(
                                  color: message.isMe
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ))
                        ],
                      ),
                    );
                  },
                ),
              ),
              const BottomChatField(),
            ],
          ),
        ));
  }

  _buildContactInfo(ChatModel chatModel) {
    return Row(
      children: [
        const CircleAvatar(
          child: Icon(Icons.person),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              chatModel.name,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const Text(
              'Online',
              style: TextStyle(fontSize: 12),
            )
          ],
        )
      ],
    );
  }
}
