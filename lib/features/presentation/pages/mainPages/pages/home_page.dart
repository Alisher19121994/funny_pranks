import 'package:flutter/material.dart';

import '../../../../../constants/photos/photo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xffE6E6FA),
        title: const Text('Funny Prank sounds',style: TextStyle(color: Color(0xff2B0575),fontSize: 30,fontFamily: 'DancingScript'),),
      ),
      body:SizedBox(
        height: size.height * 1,
        width: double.infinity,
        child: GridView.count(
        crossAxisCount: 3,
        children: [
          listOfPrank(),
          listOfPrank(),
          listOfPrank(),
          listOfPrank(),
          listOfPrank(),
          listOfPrank(),
          listOfPrank(),
          listOfPrank(),
          listOfPrank(),
          listOfPrank(),
          listOfPrank(),
          listOfPrank(),
        ],
        )
        ),
    );
  }

  Widget listOfPrank(){
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 4.0,bottom: 4.0,right: 8.0,left: 8.0),
      height: size.height * 0.15,
      width: size.width * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        image: DecorationImage(
          image: AssetImage(AppImages.prank_logo),
          fit: BoxFit.cover
        )
      ),
    );
  }

}
