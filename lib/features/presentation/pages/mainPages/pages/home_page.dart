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
      body:Container(
          margin: const EdgeInsets.only(top: 3.0),
        color: Colors.white,
        height: size.height * 1,
        width: double.infinity,
        child:SingleChildScrollView(
          child: Column(
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
          ),
        )
        ),
    );
  }

  Widget listOfPrank(){
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 1.4,bottom: 1.4,right: 2.0,left: 2.0),
          height: height * 0.048,
          width: width * 1,
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 60,
                    child: Center(
                      child: Image(image: AssetImage(AppImages.prank_logo),),
                    ),
                  ),
                  const SizedBox(width: 8.0,),
                  SizedBox(
                    height: 50,
                    width: width * 0.65,
                    child: Text('Pranks sounds',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.normal),),

                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                height: 45,
                width: 45,
                child: Center(
                  child: Image(image: AssetImage(AppImages.play),),
                ),
              ),

            ],
          ),
        ),
        const Divider(thickness: 1.0,color: Colors.black12,),
      ],
    );
  }

}
