import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplexity_clone/theme/colors.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.background,
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.submitButton,
          ),
          textTheme: GoogleFonts.interTextTheme(
            ThemeData.dark().textTheme.copyWith(
                  bodyMedium:
                      TextStyle(fontSize: 15, color: AppColors.whiteColor),
                ),
          ),
        ),
        home: HomePage());
  }
}
