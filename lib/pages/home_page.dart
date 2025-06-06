import 'package:flutter/material.dart';
import 'package:perplexity_clone/services/chat_web_service.dart';
import 'package:perplexity_clone/theme/colors.dart';
import 'package:perplexity_clone/widgets/search_section.dart';
import 'package:perplexity_clone/widgets/side_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    ChatWebservice().connect();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //side navbar
          SideBar(),
          Expanded(
            child: Column(
              children: [
                //search section
                Expanded(
                  child: SearchSection(),
                ),
                //footer
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        child: Text(
                          'Pro',
                          style: TextStyle(
                              fontSize: 14, color: AppColors.footerGrey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        child: Text(
                          'Enterprise',
                          style: TextStyle(
                              fontSize: 14, color: AppColors.footerGrey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        child: Text(
                          'Store',
                          style: TextStyle(
                              fontSize: 14, color: AppColors.footerGrey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        child: Text(
                          'Blog',
                          style: TextStyle(
                              fontSize: 14, color: AppColors.footerGrey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        child: Text(
                          'Careers',
                          style: TextStyle(
                              fontSize: 14, color: AppColors.footerGrey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        child: Text(
                          'Englist[English]',
                          style: TextStyle(
                              fontSize: 14, color: AppColors.footerGrey),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
