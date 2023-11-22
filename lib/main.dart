import 'package:flutter/material.dart';
import 'features/presentation/pages/mainPages/main_page.dart';
import 'features/presentation/pages/mainPages/pages/fart_sounds_page.dart';
import 'features/presentation/pages/mainPages/pages/home_page.dart';
import 'features/presentation/pages/mainPages/pages/police_sounds_page.dart';
import 'features/presentation/pages/mainPages/pages/short_video_page.dart';
import 'features/presentation/pages/mainPages/pages/shortsVideo/shorts_next_video.dart';
import 'features/presentation/pages/splash/splash_page.dart';


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
        FartSounds.id: (context) => const FartSounds(),
        PoliceSounds.id: (context) => const PoliceSounds(),
        ShortVideoPage.id: (context) => const ShortVideoPage(),
        ShortsNextVideo.id: (context) => const ShortsNextVideo(),

      },
    );
  }
}

