import 'package:flutter/material.dart';
import 'package:funny_pranks/pages/mainPages/pages/shortsVideo/shorts_next_video.dart';

import '../../../contents/photos/photo.dart';

class ShortVideoPage extends StatefulWidget {
  const ShortVideoPage({super.key});

  static const String id = 'ShortVideoPage';

  @override
  State<ShortVideoPage> createState() => _ShortVideoPageState();
}

class _ShortVideoPageState extends State<ShortVideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: const Color(0xffE6E6FA),
          title: const Text(
            'Prank Videos',
            style: TextStyle(
                color: Color(0xff2B0575),
                fontSize: 30,
                fontFamily: 'DancingScript'),
          ),
        ),
        body: ListView(
          children: [
            videoWidget(),
            videoWidget(),
            videoWidget(),
            videoWidget(),
            videoWidget(),
            videoWidget(),
            videoWidget(),
            videoWidget(),
            videoWidget(),
          ],
        ));
  }

  Widget videoWidget() {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ShortsNextVideo.id);
      },
      child: Stack(children: [
        Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppImages.prank),
                          fit: BoxFit.cover),
                    ),
                    height: size.height * 0.20,
                    width: double.infinity,
                    child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.black.withOpacity(0.8),
                                  Colors.black.withOpacity(0.5),
                                  Colors.black.withOpacity(0.6),
                                  Colors.black.withOpacity(0.3),
                                ],
                                begin: Alignment.topCenter,
                                end: FractionalOffset.bottomCenter,
                                tileMode: TileMode.repeated)))),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                      borderRadius: BorderRadius.circular(100.0),
                      border: Border.all(width: 1.0, color: Colors.white)),
                  child: const Center(
                    child: Icon(
                      Icons.play_arrow_outlined,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Container(
                height: size.height * 0.05,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                child: const Center(
                    child: Text(
                  'Wonderful prank video',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                  overflow: TextOverflow.ellipsis,
                ))),
            const Divider(
              thickness: 0.5,
            ),
          ],
        ),
      ]),
    );
  }
}
