import 'package:flutter/material.dart';
import 'package:news_app/config/space/spaces.dart';
import 'package:news_app/config/theme/colors.dart';
import 'package:news_app/config/theme/typography.dart';
import 'package:news_app/ui/screens/home/widgets/comments/_comments_widget.dart';

class NewsListCards extends StatelessWidget {
  final String catagory;
  final String heading;
  final String image;
  const NewsListCards({
    super.key,
    required this.heading,
    required this.catagory,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      splashColor: AppColors.secondary,
      onTap: () {},
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: AppColors.background.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                width: 240,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      catagory,
                      style: AppText.s1.copyWith(color: AppColors.secondary),
                    ),
                    AppSpaces.y,
                    Text(
                      heading,
                      style: AppText.b3.copyWith(color: AppColors.white),
                    ),
                    AppSpaces.y1,
                    const Row(
                      children: [
                        Comments(),
                        AppSpaces.x4,
                        Icon(
                          Icons.more_horiz,
                          color: AppColors.secondary,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              AppSpaces.x1,
              Container(
                width: 117,
                height: 130,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
