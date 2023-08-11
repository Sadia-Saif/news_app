import 'package:flutter/material.dart';
import 'package:news_app/ui/screens/dashboard/dashboard_screen.dart';

import 'routes.dart';

Map<String, WidgetBuilder> router = {
  AppRoutes.dashboard: (context) => const Dashboard(),
};
