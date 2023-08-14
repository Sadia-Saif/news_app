import 'package:flutter/material.dart';
import 'package:news_app/config/space/spaces.dart';
import 'package:news_app/ui/screens/home/widgets/catogories/_catagories_container_widget.dart';

class CatagoriesList extends StatelessWidget {
  const CatagoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CatagoriesContainer(
            text: 'All',
          ),
          AppSpaces.x1,
          CatagoriesContainer(
            text: 'Business',
          ),
          AppSpaces.x1,
          CatagoriesContainer(
            text: 'Crypto',
          ),
          AppSpaces.x1,
          CatagoriesContainer(
            text: 'Gaming',
          ),
          AppSpaces.x1,
          CatagoriesContainer(
            text: 'Technology',
          ),
        ],
      ),
    );
  }
}
