import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final String image;

  const AppCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 388,
      height: 250,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 5,
        // margin: const EdgeInsets.all(10),
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
// Stack(
//   children: <Widget>[
//     new Positioned.fill(
//       child: background,
//     ),
//     foreground,
//   ],
// )