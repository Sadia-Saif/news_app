import 'package:flutter/material.dart';
import 'package:news_app/config/theme/colors.dart';

part 'widgets/_body.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(
          Icons.arrow_back_ios,
          size: 20,
          color: Colors.grey.shade700,
        ),
        centerTitle: true,
        title: const Text(
          "DexNews Network",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
        ),
      ),
      backgroundColor: AppColors.background,
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: _Body(),
        ),
      ),
    );
  }
}
