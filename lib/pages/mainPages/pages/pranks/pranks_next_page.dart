import 'package:animated_react_button/animated_react_button.dart';
import 'package:flutter/material.dart';
import 'package:funny_pranks/contents/photos/photo.dart';

class PranksNextPage extends StatefulWidget {
  const PranksNextPage({super.key});
  static const String id = 'PranksNextPage';

  @override
  State<PranksNextPage> createState() => _PranksNextPageState();
}

class _PranksNextPageState extends State<PranksNextPage> {
  var isClicked = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xffE6E6FA),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Funny Sound',style: TextStyle(color: Color(0xff2B0575),fontSize: 30,fontFamily: 'DancingScript'),),
            // AnimatedReactButton(
            //     defaultColor: Colors.grey,
            //     reactColor: const Color(0xffd91919),
            //     onPressed: ()async{
            //       //Simulated api/io waiting calls
            //     })
          ],
        ),
      ),
      body: soundPage(),
    );
  }
  Widget soundPage(){
    var size  = MediaQuery.of(context).size;
    return Container(
      height: size.height * 1,
      width: size.width * 1,
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.10,
            width: double.infinity,
            child: const Center(
              child: Text('Title',style: TextStyle(color: Colors.black,fontSize: 30.0,fontWeight: FontWeight.bold,fontFamily: 'DancingScript'),),
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 3.0,color: const Color(0xffE6E6FA)),
              image: DecorationImage(
                image: AssetImage(AppImages.prank),fit: BoxFit.cover
              )
            ),
            height: size.height * 0.4,
            width: double.infinity,
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 15.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(width: 3.0,color: const Color(0xffE6E6FA))
                ),
                height: size.height * 0.1,
                width: size.height * 0.1,
                margin: const EdgeInsets.all(12.0),
                padding: const EdgeInsets.all(2.0),
                child:  Center(
                  child:Image.asset(AppImages.play),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(width: 3.0,color: const Color(0xffE6E6FA))
                ),
                height: size.height * 0.1,
                width: size.height * 0.1,
                margin: const EdgeInsets.all(12.0),
                padding: const EdgeInsets.all(2.0),
                child:  Center(
                  child:Image.asset(AppImages.pause),
                ),
              ),
              const SizedBox(width: 15.0),
            ],
          ),
        ],
      ),
    );
  }
}
