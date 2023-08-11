// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:news_app/config/theme/colors.dart';
import 'package:news_app/config/theme/typography.dart';

class CatagoriesContainer extends StatelessWidget {
  final String text;
  final Color? color;

  const CatagoriesContainer({
    Key? key,
    required this.text,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      splashColor: AppColors.secondary,
      onTap: () {},
      child: Container(
        height: 52,
        width: 110,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColors.shadow,
          border: Border.all(width: 2, color: AppColors.background),
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: Center(
          child: FittedBox(
            child: Text(
              text,
              style: AppText.b1.copyWith(
                  color: color ?? AppColors.secondary,
                  overflow: TextOverflow.ellipsis),
            ),
          ),
        ),
      ),
    );
  }
}
