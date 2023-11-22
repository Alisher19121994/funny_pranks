import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:funny_pranks/constants/photos/photo.dart';
import 'package:funny_pranks/features/presentation/pages/mainPages/pages/fart_sounds_page.dart';
import 'package:funny_pranks/features/presentation/pages/mainPages/pages/home_page.dart';
import 'package:funny_pranks/features/presentation/pages/mainPages/pages/police_sounds_page.dart';
import 'package:funny_pranks/features/presentation/pages/mainPages/pages/pranks_page.dart';
import 'package:funny_pranks/features/presentation/pages/mainPages/pages/short_video_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static const String id = 'MainPage';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xffd0ff00),
          centerTitle: true,
          title: const Text('FUNNY',
            style: TextStyle(color: Color(0xff2B0575),fontSize: 22.0,fontWeight:FontWeight.bold,fontFamily: 'DancingScript'),),
          bottom: ButtonsTabBar(
            backgroundColor: const Color(0xffd0ff00),
            borderWidth: 1.9,
            borderColor: const Color(0xffd0ff00),
            labelStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: const TextStyle(
              color: Color(0xff2B0575),
              fontWeight: FontWeight.normal,
            ),
            tabs:  [
              Tab(
                child:Container(
                  width: 85,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImages.pi),
                        fit: BoxFit.fill
                    )
                  ),
                )
              ),
              Tab(
                  child:Container(
                    width: 85,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppImages.unnamed2),
                          fit: BoxFit.cover
                        )
                    ),
                  )
              ),
              Tab(
                  child:Container(
                    width: 85,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppImages.images),
                          fit: BoxFit.fill
                        )
                    ),
                  )
              ),
              Tab(
                  child:Container(
                    width: 85,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppImages.icons),
                          fit: BoxFit.cover
                        )
                    ),
                  )
              ),
              Tab(
                  child:Container(
                    width: 85,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppImages.prank),
                          fit: BoxFit.cover
                        )
                    ),
                  )
              ),
            ],
          ),
        ),
        body:  const Column(
          children: <Widget>[
            Expanded(
              child: TabBarView(
                children: [
                  HomePage(),
                  PranksPage(),
                  FartSounds(),
                  PoliceSounds(),
                  ShortVideoPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
