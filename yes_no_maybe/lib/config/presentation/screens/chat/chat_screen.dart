import 'package:flutter/material.dart';
import 'package:yes_no_maybe/config/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_maybe/config/presentation/widgets/chat/my_message_bubble.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: const Padding(
          padding:  EdgeInsets.all(4.0),
          child:  CircleAvatar(
            backgroundImage: NetworkImage('https://1.bp.blogspot.com/-l-EV17-DwUU/XZ35so9Ku4I/AAAAAAAAAEA/lbtyPR9I7aYjm2S4T3Dmv7VDSYHWw8YdACKgBGAsYHg/w256-h256-p-k-no-nu/perritos.jpg'),
          ),
        ),
        title: const Text('Mi amor ❤️'),
        centerTitle: false
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder:(context, index) {
              return (index % 2 == 0)
              ?const HerMessageBubble()
              :const MyMessageBubble();
            },),
            ),
            const Text('Mundo')
          ],),
      ),
    );
  }

}