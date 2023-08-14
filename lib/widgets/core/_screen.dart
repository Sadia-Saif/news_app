import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final Widget child;
  final bool appBar = false;
  final Widget? leading;

  const Screen({super.key, required this.child, this.leading});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: child,
        ),
      ),
    );
  }
}
