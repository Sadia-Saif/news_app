import 'package:flutter/material.dart';
import 'package:news_app/api/api_services.dart';
import 'package:news_app/config/theme/colors.dart';
import 'package:news_app/models/articles.dart';
import 'package:news_app/ui/widgets/_news_tiles.dart';

part 'widgets/_body.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Body();
  }
}
