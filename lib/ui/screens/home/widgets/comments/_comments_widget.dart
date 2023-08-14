import 'package:flutter/material.dart';
import 'package:news_app/config/space/spaces.dart';
import 'package:news_app/config/theme/colors.dart';
import 'package:news_app/config/theme/typography.dart';
import 'package:news_app/ui/utils/assets.dart';

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.watch_later_outlined,
          color: AppColors.secondary,
          size: 20,
        ),
        AppSpaces.x0,
        Text(
          StaticAssets.tHour,
          style: AppText.s2.copyWith(color: AppColors.secondary),
        ),
        AppSpaces.x2,
        const Icon(
          Icons.messenger_outline,
          color: AppColors.secondary,
          size: 20,
        ),
        AppSpaces.x0,
        Text(
          StaticAssets.tComments,
          style: AppText.s2.copyWith(color: AppColors.secondary),
        )
      ],
    );
  }
}
