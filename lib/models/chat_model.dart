class ChatModel {
  String iD;
  String name;
  String image;
  String lastMessage;
  String lastMessageTime;

  // constructor
  ChatModel({
    required this.iD,
    required this.name,
    required this.image,
    required this.lastMessage,
    required this.lastMessageTime,
  });

  // dummy chat kist data of 5
  static List<ChatModel> chatList = [
    ChatModel(
        iD: '1',
        name: 'John Doe',
        image: 'assets/images/user1.png',
        lastMessage: 'Hello, how are you?',
        lastMessageTime: '10:30 AM'),
    ChatModel(
        iD: '2',
        name: 'Jane Smith',
        image: 'assets/images/user2.png',
        lastMessage: 'I am good, thanks!',
        lastMessageTime: '11:00 AM'),
    ChatModel(
        iD: '3',
        name: 'Michael Johnson',
        image: 'assets/images/user3.png',
        lastMessage: 'See you tomorrow!',
        lastMessageTime: '12:30 PM'),
    ChatModel(
        iD: '4',
        name: 'Emily Davis',
        image: 'assets/images/user4.png',
        lastMessage: 'Can we meet tomorrow?',
        lastMessageTime: '1:15 PM'),
    ChatModel(
        iD: '5',
        name: 'David Wilson',
        image: 'assets/images/user5.png',
        lastMessage: 'Sure, let me know the details.',
        lastMessageTime: '2:45 PM'),
  ];
}
