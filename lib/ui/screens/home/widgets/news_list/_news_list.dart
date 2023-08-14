import 'package:flutter/material.dart';
import 'package:news_app/ui/screens/home/widgets/news_list/_news_list_cards.dart';
import 'package:news_app/ui/utils/assets.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          NewsListCards(
            catagory: StaticAssets.tTechnology,
            heading: StaticAssets.tTechHeading1,
            image: StaticAssets.virtualReality,
          ),
          NewsListCards(
            catagory: StaticAssets.tCrypto,
            heading: StaticAssets.tCryptoHeadings,
            image: StaticAssets.cryptoBull,
          ),
          NewsListCards(
            catagory: StaticAssets.tDesign,
            heading: StaticAssets.tDesignHeading1,
            image: StaticAssets.visualDesign,
          ),
          NewsListCards(
            catagory: StaticAssets.tBusiness,
            heading: StaticAssets.tBusinessHeadings,
            image: StaticAssets.business,
          ),
          NewsListCards(
            catagory: StaticAssets.tTechnology,
            heading: StaticAssets.tDesignHeading2,
            image: StaticAssets.vr,
          ),
        ],
      ),
    );
  }
}
