import 'package:flutter/material.dart';
import 'package:news_app/config/theme/colors.dart';
import 'package:news_app/ui/screens/explore/explore.dart';
import 'package:news_app/ui/screens/home/home.dart';
import 'package:news_app/ui/screens/list/list.dart';
import 'package:news_app/ui/screens/profile/profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  /// 1 Screen
  /// --> multiple views/widgets (sections)
  List<Widget> views = [
    // home
    const HomeScreen(), // 0
    // Exploar
    const ExploreScreen(), // 1
    // List
    const ListScreen(), // 2
    // Profile
    const ProfileScreen(), // 2
  ];

  // switch views(index) --> body
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: views[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: AppColors.primary,
        selectedIconTheme: const IconThemeData(
            color: AppColors.primary, opacity: 1.0, size: 30.0),
        unselectedItemColor: AppColors.secondary,
        unselectedIconTheme: const IconThemeData(
            color: AppColors.secondary, opacity: 1.0, size: 30.0),
        onTap: (bottomBarItemIndex) {
          setState(() {
            currentIndex = bottomBarItemIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmarks_outlined),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
