import 'package:flutter/material.dart';
import '../mainPages/main_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static const String id = 'SplashPage';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) =>
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const MainPage()),
            (route) => false));

    return Scaffold(
      backgroundColor: const Color(0xffd0ff00),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child:  const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Funny Prank',style: TextStyle(color: Color(0xff2B0575),fontSize: 50,fontFamily: 'DancingScript'),),
              Text('Sounds',style: TextStyle(color: Color(0xff2B0575),fontSize: 50,fontFamily: 'DancingScript'),),
            ],
          ),
        ),
      ),
    );
  }
}
