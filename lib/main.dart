import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/routes/router.dart';
import 'package:news_app/routes/routes.dart';
import 'package:news_app/ui/screens/dashboard/dashboard_screen.dart';

Future main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const NewsApp());
}

class NewsApp extends StatefulWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  static final GlobalKey<ScaffoldMessengerState> snackbarKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: snackbarKey,
      routes: router,
      initialRoute: AppRoutes.dashboard,
      home: const Dashboard(),
    );
  }
}
