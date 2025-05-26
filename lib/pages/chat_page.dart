import 'package:flutter/material.dart';
import 'package:perplexity_clone/theme/colors.dart';
import 'package:perplexity_clone/widgets/answer_section.dart';
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
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      question,
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    SourcesSection(),
                    SizedBox(
                      height: 24,
                    ),
                    AnswerSection(),
                  ],
                ),
              ),
            ),
          ),
          Placeholder(
            strokeWidth: 0,
            color: AppColors.background,
          ),
        ],
      ),
    );
  }
}
