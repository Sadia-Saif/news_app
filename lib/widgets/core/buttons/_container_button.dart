import 'package:flutter/material.dart';
import 'package:news_app/config/theme/colors.dart';

class AppContainerButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final Widget child;
  const AppContainerButton({
    super.key,
    required this.child,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: AppColors.background),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
