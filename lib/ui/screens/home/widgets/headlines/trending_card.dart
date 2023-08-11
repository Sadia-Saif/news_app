import 'package:flutter/material.dart';
import 'package:news_app/config/theme/colors.dart';
import 'package:news_app/ui/screens/home/widgets/catogories/_catagories_container_widget.dart';
import 'package:news_app/ui/utils/assets.dart';

class TrendingCard extends StatelessWidget {
  final String image;

  const TrendingCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 388,
          height: 250,
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: AppColors.shadow, width: 1),
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 5,
            // margin: const EdgeInsets.all(10),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const Positioned(
          top: 20,
          left: 20,
          child: CatagoriesContainer(
            text: StaticAssets.tTrending,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
