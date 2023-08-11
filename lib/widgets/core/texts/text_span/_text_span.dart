// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:news_app/config/theme/colors.dart';
import 'package:news_app/config/theme/typography.dart';



class AppTextSpan extends StatelessWidget {
  void Function()? onTap;
  final String spanText1;
  final String? spanText2;
  final String? spanText3;
  final String? spanText4;
  final String? textButton;
  AppTextSpan({
    Key? key,
    this.onTap,
    required this.spanText1,
    this.spanText2,
    this.spanText3,
    this.spanText4,
    this.textButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      // () {
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(
      //     builder: builder,
      //   ),
      // );
      // },
      child: RichText(
        text: TextSpan(
          text: spanText1,
          style: AppText.s3.copyWith(color: AppColors.black),
          children: <TextSpan>[
            TextSpan(
              text: textButton,
              style: AppText.b.copyWith(
                  color: AppColors.primary,
                  decoration: TextDecoration.underline),
            ),
            TextSpan(
              text: spanText3,
              style: const TextStyle(color: AppColors.black),
            ),
            TextSpan(
              text: spanText4,
              style: const TextStyle(
                color: AppColors.primary,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
