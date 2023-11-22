import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ShortsNextVideo extends StatefulWidget {
  const ShortsNextVideo({super.key});

  static const String id = 'ShortsNextVideo';

  @override
  State<ShortsNextVideo> createState() => _ShortsNextVideoState();
}

class _ShortsNextVideoState extends State<ShortsNextVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xffE6E6FA),
        title: const Text(
          'Videos',
          style: TextStyle(
              color: Color(0xff2B0575),
              fontSize: 30,
              fontFamily: 'DancingScript'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [videoNextWidget()],
      ),
    );
  }

  Widget videoNextWidget() {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: size.height * 0.35,
              width: double.infinity,
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : Container(),
            ),
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(100.0),
                  border: Border.all(width: 1.0, color: Colors.white)),
              child: Center(
                child: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      _controller.value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                    });
                  },
                  icon: Icon(
                    _controller.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                  ),
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
      ],
    );
  }
}
