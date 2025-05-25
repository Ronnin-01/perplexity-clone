import 'package:flutter/material.dart';
import 'package:perplexity_clone/widgets/side_bar.dart';
import 'package:perplexity_clone/widgets/sources_section.dart';

class ChatPage extends StatelessWidget {
  final String question;
  const ChatPage({
    super.key,
    required this.question,
  });

  // StreamBuilder(
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBar(),
          SizedBox(
            width: 100,
          ),
          Column(
            children: [
              Text(
                question,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 24,
              ),
              SourcesSection(),
            ],
          )
        ],
      ),
    );
  }
}
