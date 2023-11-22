import 'package:border_bottom_navigation_bar/border_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:funny_pranks/features/presentation/pages/mainPages/pages/home_page.dart';
import 'package:funny_pranks/features/presentation/pages/mainPages/pages/pranks_page.dart';
import 'package:funny_pranks/features/presentation/pages/mainPages/pages/short_video_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static const String id = 'MainPage';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  List pages = [
    const HomePage(),
    const PranksPage(),
    const ShortVideoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BorderBottomNavigationBar(
        height: 50,
        currentIndex: _currentIndex,
        borderRadiusValue: 25,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedLabelColor: Colors.white,
        unselectedLabelColor: Colors.grey,
        selectedBackgroundColor: const Color(0xffC39DE2),
        unselectedBackgroundColor: Colors.grey[200]!,
        unselectedIconColor: const Color(0xffC39DE2),
        selectedIconColor: Colors.white,
        customBottomNavItems: [
          BorderBottomNavigationItems(
            icon: Icons.home,
          ),
          BorderBottomNavigationItems(
            icon: Icons.bar_chart,
          ),
          BorderBottomNavigationItems(
            icon: Icons.video_collection_outlined,
          ),
        ],
      ),
    );
  }
}
