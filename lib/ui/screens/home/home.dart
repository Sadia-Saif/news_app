import 'package:flutter/material.dart';
import 'package:news_app/config/space/spaces.dart';
import 'package:news_app/config/theme/colors.dart';
import 'package:news_app/config/theme/typography.dart';

part 'widgets/_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: _Body(),
        ),
      ),
    );
  }
}
