class MessageModel {
  String id;
  String message;
  String messagetime;
  bool isMe;

  MessageModel({
    required this.id,
    required this.message,
    required this.messagetime,
    required this.isMe,
  });

  // dummy chat list data of 10 meassages
  static List<MessageModel> chatList = [
    MessageModel(
      id: '1',
      message: 'Hello, how are you?',
      messagetime: '10:30 AM',
      isMe: false,
    ),
    MessageModel(
      id: '2',
      message: 'I am good, thanks!',
      messagetime: '11:00 AM',
      isMe: true,
    ),
    MessageModel(
      id: '3',
      message: 'See you tomorrow!',
      messagetime: '12:30 PM',
      isMe: false,
    ),
    MessageModel(
      id: '4',
      message: 'Can we meet tomorrow?',
      messagetime: '1:15 PM',
      isMe: true,
    ),
    MessageModel(
      id: '5',
      message: 'Sure, let me know the details.',
      messagetime: '2:45 PM',
      isMe: false,
    ),
  ];
}
