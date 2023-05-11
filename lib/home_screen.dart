import 'package:flutter/material.dart';
import 'package:flutter_getx/screen_one.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("GetX Tutorials")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: TextButton(onPressed: (){
            //Get.to(ScreenOne(name: " Jay Thanki",));
            Get.toNamed('/ScreenOne',arguments: [
              ' Jay',
              ' Thanki'
            ]);
            //Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenOne()));
          },child: Text("Go to next screen"),),)
        ],
      ),
    );
  }
}
