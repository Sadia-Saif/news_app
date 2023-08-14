import 'package:flutter/material.dart';
import 'package:news_app/config/theme/colors.dart';

class CustomSnackbar extends StatelessWidget {
  final String labelText;

  const CustomSnackbar({Key? key, required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black,
        title: const Text('Snackbar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackbar = SnackBar(
              action: SnackBarAction(
                label: 'Undo',
                textColor: AppColors.primary,
                onPressed: () {},
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              behavior: SnackBarBehavior.floating,
              // padding: EdgeInsets.all(20),
              duration: const Duration(milliseconds: 3000),
              // backgroundColor: Colors.red,
              content: const Text('This is an error'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          },
          child: Text(labelText),
        ),
      ),
    );
  }
}
