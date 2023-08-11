import 'package:flutter/material.dart';
import 'package:news_app/config/space/spaces.dart';
import 'package:news_app/config/theme/colors.dart';
import 'package:news_app/config/theme/typography.dart';
import 'package:news_app/ui/screens/home/widgets/headlines/trending_card.dart';
import 'package:news_app/ui/utils/assets.dart';

class TrendingList extends StatelessWidget {
  const TrendingList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TrendingCard(image: StaticAssets.card),
                // const AppCard(image: StaticAssets.card),
                AppSpaces.y2,
                Text(
                  StaticAssets.tNewsHeadline,
                  style: AppText.b2.copyWith(color: AppColors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TrendingCard(image: StaticAssets.cryptoBull),
                AppSpaces.y2,
                Text(
                  StaticAssets.tCryptoHeadings,
                  style: AppText.b2.copyWith(color: AppColors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TrendingCard(image: StaticAssets.vr),
                AppSpaces.y2,
                Text(
                  StaticAssets.tTechHeading1,
                  style: AppText.b2.copyWith(color: AppColors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
