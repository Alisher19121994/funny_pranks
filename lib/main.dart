import 'package:flutter/material.dart';
import 'package:funny_pranks/pages/mainPages/main_page.dart';
import 'package:funny_pranks/pages/mainPages/pages/short_video_page.dart';
import 'package:funny_pranks/pages/mainPages/pages/home_page.dart';
import 'package:funny_pranks/pages/mainPages/pages/pranks/pranks_next_page.dart';
import 'package:funny_pranks/pages/mainPages/pages/shortsVideo/shorts_next_video.dart';
import 'package:funny_pranks/pages/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      routes: {
        SplashPage.id: (context) => const SplashPage(),
        MainPage.id: (context) => const MainPage(),
        HomePage.id: (context) => const HomePage(),
        ShortVideoPage.id: (context) => const ShortVideoPage(),
        PranksNextPage.id: (context) => const PranksNextPage(),
        ShortsNextVideo.id: (context) => const ShortsNextVideo(),

      },
    );
  }
}

