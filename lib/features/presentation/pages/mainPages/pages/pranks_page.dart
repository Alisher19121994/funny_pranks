import 'package:flutter/material.dart';
import 'package:funny_pranks/features/presentation/pages/mainPages/pages/pranks/pranks_next_page.dart';

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
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xffE6E6FA),
        title: const Text('Hot-Sounds',style: TextStyle(color: Color(0xff2B0575),fontSize: 30,fontFamily: 'DancingScript'),),
      ),
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
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, PranksNextPage.id);
      },
      child: Container(
        margin: const EdgeInsets.only(top: 8.0,bottom: 10.0,right: 22.0,left: 22.0),
        height: size.height * 0.2,
        width: size.width * 0.4,
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
      ),
    );
  }
}
