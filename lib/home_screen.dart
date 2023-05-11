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
        title: Text("GetX tutorials"),
      ),
      body: Column(
        children: [
          Container(
            height: Get.height * 0.2,
            width: Get.width * 0.8,
            color: Colors.red,
            child: Center(child: Text("Center"),),
          ),
          Container(
            height: Get.height * 0.1 ,
            width: Get.width * 0.8,
            color: Colors.green,
            child: Center(child: Text("Center"),),
          )
        ],
      ),
    );
  }
}
