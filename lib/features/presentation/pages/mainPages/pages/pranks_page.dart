import 'package:flutter/material.dart';
import '../../../../../constants/photos/photo.dart';


class PranksPage extends StatefulWidget {
  const PranksPage({super.key});

  @override
  State<PranksPage> createState() => _PranksPageState();
}

class _PranksPageState extends State<PranksPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      body:SizedBox(
          height: size.height * 1,
          width: double.infinity,
          child: ListView(
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
        margin: const EdgeInsets.only(top: 4.0,bottom: 8.0,right: 14.0,left: 14.0),
        height: size.height * 0.13,
        width: size.width * 0.45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            image: DecorationImage(
                image: AssetImage(AppImages.prank_logo),
                fit: BoxFit.cover
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                height: size.height * 0.05,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  color: const Color(0xffe4c8d4),
                ),
                child: Center(child: Text('Airhorn',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 32,fontFamily: 'DancingScript'),))),
          ],
        ),
      );
  }
}
