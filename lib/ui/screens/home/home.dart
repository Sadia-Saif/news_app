import 'package:flutter/material.dart';
import 'package:news_app/config/space/spaces.dart';
import 'package:news_app/config/theme/colors.dart';
import 'package:news_app/config/theme/typography.dart';
import 'package:news_app/ui/screens/home/widgets/catogories/_list_catagories_widget.dart';
import 'package:news_app/ui/screens/home/widgets/news_list/_news_list.dart';
import 'package:news_app/ui/utils/assets.dart';
import 'widgets/comments/_comments_widget.dart';
import 'widgets/headlines/trending_list.dart';

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
          padding: EdgeInsets.all(20),
          child: _Body(),
        ),
      ),
    );
  }
}
