import 'package:flutter/material.dart';
import 'package:news_app/providers/articles/articles_provider.dart';
import 'package:news_app/routes/router.dart';
import 'package:news_app/routes/routes.dart';
import 'package:news_app/ui/screens/dashboard/dashboard_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final GlobalKey<ScaffoldMessengerState> snackbarKey =
      GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ArticlesProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: snackbarKey,
        routes: router,
        initialRoute: AppRoutes.dashboard,
        home: const Dashboard(),
      ),
    );
  }
}
